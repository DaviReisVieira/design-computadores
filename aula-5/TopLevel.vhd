library ieee;
use ieee.std_logic_1164.all;

entity TopLevel is
  -- Total de bits das entradas e saidas
  generic ( 
		larguraDados : natural := 8;
      larguraEnderecosROM : natural := 9;
		larguraEnderecosRAM : natural := 8;
      simulacao : boolean := TRUE -- para gravar na placa, altere de TRUE para FALSE
  );
  port   (
    CLOCK_50 : in std_logic;
    KEY: in std_logic_vector(3 downto 0);
    SW: in std_logic_vector(9 downto 0);
    PC_OUT: out std_logic_vector(larguraEnderecosROM-1 downto 0);
    LEDR  : out std_logic_vector(9 downto 0);
	  REGA_OUT: out std_logic_vector(7 downto 0);
    INST_OUT: out std_logic_vector(12 downto 0);
    ENTRADAB_ULA: out std_logic_vector(7 downto 0);
    Palavra_Controle: out std_logic_vector(8 downto 0)
  );
end entity;


architecture arquitetura of TopLevel is
-- Sinais organizados de acordo com a entrada em cada Componente
	-- ULA:
  signal MUX_ULA_B : 		std_logic_vector (larguraDados-1 downto 0);
  signal REGA_ULA_A : 		std_logic_vector (larguraDados-1 downto 0);
  signal Saida_ULA : 		std_logic_vector (larguraDados-1 downto 0);
  signal Operacao_ULA : 	std_logic_vector (2 - 1 downto 0);
  signal ULA_FLAG_EQ : 		std_logic;
  signal FLIPFLOP_OUT : 		std_logic;
  
  
  -- MUX:
  signal Saida_RAM : 			std_logic_vector (larguraDados-1 downto 0);	 -- entrada 0 Mux
  signal ROM_Mux :			std_logic_vector (larguraDados-1 downto 0);	 -- entrada 1 Mux
  signal SelMUX : 				std_logic;
  
  
  -- Reg A
  signal Habilita_A : 			std_logic;
  signal Saida_REGA : 		std_logic_vector (larguraDados-1 downto 0);
	   -- Saida_ULA
		-- REGA_ULA_A
  
  
  -- Decoder
  signal ROM_OpCode : 		std_logic_vector (3 downto 0);
  signal Sinais_Controle : std_logic_vector (8 downto 0);
  
  
  -- Memória RAM:
  signal Entrada_RAM : 		std_logic_vector (larguraDados-1 downto 0);
  signal Endereco_RAM :		std_logic_vector (larguraEnderecosRAM-1 downto 0);
  signal Ler_RAM :			std_logic;
  signal Escrever_RAM :		std_logic;
  signal Habilita_RAM :		std_logic;
		-- Saida_RAM
  
  -- Memória ROM:
  signal Endereco_ROM :		std_logic_vector (larguraEnderecosROM -1 downto 0);
  signal Instrucao :			std_logic_vector (13 - 1 downto 0);
    
  -- Program Counter
  signal proxPC : 			std_logic_vector (larguraEnderecosROM -1 downto 0);
  signal MUXproxPC_OUT : std_logic_vector (larguraEnderecosROM -1 downto 0);
  signal SelMUXproxPC : std_logic;

  signal CLK : 					std_logic;
  

begin

-- #######  Instanciando os componentes:

-- Para simular, fica mais simples tirar o edgeDetector
gravar:  if simulacao generate
CLK <= KEY(0);
else generate
detectorSub0: work.edgeDetector(bordaSubida)
        port map (clk => CLOCK_50, entrada => (not KEY(0)), saida => CLK);
end generate;


-- O port map completo do MUX.
MUX1 :  entity work.muxGenerico2x1  generic map (larguraDados => larguraDados)
        port map( 
			entradaA_MUX => Saida_RAM,
			entradaB_MUX => Instrucao (7 downto 0),
			seletor_MUX => SelMUX,
			saida_MUX => MUX_ULA_B);

