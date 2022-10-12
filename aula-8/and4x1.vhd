library ieee;
use ieee.std_logic_1164.all;

entity and4x1 is
  port ( 
		entradaA : 	in std_logic;
		entradaB : 	in std_logic;
		entradaC : 	in std_logic;
		entradaD : 	in std_logic;
		saida : 		out std_logic
  );
end entity;

architecture comportamento of and4x1 is
  begin
    saida <= entradaA AND entradaB AND entradaC AND entradaD;
end architecture;