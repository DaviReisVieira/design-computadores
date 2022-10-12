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
	 HEX:		out std_logic_vector(5 downto 0);

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
	signal hab_7SEGs					std_logic;
	
	-- enables:
	signal ENABLE_LEDR0_7: 			std_logic;
	signal ENABLE_LEDR8:	 			std_logic;
	signal ENABLE_LEDR9: 			std_logic;
	signal ENABLE_HEX:				std_logic_vector(5 downto 0);
	
	-- Registradores <-> Decodificador 7 seg
	signal REG_HEX0:					std_logic_vector(3 downto 0);
	signal REG_HEX1:					std_logic_vector(3 downto 0);
	signal REG_HEX2:					std_logic_vector(3 downto 0);
	signal REG_HEX3:					std_logic_vector(3 downto 0);
	signal REG_HEX4:					std_logic_vector(3 downto 0);
	signal REG_HEX5:					std_logic_vector(3 downto 0);
	
	-- 7 Segmentos:
	signal HEX0							std_logic_vector(6 downto 0);
	signal HEX1							std_logic_vector(6 downto 0);
	signal HEX2							std_logic_vector(6 downto 0);
	signal HEX3							std_logic_vector(6 downto 0);
	signal HEX4							std_logic_vector(6 downto 0);
	signal HEX5							std_logic_vector(6 downto 0);
	
	

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
			
REG_LEDR0_7: entity work.registradorGenerico
			port map (
				DIN 	=> data_OUT_CPU, 
				DOUT 	=> LEDR (7 downto 0),
				ENABLE => ENABLE_LEDR0_7,
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
			
			
REG_HEX0: entity work.registradorGenerico
			generic map (
				larguraDados => 4
			)
			port map (
				DIN 	=> data_OUT_CPU(3 downto 0), 
				DOUT 	=> REG_HEX0,
				ENABLE => ENABLE_HEX(0),
				CLK 	=> CLK,
				RST => '0'
			);
			
REG_HEX1: entity work.registradorGenerico
			generic map (
				larguraDados => 4
			)
			port map (
				DIN 	=> data_OUT_CPU(3 downto 0), 
				DOUT 	=> REG_HEX1,
				ENABLE => ENABLE_HEX(1),
				CLK 	=> CLK,
				RST => '0'
			);
			
REG_HEX2: entity work.registradorGenerico
			generic map (
				larguraDados => 4
			)
			port map (
				DIN 	=> data_OUT_CPU(3 downto 0), 
				DOUT 	=> REG_HEX2,
				ENABLE => ENABLE_HEX(2),
				CLK 	=> CLK,
				RST => '0'
			);
			
REG_HEX3: entity work.registradorGenerico
			generic map (
				larguraDados => 4
			)
			port map (
				DIN 	=> data_OUT_CPU(3 downto 0), 
				DOUT 	=> REG_HEX3,
				ENABLE => ENABLE_HEX(3),
				CLK 	=> CLK,
				RST => '0'
			);

REG_HEX4: entity work.registradorGenerico
			generic map (
				larguraDados => 4
			)
			port map (
				DIN 	=> data_OUT_CPU(3 downto 0), 
				DOUT 	=> REG_HEX4,
				ENABLE => ENABLE_HEX(4),
				CLK 	=> CLK,
				RST => '0'
			);
			
REG_HEX5: entity work.registradorGenerico
			generic map (
				larguraDados => 4
			)
			port map (
				DIN 	=> data_OUT_CPU(3 downto 0), 
				DOUT 	=> REG_HEX5,
				ENABLE => ENABLE_HEX(5),
				CLK 	=> CLK,
				RST => '0'
			);


			

AND_LEDR0_7: entity work.and4x1
			port map (
				entradaA => wr,
				entradaB => hab_LEDS,
				entradaC => saida_DECODER2(0),
				entradaD => not (hab_7SEGs),
				saida => ENABLE_LEDR0_7
			);
			
AND_LEDR8: entity work.and4x1
			port map (
				entradaA => wr,
				entradaB => hab_LEDS,
				entradaC => saida_DECODER2(1),
				entradaD => not (hab_7SEGs),
				saida => ENABLE_LEDR8
			);
			
AND_LEDR9: entity work.and4x1
			port map (
				entradaA => wr,
				entradaB => hab_LEDS,
				entradaC => saida_DECODER2(2),
				entradaD => not (hab_7SEGs),
				saida => ENABLE_LEDR9
			);
			
AND_HEX0: entity work.and4x1
			port map (
				entradaA => wr,
				entradaB => hab_LEDS,
				entradaC => saida_DECODER2(0),
				entradaD => hab_7SEGs,
				saida => ENABLE_HEX(0)
			);
AND_HEX1: entity work.and4x1
			port map (
				entradaA => wr,
				entradaB => hab_LEDS,
				entradaC => saida_DECODER2(1),
				entradaD => hab_7SEGs,
				saida => ENABLE_HEX(1)
			);
AND_HEX2: entity work.and4x1
			port map (
				entradaA => wr,
				entradaB => hab_LEDS,
				entradaC => saida_DECODER2(2),
				entradaD => hab_7SEGs,
				saida => ENABLE_HEX(2)
			);
AND_HEX3: entity work.and4x1
			port map (
				entradaA => wr,
				entradaB => hab_LEDS,
				entradaC => saida_DECODER2(3),
				entradaD => hab_7SEGs,
				saida => ENABLE_HEX(3)
			);
AND_HEX4: entity work.and4x1
			port map (
				entradaA => wr,
				entradaB => hab_LEDS,
				entradaC => saida_DECODER2(4),
				entradaD => hab_7SEGs,
				saida => ENABLE_HEX(4)
			);
AND_HEX5: entity work.and4x1
			port map (
				entradaA => wr,
				entradaB => hab_LEDS,
				entradaC => saida_DECODER2(5),
				entradaD => hab_7SEGs,
				saida => ENABLE_HEX(5)
			);
			
			

DECODER_7SEG_0: entity work.conversorHex7Seg
				port map (
					dadoHex => REG_HEX0,
					apaga => '0',
					negativo => '0',
					overflow => '0',
					saida7seg => HEX0
				);
				
DECODER_7SEG_1: entity work.conversorHex7Seg
				port map (
					dadoHex => REG_HEX1,
					apaga => '0',
					negativo => '0',
					overflow => '0',
					saida7seg => HEX1
				);
				
DECODER_7SEG_2: entity work.conversorHex7Seg
				port map (
					dadoHex => REG_HEX2,
					apaga => '0',
					negativo => '0',
					overflow => '0',
					saida7seg => HEX2
				);
				
DECODER_7SEG_3: entity work.conversorHex7Seg
				port map (
					dadoHex => REG_HEX3,
					apaga => '0',
					negativo => '0',
					overflow => '0',
					saida7seg => HEX3
				);
				
DECODER_7SEG_4: entity work.conversorHex7Seg
				port map (
					dadoHex => REG_HEX4,
					apaga => '0',
					negativo => '0',
					overflow => '0',
					saida7seg => HEX4
				);
				
DECODER_7SEG_5: entity work.conversorHex7Seg
				port map (
					dadoHex => REG_HEX5,
					apaga => '0',
					negativo => '0',
					overflow => '0',
					saida7seg => HEX5
				);
			
			

hab_RAM <= saida_DECODER1(0);
hab_LEDS <= saida_DECODER1(4);
hab_7SEGs <= data_OUT_CPU(5);

-- LEDS estão conectados às saídas dos FF ou registrador



end architecture;