-- O port map completo do MUX.
-- ALTERAR MUX 4X1
MUXproxPC :  entity work.muxGenerico2x1  generic map (larguraDados => larguraEnderecosROM)
        port map( 
			entradaA_MUX => proxPC,
			entradaB_MUX => Instrucao (8 downto 0),
			seletor_MUX => SelMUXproxPC,
			saida_MUX => MUXproxPC_OUT);

-- O port map completo do Acumulador.
REGA : entity work.registradorGenerico   generic map (larguraDados => larguraDados)
          port map (
				DIN => Saida_ULA, 
				DOUT => Saida_REGA, 
				ENABLE => Habilita_A, 
				CLK => CLK,
        RST => '0');

-- O port map completo do Program Counter.
PC : entity work.registradorGenerico   generic map (larguraDados => larguraEnderecosROM)
          port map (
				DIN => MUXproxPC_OUT,
				DOUT => Endereco_ROM, 
				ENABLE => '1', 
				CLK => CLK,
        RST => '0');

incrementaPC :  entity work.somaConstante  generic map (larguraDados => larguraEnderecosROM, constante => 1)
        port map( 
			entrada => Endereco_ROM,
			saida => proxPC);


-- O port map completo da ULA:
ULA1 : entity work.ULASomaSubPassa  generic map(larguraDados => larguraDados)
          port map (
					entradaA => REGA_ULA_A,
					entradaB => MUX_ULA_B, 
					saida => Saida_ULA, 
					seletor => Operacao_ULA,
          flagEqual => ULA_FLAG_EQ);

FLIPFLOP1 : ENTITY work.flipFlopGenerico
          port map(
          DIN => ULA_FLAG_EQ,
          DOUT => FLIPFLOP_OUT,
          ENABLE => Sinais_Controle(2),
          CLK => CLK,
          RST => '0');
			 
-- ALTERAR PARA NOVA ENTIDADE COM JSR, RET
DESVIO1 : ENTITY work.LogicaDesvio
PORT MAP(
        JMP => Sinais_Controle(8),
        JEQ => Sinais_Controle(7),
        FLAG_EQ => FLIPFLOP_OUT,
        Sel => SelMUXproxPC
);

-- Falta acertar o conteudo da ROM (no arquivo memoriaROM.vhd)
ROM1 : entity work.memoriaROM   
          port map (
					Endereco => Endereco_ROM,
					Dado => Instrucao);
			 
			 
-- Falta acertar o conteudo da ROM (no arquivo memoriaROM.vhd)
DECODER1 : entity work.decoderInstru
			 port map (
					opcode => Instrucao (12 downto 9),
					saida => Sinais_Controle);

RAM1: entity work.memoriaRAM
		port map (
			addr     => Endereco_RAM,
			we			=> Escrever_RAM,
			re   		=> Ler_RAM,
			habilita => Habilita_RAM,
			clk      => CLK,
			dado_in  => Entrada_RAM,
			dado_out => Saida_RAM);

					
					
selMUX <= 			Sinais_Controle(6);
Habilita_A <= 		Sinais_Controle(5);
Operacao_ULA <= 	Sinais_Controle(4 downto 3);
Ler_RAM <= 			Sinais_Controle(1);
Escrever_RAM <= 	Sinais_Controle(0);

Palavra_Controle <= Sinais_Controle;

REGA_ULA_A	 <= 	Saida_REGA;
Entrada_RAM  <=   Saida_REGA;

Habilita_RAM <= 	Instrucao(8);
Endereco_RAM <= 	Instrucao(7 downto 0);

ROM_MUX <= Instrucao(7 downto 0);

INST_OUT <= Instrucao;
ENTRADAB_ULA <= MUX_ULA_B;
LEDR(7 downto 0) <= Saida_ULA;
LEDR(9 downto 8) <= Operacao_ULA;


PC_OUT <= Endereco_ROM;

REGA_OUT <= Saida_REGA;

end architecture;