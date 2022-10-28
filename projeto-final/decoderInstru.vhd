library ieee;
use ieee.std_logic_1164.all;

entity decoderInstru is
  port ( opcode : in std_logic_vector(3 downto 0);
         saida : out std_logic_vector(11 downto 0)
  );
end entity;

architecture comportamento of decoderInstru is

  constant NOP  : std_logic_vector(3 downto 0) := "0000";
  constant LDA  : std_logic_vector(3 downto 0) := "0001";
  constant SOMA : std_logic_vector(3 downto 0) := "0010";
  constant SUB  : std_logic_vector(3 downto 0) := "0011";
  constant LDI  : std_logic_vector(3 downto 0) := "0100";
  constant STA  : std_logic_vector(3 downto 0) := "0101";
  constant JMP  : std_logic_vector(3 downto 0) := "0110";
  constant JEQ  : std_logic_vector(3 downto 0) := "0111";
  constant CEQ  : std_logic_vector(3 downto 0) := "1000";
  constant JSR  : STD_LOGIC_VECTOR(3 DOWNTO 0) := "1001";
  constant RET  : STD_LOGIC_VECTOR(3 DOWNTO 0) := "1010";

  begin
saida <= "000000000000" when opcode = NOP else
         "000000110010" WHEN opcode = LDA ELSE 
         "000000101010" WHEN opcode = SOMA ELSE
         "000000100010" WHEN opcode = SUB ELSE
         "000001110000" WHEN opcode = LDI ELSE
         "000000000001" WHEN opcode = STA ELSE
         "010000000000" WHEN opcode = JMP ELSE
         "000010000000" WHEN opcode = JEQ ELSE
         "000000000110" WHEN opcode = CEQ ELSE
         "100100000000" WHEN opcode = JSR ELSE
         "001000000000" WHEN opcode = RET ELSE
         "000000000000";
end architecture;