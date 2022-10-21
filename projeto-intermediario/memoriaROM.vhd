library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity memoriaROM is
   generic (
          dataWidth: natural := 15;
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
  constant JMP  : std_logic_vector(3 downto 0) := "0110";
  constant JEQ  : std_logic_vector(3 downto 0) := "0111";
  constant CEQ  : std_logic_vector(3 downto 0) := "1000";
  constant JSR  : STD_LOGIC_VECTOR(3 DOWNTO 0) := "1001";
  constant RET  : STD_LOGIC_VECTOR(3 DOWNTO 0) := "1010";

  type blocoMemoria is array(0 TO 2**addrWidth - 1) of std_logic_vector(dataWidth-1 DOWNTO 0);

  function initMemory
        return blocoMemoria is variable tmp : blocoMemoria := (others => (others => '0'));
  begin      

        -- ATV 1:
        -- tmp(0) := LDI & '0' & x"01";
        -- tmp(1) := STA & '0' & x"00";
        -- tmp(2) := SOMA & '0' & x"00";
        -- tmp(3) := STA & '1' & x"20";
        -- tmp(4) := SOMA & '0' & x"00";
        -- tmp(5) := STA & '1' & x"21";
        -- tmp(6) := SOMA & '0' & x"00";
        -- tmp(7) := STA & '1' & x"22";
        -- tmp(8) := SOMA & '0' & x"00";
        -- tmp(9) := STA & '1' & x"23";
        -- tmp(10) := SOMA & '0' & x"00";
        -- tmp(11) := STA & '1' & x"24";
        -- tmp(12) := SOMA & '0' & x"00";
        -- tmp(13) := STA & '1' & x"25";
        -- tmp(14) := JMP & '0' & x"02";

        -- ATV 2:
        -- tmp(0) := LDA & '1' & x"40";
        -- tmp(1) := STA & '1' & x"20";
        -- tmp(2) := LDA & '1' & x"41";
        -- tmp(3) := STA & '1' & x"21";
        -- tmp(4) := LDA & '1' & x"42";
        -- tmp(5) := STA & '1' & x"22";
        -- tmp(6) := LDA & '1' & x"60";
        -- tmp(7) := STA & '1' & x"23";
        -- tmp(8) := LDA & '1' & x"61";
        -- tmp(9) := STA & '1' & x"24";
        -- tmp(10) := LDA & '1' & x"62";
        -- tmp(11) := STA & '1' & x"25";
        -- tmp(12) := LDA & '1' & x"63";
        -- tmp(13) := STA & '1' & x"01";
        -- tmp(14) := LDA & '1' & x"64";
        -- tmp(15) := STA & '1' & x"02";
        -- tmp(16) := JMP & '0' & x"00";

        -- ATV 3:
        -- tmp(0) := LDI & "00" & '0' & x"00";
        -- tmp(1) := STA & "00" & '0' & x"00";
        -- tmp(2) := STA & "00" & '0' & x"02";
        -- tmp(3) := LDI & "00" & '0' & x"01";
        -- tmp(4) := STA & "00" & '0' & x"01";
        -- tmp(5) := NOP & "00" & '0' & x"00";
        -- tmp(6) := LDA & "00" & '1' & x"60";
        -- tmp(7) := STA & "00" & '1' & x"20";
        -- tmp(8) := CEQ & "00" & '0' & x"00";
        -- tmp(9) := JEQ & "00" & '0' & x"0B";
        -- tmp(10) := JSR & "00" & '0' & x"20";
        -- tmp(11) := NOP & "00" & '0' & x"00";
        -- tmp(12) := JMP & "00" & '0' & x"05";

        -- tmp(32) := STA & "00" & '1' & x"FF";
        -- tmp(33) := LDA & "00" & '0' & x"02";
        -- tmp(34) := SOMA & "00" & '0' & x"01";
        -- tmp(35) := STA & "00" & '0' & x"02";
        -- tmp(36) := STA & "00" & '1' & x"02";
        -- tmp(37) := STA & "00" & '1' & x"25";
        -- tmp(38) := RET & "00" & '0' & x"00";


        -- ATV 4:
        -- tmp(0) := LDI & '0' & x"01";
        -- tmp(1) := STA & '0' & x"01";
        -- tmp(2) := NOP & '0' & x"00";
        -- tmp(3) := LDA & '1' & x"60";
        -- tmp(4) := STA & '1' & x"20";
        -- tmp(5) := ;
        -- tmp(6) := STA & '0' & x"21";
        -- tmp(7) := NOP & '0' & x"00";
        -- tmp(8) := JMP & '0' & x"02";

        -- ATV 5?
        -- tmp(0) := LDI & '0' & x"02";
        -- tmp(1) := STA & '0' & x"00";
        -- tmp(2) := LDI & '0' & x"02";
        -- tmp(3) := CEQ & '0' & x"00";
        -- tmp(4) := JEQ & '0' & x"06";
        -- tmp(5) := JMP & '0' & x"00";
        -- tmp(6) := JMP & '0' & x"06";
        -- tmp(7) := LDI & '0' & x"07";

        -- Script:
        tmp(0) :=     LDI & "00" & '0' & x"00";
tmp(1) := 	LDI & "01" & '0' & x"00";
tmp(2) := 	LDI & "10" & '0' & x"00";
tmp(3) := 	LDI & "11" & '0' & x"00";
tmp(4) := 	STA & "00" & '1' & x"20";
tmp(5) := 	STA & "00" & '1' & x"21";
tmp(6) := 	STA & "00" & '1' & x"22";
tmp(7) := 	STA & "00" & '1' & x"23";
tmp(8) := 	STA & "00" & '1' & x"24";
tmp(9) := 	STA & "00" & '1' & x"25";
tmp(10) := 	STA & "00" & '1' & x"00";
tmp(11) := 	STA & "00" & '1' & x"01";
tmp(12) := 	STA & "00" & '1' & x"02";
tmp(13) := 	STA & "00" & '0' & x"00";
tmp(14) := 	STA & "00" & '0' & x"01";
tmp(15) := 	STA & "00" & '0' & x"02";
tmp(16) := 	STA & "00" & '0' & x"03";
tmp(17) := 	STA & "00" & '0' & x"0A";
tmp(18) := 	LDI & "00" & '0' & x"01";
tmp(19) := 	STA & "00" & '0' & x"0B";
tmp(20) := 	LDI & "00" & '0' & x"0A";
tmp(21) := 	STA & "00" & '0' & x"0C";
tmp(22) := 	LDI & "00" & '0' & x"01";
tmp(23) := 	STA & "00" & '0' & x"14";
tmp(24) := 	LDI & "00" & '0' & x"00";
tmp(25) := 	STA & "00" & '1' & x"FE";
tmp(26) := 	STA & "00" & '1' & x"FF";
tmp(27) := 	STA & "00" & '1' & x"64";
tmp(28) := 	JSR & "00" & '0' & x"22";
tmp(29) := 	CEQ & "01" & '0' & x"0A";
tmp(30) := 	JEQ & "00" & '0' & x"60";
tmp(31) := 	JSR & "00" & '0' & x"29";
tmp(32) := 	JSR & "00" & '0' & x"55";
tmp(33) := JMP  & "00" & '0' & x"1C";
tmp(34) := 	LDA & "01" & '1' & x"60";
tmp(35) := 	LDI & "00" & '0' & x"00";
tmp(36) := 	STA & "00" & '1' & x"FF";
tmp(37) := 	RET & "00" & '0' & x"00";
tmp(38) := 	LDA & "01" & '1' & x"61";
tmp(39) := 	STA & "00" & '1' & x"FE";
tmp(40) := 	RET & "00" & '0' & x"00";
tmp(41) := 	LDA & "01" & '0' & x"14";
tmp(42) := 	CEQ & "01" & '0' & x"0B";
tmp(43) := 	JEQ & "00" & '0' & x"2D";
tmp(44) := 	RET & "00" & '0' & x"00";
tmp(45) := 		SOMA & "10" & '0' & x"0B";
tmp(46) := 		CEQ & "10" & '0' & x"0C";
tmp(47) := 		JEQ & "00" & '0' & x"31";
tmp(48) := 		RET & "00" & '0' & x"00";
tmp(49) := 			SOMA & "11" & '0' & x"0B";
tmp(50) := 			CEQ & "11" & '0' & x"0C";
tmp(51) := 			LDI & "10" & '0' & x"00";
tmp(52) := 			JEQ & "00" & '0' & x"36";
tmp(53) := 			RET & "00" & '0' & x"00";
tmp(54) := 				LDI & "00" & '0' & x"01";
tmp(55) := 				SOMA & "00" & '0' & x"00";
tmp(56) := 				LDI & "11" & '0' & x"00";
tmp(57) := 				CEQ & "00" & '0' & x"0C";
tmp(58) := 				JEQ & "00" & '0' & x"3D";
tmp(59) := 				STA & "00" & '0' & x"00";
tmp(60) := 				RET & "00" & '0' & x"00";
tmp(61) := 					LDI & "00" & '0' & x"00";
tmp(62) := 					STA & "00" & '0' & x"00";
tmp(63) := 					LDI & "00" & '0' & x"01";
tmp(64) := 					SOMA & "00" & '0' & x"01";
tmp(65) := 					CEQ & "00" & '0' & x"0C";
tmp(66) := 					JEQ & "00" & '0' & x"45";
tmp(67) := 					STA & "00" & '0' & x"01";
tmp(68) := 					RET & "00" & '0' & x"00";
tmp(69) := 						LDI & "00" & '0' & x"00";
tmp(70) := 						STA & "00" & '0' & x"01";
tmp(71) := 						LDI & "00" & '0' & x"01";
tmp(72) := 						SOMA & "00" & '0' & x"02";
tmp(73) := 						CEQ & "00" & '0' & x"0C";
tmp(74) := 						JEQ & "00" & '0' & x"4D";
tmp(75) := 						STA & "00" & '0' & x"02";
tmp(76) := 						RET & "00" & '0' & x"00";
tmp(77) := 							LDI & "00" & '0' & x"00";
tmp(78) := 							STA & "00" & '0' & x"02";
tmp(79) := 							LDI & "00" & '0' & x"01";
tmp(80) := 							SOMA & "00" & '0' & x"03";
tmp(81) := 							CEQ & "00" & '0' & x"0C";
tmp(82) := 							JEQ & "00" & '0' & x"3D";
tmp(83) := 							STA & "00" & '0' & x"03";
tmp(84) := 							RET & "00" & '0' & x"00";
tmp(85) := 	STA & "10" & '1' & x"20";
tmp(86) := 	STA & "11" & '1' & x"21";
tmp(87) := 	LDA & "01" & '0' & x"00";
tmp(88) := 	STA & "01" & '1' & x"22";
tmp(89) := 	LDA & "01" & '0' & x"01";
tmp(90) := 	STA & "01" & '1' & x"23";
tmp(91) := 	LDA & "01" & '0' & x"02";
tmp(92) := 	STA & "01" & '1' & x"24";
tmp(93) := 	LDA & "01" & '0' & x"03";
tmp(94) := 	STA & "01" & '1' & x"25";
tmp(95) := 	RET & "00" & '0' & x"00";
tmp(96) := 	JMP & "00" & '0' & x"1C";

        
        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;