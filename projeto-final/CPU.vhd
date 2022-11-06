library ieee;
use ieee.std_logic_1164.all;

entity CPU is
  -- Total de bits das entradas e saidas
  generic ( 
		larguraDados : natural := 8;
    larguraEnderecosROM : natural := 9;
		larguraEnderecosRAM : natural := 6;
		larguraInstrucao	  : natural := 15;
    larguraRegs: natural := 2;
    simulacao : boolean := TRUE -- para gravar na placa, altere de TRUE para FALSE
  );
  port   (
    CLOCK_50 : 	in std_logic;
	 RESET:			in std_logic; -- NÃO TEM OPCODE
	 INSTRUCAO_IN:	in std_logic_vector(larguraInstrucao -1 downto 0); -- ANTIGO Palavra_Controle
	 DATA_IN:		in std_logic_vector (larguraDados -1 downto 0); 
    
	 DATA_OUT:		out std_logic_vector (larguraDados -1 downto 0); 
	 DATA_ADDRESS:	out std_logic_vector (larguraEnderecosROM -1 downto 0); 
	 ROM_ADDRESS: 	out std_logic_vector (larguraEnderecosROM -1 downto 0); 
	 WR:				out std_logic; 
	 RD:				out std_logic
  );
end entity;


architecture arquitetura of CPU is
-- Sinais organizados de acordo com a entrada em cada Componente
	-- da Instrução:
	signal IMEDIATO:			std_logic_vector (larguraDados-1 downto 0);
	signal IMEDIATO_ADDRESS:std_logic_vector (larguraEnderecosROM -1 downto 0);
	
	-- ULA:
  signal MUX_ULA_B : 		  std_logic_vector (larguraDados-1 downto 0);
  signal REGA_ULA_A : 		std_logic_vector (larguraDados-1 downto 0);
  signal Saida_ULA : 		  std_logic_vector (larguraDados-1 downto 0);
  signal Operacao_ULA : 	std_logic_vector (2 - 1 downto 0);
  signal ULA_FLAG_EQ : 		std_logic;
  signal ULA_FLAG_LESS : 	std_logic;
  signal FLIPFLOP_EQUAL_OUT : 	std_logic;
  signal FLIPFLOP_LESS_OUT : 	std_logic;
  
  
  -- MUX:
  signal Saida_RAM : 		std_logic_vector (larguraDados-1 downto 0);	 -- entrada 0 Mux
  signal ROM_Mux :			std_logic_vector (larguraDados-1 downto 0);	 -- entrada 1 Mux
  signal SelMUX : 			std_logic;
  
  
  -- Reg A
  signal Habilita_REGs : 		std_logic;
  signal Saida_REGs : 		std_logic_vector (larguraDados-1 downto 0);
	   -- Saida_ULA
		-- REGA_ULA_A
  
  -- Decoder
  signal ROM_OpCode : 		std_logic_vector (3 downto 0);
  signal Sinais_Controle : std_logic_vector (13 downto 0);
      
  -- Program Counter
  signal PC_OUT:				std_logic_vector (larguraEnderecosROM -1 downto 0);
  signal PC_TO_INCREMENTA: std_logic_vector (larguraEnderecosROM -1 downto 0);
  signal proxPC : 			std_logic_vector (larguraEnderecosROM -1 downto 0);
  signal MUXproxPC_OUT : 	std_logic_vector (larguraEnderecosROM -1 downto 0);
  signal SelMUXproxPC : 	std_logic_vector (1 downto 0);

  -- END RETORNO
  signal EndRetorno_OUT : 	std_logic_vector (8 DOWNTO 0);

  signal CLK : 				std_logic;

begin

-- #######  Instanciando os componentes:

-- O port map completo do MUX.
MUX1 :  entity work.muxGenerico2x1  generic map (larguraDados => larguraDados)
        port map( 
			entradaA_MUX => DATA_IN,
			entradaB_MUX => IMEDIATO,
			seletor_MUX => SelMUX,
			saida_MUX => MUX_ULA_B);

