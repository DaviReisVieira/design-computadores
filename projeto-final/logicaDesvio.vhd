LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY logicaDesvio IS

  PORT (
    JLT, JMP, JEQ, JSR, RET : IN STD_LOGIC;
    FLAG_EQ : IN STD_LOGIC;
    FLAG_LESS : IN STD_LOGIC;
    Sel : OUT std_logic_vector(1 downto 0)
  );
END ENTITY;
ARCHITECTURE arch_name OF logicaDesvio IS

-- CONTROLA A PORTA DO MUX 4X1, CUJA SAÍDA É O ENDEREÇO DA PRÓXIMA INSTRUÇÃO
-- 00: Próximo PC
-- 01: Endereço Imediato
-- 02: Endereço Retorno
-- 03: Aberto.

BEGIN
Sel <= "00" WHEN (JMP = '0' AND RET = '0' AND JSR = '0' AND JEQ = '0' AND JLT = '0') ELSE
       "01" WHEN (JMP = '1' AND RET = '0' AND JSR = '0' AND JEQ = '0' AND JLT = '0') ELSE
       "00" WHEN (JMP = '0' AND RET = '0' AND JSR = '0' AND JEQ = '1' AND JLT = '0' AND FLAG_EQ = '0') ELSE
       "01" WHEN (JMP = '0' AND RET = '0' AND JSR = '0' AND JEQ = '1' AND JLT = '0' AND FLAG_EQ = '1') ELSE
       "00" WHEN (JMP = '0' AND RET = '0' AND JSR = '0' AND JEQ = '0' AND JLT = '1' AND FLAG_LESS = '0') ELSE
       "01" WHEN (JMP = '0' AND RET = '0' AND JSR = '0' AND JEQ = '0' AND JLT = '1' AND FLAG_LESS = '1') ELSE
       "01" WHEN (JMP = '0' AND RET = '0' AND JSR = '1' AND JEQ = '0' AND JLT = '0') ELSE
       "10" WHEN (JMP = '0' AND RET = '1' AND JSR = '0' AND JEQ = '0' AND JLT = '0');
END ARCHITECTURE;