library ieee;
use ieee.std_logic_1164.all;

entity TopLevel is
  -- Total de bits das entradas e saidas
  generic ( 
		larguraDados : natural := 8;
      larguraEnderecosROM : natural := 9;
		larguraEnderecosRAM : natural := 6;
		larguraInstrucao	  : natural := 15;
      simulacao : boolean := FALSE -- para gravar na placa, altere de TRUE para FALSE
  );
  port   (
    CLOCK_50 : 	in std_logic;
	 SW:				in std_logic_vector(9 downto 0);
	 LEDR  : 		out std_logic_vector(9 downto 0);
	 HEX0, HEX1, HEX2, HEX3, HEX4, HEX5:		out std_logic_vector(6 downto 0);
	 KEY:				in	std_logic_vector(3 downto 0);
	 FPGA_RESET_N:	in	std_logic;
	 DATA_OUT:		out std_logic_vector(larguraDados-1 downto 0)

  );
end entity;


architecture arquitetura of TopLevel is
-- ## DECLARANDO SINAIS:

	-- AJUSTAR PARA SIMULAÇÃO::::
	signal CLK	:					std_logic;


	-- CPU
	signal address_OUT :			std_logic_vector(larguraEnderecosROM -1 downto 0);
	signal DATA_IN 	:			std_logic_vector(larguraDados -1 downto 0);
	
	-- CPU <-> ROM
	signal CPU_memoriaROM	:	std_logic_vector(larguraEnderecosROM -1 downto 0);
	signal instrucao		:		std_logic_vector(larguraInstrucao -1 downto 0);
	
	-- CPU <-> RAM
	signal hab_RAM	:				std_logic;
	signal wr		:				std_logic;
	signal rd			:			std_logic;
	signal data_OUT_CPU 		:	std_logic_vector(larguraDados -1 downto 0);
	signal address_RAM	:		std_logic_vector(larguraEnderecosRAM-1 downto 0);

	-- CPU <-> DECODER
	signal decoder_IN		:		std_logic_vector(2 downto 0);
	
	-- ADICIONAR SAÍDAS DO DECODER PARA OS PERIFÉRICOS
	-- DECODER <-> periféricos
	signal saida_DECODER1	:		std_logic_vector(7 downto 0);
	signal saida_DECODER2	:		std_logic_vector(7 downto 0);
	signal hab_BLOCO4				:	std_logic;
	signal hab_7SEGs_and_KEYs	:	std_logic;
	signal hab_BLOCO5			:	std_logic;
	
	-- enables:
	signal ENABLE_LEDR0_7: 			std_logic;
	signal ENABLE_LEDR8:	 		std_logic;
	signal ENABLE_LEDR9: 			std_logic;
	signal ENABLE_SW0_7: 			std_logic;
	signal ENABLE_SW8:	 			std_logic;
	signal ENABLE_SW9: 				std_logic;
	signal ENABLE_HEX:				std_logic_vector(5 downto 0);
	signal ENABLE_KEY:				std_logic_vector(3 downto 0);
	signal ENABLE_FPGA_RESET:	 	std_logic;
	
	-- Registradores <-> Decodificador 7 seg
	signal REG_DEC_0:					std_logic_vector(3 downto 0);
	signal REG_DEC_1:					std_logic_vector(3 downto 0);
	signal REG_DEC_2:					std_logic_vector(3 downto 0);
	signal REG_DEC_3:					std_logic_vector(3 downto 0);
	signal REG_DEC_4:					std_logic_vector(3 downto 0);
	signal REG_DEC_5:					std_logic_vector(3 downto 0);
	
	signal DEBOUNCE_KEY0:			std_logic_vector(larguraDados -1 downto 0);
	signal DEBOUNCE_KEY1:			std_logic_vector(larguraDados -1 downto 0);
	signal DEBOUNCE_KEY4:			std_logic_vector(larguraDados -1 downto 0);
	signal base_tempo_normal, base_tempo_debounce, base_tempo_mux, limpa_interface_divisor, habilita_sinal_um_segundo, habilita_leitura_interface, base_tempo_datain:	std_Logic;
	
	-- obs: SW, KEY e FPGA_RESET_N, HEX0, HEX1, HEX2, HEX3, HEX4, HEX5 
	-- devem seguir nomenclatura informada no arquivo .qsf
	
