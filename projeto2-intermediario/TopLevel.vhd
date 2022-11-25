library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity TopLevel is
  -- Total de bits das entradas e saidas
  generic ( 
	larguraEnderecosROM : natural := 32;
	larguraEnderecosRAM : natural := 12;
	larguraInstrucao	: natural := 32;
	  
	larguraDados 		: natural := 32;
	larguraEndBancoRegs : natural := 5;

	larguraSinaisControle : natural := 10;
	
	larguraControleULA	: natural := 3;
	
	larguraOpCode	    : natural := 6;
	larguraImediatoTipoI: natural := 16;
	larguraImediatoTipoJ: natural := 26;
	larguraFunct		: natural := 6;

	larguraShift		: natural := 2;
	
	simulacao 			: boolean := TRUE -- para gravar na placa, altere de TRUE para FALSE
  );
  port   (
    CLOCK_50 : 	in std_logic;
	DATA_OUT:	out std_logic_vector(larguraDados-1 downto 0);
	KEY:		in	std_logic_vector(3 downto 0);
	HEX0, HEX1, HEX2, HEX3, HEX4, HEX5:		out std_logic_vector(6 downto 0);
	LEDR  : 		out std_logic_vector(9 downto 0);
	SW:				in std_logic_vector(9 downto 0);
	-- inspectR0: out std_logic_vector(larguraDados-1 downto 0);
	-- inspectR1: out std_logic_vector(larguraDados-1 downto 0);
	-- inspectR2: out std_logic_vector(larguraDados-1 downto 0);
	inspectEndRS: out std_logic_vector(larguraEndBancoRegs-1 downto 0);
	inspectEndRT: out std_logic_vector(larguraEndBancoRegs-1 downto 0);
	inspectEndRD: out std_logic_vector(larguraEndBancoRegs-1 downto 0);
	inspectInstru: out std_logic_vector(larguraInstrucao-1 downto 0);
	inspectPC: out std_logic_vector(larguraDados-1 downto 0);
	inspectSeletorULA: out std_logic_vector(larguraControleULA-1 downto 0);
	inspectControles: out std_logic_vector( larguraSinaisControle-1 downto 0)

  );
end entity;


architecture arquitetura of TopLevel is
-- ## DECLARANDO SINAIS:

	signal CLK	:						std_logic;
	-- PC, incrementador ROM e MUX
	signal PC_out:						std_logic_vector(larguraEnderecosROM-1 downto 0);
	signal PC_in:						std_logic_vector(larguraEnderecosROM-1 downto 0);
	signal Mux_BEQ_out:					std_logic_vector(larguraEnderecosROM-1 downto 0);
	signal proxPC_4:					std_logic_vector(larguraEnderecosROM-1 downto 0);
	signal sigExtImediatoShifted : 		std_logic_vector(larguraEnderecosROM-1 downto 0);
	signal PC_PlusSigExtImediatoShifted:std_logic_vector(larguraEnderecosROM-1 downto 0);
	signal beqAndZero :					std_logic;

	-- MUX op_JMP
	
	-- endereço dos registradores
	signal enderecoRS:					std_logic_vector(larguraEndBancoRegs-1 downto 0);
	signal enderecoRT:					std_logic_vector(larguraEndBancoRegs-1 downto 0);
	signal enderecoRD:					std_logic_vector(larguraEndBancoRegs-1 downto 0);
	signal enderecoRtRd:				std_logic_vector(larguraEndBancoRegs-1 downto 0);
	signal hab_RD:						std_logic;
	
	-- registradores
	signal saidaRT:						std_logic_vector(larguraDados-1 downto 0);
	signal saidaEscritaRD:				std_logic_vector(larguraDados-1 downto 0);
	
	-- Conexões com a ULA
	signal ULA_A:						std_logic_vector(larguraDados-1 downto 0);
	signal ULA_B:						std_logic_vector(larguraDados-1 downto 0);
	signal ULActrl :	 				std_logic_vector(larguraControleULA-1 downto 0);
	signal saidaULA:					std_logic_vector(larguraDados-1 downto 0);
	signal flagZero:					std_logic;
	
	-- RAM
	signal saidaRAM:					std_logic_vector(larguraDados-1 downto 0);
	
	-- Instrução
	signal instrucao:					std_logic_vector(larguraInstrucao-1 downto 0);
	signal opCode :						std_logic_vector(larguraOpCode-1 downto 0);
	signal funct :						std_logic_vector(larguraFunct-1 downto 0);
	signal imediatoI :					std_logic_vector(larguraImediatoTipoI-1 downto 0);
	signal imediatoJ :					std_logic_vector(larguraImediatoTipoJ-1 downto 0);

	signal SigExt :						std_logic_vector(larguraDados-1 downto 0);

	-- Pontos de controle
	signal decoderControle : 			std_logic_vector(larguraSinaisControle-1 downto 0);

	signal wrRAM : 						std_logic;
	signal rdRAM : 						std_logic;
	signal BEQ : 						std_logic;
	signal MuxULARAMSeletor : 			std_logic;
	signal tipoR : 						std_logic;
	signal MUuxRtImediatoSeletor :		std_logic;
	signal wrReg : 						std_logic;
	signal muxRtRdSeletor : 			std_logic;
	signal muxBeqPcSeletor : 			std_logic;

	-- MUX De monitoramento via Placa
	signal MuxMonitoramentoSeletor : 	std_logic;
	signal MuxMonitoramentoOut : 		std_logic_vector(larguraDados-1 downto 0);

