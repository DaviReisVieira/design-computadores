library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity memoriaROM is
   generic (
          dataWidth: natural := 4;
          addrWidth: natural := 3
    );
   port (
          Endereco : in std_logic_vector (addrWidth-1 DOWNTO 0);
          Dado : out std_logic_vector (dataWidth-1 DOWNTO 0)
    );
end entity;

architecture assincrona of memoriaROM is

  constant NOP  : std_logic_vector(3 downto 0) := "X00X";
  constant LDA  : std_logic_vector(3 downto 0) := "010X";
  constant SOMA : std_logic_vector(3 downto 0) := "1101";
  constant SUB  : std_logic_vector(3 downto 0) := "1100";
  constant CLRA : std_logic_vector(3 downto 0) := "XX1X";

  type blocoMemoria is array(0 TO 2**addrWidth - 1) of std_logic_vector(dataWidth-1 DOWNTO 0);

  function initMemory
        return blocoMemoria is variable tmp : blocoMemoria := (others => (others => '0'));
  begin
      -- Palavra de Controle = SelMUX, Habilita_A, Reset_A, Operacao_ULA
      -- Inicializa os endereços:
        tmp(0)  := CLRA;   -- Desta posicao para baixo, é necessário acertar os valores
        tmp(1)  := SOMA;
        tmp(2)  := SOMA;
        tmp(3)  := SOMA;
        tmp(4)  := SUB;
        tmp(5)  := "0000";
        tmp(6)  := "0000";
        tmp(7)  := "0000";
        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;