library ieee;
use ieee.std_logic_1164.all;

entity TopLevel is
  -- Total de bits das entradas e saidas
  generic ( 
		larguraDados : natural := 8;
      larguraEnderecosROM : natural := 9;
		larguraEnderecosRAM : natural := 6;
		larguraInstrucao	  : natural := 12;
      simulacao : boolean := TRUE -- para gravar na placa, altere de TRUE para FALSE
  );
  port   (
    CLOCK_50 : 	in std_logic;
	 LEDR  : out std_logic_vector(9 downto 0);

  );
end entity;


architecture arquitetura of TopLevel is

begin

-- #######  Instanciando os componentes:

-- Para simular, fica mais simples tirar o edgeDetector
--gravar:  if simulacao generate
--CLK <= KEY(0);
--else generate
--detectorSub0: work.edgeDetector(bordaSubida)
--        port map (clk => CLOCK_50, entrada => (not KEY(0)), saida => CLK);
--end generate;

-- ## DECLARANDO SINAIS:

	-- AJUSTAR PARA SIMULAÇÃO::::
	signal CLK						std_logic;


	-- CPU
	signal address_OUT 			std_logic_vector(larguraEnderecosROM -1 downto 0);
	
	-- CPU <-> ROM
	signal CPU_memoriaROM		std_logic_vector(larguraEnderecosROM -1 downto 0);
	signal instrucao				std_logic_vector(larguraInstrucao -1 downto 0);
	
	-- CPU <-> RAM
	signal hab_RAM					std_logic;
	signal wr						std_logic;
	signal rd						std_logic;
	signal data_OUT_RAM 			std_logic_vector(larguraDados -1 downto 0);
	signal data_OUT_CPU 			std_logic_vector(larguraDados -1 downto 0);
	signal address_RAM			std_logic_vector(larguraEnderecosRAM-1 downto 0);

	-- CPU <-> DECODER
	signal decoder_IN				std_logic_vector(2 downto 0);
	
	-- ADICIONAR SAÍDAS DO DECODER PARA OS PERIFÉRICOS
	-- DECODER <-> periféricos
	signal saida_DECODER1			std_logic_vector(7 downto 0);
	signal saida_DECODER2			std_logic_vector(7 downto 0);
	signal hab_RAM 					std_logic;
	signal hab_LEDS					std_logic;
	
	-- enables:
	signal ENABLE_LEDR07: 			std_logic;
	signal ENABLE_LEDR8:	 			std_logic;
	signal ENABLE_LEDR9: 			std_logic;
	
	

CPU: entity work.CPU
		 port map (
			CLOCK_50 => CLK,
			RESET => '0',
			
			INSTRUCAO_IN => instrucao,
			DATA_IN => data_OUT_RAM,
			
			DATA_OUT => data_OUT_CPU,
			DATA_ADDRESS => address_OUT,
			ROM_ADDRESS => CPU_memoriaROM,
			
			WR => wr,
			RD => rd
		);
					
RAM64: entity work.memoriaRAM
		port map (
			addr     => address_OUT (5 downto 0),
			we			=> wr,
			re   		=> rd,
			habilita => hab_RAM,
			clk      => CLK,
			dado_in  => data_OUT_CPU,
			dado_out => data_OUT_RAM);
			
ROM : entity work.memoriaROM   
          port map (
					Endereco => CPU_memoriaROM,
					Dado => instrucao);
					
DECODER1: entity work.decoder3x8
			port map (
				entrada => address_OUT(8 downto 6),
				saida => saida_DECODER1
			);
			
DECODER2: entity work.decoder3x8
			port map (
				entrada => address_OUT(2 downto 0),
				saida => saida_DECODER2
			);
			
REG_LEDR07: entity work.registradorGenerico
			port map (
				DIN 	=> data_OUT_CPU, 
				DOUT 	=> LEDR (7 downto 0),
				ENABLE => ENABLE_LEDR07,
				CLK 	=> CLK,
				RST => '0'
			);

FLIP_FLOP_LED8: entity work.flipflopGenerico
			port map (
				DIN 	=> data_OUT_CPU(0), 
				DOUT 	=> LEDR(8),
				ENABLE => ENABLE_LEDR8,
				CLK 	=> CLK,
				RST => '0'
			
			);
			
FLIP_FLOP_LED9: entity work.flipflopGenerico
			port map (
				DIN 	=> data_OUT_CPU(0), 
				DOUT 	=> LEDR(9),
				ENABLE => ENABLE_LEDR9,
				CLK 	=> CLK,
				RST => '0'
			
			);
			
			
AND_LEDR07: entity work.and3x1
			port map (
				entradaA => wr,
				entradaB => hab_LEDS,
				entradaC => saida_DECODER2(0),
				saida => ENABLE_LEDR07
			);
			
AND_LEDR8: entity work.and3x1
			port map (
				entradaA => wr,
				entradaB => hab_LEDS,
				entradaC => saida_DECODER2(1),
				saida => ENABLE_LEDR8
			);
			
AND_LEDR9: entity work.and3x1
			port map (
				entradaA => wr,
				entradaB => hab_LEDS,
				entradaC => saida_DECODER2(2),
				saida => ENABLE_LEDR9
			);
			
	
			
hab_RAM <= saida_DECODER1(0);
hab_LEDS <= saida_DECODER1(4);

-- LEDS estão conectados às saídas dos FF ou registrador



end architecture;