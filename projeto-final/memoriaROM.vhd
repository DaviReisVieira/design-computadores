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
  constant CLT  : STD_LOGIC_VECTOR(3 DOWNTO 0) := "1011";
  constant JLT  : STD_LOGIC_VECTOR(3 DOWNTO 0) := "1100";

  type blocoMemoria is array(0 TO 2**addrWidth - 1) of std_logic_vector(dataWidth-1 DOWNTO 0);

  function initMemory
        return blocoMemoria is variable tmp : blocoMemoria := (others => (others => '0'));
  begin      

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
  tmp(17) := 	LDI & "00" & '0' & x"09";
  tmp(18) := 	STA & "00" & '0' & x"1E";
  tmp(19) := 	STA & "00" & '0' & x"1F";
  tmp(20) := 	STA & "00" & '0' & x"20";
  tmp(21) := 	STA & "00" & '0' & x"21";
  tmp(22) := 	STA & "00" & '0' & x"22";
  tmp(23) := 	STA & "00" & '0' & x"23";
  tmp(24) := 	LDI & "00" & '0' & x"00";
  tmp(25) := 	STA & "00" & '0' & x"0A";
  tmp(26) := 	LDI & "00" & '0' & x"01";
  tmp(27) := 	STA & "00" & '0' & x"0B";
  tmp(28) := 	LDI & "00" & '0' & x"0A";
  tmp(29) := 	STA & "00" & '0' & x"0C";
  tmp(30) := 	LDI & "00" & '0' & x"06";
  tmp(31) := 	STA & "00" & '0' & x"0D";
  tmp(32) := 	LDI & "00" & '0' & x"04";
  tmp(33) := 	STA & "00" & '0' & x"0E";
  tmp(34) := 	LDI & "00" & '0' & x"02";
  tmp(35) := 	STA & "00" & '0' & x"0F";
  tmp(36) := 	LDI & "00" & '0' & x"01";
  tmp(37) := 	STA & "00" & '0' & x"14";
  tmp(38) := 	LDI & "00" & '0' & x"00";
  tmp(39) := 	STA & "00" & '0' & x"15";
  tmp(40) := 	LDI & "00" & '0' & x"00";
  tmp(41) := 	STA & "00" & '0' & x"16";
  tmp(42) := 	LDI & "00" & '0' & x"00";
  tmp(43) := 	STA & "00" & '1' & x"FE";
  tmp(44) := 	STA & "00" & '1' & x"FC";
  tmp(45) := 	STA & "00" & '1' & x"FD";
  tmp(46) := 	LDA & "01" & '1' & x"65";
  tmp(47) := 	CEQ & "01" & '0' & x"0A";
  tmp(48) := 	JSR & "00" & '0' & x"F4";
  tmp(49) := 	JEQ & "00" & '0' & x"38";
  tmp(50) := 	JSR & "00" & '0' & x"FF";
  tmp(51) := 	JSR & "00" & '0' & x"A5";
  tmp(52) := 	LDA & "01" & '1' & x"64";
  tmp(53) := 	CEQ & "01" & '0' & x"0A";
  tmp(54) := 	JEQ & "00" & '0' & x"38";
  tmp(55) := 	JSR & "00" & '0' & x"93";
  tmp(56) := 			LDA & "01" & '1' & x"61";
  tmp(57) := 			CEQ & "01" & '0' & x"0A";
  tmp(58) := 			JEQ & "00" & '0' & x"7C";
  tmp(59) := 			STA & "00" & '1' & x"FE";
  tmp(60) := 				LDI & "00" & '0' & x"01";
  tmp(61) := 				STA & "00" & '1' & x"00";
  tmp(62) := 					LDA & "00" & '1' & x"40";
  tmp(63) := 					STA & "00" & '1' & x"20";
  tmp(64) := 					LDA & "01" & '1' & x"61";
  tmp(65) := 					CEQ & "01" & '0' & x"0A";
  tmp(66) := 					JEQ & "00" & '0' & x"3E";
  tmp(67) := 					STA & "00" & '1' & x"FE";
  tmp(68) := 					STA & "00" & '0' & x"1E";
  tmp(69) := 				LDI & "00" & '0' & x"02";
  tmp(70) := 				STA & "00" & '1' & x"00";
  tmp(71) := 					LDA & "00" & '1' & x"40";
  tmp(72) := 					STA & "00" & '1' & x"21";
  tmp(73) := 					LDA & "01" & '1' & x"61";
  tmp(74) := 					CEQ & "01" & '0' & x"0A";
  tmp(75) := 					JEQ & "00" & '0' & x"47";
  tmp(76) := 					STA & "00" & '1' & x"FE";
  tmp(77) := 					STA & "00" & '0' & x"1F";
  tmp(78) := 				LDI & "00" & '0' & x"04";
  tmp(79) := 				STA & "00" & '1' & x"00";
  tmp(80) := 					LDA & "00" & '1' & x"40";
  tmp(81) := 					STA & "00" & '1' & x"22";
  tmp(82) := 					LDA & "01" & '1' & x"61";
  tmp(83) := 					CEQ & "01" & '0' & x"0A";
  tmp(84) := 					JEQ & "00" & '0' & x"50";
  tmp(85) := 					STA & "00" & '1' & x"FE";
  tmp(86) := 					STA & "00" & '0' & x"20";
  tmp(87) := 				LDI & "00" & '0' & x"08";
  tmp(88) := 				STA & "00" & '1' & x"00";
  tmp(89) := 					LDA & "00" & '1' & x"40";
  tmp(90) := 					STA & "00" & '1' & x"23";
  tmp(91) := 					LDA & "01" & '1' & x"61";
  tmp(92) := 					CEQ & "01" & '0' & x"0A";
  tmp(93) := 					JEQ & "00" & '0' & x"59";
  tmp(94) := 					STA & "00" & '1' & x"FE";
  tmp(95) := 					STA & "00" & '0' & x"21";
  tmp(96) := 				LDI & "00" & '0' & x"10";
  tmp(97) := 				STA & "00" & '1' & x"00";
  tmp(98) := 					LDA & "00" & '1' & x"40";
  tmp(99) := 					STA & "00" & '1' & x"24";
  tmp(100) := 					LDA & "01" & '1' & x"61";
  tmp(101) := 					CEQ & "01" & '0' & x"0A";
  tmp(102) := 					JEQ & "00" & '0' & x"62";
  tmp(103) := 					STA & "00" & '1' & x"FE";
  tmp(104) := 					STA & "00" & '0' & x"22";
  tmp(105) := 				LDI & "00" & '0' & x"20";
  tmp(106) := 				STA & "00" & '1' & x"00";
  tmp(107) := 					LDA & "00" & '1' & x"40";
  tmp(108) := 					STA & "00" & '1' & x"25";
  tmp(109) := 					LDA & "01" & '1' & x"61";
  tmp(110) := 					CEQ & "01" & '0' & x"0A";
  tmp(111) := 					JEQ & "00" & '0' & x"6B";
  tmp(112) := 					STA & "00" & '1' & x"FE";
  tmp(113) := 					STA & "00" & '0' & x"23";
  tmp(114) := 					LDI & "00" & '0' & x"00";
  tmp(115) := 					LDI & "01" & '0' & x"00";
  tmp(116) := 					STA & "00" & '1' & x"00";
  tmp(117) := 					LDI & "00" & '0' & x"00";
  tmp(118) := 					STA & "00" & '1' & x"20";
  tmp(119) := 					STA & "00" & '1' & x"21";
  tmp(120) := 					STA & "00" & '1' & x"22";
  tmp(121) := 					STA & "00" & '1' & x"23";
  tmp(122) := 					STA & "00" & '1' & x"24";
  tmp(123) := 					STA & "00" & '1' & x"25";
  tmp(124) := 				STA & "00" & '1' & x"FE";
  tmp(125) := 				LDA & "01" & '1' & x"60";
  tmp(126) := 				CEQ & "01" & '0' & x"0A";
  tmp(127) := 				JEQ & "00" & '0' & x"81";
  tmp(128) := 				JSR & "00" & '0' & x"84";
  tmp(129) := 					NOP & "00" & '0' & x"00";
  tmp(130) := JMP  & "00" & '0' & x"2E";
  tmp(131) := STA  & "00" & '0' & x"00";
  tmp(132) := 	STA & "00" & '1' & x"FF";
  tmp(133) := 		LDA & "00" & '1' & x"40";
  tmp(134) := 		LDI & "01" & '0' & x"07";
  tmp(135) := 		CLT & "01" & '1' & x"40";
  tmp(136) := 		JLT & "00" & '0' & x"90";
  tmp(137) := 		LDI & "00" & '0' & x"01";
  tmp(138) := 		STA & "00" & '1' & x"01";
  tmp(139) := 		LDA & "01" & '1' & x"60";
  tmp(140) := 		CEQ & "01" & '0' & x"0A";
  tmp(141) := 		JEQ & "00" & '0' & x"85";
  tmp(142) := 		STA & "00" & '1' & x"FF";
  tmp(143) := 		RET & "00" & '0' & x"00";
  tmp(144) := 			LDI & "00" & '0' & x"00";
  tmp(145) := 			STA & "00" & '1' & x"01";
  tmp(146) := 			RET & "00" & '0' & x"00";
  tmp(147) := 	STA & "00" & '1' & x"FD";
  tmp(148) := 	LDI & "10" & '0' & x"00";
  tmp(149) := 	STA & "10" & '0' & x"00";
  tmp(150) := 	STA & "10" & '0' & x"01";
  tmp(151) := 	STA & "10" & '0' & x"02";
  tmp(152) := 	STA & "10" & '0' & x"03";
  tmp(153) := 	STA & "10" & '1' & x"20";
  tmp(154) := 	STA & "10" & '1' & x"21";
  tmp(155) := 	STA & "10" & '1' & x"22";
  tmp(156) := 	STA & "10" & '1' & x"23";
  tmp(157) := 	STA & "10" & '1' & x"24";
  tmp(158) := 	STA & "10" & '1' & x"25";
  tmp(159) := 	STA & "10" & '1' & x"01";
  tmp(160) := 	STA & "10" & '1' & x"02";
  tmp(161) := 	LDI & "11" & '0' & x"01";
  tmp(162) := 	STA & "11" & '0' & x"14";
  tmp(163) := 	LDI & "11" & '0' & x"00";
  tmp(164) := 	RET & "00" & '0' & x"00";
  tmp(165) := 	STA & "00" & '1' & x"FC";
  tmp(166) := 	LDA & "01" & '0' & x"14";
  tmp(167) := 	CEQ & "01" & '0' & x"0B";
  tmp(168) := 	JEQ & "00" & '0' & x"AA";
  tmp(169) := 	RET & "00" & '0' & x"00";
  tmp(170) := 		SOMA & "10" & '0' & x"0B";
  tmp(171) := 		CEQ & "10" & '0' & x"0C";
  tmp(172) := 		JEQ & "00" & '0' & x"AE";
  tmp(173) := 		RET & "00" & '0' & x"00";
  tmp(174) := 			SOMA & "11" & '0' & x"0B";
  tmp(175) := 			CEQ & "11" & '0' & x"0D";
  tmp(176) := 			LDI & "10" & '0' & x"00";
  tmp(177) := 			JEQ & "00" & '0' & x"B3";
  tmp(178) := 			RET & "00" & '0' & x"00";
  tmp(179) := 				LDI & "00" & '0' & x"01";
  tmp(180) := 				SOMA & "00" & '0' & x"00";
  tmp(181) := 				LDI & "11" & '0' & x"00";
  tmp(182) := 				CEQ & "00" & '0' & x"0C";
  tmp(183) := 				JEQ & "00" & '0' & x"BA";
  tmp(184) := 				STA & "00" & '0' & x"00";
  tmp(185) := 				RET & "00" & '0' & x"00";
  tmp(186) := 					LDI & "00" & '0' & x"00";
  tmp(187) := 					STA & "00" & '0' & x"00";
  tmp(188) := 					LDI & "00" & '0' & x"01";
  tmp(189) := 					SOMA & "00" & '0' & x"01";
  tmp(190) := 					CEQ & "00" & '0' & x"0D";
  tmp(191) := 					JEQ & "00" & '0' & x"C2";
  tmp(192) := 					STA & "00" & '0' & x"01";
  tmp(193) := 					RET & "00" & '0' & x"00";
  tmp(194) := 						LDI & "00" & '0' & x"00";
  tmp(195) := 						STA & "00" & '0' & x"01";
  tmp(196) := 						LDI & "00" & '0' & x"01";
  tmp(197) := 						SOMA & "00" & '0' & x"02";
  tmp(198) := 						CEQ & "00" & '0' & x"0C";
  tmp(199) := 						JEQ & "00" & '0' & x"CA";
  tmp(200) := 						STA & "00" & '0' & x"02";
  tmp(201) := 						JMP & "00" & '0' & x"CF";
  tmp(202) := 							LDI & "00" & '0' & x"00";
  tmp(203) := 							STA & "00" & '0' & x"02";
  tmp(204) := 							LDI & "00" & '0' & x"01";
  tmp(205) := 							SOMA & "00" & '0' & x"03";
  tmp(206) := 							STA & "00" & '0' & x"03";
  tmp(207) := 			LDA & "00" & '0' & x"15";
  tmp(208) := 			CEQ & "00" & '0' & x"0A";
  tmp(209) := 			JEQ & "00" & '0' & x"DE";
  tmp(210) := 			LDA & "00" & '0' & x"02";
  tmp(211) := 			CEQ & "00" & '0' & x"0E";
  tmp(212) := 			JEQ & "00" & '0' & x"D6";
  tmp(213) := 			RET & "00" & '0' & x"00";
  tmp(214) := 					LDA & "00" & '0' & x"03";
  tmp(215) := 					CEQ & "00" & '0' & x"0F";
  tmp(216) := 					JEQ & "00" & '0' & x"DA";
  tmp(217) := 					RET & "00" & '0' & x"00";
  tmp(218) := 							LDI & "00" & '0' & x"00";
  tmp(219) := 							STA & "00" & '0' & x"02";
  tmp(220) := 							STA & "00" & '0' & x"03";
  tmp(221) := 							RET & "00" & '0' & x"00";
  tmp(222) := 				LDA & "00" & '0' & x"02";
  tmp(223) := 				CEQ & "00" & '0' & x"0F";
  tmp(224) := 				JEQ & "00" & '0' & x"E2";
  tmp(225) := 				RET & "00" & '0' & x"00";
  tmp(226) := 						LDA & "00" & '0' & x"03";
  tmp(227) := 						CEQ & "00" & '0' & x"0B";
  tmp(228) := 						JEQ & "00" & '0' & x"E6";
  tmp(229) := 						RET & "00" & '0' & x"00";
  tmp(230) := 								LDI & "00" & '0' & x"00";
  tmp(231) := 								STA & "00" & '0' & x"02";
  tmp(232) := 								STA & "00" & '0' & x"03";
  tmp(233) := 								LDA & "00" & '0' & x"16";
  tmp(234) := 								CEQ & "00" & '0' & x"0A";
  tmp(235) := 								JEQ & "00" & '0' & x"F0";
  tmp(236) := 								LDI & "00" & '0' & x"00";
  tmp(237) := 								STA & "00" & '0' & x"16";
  tmp(238) := 								STA & "00" & '1' & x"02";
  tmp(239) := 								RET & "00" & '0' & x"00";
  tmp(240) := 										LDI & "00" & '0' & x"01";
  tmp(241) := 										STA & "00" & '0' & x"16";
  tmp(242) := 										STA & "00" & '1' & x"02";
  tmp(243) := 										RET & "00" & '0' & x"00";
  tmp(244) := 	STA & "10" & '1' & x"20";
  tmp(245) := 	STA & "11" & '1' & x"21";
  tmp(246) := 	LDA & "01" & '0' & x"00";
  tmp(247) := 	STA & "01" & '1' & x"22";
  tmp(248) := 	LDA & "01" & '0' & x"01";
  tmp(249) := 	STA & "01" & '1' & x"23";
  tmp(250) := 	LDA & "01" & '0' & x"02";
  tmp(251) := 	STA & "01" & '1' & x"24";
  tmp(252) := 	LDA & "01" & '0' & x"03";
  tmp(253) := 	STA & "01" & '1' & x"25";
  tmp(254) := 	RET & "00" & '0' & x"00";
  tmp(255) := 	CEQ & "10" & '0' & x"1E";
  tmp(256) := 	JEQ & "00" & '1' & x"02";
  tmp(257) := 	RET & "00" & '0' & x"00";
  tmp(258) := 		CEQ & "11" & '0' & x"1F";
  tmp(259) := 		JEQ & "00" & '1' & x"05";
  tmp(260) := 		RET & "00" & '0' & x"00";
  tmp(261) := 			LDA & "00" & '0' & x"00";
  tmp(262) := 			CEQ & "00" & '0' & x"20";
  tmp(263) := 			JEQ & "00" & '1' & x"09";
  tmp(264) := 			RET & "00" & '0' & x"00";
  tmp(265) := 				LDA & "00" & '0' & x"01";
  tmp(266) := 				CEQ & "00" & '0' & x"21";
  tmp(267) := 				JEQ & "00" & '1' & x"0D";
  tmp(268) := 				RET & "00" & '0' & x"00";
  tmp(269) := 					LDA & "00" & '0' & x"02";
  tmp(270) := 					CEQ & "00" & '0' & x"22";
  tmp(271) := 					JEQ & "00" & '1' & x"11";
  tmp(272) := 					RET & "00" & '0' & x"00";
  tmp(273) := 						LDA & "00" & '0' & x"03";
  tmp(274) := 						CEQ & "00" & '0' & x"23";
  tmp(275) := 						JEQ & "00" & '1' & x"15";
  tmp(276) := 						RET & "00" & '0' & x"00";
  tmp(277) := 							LDI & "00" & '0' & x"00";
  tmp(278) := 							STA & "00" & '0' & x"14";
  tmp(279) := 							LDI & "00" & '0' & x"01";
  tmp(280) := 							STA & "00" & '1' & x"01";
  tmp(281) := 							LDI & "00" & '0' & x"00";
  tmp(282) := 							RET & "00" & '0' & x"00";
        
        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;