begin
	
-- Para simular, fica mais simples tirar o edgeDetector
gravar:  if simulacao generate
CLK <= KEY(0);
else generate
-- detectorSub0: work.edgeDetector(bordaSubida)
--         port map (clk => CLOCK_50, entrada => (not KEY(1)), saida => CLK);  
CLK <= CLOCK_50;

end generate;

ProgramCounter: entity work.registradorGenerico 
		generic map (
			larguraDados => larguraEnderecosROM
		)
		port map (
			DIN => PC_in,
			DOUT => PC_out,
			CLK => CLK,
			ENABLE => '1',
			RST => '0'
		);

incrementaPC: entity work.somaConstante
		generic map
		(
        larguraDados  => larguraEnderecosROM,
        constante     => 4
		)
		port map (
			entrada => PC_out,
			saida => proxPC_4
		);

SOMADOR :  entity work.somadorGenerico  
		generic map (
			larguraDados => larguraEnderecosROM
		)
		port map( 
			entradaA => proxPC_4, 
			entradaB => sigExtImediatoShifted, 
			saida => PC_PlusSigExtImediatoShifted
		);

MuxBEQ : entity work.muxGenerico2x1 
		generic map (
			larguraDados => larguraEnderecosROM
		)
		port map (
			entradaA_MUX => proxPC_4, 
			entradaB_MUX => PC_PlusSigExtImediatoShifted, 
			seletor_MUX => beqAndZero, 
			saida_MUX => Mux_BEQ_out 
		);

MuxJMP : entity work.muxGenerico2x1 
		generic map (
			larguraDados => larguraEnderecosROM
		)
		port map (
			entradaA_MUX => Mux_BEQ_out, 
			entradaB_MUX => (proxPC_4(larguraInstrucao-1 downto larguraInstrucao-4) & imediatoJ & "00"), 
			seletor_MUX => muxBeqPcSeletor, 
			saida_MUX => PC_in 
		);
		
ROM : entity work.ROMMIPS
          port map (
			Endereco => PC_out,
			Dado => instrucao
			);
			
MuxRtRd : entity work.muxGenerico2x1  
		generic map (
			larguraDados => larguraEndBancoRegs
		)
		port map (
			entradaA_MUX => enderecoRT, 
			entradaB_MUX => enderecoRD, 
			seletor_MUX => muxRtRdSeletor, 
			saida_MUX => enderecoRtRd 
		);

		
Estende : entity work.estendeSinalGenerico
		generic map (
			larguraDadoEntrada => larguraImediatoTipoI,
			larguraDadoSaida => larguraDados
		)
		port map (
			estendeSinal_IN => imediatoI, 
			estendeSinal_OUT => sigExt 
		);
		
bancoRegs: entity work.bancoRegistradores
		port map (
			clk => CLK,
			enderecoRS => enderecoRS,
			enderecoRT => enderecoRT,
			enderecoRD => enderecoRtRd,
			habilitaEscritaRD => wrReg,
			dadoEscritaRD => saidaEscritaRD,
			saidaRS => ULA_A,
			saidaRT => saidaRT
		);
	
MUuxRtImediato : entity work.muxGenerico2x1  generic map (larguraDados => larguraDados)
		port map (
			entradaA_MUX => saidaRT, 
			entradaB_MUX => SigExt, 
			seletor_MUX => MUuxRtImediatoSeletor, 
			saida_MUX => ULA_B );
		
		
ULA: entity work.ULAMIPS
		generic map (
			larguraDados => larguraDados
		)
		port map(
			A => ULA_A,
			B => ULA_B,
			inverteB => ULActrl(2),
			sel => ULActrl(1 downto 0),
			R => saidaULA,
			ZERO => flagZero
		);
			