-- O port map completo do MUX.
-- ALTERAR MUX 4X1
MUXproxPC :  entity work.muxGenerico4x1  generic map (larguraDados => larguraEnderecosROM)
        port map( 
			entradaA_MUX => proxPC,
			entradaB_MUX => IMEDIATO_ADDRESS,
			entradaC_MUX => EndRetorno_OUT,
			entradaD_MUX => "000000000",
			seletor_MUX => SelMUXproxPC,
			saida_MUX => MUXproxPC_OUT);

-- O port map completo do Acumulador-Memoria.
REGS : entity work.bancoRegistradoresArqRegMem   generic map (larguraDados => larguraDados, larguraEndBancoRegs => larguraRegs)
port map ( clk => CLK,
    endereco => INSTRUCAO_IN(larguraInstrucao -1 -4 downto larguraInstrucao -larguraRegs -4),
    dadoEscrita => Saida_ULA,
    habilitaEscrita => Habilita_REGs,
    saida  => Saida_REGs);

-- O port map completo do Program Counter.
PC : entity work.registradorGenerico   generic map (larguraDados => larguraEnderecosROM)
          port map (
				DIN => MUXproxPC_OUT,
				DOUT => PC_OUT, 
				ENABLE => '1', 
				CLK => CLK,
        RST => '0');

incrementaPC :  entity work.somaConstante  generic map (larguraDados => larguraEnderecosROM, constante => 1)
        port map( 
			entrada => PC_TO_INCREMENTA,
			saida => proxPC);


-- O port map completo da ULA:
ULA1 : entity work.ULASomaSubPassa  generic map(larguraDados => larguraDados)
          port map (
					entradaA => REGA_ULA_A,
					entradaB => MUX_ULA_B, 
					saida => Saida_ULA, 
					seletor => Operacao_ULA,
          flagEqual => ULA_FLAG_EQ,
          flagLess => ULA_FLAG_LESS);

FLIPFLOP_CEQ : ENTITY work.flipFlopGenerico
          port map(
          DIN => ULA_FLAG_EQ,
          DOUT => FLIPFLOP_EQUAL_OUT,
          ENABLE => Sinais_Controle(2),
          CLK => CLK,
          RST => '0');

FLIPFLOP_CLT : ENTITY work.flipFlopGenerico
          port map(
          DIN => ULA_FLAG_LESS,
          DOUT => FLIPFLOP_LESS_OUT,
          ENABLE => Sinais_Controle(3),
          CLK => CLK,
          RST => '0');

END_RETORNO : ENTITY work.registradorGenerico GENERIC MAP (larguraDados => 9)
PORT MAP(
        DIN => proxPC,
        DOUT => EndRetorno_OUT,
        ENABLE => Sinais_Controle(13),
        CLK => CLK,
        RST => '0'
);
          
DESVIO1 : ENTITY work.LogicaDesvio
PORT MAP(
        JLT => Sinais_Controle(12),
        JMP => Sinais_Controle(11),
        RET => Sinais_Controle(10),
        JSR => Sinais_Controle(9),
        JEQ => Sinais_Controle(8),
        FLAG_EQ => FLIPFLOP_EQUAL_OUT,
        FLAG_LESS => FLIPFLOP_LESS_OUT,
        Sel => SelMUXproxPC
);


			 
			 
DECODER1 : entity work.decoderInstru
			 port map (
					opcode => INSTRUCAO_IN (larguraInstrucao-1 downto larguraInstrucao -1 -3),
					saida => Sinais_Controle
			);

-- CONEXÃO DOS SINAIS:
CLK <= CLOCK_50;

-- LER / ESCREVER RAM
RD <= Sinais_Controle(1);
WR <= Sinais_Controle(0);		
-- RESET <= não tem op					
PC_TO_INCREMENTA <= PC_OUT;
ROM_ADDRESS <= PC_OUT;

IMEDIATO <= INSTRUCAO_IN(7 downto 0);
IMEDIATO_ADDRESS <= INSTRUCAO_IN (8 downto 0);
DATA_ADDRESS <= INSTRUCAO_IN (8 downto 0);

Operacao_ULA <= Sinais_Controle(5 downto 4);
SelMUX <= Sinais_Controle(7);
Habilita_REGs <= Sinais_Controle(6);

REGA_ULA_A <= Saida_REGs;

DATA_OUT <= Saida_REGs;

-- INSTRUCAO_IN <= conectada ao DECODER
end architecture;