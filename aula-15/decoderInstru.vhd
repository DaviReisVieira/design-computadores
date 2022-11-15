library ieee;
use ieee.std_logic_1164.all;

entity decoderInstru is
  generic (
    larguraOpCode: natural := 6;
    larguraFunct: natural := 6;
    larguraSinaisControle: natural := 12
  );

  port ( opcode : in std_logic_vector(larguraOpCode-1 downto 0);
         funct : in std_logic_vector(larguraFunct-1 downto 0);
         saida : out std_logic_vector(larguraSinaisControle-1 downto 0)
  );
end entity;

architecture comportamento of decoderInstru is

  constant ADD : std_logic_vector(larguraFunct-1 downto 0) := "100000";
  constant SUB : std_logic_vector(larguraFunct-1 downto 0) := "100010";

  constant LW  : std_logic_vector(larguraOpCode-1 downto 0) := "100011";
  constant SW  : std_logic_vector(larguraOpCode-1 downto 0) := "101011";
  constant BEQ : std_logic_vector(larguraOpCode-1 downto 0) := "000100";
  constant J   : std_logic_vector(larguraOpCode-1 downto 0) := "000010";

  begin
    saida(0) <= '1' when (opcode = SW) else '0';  -- wrRAM
    saida(1) <= '1' when (opcode = LW) else '0';  -- rdRAM
    saida(2) <= '1' when (opcode = BEQ) else '0'; --beq
    saida(3) <= '0' when (opcode = "000000") else '1'; -- MuxULARAMSeletor
    saida(7 downto 4) <= "0001" when (opcode = LW) or (opcode = SW) or (funct = ADD) else 
                         "0010" when (opcode = BEQ) or (funct = SUB) else
                         "0000"; -- ULAOpSeletor
    saida(8) <= '0' when (opcode = "000000") else '1'; -- MUuxRtImediatoSeletor
    saida(9) <= '1' when (opcode = LW) else '0'; -- wrReg
    saida(10) <= '0' when (funct = "000000") else '1'; -- muxRtRdSeletor
    saida(11) <= '1' when (opcode = J) else '0'; -- muxRtRdSeletor
              
end architecture;