RAM : entity work.RAMMIPS  
		generic map(
			dataWidth => larguraDados, 
			addrWidth => larguraDados
		)
		port map (
			CLK => CLK,
			Endereco => saidaULA,
			Dado_in => saidaRT,
			Dado_out => saidaRAM,
			we => wrRAM,
		re => rdRAM,
		habilita => '1'
		);
			
MUuxULARAM : entity work.muxGenerico2x1  generic map (larguraDados => larguraDados)
			port map (
				entradaA_MUX => saidaULA, 
				entradaB_MUX => saidaRAM, 
				seletor_MUX => MuxULARAMSeletor, 
				saida_MUX => saidaEscritaRD 
			);
	
UC: entity work.unidadeControle
		port map (
			instrucao => instrucao,
			wr => wrRAM,
			rd => rdRAM,
			BEQ => BEQ,
			mux_ULA_Mem => MuxULARAMSeletor,
			tipoR => tipoR,
			opcode => opCode,
			mux_RT_Imediato => MUuxRtImediatoSeletor ,
			habilitaEscritaRD => wrReg,
			mux_RT_RD => muxRtRdSeletor, 
			mux_PC_4_BEQ_JUMP => muxBeqPcSeletor
		);
		
UC_ULA: entity work.controleULA 
			port map(
				opcode => opCode,
				funct => funct,
				tipoR => tipoR,
				ULActrl => ULActrl
			);

	
	-- Tipo R
	enderecoRS <= instrucao(25 downto 21);
	enderecoRT <= instrucao(20 downto 16);
	enderecoRD <= instrucao(15 downto 11);
	funct <= instrucao(5 downto 0);
	
	-- Tipo I
	imediatoI <= instrucao(larguraImediatoTipoI-1 downto 0);

	-- Tipo J
	imediatoJ <= instrucao(larguraImediatoTipoJ-1 downto 0);
	
	-- And Para o op_BEQ
	beqAndZero <= BEQ and flagZero;
	sigExtImediatoShifted <= std_logic_vector(shift_left(unsigned(SigExt), larguraShift));
	

	
	-- INSPECTS (simulação)
	inspectEndRS <= enderecoRS;
	inspectEndRT <= enderecoRT;
	inspectEndRD <= enderecoRD;

	-- inspectR0 <= ULA_A;
	-- inspectR1 <= saidaRT;
	-- inspectR2 <= saidaEscritaRD;

	inspectInstru <= instrucao;
	
	inspectPC <= PC_out;

	inspectSeletorULA <= ULActrl;

-- monitoramento

MuxPlaca : entity work.muxGenerico2x1 
		generic map (
			larguraDados => larguraEnderecosROM
		)
		port map (
			entradaA_MUX => PC_out, 
			entradaB_MUX => saidaULA, 
			seletor_MUX => SW(0), 
			saida_MUX => MuxMonitoramentoOut 
		);

DECODER_7SEG_0: entity work.conversorHex7Seg
				port map (
					dadoHex => MuxMonitoramentoOut(3 downto 0),
					apaga => '0',
					negativo => '0',
					overflow => '0',
					saida7seg => HEX0
				);
				
DECODER_7SEG_1: entity work.conversorHex7Seg
				port map (
					dadoHex => MuxMonitoramentoOut(7 downto 4),
					apaga => '0',
					negativo => '0',
					overflow => '0',
					saida7seg => HEX1
				);
				
DECODER_7SEG_2: entity work.conversorHex7Seg
				port map (
					dadoHex => MuxMonitoramentoOut(11 downto 8),
					apaga => '0',
					negativo => '0',
					overflow => '0',
					saida7seg => HEX2
				);
				
DECODER_7SEG_3: entity work.conversorHex7Seg
				port map (
					dadoHex => MuxMonitoramentoOut(15 downto 12),
					apaga => '0',
					negativo => '0',
					overflow => '0',
					saida7seg => HEX3
				);
				
DECODER_7SEG_4: entity work.conversorHex7Seg
				port map (
					dadoHex => MuxMonitoramentoOut(19 downto 16),
					apaga => '0',
					negativo => '0',
					overflow => '0',
					saida7seg => HEX4
				);
				
DECODER_7SEG_5: entity work.conversorHex7Seg
				port map (
					dadoHex => MuxMonitoramentoOut(23 downto 20),
					apaga => '0',
					negativo => '0',
					overflow => '0',
					saida7seg => HEX5
				);

LEDR(3 downto 0) <= MuxMonitoramentoOut(27 downto 24);
LEDR(7 downto 4) <= MuxMonitoramentoOut(31 downto 28);
-- end of monitoramento

end architecture;