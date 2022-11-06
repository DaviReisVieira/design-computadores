library ieee;
use ieee.std_logic_1164.all;

entity decoderInstru is
  port ( opcode : in std_logic_vector(3 downto 0);
         saida : out std_logic_vector(13 downto 0)
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
  constant CLT  : STD_LOGIC_VECTOR(3 DOWNTO 0) := "1011";
  constant JLT  : STD_LOGIC_VECTOR(3 DOWNTO 0) := "1100";

  begin
saida <= "00000000000000" when opcode = NOP else
         "00000001100010" WHEN opcode = LDA ELSE 
         "00000001010010" WHEN opcode = SOMA ELSE
         "00000001000010" WHEN opcode = SUB ELSE
         "00000011100000" WHEN opcode = LDI ELSE
         "00000000000001" WHEN opcode = STA ELSE
         "00100000000000" WHEN opcode = JMP ELSE
         "00000100000000" WHEN opcode = JEQ ELSE
         "00000000000110" WHEN opcode = CEQ ELSE
         "10001000000000" WHEN opcode = JSR ELSE
         "00010000000000" WHEN opcode = RET ELSE
         "00000000001010" WHEN opcode = CLT ELSE
         "01000000000000" WHEN opcode = JLT ELSE
         "00000000000000";
end architecture;