begin
	
-- Para simular, fica mais simples tirar o edgeDetector
gravar:  if simulacao generate
CLK <= KEY(0);
else generate
-- detectorSub0: work.edgeDetector(bordaSubida)
--         port map (clk => CLOCK_50, entrada => (not KEY(1)), saida => CLK);  
CLK <= CLOCK_50;

end generate;

	
-- ## INSTANCIANDO OS COMPONENTES
baseTempoNormal: entity work.divisorGenerico
           generic map (divisor => 25000000)
           port map (clk => clk, saida_clk => base_tempo_normal);

baseTempoDebounce: entity work.divisorGenerico
			generic map (divisor => 2500)
			port map (clk => clk, saida_clk => base_tempo_debounce);

muxBaseTempo: entity work.mux2x1
			port map (entradaA_MUX => base_tempo_normal, entradaB_MUX => base_tempo_debounce, saida_MUX => base_tempo_mux, seletor_MUX => (not KEY(3)));

registraTempoSegundoOuDebouce: entity work.flipflopGenerico
port map (DIN => '1', DOUT => habilita_sinal_um_segundo,
		ENABLE => '1', CLK => base_tempo_mux,
		RST => limpa_interface_divisor);

limpa_interface_divisor <= wr and address_OUT(8) 
							and address_OUT(7) 
							and address_OUT(6) 
							and address_OUT(5) 
							and address_OUT(4) 
							and address_OUT(3) 
							and address_OUT(2) 
							and not address_OUT(1) 
							and not address_OUT(0); 

AND_INTERFACE: entity work.and4x1
				port map(
					entradaA => rd,
					entradaB => hab_BLOCO5,
					entradaC => saida_DECODER2(5),
					entradaD => hab_7SEGs_and_KEYs,
					saida => habilita_leitura_interface			
				);

base_tempo_datain <= habilita_sinal_um_segundo when habilita_leitura_interface = '1' else 'Z';

DATA_IN(0) <= base_tempo_datain;
				
detectorSubDebounceKey0: work.edgeDebounceDetector
			port map (
				CLOCK_50 => CLK,
				KEY => (not KEY(0)),
				habilita => ENABLE_KEY(0),
				address => address_OUT,
				wr => wr,
				saida => DEBOUNCE_KEY0			
			);
			
detectorSubDebounceKey1: work.edgeDebounceDetectorKey1
			port map (
				CLOCK_50 => CLK,
				KEY => (not KEY(1)),
				habilita => ENABLE_KEY(1),
				address => address_OUT,
				wr => wr,
				saida => DEBOUNCE_KEY1		
			);

detectorSubDebounceReset: work.edgeDebounceDetectorReset
port map (
	CLOCK_50 => CLK,
	KEY => (not FPGA_RESET_N),
	habilita => ENABLE_FPGA_RESET,
	address => address_OUT,
	wr => wr,
	saida => DEBOUNCE_KEY4		
);

CPU: entity work.CPU
		 port map (
			CLOCK_50 => CLK,
			RESET => '0',
			
			INSTRUCAO_IN => instrucao,
			DATA_IN => DATA_IN,
			
			DATA_OUT => data_OUT_CPU,
			DATA_ADDRESS => address_OUT,
			ROM_ADDRESS => CPU_memoriaROM,
			
			WR => wr,
			RD => rd
		);
					
RAM64: entity work.memoriaRAM
		generic map(
					dataWidth => 8,
					addrWidth => 6
			 )
		port map (
			addr     => address_OUT (5 downto 0),
			we			=> wr,
			re   		=> rd,
			habilita => hab_RAM,
			clk      => CLK,
			dado_in  => data_OUT_CPU,
			dado_out => DATA_IN);
			
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
				DOUT 	=> REG_DEC_0,
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
				DOUT 	=> REG_DEC_1,
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
				DOUT 	=> REG_DEC_2,
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
				DOUT 	=> REG_DEC_3,
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
				DOUT 	=> REG_DEC_4,
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
				DOUT 	=> REG_DEC_5,
				ENABLE => ENABLE_HEX(5),
				CLK 	=> CLK,
				RST => '0'
			);


			

