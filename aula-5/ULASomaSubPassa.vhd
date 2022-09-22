library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;    -- Biblioteca IEEE para funções aritméticas

entity ULASomaSubPassa is
    generic ( 
		larguraDados : natural := 8; 
		larguraInstru: natural := 2
		);
    port (
      entradaA, entradaB:  in STD_LOGIC_VECTOR((larguraDados-1) downto 0);
      seletor:  in STD_LOGIC_VECTOR((larguraInstru-1) downto 0);
      saida:    out STD_LOGIC_VECTOR((larguraDados-1) downto 0);
      flagEqual: out STD_LOGIC
    );
end entity;

architecture comportamento of ULASomaSubPassa is
   signal soma :      STD_LOGIC_VECTOR((larguraDados-1) downto 0);
   signal subtracao : STD_LOGIC_VECTOR((larguraDados-1) downto 0);
	
    begin
      soma      <= STD_LOGIC_VECTOR(unsigned(entradaA) + unsigned(entradaB));
      subtracao <= STD_LOGIC_VECTOR(unsigned(entradaA) - unsigned(entradaB));
		
      saida <= soma when (seletor = "01") else 
					subtracao when (seletor = "00") else 
					entradaB when (seletor="10") else
					entradaB;

      flagEqual <= '1' when (subtracao = "00000000") else '0';
end architecture;