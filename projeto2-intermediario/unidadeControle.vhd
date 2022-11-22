library ieee;
use ieee.std_logic_1164.all;

entity unidadeControle is
  generic (
    larguraOpCode: natural := 6;
    larguraFunct: natural := 6;
    larguraInstrucao	: natural := 32
  );

  port ( 
    instrucao : in std_logic_vector(larguraInstrucao-1 downto 0);
    

    mux_PC_4_BEQ_JUMP, mux_RT_RD, habilitaEscritaRD,
    mux_RT_Imediato, tipoR, mux_ULA_Mem, BEQ,
    rd, wr: out std_logic;
    
	 opcode: out std_logic_vector(larguraOpCode-1 downto 0)
  );
end entity;

architecture comportamento of unidadeControle is
  
  -- funct
  constant f_AND: std_logic_vector(larguraFunct-1 downto 0) := "100100";
  constant f_OR : std_logic_vector(larguraFunct-1 downto 0) := "100101";
  constant f_ADD : std_logic_vector(larguraFunct-1 downto 0) := "100000";
  constant f_SUB : std_logic_vector(larguraFunct-1 downto 0) := "100010";
  constant f_SLT : std_logic_vector(larguraFunct-1 downto 0) := "101010";

  -- opcode
  constant op_LW  : std_logic_vector(larguraOpCode-1 downto 0) := "100011";
  constant op_SW  : std_logic_vector(larguraOpCode-1 downto 0) := "101011";
  constant op_BEQ : std_logic_vector(larguraOpCode-1 downto 0) := "000100";
  constant op_JMP : std_logic_vector(larguraOpCode-1 downto 0) := "000010";

  -- aux signals
  signal funct : std_logic_vector(larguraFunct-1 downto 0);

  begin
    opcode <= instrucao(larguraInstrucao-1 downto larguraInstrucao - larguraOpCode);
    funct  <= instrucao(larguraFunct-1 downto 0);

    tipoR <= '1' when opcode = "000000" else '0';
    
    MUX_PC_4_BEQ_JUMP <= '1' when (opcode = op_JMP) else '0';

    MUX_RT_RD <=  '1' when (opcode = f_AND 
                  or opcode = f_OR 
                  or opcode = f_ADD
                  or opcode = f_SUB 
                  or opcode = f_SLT) 
                  else '0';

    HabilitaEscritaRD <='1' when (opcode = f_AND
                        or opcode = f_OR
                        or opcode = f_ADD 
                        or opcode = f_SUB 
                        or opcode = f_SLT 
                        or opcode = op_LW) 
                        else '0'; 

    MUX_RT_Imediato <= '1' when (opcode = op_LW
                      or opcode = op_SW)
                      else '0';
                      
    mux_ULA_Mem     <= '1' when (opcode = op_LW) else '0';

    BEQ <= '1' when (opcode = op_BEQ) else '0';

    rd <=  '1' when (opcode = op_LW) else '0';

    wr <= '1' when (opcode = op_SW) else '0';

              
end architecture;