AND_LEDR0_7: entity work.and4x1
			port map (
				entradaA => wr,
				entradaB => hab_BLOCO4,
				entradaC => saida_DECODER2(0),
				entradaD => not (hab_7SEGs_and_KEYs),
				saida => ENABLE_LEDR0_7
			);
			
AND_LEDR8: entity work.and4x1
			port map (
				entradaA => wr,
				entradaB => hab_BLOCO4,
				entradaC => saida_DECODER2(1),
				entradaD => not (hab_7SEGs_and_KEYs),
				saida => ENABLE_LEDR8
			);
			
AND_LEDR9: entity work.and4x1
			port map (
				entradaA => wr,
				entradaB => hab_BLOCO4,
				entradaC => saida_DECODER2(2),
				entradaD => not (hab_7SEGs_and_KEYs),
				saida => ENABLE_LEDR9
			);
			
AND_HEX0: entity work.and4x1
			port map (
				entradaA => wr,
				entradaB => hab_BLOCO4,
				entradaC => saida_DECODER2(0),
				entradaD => hab_7SEGs_and_KEYs,
				saida => ENABLE_HEX(0)
			);
AND_HEX1: entity work.and4x1
			port map (
				entradaA => wr,
				entradaB => hab_BLOCO4,
				entradaC => saida_DECODER2(1),
				entradaD => hab_7SEGs_and_KEYs,
				saida => ENABLE_HEX(1)
			);
AND_HEX2: entity work.and4x1
			port map (
				entradaA => wr,
				entradaB => hab_BLOCO4,
				entradaC => saida_DECODER2(2),
				entradaD => hab_7SEGs_and_KEYs,
				saida => ENABLE_HEX(2)
			);
AND_HEX3: entity work.and4x1
			port map (
				entradaA => wr,
				entradaB => hab_BLOCO4,
				entradaC => saida_DECODER2(3),
				entradaD => hab_7SEGs_and_KEYs,
				saida => ENABLE_HEX(3)
			);
AND_HEX4: entity work.and4x1
			port map (
				entradaA => wr,
				entradaB => hab_BLOCO4,
				entradaC => saida_DECODER2(4),
				entradaD => hab_7SEGs_and_KEYs,
				saida => ENABLE_HEX(4)
			);
AND_HEX5: entity work.and4x1
			port map (
				entradaA => wr,
				entradaB => hab_BLOCO4,
				entradaC => saida_DECODER2(5),
				entradaD => hab_7SEGs_and_KEYs,
				saida => ENABLE_HEX(5)
			);
			
			

DECODER_7SEG_0: entity work.conversorHex7Seg
				port map (
					dadoHex => REG_DEC_0,
					apaga => '0',
					negativo => '0',
					overflow => '0',
					saida7seg => HEX0
				);
				
DECODER_7SEG_1: entity work.conversorHex7Seg
				port map (
					dadoHex => REG_DEC_1,
					apaga => '0',
					negativo => '0',
					overflow => '0',
					saida7seg => HEX1
				);
				
DECODER_7SEG_2: entity work.conversorHex7Seg
				port map (
					dadoHex => REG_DEC_2,
					apaga => '0',
					negativo => '0',
					overflow => '0',
					saida7seg => HEX2
				);
				
DECODER_7SEG_3: entity work.conversorHex7Seg
				port map (
					dadoHex => REG_DEC_3,
					apaga => '0',
					negativo => '0',
					overflow => '0',
					saida7seg => HEX3
				);
				
DECODER_7SEG_4: entity work.conversorHex7Seg
				port map (
					dadoHex => REG_DEC_4,
					apaga => '0',
					negativo => '0',
					overflow => '0',
					saida7seg => HEX4
				);
				
