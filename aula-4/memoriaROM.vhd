library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity memoriaROM is
   generic (
          dataWidth: natural := 13;
          addrWidth: natural := 9
    );
   port (
          Endereco : in std_logic_vector (addrWidth-1 DOWNTO 0);
          Dado : out std_logic_vector (dataWidth-1 DOWNTO 0)
    );
end entity;

architecture assincrona of memoriaROM is

  constant NOP  : std_logic_vector(3 downto 0) := "0000";
  constant LDA  : std_logic_vector(3 downto 0) := "0001";
  constant SOMA : std_logic_vector(3 downto 0) := "0010";
  constant SUB  : std_logic_vector(3 downto 0) := "0011";
  constant LDI  : std_logic_vector(3 downto 0) := "0100";
  constant STA  : std_logic_vector(3 downto 0) := "0101";

  type blocoMemoria is array(0 TO 2**addrWidth - 1) of std_logic_vector(dataWidth-1 DOWNTO 0);

  function initMemory
        return blocoMemoria is variable tmp : blocoMemoria := (others => (others => '0'));
  begin

--     LDI $4         ; Acumulador = 4
-- STA @257       ; Armazena 4 na posição 257
-- LDI $3         ; Acumulador = 3
-- STA @256       ; Armazena 3 na posição 256
-- Soma @256      ; Soma acumulador com conteúdo de 256
      
		
        tmp(0)  := LDI  & '1' & "00000100";   
        tmp(1)  := STA  & '1' & "00000001";
        tmp(2)  := LDI  & '0' & "00000011";
        tmp(3)  := STA  & '1' & "00000000"; -- X

        tmp(4)  := SOMA & '1' & "00000000"; -- 2X  
        tmp(5)  := SOMA & '1' & "00000000"; -- 3X
        tmp(6)  := SUB  & '1' & "00000001"; -- 3X - 4
        
        tmp(7)	 := NOP  & '0' & "00000000";
        tmp(8)	 := NOP  & '0' & "00000000";
        tmp(9)	 := NOP  & '0' & "00000000";
        tmp(10)	 := NOP  & '0' & "00000000";
        tmp(11)	 := NOP  & '0' & "00000000";
        tmp(12)	 := NOP  & '0' & "00000000";
        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;