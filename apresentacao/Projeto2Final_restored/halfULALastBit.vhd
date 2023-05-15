library ieee;
use ieee.std_logic_1164.all;

entity halfULALastBit is

    port (
      A, B, SLT, inverteA, inverteB, carryIn: in std_logic;
      R, carryOut: out std_logic;
      sel: in std_logic_vector(1 downto 0);
      op_SOMA_SUB: out std_logic
    );
end entity;

architecture comportamento of halfULALastBit is

    -- declare internal signals
    signal saida_MUX_A: std_logic;
    signal saida_MUX_B: std_logic;
    signal op_AND: std_logic;
    signal op_OR: std_logic;
    
    begin 
    saida_MUX_B <= B when inverteB = '0' else not B;
    saida_MUX_A <= A when inverteA = '0' else not A;


    op_AND <= saida_MUX_B and saida_MUX_A;
    op_OR  <= saida_MUX_B or saida_MUX_A;
    op_SOMA_SUB <= (saida_MUX_A xor saida_MUX_B) xor carryIn;
    carryOut <= (saida_MUX_A and saida_MUX_B) or (carryIn and (saida_MUX_A xor saida_MUX_B));

    R <= op_AND when sel = "00" else
         op_OR when sel = "01" else
         op_SOMA_SUB when sel = "10" else
         SLT when sel = "11" else op_AND;

end architecture;