DECODER_7SEG_5: entity work.conversorHex7Seg
				port map (
					dadoHex => REG_DEC_5,
					apaga => '0',
					negativo => '0',
					overflow => '0',
					saida7seg => HEX5
				);
			
			


			
AND_KEY0: entity work.and4x1
				port map(
					entradaA => rd,
					entradaB => hab_BLOCO5,
					entradaC => saida_DECODER2(0),
					entradaD => hab_7SEGs_and_KEYs,
					saida => ENABLE_KEY(0)				
				);

AND_KEY1: entity work.and4x1
				port map(
					entradaA => rd,
					entradaB => hab_BLOCO5,
					entradaC => saida_DECODER2(1),
					entradaD => hab_7SEGs_and_KEYs,
					saida => ENABLE_KEY(1)				
				);
				
AND_KEY2: entity work.and4x1
				port map(
					entradaA => rd,
					entradaB => hab_BLOCO5,
					entradaC => saida_DECODER2(2),
					entradaD => hab_7SEGs_and_KEYs,
					saida => ENABLE_KEY(2)				
				);
				
AND_KEY3: entity work.and4x1
				port map(
					entradaA => rd,
					entradaB => hab_BLOCO5,
					entradaC => saida_DECODER2(3),
					entradaD => hab_7SEGs_and_KEYs,
					saida => ENABLE_KEY(3)				
				);
				
AND_KEY_FPGA_RESET_N: entity work.and4x1
				port map(
					entradaA => rd,
					entradaB => hab_BLOCO5,
					entradaC => saida_DECODER2(4),
					entradaD => hab_7SEGs_and_KEYs,
					saida => ENABLE_FPGA_RESET				
				);

BUFFER_KEY2 :  entity work.buffer_3_state_simples
        port map(
				entrada => KEY(2),
				habilita =>  ENABLE_KEY(2),
				saida => DATA_IN(0)
			);
			
BUFFER_KEY3 :  entity work.buffer_3_state_simples
        port map(
				entrada => KEY(3),
				habilita =>  ENABLE_KEY(3),
				saida => DATA_IN(0)
			);

AND_SW0_7: entity work.and4x1
				port map(
					entradaA => rd,
					entradaB => hab_BLOCO5,
					entradaC => saida_DECODER2(0),
					entradaD => not(hab_7SEGs_and_KEYs),
					saida => ENABLE_SW0_7				
				);
				
AND_SW8: entity work.and4x1
				port map(
					entradaA => rd,
					entradaB => hab_BLOCO5,
					entradaC => saida_DECODER2(1),
					entradaD => not(hab_7SEGs_and_KEYs),
					saida => ENABLE_SW8				
				);
				
AND_SW9: entity work.and4x1
				port map(
					entradaA => rd,
					entradaB => hab_BLOCO5,
					entradaC => saida_DECODER2(2),
					entradaD => not(hab_7SEGs_and_KEYs),
					saida => ENABLE_SW9				
				);

BUFFER_3_STATE_8_PORTAS :  entity work.buffer_3_state_8portas
        port map(
				entrada => SW (7 downto 0),
				habilita =>  ENABLE_SW0_7,
				saida => DATA_IN
			);
			
BUFFER_SW8 :  entity work.buffer_3_state_simples
        port map(
				entrada => SW (8),
				habilita =>  ENABLE_SW8,
				saida => DATA_IN(0)
			);
			
BUFFER_SW9 :  entity work.buffer_3_state_simples
        port map(
				entrada => SW (9),
				habilita =>  ENABLE_SW9,
				saida => DATA_IN(0)
			);
			
			
hab_RAM <= saida_DECODER1(0);
hab_BLOCO4 <= saida_DECODER1(4); -- bloco 4
hab_BLOCO5 <= saida_DECODER1(5); -- bloco 5

hab_7SEGs_and_KEYs <= address_OUT(5);

DATA_OUT <= data_OUT_CPU;
DATA_IN <= DEBOUNCE_KEY0;
DATA_IN <= DEBOUNCE_KEY1;
DATA_IN <= DEBOUNCE_KEY4;
-- LEDS estão conectados às saídas dos FF ou registrador



end architecture;