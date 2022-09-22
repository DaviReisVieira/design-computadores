LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY logicaDesvio IS

  PORT (
    JMP : IN STD_LOGIC;
    JEQ : IN STD_LOGIC;
    FLAG_EQ : IN STD_LOGIC;
    Sel : OUT STD_LOGIC
  );
END ENTITY;
ARCHITECTURE arch_name OF logicaDesvio IS

BEGIN
  Sel <= '0' WHEN (JMP = '0' AND JEQ = '0'  AND FLAG_EQ = '0') ELSE
    '1' WHEN (JMP = '1' AND JEQ = '0' AND FLAG_EQ = '0') ELSE
    '0' WHEN (JMP = '0' AND JEQ = '1' AND FLAG_EQ = '0') ELSE
    '1' WHEN (JMP = '0' AND JEQ = '1' AND FLAG_EQ = '1');
END ARCHITECTURE;