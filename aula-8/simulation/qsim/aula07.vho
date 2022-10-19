-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

<<<<<<< HEAD
-- DATE "10/15/2022 11:52:21"
=======
-- DATE "10/13/2022 15:32:44"
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17

-- 
-- Device: Altera 5CEBA2F17A7 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	TopLevel IS
    PORT (
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(9 DOWNTO 0);
	LEDR : BUFFER std_logic_vector(9 DOWNTO 0);
	HEX0 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX1 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX2 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX3 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX4 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX5 : BUFFER std_logic_vector(6 DOWNTO 0);
	KEY : IN std_logic_vector(3 DOWNTO 0);
<<<<<<< HEAD
	FPGA_RESET_N : IN std_logic
=======
	FPGA_RESET_N : IN std_logic;
	DATA_OUT : BUFFER std_logic_vector(7 DOWNTO 0)
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
	);
END TopLevel;

ARCHITECTURE structure OF TopLevel IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_FPGA_RESET_N : std_logic;
<<<<<<< HEAD
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~1_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~2\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~5_sumout\ : std_logic;
SIGNAL \ROM|memROM~3_combout\ : std_logic;
SIGNAL \ROM|memROM~6_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~18\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~21_sumout\ : std_logic;
SIGNAL \ROM|memROM~4_combout\ : std_logic;
SIGNAL \ROM|memROM~7_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~22\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~25_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~26\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~29_sumout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~30\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~33_sumout\ : std_logic;
SIGNAL \DATA_IN[0]~0_combout\ : std_logic;
SIGNAL \ROM|memROM~1_combout\ : std_logic;
SIGNAL \CPU|DESVIO1|Sel~0_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~6\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~9_sumout\ : std_logic;
SIGNAL \ROM|memROM~0_combout\ : std_logic;
SIGNAL \ROM|memROM~9_combout\ : std_logic;
=======
SIGNAL ww_DATA_OUT : std_logic_vector(7 DOWNTO 0);
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \FPGA_RESET_N~input_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~1_sumout\ : std_logic;
SIGNAL \ROM|memROM~0_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~18\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~21_sumout\ : std_logic;
SIGNAL \ROM|memROM~7_combout\ : std_logic;
SIGNAL \ROM|memROM~11_combout\ : std_logic;
SIGNAL \ROM|memROM~8_combout\ : std_logic;
SIGNAL \ROM|memROM~9_combout\ : std_logic;
SIGNAL \ROM|memROM~10_combout\ : std_logic;
SIGNAL \CPU|DESVIO1|Sel[0]~0_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~22\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~25_sumout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~26\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~30\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~33_sumout\ : std_logic;
SIGNAL \ROM|memROM~2_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~2\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~5_sumout\ : std_logic;
SIGNAL \ROM|memROM~3_combout\ : std_logic;
SIGNAL \ROM|memROM~4_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~6\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~9_sumout\ : std_logic;
SIGNAL \ROM|memROM~5_combout\ : std_logic;
SIGNAL \ROM|memROM~6_combout\ : std_logic;
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
SIGNAL \CPU|incrementaPC|Add0~10\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~13_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~14\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~17_sumout\ : std_logic;
<<<<<<< HEAD
SIGNAL \ROM|memROM~2_combout\ : std_logic;
SIGNAL \ROM|memROM~5_combout\ : std_logic;
SIGNAL \ROM|memROM~8_combout\ : std_logic;
SIGNAL \CPU|DECODER1|saida~0_combout\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \DATA_IN[0]~1_combout\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \DATA_IN[0]~2_combout\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \DATA_IN[0]~3_combout\ : std_logic;
SIGNAL \AND_SW0_7|saida~0_combout\ : std_logic;
SIGNAL \AND_HEX0|saida~1_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \FPGA_RESET_N~input_o\ : std_logic;
SIGNAL \DATA_IN[0]~4_combout\ : std_logic;
SIGNAL \DATA_IN[0]~5_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~34_cout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~1_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[0]~0_combout\ : std_logic;
SIGNAL \AND_HEX0|saida~0_combout\ : std_logic;
SIGNAL \AND_LEDR0_7|saida~0_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[1]~0_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~2\ : std_logic;
SIGNAL \CPU|ULA1|Add1~5_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[1]~1_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[2]~1_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~6\ : std_logic;
SIGNAL \CPU|ULA1|Add1~9_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[2]~2_combout\ : std_logic;
SIGNAL \AND_SW0_7|saida~1_combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \CPU|ULA1|Add1~10\ : std_logic;
SIGNAL \CPU|ULA1|Add1~13_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[3]~3_combout\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \CPU|ULA1|Add1~14\ : std_logic;
SIGNAL \CPU|ULA1|Add1~17_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[4]~4_combout\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \CPU|ULA1|Add1~18\ : std_logic;
SIGNAL \CPU|ULA1|Add1~21_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[5]~5_combout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \CPU|ULA1|Add1~22\ : std_logic;
SIGNAL \CPU|ULA1|Add1~25_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[6]~6_combout\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \CPU|ULA1|Add1~26\ : std_logic;
SIGNAL \CPU|ULA1|Add1~29_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[7]~7_combout\ : std_logic;
SIGNAL \FLIP_FLOP_LED8|DOUT~0_combout\ : std_logic;
SIGNAL \FLIP_FLOP_LED8|DOUT~q\ : std_logic;
SIGNAL \FLIP_FLOP_LED9|DOUT~0_combout\ : std_logic;
SIGNAL \FLIP_FLOP_LED9|DOUT~q\ : std_logic;
SIGNAL \AND_HEX0|saida~2_combout\ : std_logic;
=======
SIGNAL \ROM|memROM~1_combout\ : std_logic;
SIGNAL \CPU|DECODER1|Equal10~0_combout\ : std_logic;
SIGNAL \ROM|memROM~12_combout\ : std_logic;
SIGNAL \RAM64|ram~559_combout\ : std_logic;
SIGNAL \RAM64|ram~560_combout\ : std_logic;
SIGNAL \RAM64|ram~15_q\ : std_logic;
SIGNAL \RAM64|ram~561_combout\ : std_logic;
SIGNAL \RAM64|ram~23_q\ : std_logic;
SIGNAL \RAM64|ram~562_combout\ : std_logic;
SIGNAL \RAM64|ram~47_q\ : std_logic;
SIGNAL \RAM64|ram~563_combout\ : std_logic;
SIGNAL \RAM64|ram~55_q\ : std_logic;
SIGNAL \RAM64|ram~527_combout\ : std_logic;
SIGNAL \RAM64|ram~564_combout\ : std_logic;
SIGNAL \RAM64|ram~31_q\ : std_logic;
SIGNAL \RAM64|ram~565_combout\ : std_logic;
SIGNAL \RAM64|ram~39_q\ : std_logic;
SIGNAL \RAM64|ram~566_combout\ : std_logic;
SIGNAL \RAM64|ram~63_q\ : std_logic;
SIGNAL \RAM64|ram~567_combout\ : std_logic;
SIGNAL \RAM64|ram~71_q\ : std_logic;
SIGNAL \RAM64|ram~528_combout\ : std_logic;
SIGNAL \RAM64|ram~529_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~1_sumout\ : std_logic;
SIGNAL \CPU|DECODER1|saida~0_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~34_cout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~1_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[0]~0_combout\ : std_logic;
SIGNAL \CPU|DECODER1|Equal10~1_combout\ : std_logic;
SIGNAL \CPU|DECODER1|saida~1_combout\ : std_logic;
SIGNAL \DECODER2|Equal7~0_combout\ : std_logic;
SIGNAL \DECODER2|Equal7~1_combout\ : std_logic;
SIGNAL \RAM64|ram~18_q\ : std_logic;
SIGNAL \RAM64|ram~34_q\ : std_logic;
SIGNAL \RAM64|ram~538_combout\ : std_logic;
SIGNAL \RAM64|ram~50_q\ : std_logic;
SIGNAL \RAM64|ram~66_q\ : std_logic;
SIGNAL \RAM64|ram~539_combout\ : std_logic;
SIGNAL \RAM64|ram~26_q\ : std_logic;
SIGNAL \RAM64|ram~42_q\ : std_logic;
SIGNAL \RAM64|ram~540_combout\ : std_logic;
SIGNAL \RAM64|ram~58_q\ : std_logic;
SIGNAL \RAM64|ram~74_q\ : std_logic;
SIGNAL \RAM64|ram~541_combout\ : std_logic;
SIGNAL \RAM64|ram~542_combout\ : std_logic;
SIGNAL \ROM|memROM~14_combout\ : std_logic;
SIGNAL \ROM|memROM~13_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~2\ : std_logic;
SIGNAL \CPU|ULA1|Add0~5_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~2\ : std_logic;
SIGNAL \CPU|ULA1|Add1~5_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[1]~1_combout\ : std_logic;
SIGNAL \RAM64|ram~16_q\ : std_logic;
SIGNAL \RAM64|ram~32_q\ : std_logic;
SIGNAL \RAM64|ram~530_combout\ : std_logic;
SIGNAL \RAM64|ram~48_q\ : std_logic;
SIGNAL \RAM64|ram~64_q\ : std_logic;
SIGNAL \RAM64|ram~531_combout\ : std_logic;
SIGNAL \RAM64|ram~24_q\ : std_logic;
SIGNAL \RAM64|ram~40_q\ : std_logic;
SIGNAL \RAM64|ram~532_combout\ : std_logic;
SIGNAL \RAM64|ram~56_q\ : std_logic;
SIGNAL \RAM64|ram~72_q\ : std_logic;
SIGNAL \RAM64|ram~533_combout\ : std_logic;
SIGNAL \RAM64|ram~534_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~6\ : std_logic;
SIGNAL \CPU|ULA1|Add0~9_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~6\ : std_logic;
SIGNAL \CPU|ULA1|Add1~9_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[2]~2_combout\ : std_logic;
SIGNAL \RAM64|ram~17_q\ : std_logic;
SIGNAL \RAM64|ram~25_q\ : std_logic;
SIGNAL \RAM64|ram~49_q\ : std_logic;
SIGNAL \RAM64|ram~57_q\ : std_logic;
SIGNAL \RAM64|ram~535_combout\ : std_logic;
SIGNAL \RAM64|ram~33_q\ : std_logic;
SIGNAL \RAM64|ram~41_q\ : std_logic;
SIGNAL \RAM64|ram~65_q\ : std_logic;
SIGNAL \RAM64|ram~73_q\ : std_logic;
SIGNAL \RAM64|ram~536_combout\ : std_logic;
SIGNAL \RAM64|ram~537_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~10\ : std_logic;
SIGNAL \CPU|ULA1|Add0~13_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~10\ : std_logic;
SIGNAL \CPU|ULA1|Add1~13_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[3]~3_combout\ : std_logic;
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
SIGNAL \DECODER_7SEG_0|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \DECODER_7SEG_0|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \DECODER_7SEG_0|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \DECODER_7SEG_0|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \DECODER_7SEG_0|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \DECODER_7SEG_0|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \DECODER_7SEG_0|rascSaida7seg[6]~6_combout\ : std_logic;
<<<<<<< HEAD
SIGNAL \AND_HEX1|saida~0_combout\ : std_logic;
=======
SIGNAL \DECODER2|Equal7~2_combout\ : std_logic;
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
SIGNAL \DECODER_7SEG_1|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \DECODER_7SEG_1|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \DECODER_7SEG_1|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \DECODER_7SEG_1|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \DECODER_7SEG_1|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \DECODER_7SEG_1|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \DECODER_7SEG_1|rascSaida7seg[6]~6_combout\ : std_logic;
<<<<<<< HEAD
SIGNAL \AND_HEX2|saida~0_combout\ : std_logic;
=======
SIGNAL \DECODER2|Equal7~3_combout\ : std_logic;
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
SIGNAL \DECODER_7SEG_2|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \DECODER_7SEG_2|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \DECODER_7SEG_2|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \DECODER_7SEG_2|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \DECODER_7SEG_2|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \DECODER_7SEG_2|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \DECODER_7SEG_2|rascSaida7seg[6]~6_combout\ : std_logic;
<<<<<<< HEAD
SIGNAL \AND_HEX3|saida~0_combout\ : std_logic;
=======
SIGNAL \DECODER2|Equal7~4_combout\ : std_logic;
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
SIGNAL \DECODER_7SEG_3|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \DECODER_7SEG_3|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \DECODER_7SEG_3|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \DECODER_7SEG_3|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \DECODER_7SEG_3|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \DECODER_7SEG_3|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \DECODER_7SEG_3|rascSaida7seg[6]~6_combout\ : std_logic;
<<<<<<< HEAD
SIGNAL \AND_HEX0|saida~3_combout\ : std_logic;
SIGNAL \AND_HEX4|saida~0_combout\ : std_logic;
=======
SIGNAL \DECODER2|Equal7~5_combout\ : std_logic;
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
SIGNAL \DECODER_7SEG_4|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \DECODER_7SEG_4|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \DECODER_7SEG_4|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \DECODER_7SEG_4|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \DECODER_7SEG_4|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \DECODER_7SEG_4|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \DECODER_7SEG_4|rascSaida7seg[6]~6_combout\ : std_logic;
<<<<<<< HEAD
SIGNAL \AND_HEX5|saida~combout\ : std_logic;
=======
SIGNAL \DECODER2|Equal7~6_combout\ : std_logic;
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
SIGNAL \DECODER_7SEG_5|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \DECODER_7SEG_5|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \DECODER_7SEG_5|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \DECODER_7SEG_5|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \DECODER_7SEG_5|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \DECODER_7SEG_5|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \DECODER_7SEG_5|rascSaida7seg[6]~6_combout\ : std_logic;
<<<<<<< HEAD
SIGNAL \REG_LEDR0_7|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CPU|REGA|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CPU|PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \REG_HEX4|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REG_HEX0|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REG_HEX1|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REG_HEX2|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REG_HEX3|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REG_HEX5|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CPU|DESVIO1|Sel\ : std_logic_vector(1 DOWNTO 0);
=======
SIGNAL \RAM64|ram~19_q\ : std_logic;
SIGNAL \RAM64|ram~27_q\ : std_logic;
SIGNAL \RAM64|ram~51_q\ : std_logic;
SIGNAL \RAM64|ram~59_q\ : std_logic;
SIGNAL \RAM64|ram~543_combout\ : std_logic;
SIGNAL \RAM64|ram~35_q\ : std_logic;
SIGNAL \RAM64|ram~43_q\ : std_logic;
SIGNAL \RAM64|ram~67_q\ : std_logic;
SIGNAL \RAM64|ram~75_q\ : std_logic;
SIGNAL \RAM64|ram~544_combout\ : std_logic;
SIGNAL \RAM64|ram~545_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~14\ : std_logic;
SIGNAL \CPU|ULA1|Add0~17_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~14\ : std_logic;
SIGNAL \CPU|ULA1|Add1~17_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[4]~4_combout\ : std_logic;
SIGNAL \ROM|memROM~15_combout\ : std_logic;
SIGNAL \RAM64|ram~20_q\ : std_logic;
SIGNAL \RAM64|ram~36_q\ : std_logic;
SIGNAL \RAM64|ram~546_combout\ : std_logic;
SIGNAL \RAM64|ram~52_q\ : std_logic;
SIGNAL \RAM64|ram~68_q\ : std_logic;
SIGNAL \RAM64|ram~547_combout\ : std_logic;
SIGNAL \RAM64|ram~28_q\ : std_logic;
SIGNAL \RAM64|ram~44_q\ : std_logic;
SIGNAL \RAM64|ram~548_combout\ : std_logic;
SIGNAL \RAM64|ram~60_q\ : std_logic;
SIGNAL \RAM64|ram~76_q\ : std_logic;
SIGNAL \RAM64|ram~549_combout\ : std_logic;
SIGNAL \RAM64|ram~550_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~18\ : std_logic;
SIGNAL \CPU|ULA1|Add0~21_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~18\ : std_logic;
SIGNAL \CPU|ULA1|Add1~21_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[5]~5_combout\ : std_logic;
SIGNAL \RAM64|ram~21_q\ : std_logic;
SIGNAL \RAM64|ram~29_q\ : std_logic;
SIGNAL \RAM64|ram~53_q\ : std_logic;
SIGNAL \RAM64|ram~61_q\ : std_logic;
SIGNAL \RAM64|ram~551_combout\ : std_logic;
SIGNAL \RAM64|ram~37_q\ : std_logic;
SIGNAL \RAM64|ram~45_q\ : std_logic;
SIGNAL \RAM64|ram~69_q\ : std_logic;
SIGNAL \RAM64|ram~77_q\ : std_logic;
SIGNAL \RAM64|ram~552_combout\ : std_logic;
SIGNAL \RAM64|ram~553_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~22\ : std_logic;
SIGNAL \CPU|ULA1|Add0~25_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~22\ : std_logic;
SIGNAL \CPU|ULA1|Add1~25_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[6]~6_combout\ : std_logic;
SIGNAL \RAM64|ram~22_q\ : std_logic;
SIGNAL \RAM64|ram~38_q\ : std_logic;
SIGNAL \RAM64|ram~554_combout\ : std_logic;
SIGNAL \RAM64|ram~54_q\ : std_logic;
SIGNAL \RAM64|ram~70_q\ : std_logic;
SIGNAL \RAM64|ram~555_combout\ : std_logic;
SIGNAL \RAM64|ram~30_q\ : std_logic;
SIGNAL \RAM64|ram~46_q\ : std_logic;
SIGNAL \RAM64|ram~556_combout\ : std_logic;
SIGNAL \RAM64|ram~62_q\ : std_logic;
SIGNAL \RAM64|ram~78_q\ : std_logic;
SIGNAL \RAM64|ram~557_combout\ : std_logic;
SIGNAL \RAM64|ram~558_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~26\ : std_logic;
SIGNAL \CPU|ULA1|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~26\ : std_logic;
SIGNAL \CPU|ULA1|Add1~29_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[7]~7_combout\ : std_logic;
SIGNAL \REG_HEX2|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CPU|REGA|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \REG_HEX4|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CPU|PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \REG_HEX0|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REG_HEX1|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REG_HEX3|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REG_HEX5|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ROM|ALT_INV_memROM~15_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~14_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~13_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~559_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~12_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~558_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~557_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~78_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~62_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~556_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~46_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~30_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~555_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~70_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~54_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~554_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~38_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~22_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~553_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~552_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~77_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~69_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~45_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~37_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~551_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~61_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~53_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~29_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~21_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~550_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~549_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~76_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~60_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~548_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~44_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~28_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~547_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~68_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~52_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~546_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~36_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~20_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~545_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~544_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~75_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~67_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~43_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~35_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~543_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~59_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~51_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~27_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~19_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~542_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~541_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~74_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~58_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~540_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~42_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~26_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~539_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~66_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~50_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~538_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~34_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~18_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~537_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~536_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~73_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~65_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~41_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~33_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~535_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~57_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~49_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~25_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~17_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~534_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~533_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~72_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~56_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~532_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~40_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~24_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~531_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~64_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~48_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~530_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~32_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~16_q\ : std_logic;
SIGNAL \CPU|DECODER1|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~529_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~11_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~528_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~71_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~63_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~39_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~31_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~527_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~55_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~47_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~23_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~15_q\ : std_logic;
SIGNAL \CPU|DECODER1|ALT_INV_Equal10~0_combout\ : std_logic;
SIGNAL \DECODER2|ALT_INV_Equal7~0_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~10_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~9_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \REG_HEX5|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
SIGNAL \REG_HEX4|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REG_HEX3|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REG_HEX2|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REG_HEX1|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REG_HEX0|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
<<<<<<< HEAD
SIGNAL \FLIP_FLOP_LED9|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \FLIP_FLOP_LED8|ALT_INV_DOUT~q\ : std_logic;
=======
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
SIGNAL \CPU|ULA1|ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~1_sumout\ : std_logic;
<<<<<<< HEAD
SIGNAL \CPU|REGA|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CPU|PC|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ALT_INV_SW[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_FPGA_RESET_N~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[0]~input_o\ : std_logic;
SIGNAL \CPU|DESVIO1|ALT_INV_Sel\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \CPU|DESVIO1|ALT_INV_Sel~0_combout\ : std_logic;
SIGNAL \AND_SW0_7|ALT_INV_saida~1_combout\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[2]~1_combout\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[1]~0_combout\ : std_logic;
SIGNAL \ALT_INV_DATA_IN[0]~5_combout\ : std_logic;
SIGNAL \ALT_INV_DATA_IN[0]~4_combout\ : std_logic;
SIGNAL \ALT_INV_DATA_IN[0]~3_combout\ : std_logic;
SIGNAL \ALT_INV_DATA_IN[0]~2_combout\ : std_logic;
SIGNAL \ALT_INV_DATA_IN[0]~1_combout\ : std_logic;
SIGNAL \ALT_INV_DATA_IN[0]~0_combout\ : std_logic;
SIGNAL \CPU|DECODER1|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \AND_HEX0|ALT_INV_saida~3_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~9_combout\ : std_logic;
SIGNAL \AND_HEX0|ALT_INV_saida~1_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \AND_SW0_7|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \AND_HEX0|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \REG_HEX5|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
=======
SIGNAL \CPU|PC|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \CPU|REGA|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_SW <= SW;
LEDR <= ww_LEDR;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
ww_KEY <= KEY;
ww_FPGA_RESET_N <= FPGA_RESET_N;
<<<<<<< HEAD
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\REG_HEX4|ALT_INV_DOUT\(1) <= NOT \REG_HEX4|DOUT\(1);
\REG_HEX4|ALT_INV_DOUT\(2) <= NOT \REG_HEX4|DOUT\(2);
\REG_HEX4|ALT_INV_DOUT\(3) <= NOT \REG_HEX4|DOUT\(3);
\REG_HEX4|ALT_INV_DOUT\(0) <= NOT \REG_HEX4|DOUT\(0);
\REG_HEX3|ALT_INV_DOUT\(1) <= NOT \REG_HEX3|DOUT\(1);
\REG_HEX3|ALT_INV_DOUT\(2) <= NOT \REG_HEX3|DOUT\(2);
\REG_HEX3|ALT_INV_DOUT\(3) <= NOT \REG_HEX3|DOUT\(3);
\REG_HEX3|ALT_INV_DOUT\(0) <= NOT \REG_HEX3|DOUT\(0);
\REG_HEX2|ALT_INV_DOUT\(1) <= NOT \REG_HEX2|DOUT\(1);
\REG_HEX2|ALT_INV_DOUT\(2) <= NOT \REG_HEX2|DOUT\(2);
\REG_HEX2|ALT_INV_DOUT\(3) <= NOT \REG_HEX2|DOUT\(3);
\REG_HEX2|ALT_INV_DOUT\(0) <= NOT \REG_HEX2|DOUT\(0);
\REG_HEX1|ALT_INV_DOUT\(1) <= NOT \REG_HEX1|DOUT\(1);
\REG_HEX1|ALT_INV_DOUT\(2) <= NOT \REG_HEX1|DOUT\(2);
\REG_HEX1|ALT_INV_DOUT\(3) <= NOT \REG_HEX1|DOUT\(3);
\REG_HEX1|ALT_INV_DOUT\(0) <= NOT \REG_HEX1|DOUT\(0);
\REG_HEX0|ALT_INV_DOUT\(1) <= NOT \REG_HEX0|DOUT\(1);
\REG_HEX0|ALT_INV_DOUT\(2) <= NOT \REG_HEX0|DOUT\(2);
\REG_HEX0|ALT_INV_DOUT\(3) <= NOT \REG_HEX0|DOUT\(3);
\REG_HEX0|ALT_INV_DOUT\(0) <= NOT \REG_HEX0|DOUT\(0);
\FLIP_FLOP_LED9|ALT_INV_DOUT~q\ <= NOT \FLIP_FLOP_LED9|DOUT~q\;
\FLIP_FLOP_LED8|ALT_INV_DOUT~q\ <= NOT \FLIP_FLOP_LED8|DOUT~q\;
=======
DATA_OUT <= ww_DATA_OUT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ROM|ALT_INV_memROM~15_combout\ <= NOT \ROM|memROM~15_combout\;
\ROM|ALT_INV_memROM~14_combout\ <= NOT \ROM|memROM~14_combout\;
\ROM|ALT_INV_memROM~13_combout\ <= NOT \ROM|memROM~13_combout\;
\RAM64|ALT_INV_ram~559_combout\ <= NOT \RAM64|ram~559_combout\;
\ROM|ALT_INV_memROM~12_combout\ <= NOT \ROM|memROM~12_combout\;
\RAM64|ALT_INV_ram~558_combout\ <= NOT \RAM64|ram~558_combout\;
\RAM64|ALT_INV_ram~557_combout\ <= NOT \RAM64|ram~557_combout\;
\RAM64|ALT_INV_ram~78_q\ <= NOT \RAM64|ram~78_q\;
\RAM64|ALT_INV_ram~62_q\ <= NOT \RAM64|ram~62_q\;
\RAM64|ALT_INV_ram~556_combout\ <= NOT \RAM64|ram~556_combout\;
\RAM64|ALT_INV_ram~46_q\ <= NOT \RAM64|ram~46_q\;
\RAM64|ALT_INV_ram~30_q\ <= NOT \RAM64|ram~30_q\;
\RAM64|ALT_INV_ram~555_combout\ <= NOT \RAM64|ram~555_combout\;
\RAM64|ALT_INV_ram~70_q\ <= NOT \RAM64|ram~70_q\;
\RAM64|ALT_INV_ram~54_q\ <= NOT \RAM64|ram~54_q\;
\RAM64|ALT_INV_ram~554_combout\ <= NOT \RAM64|ram~554_combout\;
\RAM64|ALT_INV_ram~38_q\ <= NOT \RAM64|ram~38_q\;
\RAM64|ALT_INV_ram~22_q\ <= NOT \RAM64|ram~22_q\;
\RAM64|ALT_INV_ram~553_combout\ <= NOT \RAM64|ram~553_combout\;
\RAM64|ALT_INV_ram~552_combout\ <= NOT \RAM64|ram~552_combout\;
\RAM64|ALT_INV_ram~77_q\ <= NOT \RAM64|ram~77_q\;
\RAM64|ALT_INV_ram~69_q\ <= NOT \RAM64|ram~69_q\;
\RAM64|ALT_INV_ram~45_q\ <= NOT \RAM64|ram~45_q\;
\RAM64|ALT_INV_ram~37_q\ <= NOT \RAM64|ram~37_q\;
\RAM64|ALT_INV_ram~551_combout\ <= NOT \RAM64|ram~551_combout\;
\RAM64|ALT_INV_ram~61_q\ <= NOT \RAM64|ram~61_q\;
\RAM64|ALT_INV_ram~53_q\ <= NOT \RAM64|ram~53_q\;
\RAM64|ALT_INV_ram~29_q\ <= NOT \RAM64|ram~29_q\;
\RAM64|ALT_INV_ram~21_q\ <= NOT \RAM64|ram~21_q\;
\RAM64|ALT_INV_ram~550_combout\ <= NOT \RAM64|ram~550_combout\;
\RAM64|ALT_INV_ram~549_combout\ <= NOT \RAM64|ram~549_combout\;
\RAM64|ALT_INV_ram~76_q\ <= NOT \RAM64|ram~76_q\;
\RAM64|ALT_INV_ram~60_q\ <= NOT \RAM64|ram~60_q\;
\RAM64|ALT_INV_ram~548_combout\ <= NOT \RAM64|ram~548_combout\;
\RAM64|ALT_INV_ram~44_q\ <= NOT \RAM64|ram~44_q\;
\RAM64|ALT_INV_ram~28_q\ <= NOT \RAM64|ram~28_q\;
\RAM64|ALT_INV_ram~547_combout\ <= NOT \RAM64|ram~547_combout\;
\RAM64|ALT_INV_ram~68_q\ <= NOT \RAM64|ram~68_q\;
\RAM64|ALT_INV_ram~52_q\ <= NOT \RAM64|ram~52_q\;
\RAM64|ALT_INV_ram~546_combout\ <= NOT \RAM64|ram~546_combout\;
\RAM64|ALT_INV_ram~36_q\ <= NOT \RAM64|ram~36_q\;
\RAM64|ALT_INV_ram~20_q\ <= NOT \RAM64|ram~20_q\;
\RAM64|ALT_INV_ram~545_combout\ <= NOT \RAM64|ram~545_combout\;
\RAM64|ALT_INV_ram~544_combout\ <= NOT \RAM64|ram~544_combout\;
\RAM64|ALT_INV_ram~75_q\ <= NOT \RAM64|ram~75_q\;
\RAM64|ALT_INV_ram~67_q\ <= NOT \RAM64|ram~67_q\;
\RAM64|ALT_INV_ram~43_q\ <= NOT \RAM64|ram~43_q\;
\RAM64|ALT_INV_ram~35_q\ <= NOT \RAM64|ram~35_q\;
\RAM64|ALT_INV_ram~543_combout\ <= NOT \RAM64|ram~543_combout\;
\RAM64|ALT_INV_ram~59_q\ <= NOT \RAM64|ram~59_q\;
\RAM64|ALT_INV_ram~51_q\ <= NOT \RAM64|ram~51_q\;
\RAM64|ALT_INV_ram~27_q\ <= NOT \RAM64|ram~27_q\;
\RAM64|ALT_INV_ram~19_q\ <= NOT \RAM64|ram~19_q\;
\RAM64|ALT_INV_ram~542_combout\ <= NOT \RAM64|ram~542_combout\;
\RAM64|ALT_INV_ram~541_combout\ <= NOT \RAM64|ram~541_combout\;
\RAM64|ALT_INV_ram~74_q\ <= NOT \RAM64|ram~74_q\;
\RAM64|ALT_INV_ram~58_q\ <= NOT \RAM64|ram~58_q\;
\RAM64|ALT_INV_ram~540_combout\ <= NOT \RAM64|ram~540_combout\;
\RAM64|ALT_INV_ram~42_q\ <= NOT \RAM64|ram~42_q\;
\RAM64|ALT_INV_ram~26_q\ <= NOT \RAM64|ram~26_q\;
\RAM64|ALT_INV_ram~539_combout\ <= NOT \RAM64|ram~539_combout\;
\RAM64|ALT_INV_ram~66_q\ <= NOT \RAM64|ram~66_q\;
\RAM64|ALT_INV_ram~50_q\ <= NOT \RAM64|ram~50_q\;
\RAM64|ALT_INV_ram~538_combout\ <= NOT \RAM64|ram~538_combout\;
\RAM64|ALT_INV_ram~34_q\ <= NOT \RAM64|ram~34_q\;
\RAM64|ALT_INV_ram~18_q\ <= NOT \RAM64|ram~18_q\;
\RAM64|ALT_INV_ram~537_combout\ <= NOT \RAM64|ram~537_combout\;
\RAM64|ALT_INV_ram~536_combout\ <= NOT \RAM64|ram~536_combout\;
\RAM64|ALT_INV_ram~73_q\ <= NOT \RAM64|ram~73_q\;
\RAM64|ALT_INV_ram~65_q\ <= NOT \RAM64|ram~65_q\;
\RAM64|ALT_INV_ram~41_q\ <= NOT \RAM64|ram~41_q\;
\RAM64|ALT_INV_ram~33_q\ <= NOT \RAM64|ram~33_q\;
\RAM64|ALT_INV_ram~535_combout\ <= NOT \RAM64|ram~535_combout\;
\RAM64|ALT_INV_ram~57_q\ <= NOT \RAM64|ram~57_q\;
\RAM64|ALT_INV_ram~49_q\ <= NOT \RAM64|ram~49_q\;
\RAM64|ALT_INV_ram~25_q\ <= NOT \RAM64|ram~25_q\;
\RAM64|ALT_INV_ram~17_q\ <= NOT \RAM64|ram~17_q\;
\RAM64|ALT_INV_ram~534_combout\ <= NOT \RAM64|ram~534_combout\;
\RAM64|ALT_INV_ram~533_combout\ <= NOT \RAM64|ram~533_combout\;
\RAM64|ALT_INV_ram~72_q\ <= NOT \RAM64|ram~72_q\;
\RAM64|ALT_INV_ram~56_q\ <= NOT \RAM64|ram~56_q\;
\RAM64|ALT_INV_ram~532_combout\ <= NOT \RAM64|ram~532_combout\;
\RAM64|ALT_INV_ram~40_q\ <= NOT \RAM64|ram~40_q\;
\RAM64|ALT_INV_ram~24_q\ <= NOT \RAM64|ram~24_q\;
\RAM64|ALT_INV_ram~531_combout\ <= NOT \RAM64|ram~531_combout\;
\RAM64|ALT_INV_ram~64_q\ <= NOT \RAM64|ram~64_q\;
\RAM64|ALT_INV_ram~48_q\ <= NOT \RAM64|ram~48_q\;
\RAM64|ALT_INV_ram~530_combout\ <= NOT \RAM64|ram~530_combout\;
\RAM64|ALT_INV_ram~32_q\ <= NOT \RAM64|ram~32_q\;
\RAM64|ALT_INV_ram~16_q\ <= NOT \RAM64|ram~16_q\;
\CPU|DECODER1|ALT_INV_saida~0_combout\ <= NOT \CPU|DECODER1|saida~0_combout\;
\RAM64|ALT_INV_ram~529_combout\ <= NOT \RAM64|ram~529_combout\;
\ROM|ALT_INV_memROM~11_combout\ <= NOT \ROM|memROM~11_combout\;
\RAM64|ALT_INV_ram~528_combout\ <= NOT \RAM64|ram~528_combout\;
\RAM64|ALT_INV_ram~71_q\ <= NOT \RAM64|ram~71_q\;
\RAM64|ALT_INV_ram~63_q\ <= NOT \RAM64|ram~63_q\;
\RAM64|ALT_INV_ram~39_q\ <= NOT \RAM64|ram~39_q\;
\RAM64|ALT_INV_ram~31_q\ <= NOT \RAM64|ram~31_q\;
\RAM64|ALT_INV_ram~527_combout\ <= NOT \RAM64|ram~527_combout\;
\RAM64|ALT_INV_ram~55_q\ <= NOT \RAM64|ram~55_q\;
\RAM64|ALT_INV_ram~47_q\ <= NOT \RAM64|ram~47_q\;
\RAM64|ALT_INV_ram~23_q\ <= NOT \RAM64|ram~23_q\;
\RAM64|ALT_INV_ram~15_q\ <= NOT \RAM64|ram~15_q\;
\CPU|DECODER1|ALT_INV_Equal10~0_combout\ <= NOT \CPU|DECODER1|Equal10~0_combout\;
\DECODER2|ALT_INV_Equal7~0_combout\ <= NOT \DECODER2|Equal7~0_combout\;
\ROM|ALT_INV_memROM~10_combout\ <= NOT \ROM|memROM~10_combout\;
\ROM|ALT_INV_memROM~9_combout\ <= NOT \ROM|memROM~9_combout\;
\ROM|ALT_INV_memROM~8_combout\ <= NOT \ROM|memROM~8_combout\;
\ROM|ALT_INV_memROM~7_combout\ <= NOT \ROM|memROM~7_combout\;
\ROM|ALT_INV_memROM~6_combout\ <= NOT \ROM|memROM~6_combout\;
\ROM|ALT_INV_memROM~5_combout\ <= NOT \ROM|memROM~5_combout\;
\ROM|ALT_INV_memROM~4_combout\ <= NOT \ROM|memROM~4_combout\;
\ROM|ALT_INV_memROM~3_combout\ <= NOT \ROM|memROM~3_combout\;
\ROM|ALT_INV_memROM~2_combout\ <= NOT \ROM|memROM~2_combout\;
\ROM|ALT_INV_memROM~1_combout\ <= NOT \ROM|memROM~1_combout\;
\ROM|ALT_INV_memROM~0_combout\ <= NOT \ROM|memROM~0_combout\;
\REG_HEX5|ALT_INV_DOUT\(2) <= NOT \REG_HEX5|DOUT\(2);
\REG_HEX5|ALT_INV_DOUT\(1) <= NOT \REG_HEX5|DOUT\(1);
\REG_HEX5|ALT_INV_DOUT\(3) <= NOT \REG_HEX5|DOUT\(3);
\REG_HEX5|ALT_INV_DOUT\(0) <= NOT \REG_HEX5|DOUT\(0);
\REG_HEX4|ALT_INV_DOUT\(2) <= NOT \REG_HEX4|DOUT\(2);
\REG_HEX4|ALT_INV_DOUT\(1) <= NOT \REG_HEX4|DOUT\(1);
\REG_HEX4|ALT_INV_DOUT\(3) <= NOT \REG_HEX4|DOUT\(3);
\REG_HEX4|ALT_INV_DOUT\(0) <= NOT \REG_HEX4|DOUT\(0);
\REG_HEX3|ALT_INV_DOUT\(2) <= NOT \REG_HEX3|DOUT\(2);
\REG_HEX3|ALT_INV_DOUT\(1) <= NOT \REG_HEX3|DOUT\(1);
\REG_HEX3|ALT_INV_DOUT\(3) <= NOT \REG_HEX3|DOUT\(3);
\REG_HEX3|ALT_INV_DOUT\(0) <= NOT \REG_HEX3|DOUT\(0);
\REG_HEX2|ALT_INV_DOUT\(2) <= NOT \REG_HEX2|DOUT\(2);
\REG_HEX2|ALT_INV_DOUT\(1) <= NOT \REG_HEX2|DOUT\(1);
\REG_HEX2|ALT_INV_DOUT\(3) <= NOT \REG_HEX2|DOUT\(3);
\REG_HEX2|ALT_INV_DOUT\(0) <= NOT \REG_HEX2|DOUT\(0);
\REG_HEX1|ALT_INV_DOUT\(2) <= NOT \REG_HEX1|DOUT\(2);
\REG_HEX1|ALT_INV_DOUT\(1) <= NOT \REG_HEX1|DOUT\(1);
\REG_HEX1|ALT_INV_DOUT\(3) <= NOT \REG_HEX1|DOUT\(3);
\REG_HEX1|ALT_INV_DOUT\(0) <= NOT \REG_HEX1|DOUT\(0);
\REG_HEX0|ALT_INV_DOUT\(2) <= NOT \REG_HEX0|DOUT\(2);
\REG_HEX0|ALT_INV_DOUT\(1) <= NOT \REG_HEX0|DOUT\(1);
\REG_HEX0|ALT_INV_DOUT\(3) <= NOT \REG_HEX0|DOUT\(3);
\REG_HEX0|ALT_INV_DOUT\(0) <= NOT \REG_HEX0|DOUT\(0);
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
\CPU|ULA1|ALT_INV_Add1~29_sumout\ <= NOT \CPU|ULA1|Add1~29_sumout\;
\CPU|ULA1|ALT_INV_Add1~25_sumout\ <= NOT \CPU|ULA1|Add1~25_sumout\;
\CPU|ULA1|ALT_INV_Add1~21_sumout\ <= NOT \CPU|ULA1|Add1~21_sumout\;
\CPU|ULA1|ALT_INV_Add1~17_sumout\ <= NOT \CPU|ULA1|Add1~17_sumout\;
\CPU|ULA1|ALT_INV_Add1~13_sumout\ <= NOT \CPU|ULA1|Add1~13_sumout\;
\CPU|ULA1|ALT_INV_Add1~9_sumout\ <= NOT \CPU|ULA1|Add1~9_sumout\;
\CPU|ULA1|ALT_INV_Add1~5_sumout\ <= NOT \CPU|ULA1|Add1~5_sumout\;
\CPU|ULA1|ALT_INV_Add1~1_sumout\ <= NOT \CPU|ULA1|Add1~1_sumout\;
<<<<<<< HEAD
\CPU|REGA|ALT_INV_DOUT\(7) <= NOT \CPU|REGA|DOUT\(7);
\CPU|REGA|ALT_INV_DOUT\(6) <= NOT \CPU|REGA|DOUT\(6);
\CPU|REGA|ALT_INV_DOUT\(5) <= NOT \CPU|REGA|DOUT\(5);
\CPU|REGA|ALT_INV_DOUT\(4) <= NOT \CPU|REGA|DOUT\(4);
\CPU|REGA|ALT_INV_DOUT\(3) <= NOT \CPU|REGA|DOUT\(3);
\CPU|REGA|ALT_INV_DOUT\(2) <= NOT \CPU|REGA|DOUT\(2);
\CPU|REGA|ALT_INV_DOUT\(1) <= NOT \CPU|REGA|DOUT\(1);
=======
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
\CPU|PC|ALT_INV_DOUT\(8) <= NOT \CPU|PC|DOUT\(8);
\CPU|PC|ALT_INV_DOUT\(7) <= NOT \CPU|PC|DOUT\(7);
\CPU|PC|ALT_INV_DOUT\(6) <= NOT \CPU|PC|DOUT\(6);
\CPU|PC|ALT_INV_DOUT\(5) <= NOT \CPU|PC|DOUT\(5);
\CPU|PC|ALT_INV_DOUT\(4) <= NOT \CPU|PC|DOUT\(4);
\CPU|PC|ALT_INV_DOUT\(3) <= NOT \CPU|PC|DOUT\(3);
\CPU|PC|ALT_INV_DOUT\(2) <= NOT \CPU|PC|DOUT\(2);
\CPU|PC|ALT_INV_DOUT\(1) <= NOT \CPU|PC|DOUT\(1);
\CPU|PC|ALT_INV_DOUT\(0) <= NOT \CPU|PC|DOUT\(0);
<<<<<<< HEAD
\CPU|REGA|ALT_INV_DOUT\(0) <= NOT \CPU|REGA|DOUT\(0);
\ALT_INV_SW[7]~input_o\ <= NOT \SW[7]~input_o\;
\ALT_INV_SW[6]~input_o\ <= NOT \SW[6]~input_o\;
\ALT_INV_SW[5]~input_o\ <= NOT \SW[5]~input_o\;
\ALT_INV_SW[4]~input_o\ <= NOT \SW[4]~input_o\;
\ALT_INV_SW[3]~input_o\ <= NOT \SW[3]~input_o\;
\ALT_INV_SW[2]~input_o\ <= NOT \SW[2]~input_o\;
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
\ALT_INV_FPGA_RESET_N~input_o\ <= NOT \FPGA_RESET_N~input_o\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\ALT_INV_KEY[1]~input_o\ <= NOT \KEY[1]~input_o\;
\ALT_INV_SW[8]~input_o\ <= NOT \SW[8]~input_o\;
\ALT_INV_KEY[2]~input_o\ <= NOT \KEY[2]~input_o\;
\ALT_INV_KEY[3]~input_o\ <= NOT \KEY[3]~input_o\;
\ALT_INV_SW[9]~input_o\ <= NOT \SW[9]~input_o\;
\ALT_INV_KEY[0]~input_o\ <= NOT \KEY[0]~input_o\;
\CPU|DESVIO1|ALT_INV_Sel\(0) <= NOT \CPU|DESVIO1|Sel\(0);
\CPU|DESVIO1|ALT_INV_Sel~0_combout\ <= NOT \CPU|DESVIO1|Sel~0_combout\;
\AND_SW0_7|ALT_INV_saida~1_combout\ <= NOT \AND_SW0_7|saida~1_combout\;
\CPU|MUX1|ALT_INV_saida_MUX[2]~1_combout\ <= NOT \CPU|MUX1|saida_MUX[2]~1_combout\;
\CPU|MUX1|ALT_INV_saida_MUX[1]~0_combout\ <= NOT \CPU|MUX1|saida_MUX[1]~0_combout\;
\ALT_INV_DATA_IN[0]~5_combout\ <= NOT \DATA_IN[0]~5_combout\;
\ALT_INV_DATA_IN[0]~4_combout\ <= NOT \DATA_IN[0]~4_combout\;
\ALT_INV_DATA_IN[0]~3_combout\ <= NOT \DATA_IN[0]~3_combout\;
\ALT_INV_DATA_IN[0]~2_combout\ <= NOT \DATA_IN[0]~2_combout\;
\ALT_INV_DATA_IN[0]~1_combout\ <= NOT \DATA_IN[0]~1_combout\;
\ALT_INV_DATA_IN[0]~0_combout\ <= NOT \DATA_IN[0]~0_combout\;
\CPU|DECODER1|ALT_INV_saida~0_combout\ <= NOT \CPU|DECODER1|saida~0_combout\;
\AND_HEX0|ALT_INV_saida~3_combout\ <= NOT \AND_HEX0|saida~3_combout\;
\ROM|ALT_INV_memROM~9_combout\ <= NOT \ROM|memROM~9_combout\;
\AND_HEX0|ALT_INV_saida~1_combout\ <= NOT \AND_HEX0|saida~1_combout\;
\ROM|ALT_INV_memROM~8_combout\ <= NOT \ROM|memROM~8_combout\;
\ROM|ALT_INV_memROM~7_combout\ <= NOT \ROM|memROM~7_combout\;
\ROM|ALT_INV_memROM~6_combout\ <= NOT \ROM|memROM~6_combout\;
\AND_SW0_7|ALT_INV_saida~0_combout\ <= NOT \AND_SW0_7|saida~0_combout\;
\ROM|ALT_INV_memROM~5_combout\ <= NOT \ROM|memROM~5_combout\;
\ROM|ALT_INV_memROM~4_combout\ <= NOT \ROM|memROM~4_combout\;
\ROM|ALT_INV_memROM~3_combout\ <= NOT \ROM|memROM~3_combout\;
\ROM|ALT_INV_memROM~2_combout\ <= NOT \ROM|memROM~2_combout\;
\AND_HEX0|ALT_INV_saida~0_combout\ <= NOT \AND_HEX0|saida~0_combout\;
\ROM|ALT_INV_memROM~1_combout\ <= NOT \ROM|memROM~1_combout\;
\ROM|ALT_INV_memROM~0_combout\ <= NOT \ROM|memROM~0_combout\;
\REG_HEX5|ALT_INV_DOUT\(1) <= NOT \REG_HEX5|DOUT\(1);
\REG_HEX5|ALT_INV_DOUT\(2) <= NOT \REG_HEX5|DOUT\(2);
\REG_HEX5|ALT_INV_DOUT\(3) <= NOT \REG_HEX5|DOUT\(3);
\REG_HEX5|ALT_INV_DOUT\(0) <= NOT \REG_HEX5|DOUT\(0);
=======
\CPU|REGA|ALT_INV_DOUT\(7) <= NOT \CPU|REGA|DOUT\(7);
\CPU|REGA|ALT_INV_DOUT\(6) <= NOT \CPU|REGA|DOUT\(6);
\CPU|REGA|ALT_INV_DOUT\(5) <= NOT \CPU|REGA|DOUT\(5);
\CPU|REGA|ALT_INV_DOUT\(4) <= NOT \CPU|REGA|DOUT\(4);
\CPU|REGA|ALT_INV_DOUT\(3) <= NOT \CPU|REGA|DOUT\(3);
\CPU|REGA|ALT_INV_DOUT\(2) <= NOT \CPU|REGA|DOUT\(2);
\CPU|REGA|ALT_INV_DOUT\(1) <= NOT \CPU|REGA|DOUT\(1);
\CPU|REGA|ALT_INV_DOUT\(0) <= NOT \CPU|REGA|DOUT\(0);
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17

\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
<<<<<<< HEAD
	i => \REG_LEDR0_7|DOUT\(0),
=======
	i => GND,
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
	devoe => ww_devoe,
	o => ww_LEDR(0));

\LEDR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
<<<<<<< HEAD
	i => \REG_LEDR0_7|DOUT\(1),
=======
	i => GND,
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
	devoe => ww_devoe,
	o => ww_LEDR(1));

\LEDR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
<<<<<<< HEAD
	i => \REG_LEDR0_7|DOUT\(2),
=======
	i => GND,
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
	devoe => ww_devoe,
	o => ww_LEDR(2));

\LEDR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
<<<<<<< HEAD
	i => \REG_LEDR0_7|DOUT\(3),
=======
	i => GND,
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
	devoe => ww_devoe,
	o => ww_LEDR(3));

\LEDR[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
<<<<<<< HEAD
	i => \REG_LEDR0_7|DOUT\(4),
=======
	i => GND,
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
	devoe => ww_devoe,
	o => ww_LEDR(4));

\LEDR[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
<<<<<<< HEAD
	i => \REG_LEDR0_7|DOUT\(5),
=======
	i => GND,
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
	devoe => ww_devoe,
	o => ww_LEDR(5));

\LEDR[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
<<<<<<< HEAD
	i => \REG_LEDR0_7|DOUT\(6),
=======
	i => GND,
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
	devoe => ww_devoe,
	o => ww_LEDR(6));

\LEDR[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
<<<<<<< HEAD
	i => \REG_LEDR0_7|DOUT\(7),
=======
	i => GND,
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
	devoe => ww_devoe,
	o => ww_LEDR(7));

\LEDR[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
<<<<<<< HEAD
	i => \FLIP_FLOP_LED8|DOUT~q\,
=======
	i => GND,
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
	devoe => ww_devoe,
	o => ww_LEDR(8));

\LEDR[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
<<<<<<< HEAD
	i => \FLIP_FLOP_LED9|DOUT~q\,
=======
	i => GND,
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
	devoe => ww_devoe,
	o => ww_LEDR(9));

\HEX0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER_7SEG_0|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(0));

\HEX0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER_7SEG_0|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(1));

\HEX0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER_7SEG_0|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(2));

\HEX0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER_7SEG_0|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(3));

\HEX0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER_7SEG_0|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(4));

\HEX0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER_7SEG_0|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(5));

\HEX0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER_7SEG_0|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(6));

\HEX1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER_7SEG_1|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(0));

\HEX1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER_7SEG_1|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(1));

\HEX1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER_7SEG_1|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(2));

\HEX1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER_7SEG_1|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(3));

\HEX1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER_7SEG_1|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(4));

\HEX1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER_7SEG_1|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(5));

\HEX1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER_7SEG_1|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(6));

\HEX2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER_7SEG_2|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(0));

\HEX2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER_7SEG_2|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(1));

\HEX2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER_7SEG_2|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(2));

\HEX2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER_7SEG_2|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(3));

\HEX2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER_7SEG_2|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(4));

\HEX2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER_7SEG_2|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(5));

\HEX2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER_7SEG_2|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(6));

\HEX3[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER_7SEG_3|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(0));

\HEX3[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER_7SEG_3|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(1));

\HEX3[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER_7SEG_3|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(2));

\HEX3[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER_7SEG_3|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(3));

\HEX3[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER_7SEG_3|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(4));

\HEX3[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER_7SEG_3|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(5));

\HEX3[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER_7SEG_3|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(6));

\HEX4[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER_7SEG_4|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(0));

\HEX4[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER_7SEG_4|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(1));

\HEX4[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER_7SEG_4|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(2));

\HEX4[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER_7SEG_4|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(3));

\HEX4[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER_7SEG_4|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(4));

\HEX4[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER_7SEG_4|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(5));

\HEX4[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER_7SEG_4|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(6));

\HEX5[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER_7SEG_5|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(0));

\HEX5[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER_7SEG_5|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(1));

\HEX5[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER_7SEG_5|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(2));

\HEX5[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER_7SEG_5|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(3));

\HEX5[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER_7SEG_5|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(4));

\HEX5[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER_7SEG_5|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(5));

\HEX5[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER_7SEG_5|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(6));

<<<<<<< HEAD
=======
\DATA_OUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|REGA|DOUT\(0),
	devoe => ww_devoe,
	o => ww_DATA_OUT(0));

\DATA_OUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|REGA|DOUT\(1),
	devoe => ww_devoe,
	o => ww_DATA_OUT(1));

\DATA_OUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|REGA|DOUT\(2),
	devoe => ww_devoe,
	o => ww_DATA_OUT(2));

\DATA_OUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|REGA|DOUT\(3),
	devoe => ww_devoe,
	o => ww_DATA_OUT(3));

\DATA_OUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|REGA|DOUT\(4),
	devoe => ww_devoe,
	o => ww_DATA_OUT(4));

\DATA_OUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|REGA|DOUT\(5),
	devoe => ww_devoe,
	o => ww_DATA_OUT(5));

\DATA_OUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|REGA|DOUT\(6),
	devoe => ww_devoe,
	o => ww_DATA_OUT(6));

\DATA_OUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|REGA|DOUT\(7),
	devoe => ww_devoe,
	o => ww_DATA_OUT(7));

>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

\CPU|incrementaPC|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~1_sumout\ = SUM(( \CPU|PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))
-- \CPU|incrementaPC|Add0~2\ = CARRY(( \CPU|PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(0),
	cin => GND,
	sumout => \CPU|incrementaPC|Add0~1_sumout\,
	cout => \CPU|incrementaPC|Add0~2\);

<<<<<<< HEAD
\CPU|incrementaPC|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~5_sumout\ = SUM(( \CPU|PC|DOUT\(1) ) + ( GND ) + ( \CPU|incrementaPC|Add0~2\ ))
-- \CPU|incrementaPC|Add0~6\ = CARRY(( \CPU|PC|DOUT\(1) ) + ( GND ) + ( \CPU|incrementaPC|Add0~2\ ))
=======
\ROM|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~0_combout\ = (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(0) $ (((\CPU|PC|DOUT\(3)) # (\CPU|PC|DOUT\(2))))))
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(1),
	cin => \CPU|incrementaPC|Add0~2\,
	sumout => \CPU|incrementaPC|Add0~5_sumout\,
	cout => \CPU|incrementaPC|Add0~6\);

\ROM|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~3_combout\ = (!\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(2))) # (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2) & \CPU|PC|DOUT\(3))))) # (\CPU|PC|DOUT\(0) & (((\CPU|PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110100101101000011010010110100001101001011010000110100101101",
=======
	lut_mask => "1000010001000100100001000100010010000100010001001000010001000100",
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
<<<<<<< HEAD
	combout => \ROM|memROM~3_combout\);

\ROM|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~6_combout\ = (\ROM|memROM~2_combout\ & \ROM|memROM~3_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~3_combout\,
	combout => \ROM|memROM~6_combout\);
=======
	combout => \ROM|memROM~0_combout\);
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17

\CPU|incrementaPC|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~17_sumout\ = SUM(( \CPU|PC|DOUT\(4) ) + ( GND ) + ( \CPU|incrementaPC|Add0~14\ ))
-- \CPU|incrementaPC|Add0~18\ = CARRY(( \CPU|PC|DOUT\(4) ) + ( GND ) + ( \CPU|incrementaPC|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(4),
	cin => \CPU|incrementaPC|Add0~14\,
	sumout => \CPU|incrementaPC|Add0~17_sumout\,
	cout => \CPU|incrementaPC|Add0~18\);

\CPU|incrementaPC|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~21_sumout\ = SUM(( \CPU|PC|DOUT\(5) ) + ( GND ) + ( \CPU|incrementaPC|Add0~18\ ))
-- \CPU|incrementaPC|Add0~22\ = CARRY(( \CPU|PC|DOUT\(5) ) + ( GND ) + ( \CPU|incrementaPC|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(5),
	cin => \CPU|incrementaPC|Add0~18\,
	sumout => \CPU|incrementaPC|Add0~21_sumout\,
	cout => \CPU|incrementaPC|Add0~22\);

<<<<<<< HEAD
\ROM|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~4_combout\ = (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT\(1)) # (!\CPU|PC|DOUT\(2)))))
=======
\ROM|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~7_combout\ = (\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(1) & ((\CPU|PC|DOUT\(3)) # (\CPU|PC|DOUT\(2)))) # (\CPU|PC|DOUT\(1) & ((!\CPU|PC|DOUT\(2)) # (!\CPU|PC|DOUT\(3))))))
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "1010100000000000101010000000000010101000000000001010100000000000",
=======
	lut_mask => "0001010101010100000101010101010000010101010101000001010101010100",
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
<<<<<<< HEAD
	combout => \ROM|memROM~4_combout\);

\ROM|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~7_combout\ = (\ROM|memROM~2_combout\ & !\ROM|memROM~4_combout\)
=======
	combout => \ROM|memROM~7_combout\);

\ROM|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~11_combout\ = (\ROM|memROM~1_combout\ & (!\CPU|PC|DOUT\(8) & \ROM|memROM~7_combout\))
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~4_combout\,
	combout => \ROM|memROM~7_combout\);
=======
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \ROM|ALT_INV_memROM~7_combout\,
	combout => \ROM|memROM~11_combout\);

\ROM|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~8_combout\ = (\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(1)) # ((!\CPU|PC|DOUT\(2)) # (!\CPU|PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010100010101010101010001010101010101000101010101010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~8_combout\);

\ROM|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~9_combout\ = (!\CPU|PC|DOUT\(0) & (((\CPU|PC|DOUT\(3)) # (\CPU|PC|DOUT\(2))) # (\CPU|PC|DOUT\(1))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101010101010001010101010101000101010101010100010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~9_combout\);

\ROM|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~10_combout\ = (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(0) & ((\CPU|PC|DOUT\(3)) # (\CPU|PC|DOUT\(2))))) # (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(0) $ (((\CPU|PC|DOUT\(2) & \CPU|PC|DOUT\(3))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101010101001001010101010100100101010101010010010101010101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~10_combout\);

\CPU|DESVIO1|Sel[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DESVIO1|Sel[0]~0_combout\ = ( !\ROM|memROM~10_combout\ & ( (\ROM|memROM~1_combout\ & (!\CPU|PC|DOUT\(8) & (!\ROM|memROM~8_combout\ & \ROM|memROM~9_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000000000000000000010000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \ROM|ALT_INV_memROM~8_combout\,
	datad => \ROM|ALT_INV_memROM~9_combout\,
	datae => \ROM|ALT_INV_memROM~10_combout\,
	combout => \CPU|DESVIO1|Sel[0]~0_combout\);
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17

\CPU|PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|incrementaPC|Add0~21_sumout\,
<<<<<<< HEAD
	asdata => \ROM|memROM~7_combout\,
	sload => \CPU|DESVIO1|Sel\(0),
=======
	asdata => \ROM|memROM~11_combout\,
	sload => \CPU|DESVIO1|Sel[0]~0_combout\,
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(5));

\CPU|incrementaPC|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~25_sumout\ = SUM(( \CPU|PC|DOUT\(6) ) + ( GND ) + ( \CPU|incrementaPC|Add0~22\ ))
-- \CPU|incrementaPC|Add0~26\ = CARRY(( \CPU|PC|DOUT\(6) ) + ( GND ) + ( \CPU|incrementaPC|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(6),
	cin => \CPU|incrementaPC|Add0~22\,
	sumout => \CPU|incrementaPC|Add0~25_sumout\,
	cout => \CPU|incrementaPC|Add0~26\);

<<<<<<< HEAD
=======
\~GND\ : cyclonev_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

\CPU|PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|incrementaPC|Add0~25_sumout\,
	asdata => \~GND~combout\,
	sload => \CPU|DESVIO1|Sel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(6));

>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
\CPU|incrementaPC|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~29_sumout\ = SUM(( \CPU|PC|DOUT\(7) ) + ( GND ) + ( \CPU|incrementaPC|Add0~26\ ))
-- \CPU|incrementaPC|Add0~30\ = CARRY(( \CPU|PC|DOUT\(7) ) + ( GND ) + ( \CPU|incrementaPC|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(7),
	cin => \CPU|incrementaPC|Add0~26\,
	sumout => \CPU|incrementaPC|Add0~29_sumout\,
	cout => \CPU|incrementaPC|Add0~30\);

<<<<<<< HEAD
\~GND\ : cyclonev_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

=======
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
\CPU|PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|incrementaPC|Add0~29_sumout\,
	asdata => \~GND~combout\,
<<<<<<< HEAD
	sload => \CPU|DESVIO1|Sel\(0),
=======
	sload => \CPU|DESVIO1|Sel[0]~0_combout\,
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(7));

\CPU|incrementaPC|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~33_sumout\ = SUM(( \CPU|PC|DOUT\(8) ) + ( GND ) + ( \CPU|incrementaPC|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(8),
	cin => \CPU|incrementaPC|Add0~30\,
	sumout => \CPU|incrementaPC|Add0~33_sumout\);

\CPU|PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|incrementaPC|Add0~33_sumout\,
<<<<<<< HEAD
	asdata => \ROM|memROM~2_combout\,
	sload => \CPU|DESVIO1|Sel\(0),
=======
	asdata => \ROM|memROM~11_combout\,
	sload => \CPU|DESVIO1|Sel[0]~0_combout\,
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(8));

<<<<<<< HEAD
\DATA_IN[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATA_IN[0]~0_combout\ = ( !\CPU|PC|DOUT\(7) & ( !\CPU|PC|DOUT\(8) & ( (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(5) & !\CPU|PC|DOUT\(6)))) ) ) )
=======
\ROM|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~2_combout\ = (\ROM|memROM~0_combout\ & (\ROM|memROM~1_combout\ & !\CPU|PC|DOUT\(8)))
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(4),
	datac => \CPU|PC|ALT_INV_DOUT\(5),
	datad => \CPU|PC|ALT_INV_DOUT\(6),
	datae => \CPU|PC|ALT_INV_DOUT\(7),
	dataf => \CPU|PC|ALT_INV_DOUT\(8),
	combout => \DATA_IN[0]~0_combout\);

\CPU|PC|DOUT[6]\ : dffeas
=======
	lut_mask => "0001000000010000000100000001000000010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \CPU|PC|ALT_INV_DOUT\(8),
	combout => \ROM|memROM~2_combout\);

\CPU|PC|DOUT[0]\ : dffeas
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
<<<<<<< HEAD
	d => \CPU|incrementaPC|Add0~25_sumout\,
	asdata => \DATA_IN[0]~0_combout\,
	sload => \CPU|DESVIO1|Sel\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(6));

\ROM|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~1_combout\ = (!\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(6) & (!\CPU|PC|DOUT\(7) & !\CPU|PC|DOUT\(8))))
=======
	d => \CPU|incrementaPC|Add0~1_sumout\,
	asdata => \ROM|memROM~2_combout\,
	sload => \CPU|DESVIO1|Sel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(0));

\CPU|incrementaPC|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~5_sumout\ = SUM(( \CPU|PC|DOUT\(1) ) + ( GND ) + ( \CPU|incrementaPC|Add0~2\ ))
-- \CPU|incrementaPC|Add0~6\ = CARRY(( \CPU|PC|DOUT\(1) ) + ( GND ) + ( \CPU|incrementaPC|Add0~2\ ))
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "1000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(5),
	datab => \CPU|PC|ALT_INV_DOUT\(6),
	datac => \CPU|PC|ALT_INV_DOUT\(7),
	datad => \CPU|PC|ALT_INV_DOUT\(8),
	combout => \ROM|memROM~1_combout\);

\CPU|DESVIO1|Sel~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DESVIO1|Sel~0_combout\ = ( \CPU|PC|DOUT\(4) & ( \ROM|memROM~1_combout\ & ( (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(3) & !\CPU|PC|DOUT\(0)))) ) ) )
=======
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(1),
	cin => \CPU|incrementaPC|Add0~2\,
	sumout => \CPU|incrementaPC|Add0~5_sumout\,
	cout => \CPU|incrementaPC|Add0~6\);

\ROM|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~3_combout\ = (!\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(2) & \CPU|PC|DOUT\(3)))) # (\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(0) $ (!\CPU|PC|DOUT\(3)))))
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0000000000000000000000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(1),
	datab => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \CPU|PC|ALT_INV_DOUT\(3),
	datad => \CPU|PC|ALT_INV_DOUT\(0),
	datae => \CPU|PC|ALT_INV_DOUT\(4),
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	combout => \CPU|DESVIO1|Sel~0_combout\);

\CPU|DESVIO1|Sel[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DESVIO1|Sel\(0) = ( \ROM|memROM~2_combout\ & ( \CPU|DESVIO1|Sel~0_combout\ & ( \CPU|DESVIO1|Sel\(0) ) ) ) # ( !\ROM|memROM~2_combout\ & ( \CPU|DESVIO1|Sel~0_combout\ ) )
=======
	lut_mask => "0000000101000010000000010100001000000001010000100000000101000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~3_combout\);

\ROM|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~4_combout\ = (\ROM|memROM~1_combout\ & (!\CPU|PC|DOUT\(8) & \ROM|memROM~3_combout\))
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0000000000000000000000000000000011111111111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|DESVIO1|ALT_INV_Sel\(0),
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \CPU|DESVIO1|ALT_INV_Sel~0_combout\,
	combout => \CPU|DESVIO1|Sel\(0));
=======
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \ROM|ALT_INV_memROM~3_combout\,
	combout => \ROM|memROM~4_combout\);
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17

\CPU|PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|incrementaPC|Add0~5_sumout\,
<<<<<<< HEAD
	asdata => \ROM|memROM~6_combout\,
	sload => \CPU|DESVIO1|Sel\(0),
=======
	asdata => \ROM|memROM~4_combout\,
	sload => \CPU|DESVIO1|Sel[0]~0_combout\,
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(1));

\CPU|incrementaPC|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~9_sumout\ = SUM(( \CPU|PC|DOUT\(2) ) + ( GND ) + ( \CPU|incrementaPC|Add0~6\ ))
-- \CPU|incrementaPC|Add0~10\ = CARRY(( \CPU|PC|DOUT\(2) ) + ( GND ) + ( \CPU|incrementaPC|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(2),
	cin => \CPU|incrementaPC|Add0~6\,
	sumout => \CPU|incrementaPC|Add0~9_sumout\,
	cout => \CPU|incrementaPC|Add0~10\);

<<<<<<< HEAD
\ROM|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~0_combout\ = (\CPU|PC|DOUT\(3) & (((\CPU|PC|DOUT\(1) & \CPU|PC|DOUT\(2))) # (\CPU|PC|DOUT\(0))))
=======
\ROM|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~5_combout\ = (\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(1) $ (!\CPU|PC|DOUT\(2)))))
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0000000001010111000000000101011100000000010101110000000001010111",
=======
	lut_mask => "0000000000010100000000000001010000000000000101000000000000010100",
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
<<<<<<< HEAD
	combout => \ROM|memROM~0_combout\);

\ROM|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~9_combout\ = (\ROM|memROM~0_combout\ & \ROM|memROM~2_combout\)
=======
	combout => \ROM|memROM~5_combout\);

\ROM|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~6_combout\ = (\ROM|memROM~1_combout\ & (!\CPU|PC|DOUT\(8) & \ROM|memROM~5_combout\))
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	combout => \ROM|memROM~9_combout\);
=======
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \ROM|ALT_INV_memROM~5_combout\,
	combout => \ROM|memROM~6_combout\);
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17

\CPU|PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|incrementaPC|Add0~9_sumout\,
<<<<<<< HEAD
	asdata => \ROM|memROM~9_combout\,
	sload => \CPU|DESVIO1|Sel\(0),
=======
	asdata => \ROM|memROM~6_combout\,
	sload => \CPU|DESVIO1|Sel[0]~0_combout\,
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(2));

\CPU|incrementaPC|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~13_sumout\ = SUM(( \CPU|PC|DOUT\(3) ) + ( GND ) + ( \CPU|incrementaPC|Add0~10\ ))
-- \CPU|incrementaPC|Add0~14\ = CARRY(( \CPU|PC|DOUT\(3) ) + ( GND ) + ( \CPU|incrementaPC|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	cin => \CPU|incrementaPC|Add0~10\,
	sumout => \CPU|incrementaPC|Add0~13_sumout\,
	cout => \CPU|incrementaPC|Add0~14\);

\CPU|PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|incrementaPC|Add0~13_sumout\,
	asdata => \~GND~combout\,
<<<<<<< HEAD
	sload => \CPU|DESVIO1|Sel\(0),
=======
	sload => \CPU|DESVIO1|Sel[0]~0_combout\,
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(3));

\CPU|PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|incrementaPC|Add0~17_sumout\,
	asdata => \~GND~combout\,
<<<<<<< HEAD
	sload => \CPU|DESVIO1|Sel\(0),
=======
	sload => \CPU|DESVIO1|Sel[0]~0_combout\,
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(4));

<<<<<<< HEAD
\ROM|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~2_combout\ = ( !\CPU|PC|DOUT\(8) & ( (!\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(6) & !\CPU|PC|DOUT\(7)))) ) )
=======
\ROM|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~1_combout\ = (!\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(6) & !\CPU|PC|DOUT\(7))))
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "1000000000000000000000000000000010000000000000000000000000000000",
=======
	lut_mask => "1000000000000000100000000000000010000000000000001000000000000000",
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(4),
	datab => \CPU|PC|ALT_INV_DOUT\(5),
	datac => \CPU|PC|ALT_INV_DOUT\(6),
	datad => \CPU|PC|ALT_INV_DOUT\(7),
<<<<<<< HEAD
	datae => \CPU|PC|ALT_INV_DOUT\(8),
	combout => \ROM|memROM~2_combout\);

\ROM|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~5_combout\ = (!\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(1) & ((\CPU|PC|DOUT\(3)))) # (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(3))))) # (\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(1)))
=======
	combout => \ROM|memROM~1_combout\);

\CPU|DECODER1|Equal10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER1|Equal10~0_combout\ = ( !\ROM|memROM~10_combout\ & ( (\ROM|memROM~1_combout\ & (!\CPU|PC|DOUT\(8) & (!\ROM|memROM~8_combout\ & !\ROM|memROM~9_combout\))) ) )
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0011000110011001001100011001100100110001100110010011000110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~5_combout\);

\ROM|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~8_combout\ = (\ROM|memROM~2_combout\ & \ROM|memROM~5_combout\)
=======
	lut_mask => "0100000000000000000000000000000001000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \ROM|ALT_INV_memROM~8_combout\,
	datad => \ROM|ALT_INV_memROM~9_combout\,
	datae => \ROM|ALT_INV_memROM~10_combout\,
	combout => \CPU|DECODER1|Equal10~0_combout\);

\ROM|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~12_combout\ = (\ROM|memROM~0_combout\ & \ROM|memROM~1_combout\)
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
<<<<<<< HEAD
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~5_combout\,
	combout => \ROM|memROM~8_combout\);

\CPU|PC|DOUT[0]\ : dffeas
=======
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	combout => \ROM|memROM~12_combout\);

\RAM64|ram~559\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~559_combout\ = ( !\ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( (\ROM|memROM~1_combout\ & (!\CPU|PC|DOUT\(8) & (!\ROM|memROM~7_combout\ & \ROM|memROM~8_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \ROM|ALT_INV_memROM~8_combout\,
	datae => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \RAM64|ram~559_combout\);

\RAM64|ram~560\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~560_combout\ = (!\ROM|memROM~2_combout\ & (!\ROM|memROM~4_combout\ & (!\ROM|memROM~6_combout\ & \RAM64|ram~559_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~4_combout\,
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datad => \RAM64|ALT_INV_ram~559_combout\,
	combout => \RAM64|ram~560_combout\);

\RAM64|ram~15\ : dffeas
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
<<<<<<< HEAD
	d => \CPU|incrementaPC|Add0~1_sumout\,
	asdata => \ROM|memROM~8_combout\,
	sload => \CPU|DESVIO1|Sel\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(0));

\CPU|DECODER1|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER1|saida~0_combout\ = (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(4) & \ROM|memROM~1_combout\))
=======
	d => \CPU|REGA|DOUT\(0),
	ena => \RAM64|ram~560_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~15_q\);

\RAM64|ram~561\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~561_combout\ = (\ROM|memROM~2_combout\ & (!\ROM|memROM~4_combout\ & (!\ROM|memROM~6_combout\ & \RAM64|ram~559_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000100000000000000010000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~4_combout\,
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datad => \RAM64|ALT_INV_ram~559_combout\,
	combout => \RAM64|ram~561_combout\);

\RAM64|ram~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(0),
	ena => \RAM64|ram~561_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~23_q\);

\RAM64|ram~562\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~562_combout\ = (!\ROM|memROM~2_combout\ & (!\ROM|memROM~4_combout\ & (\ROM|memROM~6_combout\ & \RAM64|ram~559_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000100000000000000010000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~4_combout\,
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datad => \RAM64|ALT_INV_ram~559_combout\,
	combout => \RAM64|ram~562_combout\);

\RAM64|ram~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(0),
	ena => \RAM64|ram~562_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~47_q\);

\RAM64|ram~563\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~563_combout\ = (\ROM|memROM~2_combout\ & (!\ROM|memROM~4_combout\ & (\ROM|memROM~6_combout\ & \RAM64|ram~559_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~4_combout\,
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datad => \RAM64|ALT_INV_ram~559_combout\,
	combout => \RAM64|ram~563_combout\);

\RAM64|ram~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(0),
	ena => \RAM64|ram~563_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~55_q\);

\RAM64|ram~527\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~527_combout\ = ( \ROM|memROM~2_combout\ & ( \ROM|memROM~6_combout\ & ( \RAM64|ram~55_q\ ) ) ) # ( !\ROM|memROM~2_combout\ & ( \ROM|memROM~6_combout\ & ( \RAM64|ram~47_q\ ) ) ) # ( \ROM|memROM~2_combout\ & ( !\ROM|memROM~6_combout\ & ( 
-- \RAM64|ram~23_q\ ) ) ) # ( !\ROM|memROM~2_combout\ & ( !\ROM|memROM~6_combout\ & ( \RAM64|ram~15_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~15_q\,
	datab => \RAM64|ALT_INV_ram~23_q\,
	datac => \RAM64|ALT_INV_ram~47_q\,
	datad => \RAM64|ALT_INV_ram~55_q\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~6_combout\,
	combout => \RAM64|ram~527_combout\);

\RAM64|ram~564\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~564_combout\ = (!\ROM|memROM~2_combout\ & (\ROM|memROM~4_combout\ & (!\ROM|memROM~6_combout\ & \RAM64|ram~559_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000010000000000000001000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~4_combout\,
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datad => \RAM64|ALT_INV_ram~559_combout\,
	combout => \RAM64|ram~564_combout\);

\RAM64|ram~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(0),
	ena => \RAM64|ram~564_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~31_q\);

\RAM64|ram~565\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~565_combout\ = (\ROM|memROM~2_combout\ & (\ROM|memROM~4_combout\ & (!\ROM|memROM~6_combout\ & \RAM64|ram~559_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~4_combout\,
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datad => \RAM64|ALT_INV_ram~559_combout\,
	combout => \RAM64|ram~565_combout\);

\RAM64|ram~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(0),
	ena => \RAM64|ram~565_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~39_q\);

\RAM64|ram~566\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~566_combout\ = (!\ROM|memROM~2_combout\ & (\ROM|memROM~4_combout\ & (\ROM|memROM~6_combout\ & \RAM64|ram~559_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000001000000000000000100000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~4_combout\,
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datad => \RAM64|ALT_INV_ram~559_combout\,
	combout => \RAM64|ram~566_combout\);

\RAM64|ram~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(0),
	ena => \RAM64|ram~566_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~63_q\);

\RAM64|ram~567\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~567_combout\ = (\ROM|memROM~2_combout\ & (\ROM|memROM~4_combout\ & (\ROM|memROM~6_combout\ & \RAM64|ram~559_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~4_combout\,
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datad => \RAM64|ALT_INV_ram~559_combout\,
	combout => \RAM64|ram~567_combout\);

\RAM64|ram~71\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(0),
	ena => \RAM64|ram~567_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~71_q\);

\RAM64|ram~528\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~528_combout\ = ( \ROM|memROM~2_combout\ & ( \ROM|memROM~6_combout\ & ( \RAM64|ram~71_q\ ) ) ) # ( !\ROM|memROM~2_combout\ & ( \ROM|memROM~6_combout\ & ( \RAM64|ram~63_q\ ) ) ) # ( \ROM|memROM~2_combout\ & ( !\ROM|memROM~6_combout\ & ( 
-- \RAM64|ram~39_q\ ) ) ) # ( !\ROM|memROM~2_combout\ & ( !\ROM|memROM~6_combout\ & ( \RAM64|ram~31_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~31_q\,
	datab => \RAM64|ALT_INV_ram~39_q\,
	datac => \RAM64|ALT_INV_ram~63_q\,
	datad => \RAM64|ALT_INV_ram~71_q\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~6_combout\,
	combout => \RAM64|ram~528_combout\);

\RAM64|ram~529\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~529_combout\ = ( !\ROM|memROM~11_combout\ & ( \ROM|memROM~4_combout\ & ( \RAM64|ram~528_combout\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( !\ROM|memROM~4_combout\ & ( \RAM64|ram~527_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~527_combout\,
	datac => \RAM64|ALT_INV_ram~528_combout\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \RAM64|ram~529_combout\);

\CPU|ULA1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~1_sumout\ = SUM(( (!\CPU|DECODER1|Equal10~0_combout\ & (((\RAM64|ram~529_combout\)))) # (\CPU|DECODER1|Equal10~0_combout\ & (!\CPU|PC|DOUT\(8) & (\ROM|memROM~12_combout\))) ) + ( \CPU|REGA|DOUT\(0) ) + ( !VCC ))
-- \CPU|ULA1|Add0~2\ = CARRY(( (!\CPU|DECODER1|Equal10~0_combout\ & (((\RAM64|ram~529_combout\)))) # (\CPU|DECODER1|Equal10~0_combout\ & (!\CPU|PC|DOUT\(8) & (\ROM|memROM~12_combout\))) ) + ( \CPU|REGA|DOUT\(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER1|ALT_INV_Equal10~0_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \ROM|ALT_INV_memROM~12_combout\,
	datad => \RAM64|ALT_INV_ram~529_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(0),
	cin => GND,
	sumout => \CPU|ULA1|Add0~1_sumout\,
	cout => \CPU|ULA1|Add0~2\);

\CPU|DECODER1|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER1|saida~0_combout\ = ( \ROM|memROM~10_combout\ & ( (\ROM|memROM~1_combout\ & (!\CPU|PC|DOUT\(8) & (\ROM|memROM~8_combout\ & !\ROM|memROM~9_combout\))) ) ) # ( !\ROM|memROM~10_combout\ & ( (\ROM|memROM~1_combout\ & (!\CPU|PC|DOUT\(8) & 
-- (!\ROM|memROM~8_combout\ & !\ROM|memROM~9_combout\))) ) )
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0000100000001000000010000000100000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(4),
	datac => \ROM|ALT_INV_memROM~1_combout\,
	combout => \CPU|DECODER1|saida~0_combout\);

\SW[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

\DATA_IN[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATA_IN[0]~1_combout\ = ( \SW[9]~input_o\ & ( \KEY[3]~input_o\ & ( (\ROM|memROM~2_combout\ & (\ROM|memROM~3_combout\ & (!\ROM|memROM~4_combout\ $ (!\ROM|memROM~5_combout\)))) ) ) ) # ( !\SW[9]~input_o\ & ( \KEY[3]~input_o\ & ( (\ROM|memROM~2_combout\ & 
-- (\ROM|memROM~3_combout\ & (!\ROM|memROM~4_combout\ & \ROM|memROM~5_combout\))) ) ) ) # ( \SW[9]~input_o\ & ( !\KEY[3]~input_o\ & ( (\ROM|memROM~2_combout\ & (\ROM|memROM~3_combout\ & (\ROM|memROM~4_combout\ & !\ROM|memROM~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000000000000000000100000000000100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~3_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	datad => \ROM|ALT_INV_memROM~5_combout\,
	datae => \ALT_INV_SW[9]~input_o\,
	dataf => \ALT_INV_KEY[3]~input_o\,
	combout => \DATA_IN[0]~1_combout\);

\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

\DATA_IN[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATA_IN[0]~2_combout\ = ( !\ROM|memROM~5_combout\ & ( \KEY[2]~input_o\ & ( (\ROM|memROM~2_combout\ & (!\ROM|memROM~4_combout\ & ((\ROM|memROM~3_combout\) # (\KEY[0]~input_o\)))) ) ) ) # ( !\ROM|memROM~5_combout\ & ( !\KEY[2]~input_o\ & ( 
-- (\KEY[0]~input_o\ & (\ROM|memROM~2_combout\ & (!\ROM|memROM~3_combout\ & !\ROM|memROM~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000000000000000000010011000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \ROM|ALT_INV_memROM~5_combout\,
	dataf => \ALT_INV_KEY[2]~input_o\,
	combout => \DATA_IN[0]~2_combout\);

\SW[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

\DATA_IN[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATA_IN[0]~3_combout\ = ( \SW[8]~input_o\ & ( \KEY[1]~input_o\ & ( (\ROM|memROM~2_combout\ & (!\ROM|memROM~3_combout\ & \ROM|memROM~5_combout\)) ) ) ) # ( !\SW[8]~input_o\ & ( \KEY[1]~input_o\ & ( (\ROM|memROM~2_combout\ & (!\ROM|memROM~3_combout\ & 
-- (!\ROM|memROM~4_combout\ & \ROM|memROM~5_combout\))) ) ) ) # ( \SW[8]~input_o\ & ( !\KEY[1]~input_o\ & ( (\ROM|memROM~2_combout\ & (!\ROM|memROM~3_combout\ & (\ROM|memROM~4_combout\ & \ROM|memROM~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000010000000000010000000000000001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~3_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	datad => \ROM|ALT_INV_memROM~5_combout\,
	datae => \ALT_INV_SW[8]~input_o\,
	dataf => \ALT_INV_KEY[1]~input_o\,
	combout => \DATA_IN[0]~3_combout\);

\AND_SW0_7|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AND_SW0_7|saida~0_combout\ = (\ROM|memROM~2_combout\ & (((!\ROM|memROM~4_combout\) # (\ROM|memROM~5_combout\)) # (\ROM|memROM~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000101010101010100010101010101010001010101010101000101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~3_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	datad => \ROM|ALT_INV_memROM~5_combout\,
	combout => \AND_SW0_7|saida~0_combout\);

\AND_HEX0|saida~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \AND_HEX0|saida~1_combout\ = (\ROM|memROM~2_combout\ & (!\ROM|memROM~3_combout\ & (!\ROM|memROM~4_combout\ & !\ROM|memROM~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000001000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~3_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	datad => \ROM|ALT_INV_memROM~5_combout\,
	combout => \AND_HEX0|saida~1_combout\);

\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

\FPGA_RESET_N~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FPGA_RESET_N,
	o => \FPGA_RESET_N~input_o\);

\DATA_IN[0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATA_IN[0]~4_combout\ = ( \SW[0]~input_o\ & ( \FPGA_RESET_N~input_o\ & ( (\DATA_IN[0]~0_combout\ & ((!\ROM|memROM~9_combout\ & (!\AND_SW0_7|saida~0_combout\)) # (\ROM|memROM~9_combout\ & ((\AND_HEX0|saida~1_combout\))))) ) ) ) # ( !\SW[0]~input_o\ & ( 
-- \FPGA_RESET_N~input_o\ & ( (\ROM|memROM~9_combout\ & (\AND_HEX0|saida~1_combout\ & \DATA_IN[0]~0_combout\)) ) ) ) # ( \SW[0]~input_o\ & ( !\FPGA_RESET_N~input_o\ & ( (!\ROM|memROM~9_combout\ & (!\AND_SW0_7|saida~0_combout\ & \DATA_IN[0]~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001000100000000000000001010000000010001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~9_combout\,
	datab => \AND_SW0_7|ALT_INV_saida~0_combout\,
	datac => \AND_HEX0|ALT_INV_saida~1_combout\,
	datad => \ALT_INV_DATA_IN[0]~0_combout\,
	datae => \ALT_INV_SW[0]~input_o\,
	dataf => \ALT_INV_FPGA_RESET_N~input_o\,
	combout => \DATA_IN[0]~4_combout\);

\DATA_IN[0]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATA_IN[0]~5_combout\ = ( \DATA_IN[0]~3_combout\ & ( \DATA_IN[0]~4_combout\ ) ) # ( !\DATA_IN[0]~3_combout\ & ( \DATA_IN[0]~4_combout\ ) ) # ( \DATA_IN[0]~3_combout\ & ( !\DATA_IN[0]~4_combout\ & ( (!\ROM|memROM~9_combout\ & \DATA_IN[0]~0_combout\) ) ) ) 
-- # ( !\DATA_IN[0]~3_combout\ & ( !\DATA_IN[0]~4_combout\ & ( (!\ROM|memROM~9_combout\ & (\DATA_IN[0]~0_combout\ & ((\DATA_IN[0]~2_combout\) # (\DATA_IN[0]~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000100010001000100010001011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~9_combout\,
	datab => \ALT_INV_DATA_IN[0]~0_combout\,
	datac => \ALT_INV_DATA_IN[0]~1_combout\,
	datad => \ALT_INV_DATA_IN[0]~2_combout\,
	datae => \ALT_INV_DATA_IN[0]~3_combout\,
	dataf => \ALT_INV_DATA_IN[0]~4_combout\,
	combout => \DATA_IN[0]~5_combout\);

=======
	lut_mask => "0100000000000000000001000000000001000000000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \ROM|ALT_INV_memROM~8_combout\,
	datad => \ROM|ALT_INV_memROM~9_combout\,
	datae => \ROM|ALT_INV_memROM~10_combout\,
	combout => \CPU|DECODER1|saida~0_combout\);

>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
\CPU|ULA1|Add1~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~34_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \CPU|ULA1|Add1~34_cout\);

\CPU|ULA1|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
<<<<<<< HEAD
-- \CPU|ULA1|Add1~1_sumout\ = SUM(( !\DATA_IN[0]~5_combout\ ) + ( \CPU|REGA|DOUT\(0) ) + ( \CPU|ULA1|Add1~34_cout\ ))
-- \CPU|ULA1|Add1~2\ = CARRY(( !\DATA_IN[0]~5_combout\ ) + ( \CPU|REGA|DOUT\(0) ) + ( \CPU|ULA1|Add1~34_cout\ ))
=======
-- \CPU|ULA1|Add1~1_sumout\ = SUM(( (!\CPU|DECODER1|Equal10~0_combout\ & (((!\RAM64|ram~529_combout\)))) # (\CPU|DECODER1|Equal10~0_combout\ & ((!\ROM|memROM~12_combout\) # ((\CPU|PC|DOUT\(8))))) ) + ( \CPU|REGA|DOUT\(0) ) + ( \CPU|ULA1|Add1~34_cout\ ))
-- \CPU|ULA1|Add1~2\ = CARRY(( (!\CPU|DECODER1|Equal10~0_combout\ & (((!\RAM64|ram~529_combout\)))) # (\CPU|DECODER1|Equal10~0_combout\ & ((!\ROM|memROM~12_combout\) # ((\CPU|PC|DOUT\(8))))) ) + ( \CPU|REGA|DOUT\(0) ) + ( \CPU|ULA1|Add1~34_cout\ ))
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0000000000000000111111110000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_DATA_IN[0]~5_combout\,
=======
	lut_mask => "0000000000000000111111110000000000000000000000001110111101000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER1|ALT_INV_Equal10~0_combout\,
	datab => \ROM|ALT_INV_memROM~12_combout\,
	datac => \CPU|PC|ALT_INV_DOUT\(8),
	datad => \RAM64|ALT_INV_ram~529_combout\,
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
	dataf => \CPU|REGA|ALT_INV_DOUT\(0),
	cin => \CPU|ULA1|Add1~34_cout\,
	sumout => \CPU|ULA1|Add1~1_sumout\,
	cout => \CPU|ULA1|Add1~2\);

\CPU|ULA1|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
<<<<<<< HEAD
-- \CPU|ULA1|saida[0]~0_combout\ = (!\CPU|DECODER1|saida~0_combout\ & ((\CPU|ULA1|Add1~1_sumout\))) # (\CPU|DECODER1|saida~0_combout\ & (\DATA_IN[0]~5_combout\))
=======
-- \CPU|ULA1|saida[0]~0_combout\ = ( \CPU|ULA1|Add1~1_sumout\ & ( (!\CPU|DECODER1|saida~0_combout\) # ((!\CPU|DECODER1|Equal10~0_combout\ & ((\RAM64|ram~529_combout\))) # (\CPU|DECODER1|Equal10~0_combout\ & (\ROM|memROM~2_combout\))) ) ) # ( 
-- !\CPU|ULA1|Add1~1_sumout\ & ( (\CPU|DECODER1|saida~0_combout\ & ((!\CPU|DECODER1|Equal10~0_combout\ & ((\RAM64|ram~529_combout\))) # (\CPU|DECODER1|Equal10~0_combout\ & (\ROM|memROM~2_combout\)))) ) )
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER1|ALT_INV_saida~0_combout\,
	datab => \ALT_INV_DATA_IN[0]~5_combout\,
	datac => \CPU|ULA1|ALT_INV_Add1~1_sumout\,
	combout => \CPU|ULA1|saida[0]~0_combout\);

=======
	lut_mask => "0000000000011101111111110001110100000000000111011111111100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \CPU|DECODER1|ALT_INV_Equal10~0_combout\,
	datac => \RAM64|ALT_INV_ram~529_combout\,
	datad => \CPU|DECODER1|ALT_INV_saida~0_combout\,
	datae => \CPU|ULA1|ALT_INV_Add1~1_sumout\,
	combout => \CPU|ULA1|saida[0]~0_combout\);

\CPU|DECODER1|Equal10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER1|Equal10~1_combout\ = ( \ROM|memROM~10_combout\ & ( (!\ROM|memROM~1_combout\) # (((!\ROM|memROM~9_combout\) # (\ROM|memROM~8_combout\)) # (\CPU|PC|DOUT\(8))) ) ) # ( !\ROM|memROM~10_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111011111111111111111111111111111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \ROM|ALT_INV_memROM~8_combout\,
	datad => \ROM|ALT_INV_memROM~9_combout\,
	datae => \ROM|ALT_INV_memROM~10_combout\,
	combout => \CPU|DECODER1|Equal10~1_combout\);

\CPU|DECODER1|saida~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER1|saida~1_combout\ = ( \ROM|memROM~10_combout\ & ( (\ROM|memROM~1_combout\ & (!\CPU|PC|DOUT\(8) & ((\ROM|memROM~9_combout\) # (\ROM|memROM~8_combout\)))) ) ) # ( !\ROM|memROM~10_combout\ & ( (\ROM|memROM~1_combout\ & (!\CPU|PC|DOUT\(8) & 
-- (!\ROM|memROM~8_combout\ & !\ROM|memROM~9_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000000001000100010001000000000000000000010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \ROM|ALT_INV_memROM~8_combout\,
	datad => \ROM|ALT_INV_memROM~9_combout\,
	datae => \ROM|ALT_INV_memROM~10_combout\,
	combout => \CPU|DECODER1|saida~1_combout\);

>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
\CPU|REGA|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
<<<<<<< HEAD
	d => VCC,
	asdata => \CPU|ULA1|saida[0]~0_combout\,
	sload => VCC,
	ena => \CPU|DECODER1|saida~0_combout\,
=======
	d => \CPU|ULA1|Add0~1_sumout\,
	asdata => \CPU|ULA1|saida[0]~0_combout\,
	sload => \CPU|DECODER1|Equal10~1_combout\,
	ena => \CPU|DECODER1|saida~1_combout\,
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(0));

<<<<<<< HEAD
\AND_HEX0|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AND_HEX0|saida~0_combout\ = (\CPU|PC|DOUT\(0) & (!\ROM|memROM~0_combout\ & (!\CPU|PC|DOUT\(4) & \ROM|memROM~1_combout\)))
=======
\DECODER2|Equal7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER2|Equal7~0_combout\ = ( !\ROM|memROM~9_combout\ & ( !\ROM|memROM~10_combout\ & ( (\ROM|memROM~1_combout\ & (!\CPU|PC|DOUT\(8) & (\ROM|memROM~7_combout\ & \ROM|memROM~8_combout\))) ) ) )
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0000000001000000000000000100000000000000010000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \CPU|PC|ALT_INV_DOUT\(4),
	datad => \ROM|ALT_INV_memROM~1_combout\,
	combout => \AND_HEX0|saida~0_combout\);

\AND_LEDR0_7|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AND_LEDR0_7|saida~0_combout\ = (\AND_HEX0|saida~0_combout\ & !\AND_SW0_7|saida~0_combout\)
=======
	lut_mask => "0000000000000100000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \ROM|ALT_INV_memROM~8_combout\,
	datae => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \ROM|ALT_INV_memROM~10_combout\,
	combout => \DECODER2|Equal7~0_combout\);

\DECODER2|Equal7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER2|Equal7~1_combout\ = (!\ROM|memROM~2_combout\ & (!\ROM|memROM~4_combout\ & (!\ROM|memROM~6_combout\ & \DECODER2|Equal7~0_combout\)))
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \AND_HEX0|ALT_INV_saida~0_combout\,
	datab => \AND_SW0_7|ALT_INV_saida~0_combout\,
	combout => \AND_LEDR0_7|saida~0_combout\);

\REG_LEDR0_7|DOUT[0]\ : dffeas
=======
	lut_mask => "0000000010000000000000001000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~4_combout\,
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datad => \DECODER2|ALT_INV_Equal7~0_combout\,
	combout => \DECODER2|Equal7~1_combout\);

\REG_HEX0|DOUT[0]\ : dffeas
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(0),
<<<<<<< HEAD
	ena => \AND_LEDR0_7|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_LEDR0_7|DOUT\(0));

\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

\CPU|MUX1|saida_MUX[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[1]~0_combout\ = (!\ROM|memROM~9_combout\ & (!\AND_SW0_7|saida~0_combout\ & (\DATA_IN[0]~0_combout\ & \SW[1]~input_o\)))
=======
	ena => \DECODER2|Equal7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX0|DOUT\(0));

\RAM64|ram~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(3),
	ena => \RAM64|ram~560_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~18_q\);

\RAM64|ram~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(3),
	ena => \RAM64|ram~564_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~34_q\);

\RAM64|ram~538\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~538_combout\ = ( !\ROM|memROM~11_combout\ & ( \ROM|memROM~4_combout\ & ( \RAM64|ram~34_q\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( !\ROM|memROM~4_combout\ & ( \RAM64|ram~18_q\ ) ) )
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0000000000001000000000000000100000000000000010000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~9_combout\,
	datab => \AND_SW0_7|ALT_INV_saida~0_combout\,
	datac => \ALT_INV_DATA_IN[0]~0_combout\,
	datad => \ALT_INV_SW[1]~input_o\,
	combout => \CPU|MUX1|saida_MUX[1]~0_combout\);

\CPU|ULA1|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~5_sumout\ = SUM(( !\CPU|MUX1|saida_MUX[1]~0_combout\ ) + ( \CPU|REGA|DOUT\(1) ) + ( \CPU|ULA1|Add1~2\ ))
-- \CPU|ULA1|Add1~6\ = CARRY(( !\CPU|MUX1|saida_MUX[1]~0_combout\ ) + ( \CPU|REGA|DOUT\(1) ) + ( \CPU|ULA1|Add1~2\ ))
=======
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~18_q\,
	datac => \RAM64|ALT_INV_ram~34_q\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \RAM64|ram~538_combout\);

\RAM64|ram~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(3),
	ena => \RAM64|ram~562_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~50_q\);

\RAM64|ram~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(3),
	ena => \RAM64|ram~566_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~66_q\);

\RAM64|ram~539\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~539_combout\ = ( !\ROM|memROM~11_combout\ & ( \ROM|memROM~4_combout\ & ( \RAM64|ram~66_q\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( !\ROM|memROM~4_combout\ & ( \RAM64|ram~50_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~50_q\,
	datac => \RAM64|ALT_INV_ram~66_q\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \RAM64|ram~539_combout\);

\RAM64|ram~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(3),
	ena => \RAM64|ram~561_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~26_q\);

\RAM64|ram~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(3),
	ena => \RAM64|ram~565_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~42_q\);

\RAM64|ram~540\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~540_combout\ = ( !\ROM|memROM~11_combout\ & ( \ROM|memROM~4_combout\ & ( \RAM64|ram~42_q\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( !\ROM|memROM~4_combout\ & ( \RAM64|ram~26_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~26_q\,
	datac => \RAM64|ALT_INV_ram~42_q\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \RAM64|ram~540_combout\);

\RAM64|ram~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(3),
	ena => \RAM64|ram~563_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~58_q\);

\RAM64|ram~74\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(3),
	ena => \RAM64|ram~567_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~74_q\);

\RAM64|ram~541\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~541_combout\ = ( !\ROM|memROM~11_combout\ & ( \ROM|memROM~4_combout\ & ( \RAM64|ram~74_q\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( !\ROM|memROM~4_combout\ & ( \RAM64|ram~58_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~58_q\,
	datac => \RAM64|ALT_INV_ram~74_q\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \RAM64|ram~541_combout\);

\RAM64|ram~542\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~542_combout\ = ( \ROM|memROM~6_combout\ & ( \ROM|memROM~2_combout\ & ( \RAM64|ram~541_combout\ ) ) ) # ( !\ROM|memROM~6_combout\ & ( \ROM|memROM~2_combout\ & ( \RAM64|ram~540_combout\ ) ) ) # ( \ROM|memROM~6_combout\ & ( !\ROM|memROM~2_combout\ 
-- & ( \RAM64|ram~539_combout\ ) ) ) # ( !\ROM|memROM~6_combout\ & ( !\ROM|memROM~2_combout\ & ( \RAM64|ram~538_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~538_combout\,
	datab => \RAM64|ALT_INV_ram~539_combout\,
	datac => \RAM64|ALT_INV_ram~540_combout\,
	datad => \RAM64|ALT_INV_ram~541_combout\,
	datae => \ROM|ALT_INV_memROM~6_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM64|ram~542_combout\);

\ROM|memROM~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~14_combout\ = (\ROM|memROM~1_combout\ & \ROM|memROM~5_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~5_combout\,
	combout => \ROM|memROM~14_combout\);

\ROM|memROM~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~13_combout\ = (\ROM|memROM~1_combout\ & \ROM|memROM~3_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~3_combout\,
	combout => \ROM|memROM~13_combout\);

\CPU|ULA1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~5_sumout\ = SUM(( (!\CPU|DECODER1|Equal10~0_combout\ & (((\RAM64|ram~534_combout\)))) # (\CPU|DECODER1|Equal10~0_combout\ & (!\CPU|PC|DOUT\(8) & (\ROM|memROM~13_combout\))) ) + ( \CPU|REGA|DOUT\(1) ) + ( \CPU|ULA1|Add0~2\ ))
-- \CPU|ULA1|Add0~6\ = CARRY(( (!\CPU|DECODER1|Equal10~0_combout\ & (((\RAM64|ram~534_combout\)))) # (\CPU|DECODER1|Equal10~0_combout\ & (!\CPU|PC|DOUT\(8) & (\ROM|memROM~13_combout\))) ) + ( \CPU|REGA|DOUT\(1) ) + ( \CPU|ULA1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER1|ALT_INV_Equal10~0_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \ROM|ALT_INV_memROM~13_combout\,
	datad => \RAM64|ALT_INV_ram~534_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(1),
	cin => \CPU|ULA1|Add0~2\,
	sumout => \CPU|ULA1|Add0~5_sumout\,
	cout => \CPU|ULA1|Add0~6\);

\CPU|ULA1|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~5_sumout\ = SUM(( (!\CPU|DECODER1|Equal10~0_combout\ & (((!\RAM64|ram~534_combout\)))) # (\CPU|DECODER1|Equal10~0_combout\ & (((!\ROM|memROM~13_combout\)) # (\CPU|PC|DOUT\(8)))) ) + ( \CPU|REGA|DOUT\(1) ) + ( \CPU|ULA1|Add1~2\ ))
-- \CPU|ULA1|Add1~6\ = CARRY(( (!\CPU|DECODER1|Equal10~0_combout\ & (((!\RAM64|ram~534_combout\)))) # (\CPU|DECODER1|Equal10~0_combout\ & (((!\ROM|memROM~13_combout\)) # (\CPU|PC|DOUT\(8)))) ) + ( \CPU|REGA|DOUT\(1) ) + ( \CPU|ULA1|Add1~2\ ))
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0000000000000000111111110000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|MUX1|ALT_INV_saida_MUX[1]~0_combout\,
=======
	lut_mask => "0000000000000000111111110000000000000000000000001111101101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER1|ALT_INV_Equal10~0_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \ROM|ALT_INV_memROM~13_combout\,
	datad => \RAM64|ALT_INV_ram~534_combout\,
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
	dataf => \CPU|REGA|ALT_INV_DOUT\(1),
	cin => \CPU|ULA1|Add1~2\,
	sumout => \CPU|ULA1|Add1~5_sumout\,
	cout => \CPU|ULA1|Add1~6\);

\CPU|ULA1|saida[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
<<<<<<< HEAD
-- \CPU|ULA1|saida[1]~1_combout\ = (!\CPU|DECODER1|saida~0_combout\ & ((\CPU|ULA1|Add1~5_sumout\))) # (\CPU|DECODER1|saida~0_combout\ & (\CPU|MUX1|saida_MUX[1]~0_combout\))
=======
-- \CPU|ULA1|saida[1]~1_combout\ = ( \CPU|ULA1|Add1~5_sumout\ & ( (!\CPU|DECODER1|saida~0_combout\) # ((!\CPU|DECODER1|Equal10~0_combout\ & ((\RAM64|ram~534_combout\))) # (\CPU|DECODER1|Equal10~0_combout\ & (\ROM|memROM~4_combout\))) ) ) # ( 
-- !\CPU|ULA1|Add1~5_sumout\ & ( (\CPU|DECODER1|saida~0_combout\ & ((!\CPU|DECODER1|Equal10~0_combout\ & ((\RAM64|ram~534_combout\))) # (\CPU|DECODER1|Equal10~0_combout\ & (\ROM|memROM~4_combout\)))) ) )
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER1|ALT_INV_saida~0_combout\,
	datab => \CPU|MUX1|ALT_INV_saida_MUX[1]~0_combout\,
	datac => \CPU|ULA1|ALT_INV_Add1~5_sumout\,
=======
	lut_mask => "0000000100001101111100011111110100000001000011011111000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~4_combout\,
	datab => \CPU|DECODER1|ALT_INV_Equal10~0_combout\,
	datac => \CPU|DECODER1|ALT_INV_saida~0_combout\,
	datad => \RAM64|ALT_INV_ram~534_combout\,
	datae => \CPU|ULA1|ALT_INV_Add1~5_sumout\,
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
	combout => \CPU|ULA1|saida[1]~1_combout\);

\CPU|REGA|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
<<<<<<< HEAD
	d => VCC,
	asdata => \CPU|ULA1|saida[1]~1_combout\,
	sload => VCC,
	ena => \CPU|DECODER1|saida~0_combout\,
=======
	d => \CPU|ULA1|Add0~5_sumout\,
	asdata => \CPU|ULA1|saida[1]~1_combout\,
	sload => \CPU|DECODER1|Equal10~1_combout\,
	ena => \CPU|DECODER1|saida~1_combout\,
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(1));

<<<<<<< HEAD
\REG_LEDR0_7|DOUT[1]\ : dffeas
=======
\RAM64|ram~16\ : dffeas
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(1),
<<<<<<< HEAD
	ena => \AND_LEDR0_7|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_LEDR0_7|DOUT\(1));

\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

\CPU|MUX1|saida_MUX[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[2]~1_combout\ = (!\ROM|memROM~9_combout\ & (!\AND_SW0_7|saida~0_combout\ & (\DATA_IN[0]~0_combout\ & \SW[2]~input_o\)))
=======
	ena => \RAM64|ram~560_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~16_q\);

\RAM64|ram~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(1),
	ena => \RAM64|ram~564_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~32_q\);

\RAM64|ram~530\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~530_combout\ = ( !\ROM|memROM~11_combout\ & ( \ROM|memROM~4_combout\ & ( \RAM64|ram~32_q\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( !\ROM|memROM~4_combout\ & ( \RAM64|ram~16_q\ ) ) )
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0000000000001000000000000000100000000000000010000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~9_combout\,
	datab => \AND_SW0_7|ALT_INV_saida~0_combout\,
	datac => \ALT_INV_DATA_IN[0]~0_combout\,
	datad => \ALT_INV_SW[2]~input_o\,
	combout => \CPU|MUX1|saida_MUX[2]~1_combout\);

\CPU|ULA1|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~9_sumout\ = SUM(( !\CPU|MUX1|saida_MUX[2]~1_combout\ ) + ( \CPU|REGA|DOUT\(2) ) + ( \CPU|ULA1|Add1~6\ ))
-- \CPU|ULA1|Add1~10\ = CARRY(( !\CPU|MUX1|saida_MUX[2]~1_combout\ ) + ( \CPU|REGA|DOUT\(2) ) + ( \CPU|ULA1|Add1~6\ ))
=======
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~16_q\,
	datac => \RAM64|ALT_INV_ram~32_q\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \RAM64|ram~530_combout\);

\RAM64|ram~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(1),
	ena => \RAM64|ram~562_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~48_q\);

\RAM64|ram~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(1),
	ena => \RAM64|ram~566_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~64_q\);

\RAM64|ram~531\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~531_combout\ = ( !\ROM|memROM~11_combout\ & ( \ROM|memROM~4_combout\ & ( \RAM64|ram~64_q\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( !\ROM|memROM~4_combout\ & ( \RAM64|ram~48_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~48_q\,
	datac => \RAM64|ALT_INV_ram~64_q\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \RAM64|ram~531_combout\);

\RAM64|ram~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(1),
	ena => \RAM64|ram~561_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~24_q\);

\RAM64|ram~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(1),
	ena => \RAM64|ram~565_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~40_q\);

\RAM64|ram~532\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~532_combout\ = ( !\ROM|memROM~11_combout\ & ( \ROM|memROM~4_combout\ & ( \RAM64|ram~40_q\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( !\ROM|memROM~4_combout\ & ( \RAM64|ram~24_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~24_q\,
	datac => \RAM64|ALT_INV_ram~40_q\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \RAM64|ram~532_combout\);

\RAM64|ram~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(1),
	ena => \RAM64|ram~563_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~56_q\);

\RAM64|ram~72\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(1),
	ena => \RAM64|ram~567_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~72_q\);

\RAM64|ram~533\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~533_combout\ = ( !\ROM|memROM~11_combout\ & ( \ROM|memROM~4_combout\ & ( \RAM64|ram~72_q\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( !\ROM|memROM~4_combout\ & ( \RAM64|ram~56_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~56_q\,
	datac => \RAM64|ALT_INV_ram~72_q\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \RAM64|ram~533_combout\);

\RAM64|ram~534\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~534_combout\ = ( \ROM|memROM~6_combout\ & ( \ROM|memROM~2_combout\ & ( \RAM64|ram~533_combout\ ) ) ) # ( !\ROM|memROM~6_combout\ & ( \ROM|memROM~2_combout\ & ( \RAM64|ram~532_combout\ ) ) ) # ( \ROM|memROM~6_combout\ & ( !\ROM|memROM~2_combout\ 
-- & ( \RAM64|ram~531_combout\ ) ) ) # ( !\ROM|memROM~6_combout\ & ( !\ROM|memROM~2_combout\ & ( \RAM64|ram~530_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~530_combout\,
	datab => \RAM64|ALT_INV_ram~531_combout\,
	datac => \RAM64|ALT_INV_ram~532_combout\,
	datad => \RAM64|ALT_INV_ram~533_combout\,
	datae => \ROM|ALT_INV_memROM~6_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM64|ram~534_combout\);

\CPU|ULA1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~9_sumout\ = SUM(( (!\CPU|DECODER1|Equal10~0_combout\ & (((\RAM64|ram~537_combout\)))) # (\CPU|DECODER1|Equal10~0_combout\ & (\ROM|memROM~14_combout\ & (!\CPU|PC|DOUT\(8)))) ) + ( \CPU|REGA|DOUT\(2) ) + ( \CPU|ULA1|Add0~6\ ))
-- \CPU|ULA1|Add0~10\ = CARRY(( (!\CPU|DECODER1|Equal10~0_combout\ & (((\RAM64|ram~537_combout\)))) # (\CPU|DECODER1|Equal10~0_combout\ & (\ROM|memROM~14_combout\ & (!\CPU|PC|DOUT\(8)))) ) + ( \CPU|REGA|DOUT\(2) ) + ( \CPU|ULA1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000001000010111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER1|ALT_INV_Equal10~0_combout\,
	datab => \ROM|ALT_INV_memROM~14_combout\,
	datac => \CPU|PC|ALT_INV_DOUT\(8),
	datad => \RAM64|ALT_INV_ram~537_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(2),
	cin => \CPU|ULA1|Add0~6\,
	sumout => \CPU|ULA1|Add0~9_sumout\,
	cout => \CPU|ULA1|Add0~10\);

\CPU|ULA1|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~9_sumout\ = SUM(( (!\CPU|DECODER1|Equal10~0_combout\ & (((!\RAM64|ram~537_combout\)))) # (\CPU|DECODER1|Equal10~0_combout\ & (((!\ROM|memROM~14_combout\)) # (\CPU|PC|DOUT\(8)))) ) + ( \CPU|REGA|DOUT\(2) ) + ( \CPU|ULA1|Add1~6\ ))
-- \CPU|ULA1|Add1~10\ = CARRY(( (!\CPU|DECODER1|Equal10~0_combout\ & (((!\RAM64|ram~537_combout\)))) # (\CPU|DECODER1|Equal10~0_combout\ & (((!\ROM|memROM~14_combout\)) # (\CPU|PC|DOUT\(8)))) ) + ( \CPU|REGA|DOUT\(2) ) + ( \CPU|ULA1|Add1~6\ ))
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0000000000000000111111110000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|MUX1|ALT_INV_saida_MUX[2]~1_combout\,
=======
	lut_mask => "0000000000000000111111110000000000000000000000001111101101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER1|ALT_INV_Equal10~0_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \ROM|ALT_INV_memROM~14_combout\,
	datad => \RAM64|ALT_INV_ram~537_combout\,
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
	dataf => \CPU|REGA|ALT_INV_DOUT\(2),
	cin => \CPU|ULA1|Add1~6\,
	sumout => \CPU|ULA1|Add1~9_sumout\,
	cout => \CPU|ULA1|Add1~10\);

\CPU|ULA1|saida[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
<<<<<<< HEAD
-- \CPU|ULA1|saida[2]~2_combout\ = (!\CPU|DECODER1|saida~0_combout\ & ((\CPU|ULA1|Add1~9_sumout\))) # (\CPU|DECODER1|saida~0_combout\ & (\CPU|MUX1|saida_MUX[2]~1_combout\))
=======
-- \CPU|ULA1|saida[2]~2_combout\ = ( \CPU|ULA1|Add1~9_sumout\ & ( (!\CPU|DECODER1|saida~0_combout\) # ((!\CPU|DECODER1|Equal10~0_combout\ & ((\RAM64|ram~537_combout\))) # (\CPU|DECODER1|Equal10~0_combout\ & (\ROM|memROM~6_combout\))) ) ) # ( 
-- !\CPU|ULA1|Add1~9_sumout\ & ( (\CPU|DECODER1|saida~0_combout\ & ((!\CPU|DECODER1|Equal10~0_combout\ & ((\RAM64|ram~537_combout\))) # (\CPU|DECODER1|Equal10~0_combout\ & (\ROM|memROM~6_combout\)))) ) )
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER1|ALT_INV_saida~0_combout\,
	datab => \CPU|MUX1|ALT_INV_saida_MUX[2]~1_combout\,
	datac => \CPU|ULA1|ALT_INV_Add1~9_sumout\,
=======
	lut_mask => "0000000100001101111100011111110100000001000011011111000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~6_combout\,
	datab => \CPU|DECODER1|ALT_INV_Equal10~0_combout\,
	datac => \CPU|DECODER1|ALT_INV_saida~0_combout\,
	datad => \RAM64|ALT_INV_ram~537_combout\,
	datae => \CPU|ULA1|ALT_INV_Add1~9_sumout\,
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
	combout => \CPU|ULA1|saida[2]~2_combout\);

\CPU|REGA|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
<<<<<<< HEAD
	d => VCC,
	asdata => \CPU|ULA1|saida[2]~2_combout\,
	sload => VCC,
	ena => \CPU|DECODER1|saida~0_combout\,
=======
	d => \CPU|ULA1|Add0~9_sumout\,
	asdata => \CPU|ULA1|saida[2]~2_combout\,
	sload => \CPU|DECODER1|Equal10~1_combout\,
	ena => \CPU|DECODER1|saida~1_combout\,
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(2));

<<<<<<< HEAD
\REG_LEDR0_7|DOUT[2]\ : dffeas
=======
\RAM64|ram~17\ : dffeas
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(2),
<<<<<<< HEAD
	ena => \AND_LEDR0_7|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_LEDR0_7|DOUT\(2));

\AND_SW0_7|saida~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \AND_SW0_7|saida~1_combout\ = (!\ROM|memROM~9_combout\ & (!\AND_SW0_7|saida~0_combout\ & \DATA_IN[0]~0_combout\))
=======
	ena => \RAM64|ram~560_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~17_q\);

\RAM64|ram~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(2),
	ena => \RAM64|ram~561_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~25_q\);

\RAM64|ram~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(2),
	ena => \RAM64|ram~562_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~49_q\);

\RAM64|ram~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(2),
	ena => \RAM64|ram~563_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~57_q\);

\RAM64|ram~535\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~535_combout\ = ( \ROM|memROM~2_combout\ & ( \ROM|memROM~6_combout\ & ( \RAM64|ram~57_q\ ) ) ) # ( !\ROM|memROM~2_combout\ & ( \ROM|memROM~6_combout\ & ( \RAM64|ram~49_q\ ) ) ) # ( \ROM|memROM~2_combout\ & ( !\ROM|memROM~6_combout\ & ( 
-- \RAM64|ram~25_q\ ) ) ) # ( !\ROM|memROM~2_combout\ & ( !\ROM|memROM~6_combout\ & ( \RAM64|ram~17_q\ ) ) )
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0000100000001000000010000000100000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~9_combout\,
	datab => \AND_SW0_7|ALT_INV_saida~0_combout\,
	datac => \ALT_INV_DATA_IN[0]~0_combout\,
	combout => \AND_SW0_7|saida~1_combout\);

\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

\CPU|ULA1|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~13_sumout\ = SUM(( (!\AND_SW0_7|saida~1_combout\) # (!\SW[3]~input_o\) ) + ( \CPU|REGA|DOUT\(3) ) + ( \CPU|ULA1|Add1~10\ ))
-- \CPU|ULA1|Add1~14\ = CARRY(( (!\AND_SW0_7|saida~1_combout\) # (!\SW[3]~input_o\) ) + ( \CPU|REGA|DOUT\(3) ) + ( \CPU|ULA1|Add1~10\ ))
=======
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~17_q\,
	datab => \RAM64|ALT_INV_ram~25_q\,
	datac => \RAM64|ALT_INV_ram~49_q\,
	datad => \RAM64|ALT_INV_ram~57_q\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~6_combout\,
	combout => \RAM64|ram~535_combout\);

\RAM64|ram~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(2),
	ena => \RAM64|ram~564_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~33_q\);

\RAM64|ram~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(2),
	ena => \RAM64|ram~565_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~41_q\);

\RAM64|ram~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(2),
	ena => \RAM64|ram~566_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~65_q\);

\RAM64|ram~73\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(2),
	ena => \RAM64|ram~567_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~73_q\);

\RAM64|ram~536\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~536_combout\ = ( \ROM|memROM~2_combout\ & ( \ROM|memROM~6_combout\ & ( \RAM64|ram~73_q\ ) ) ) # ( !\ROM|memROM~2_combout\ & ( \ROM|memROM~6_combout\ & ( \RAM64|ram~65_q\ ) ) ) # ( \ROM|memROM~2_combout\ & ( !\ROM|memROM~6_combout\ & ( 
-- \RAM64|ram~41_q\ ) ) ) # ( !\ROM|memROM~2_combout\ & ( !\ROM|memROM~6_combout\ & ( \RAM64|ram~33_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~33_q\,
	datab => \RAM64|ALT_INV_ram~41_q\,
	datac => \RAM64|ALT_INV_ram~65_q\,
	datad => \RAM64|ALT_INV_ram~73_q\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~6_combout\,
	combout => \RAM64|ram~536_combout\);

\RAM64|ram~537\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~537_combout\ = ( !\ROM|memROM~11_combout\ & ( \ROM|memROM~4_combout\ & ( \RAM64|ram~536_combout\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( !\ROM|memROM~4_combout\ & ( \RAM64|ram~535_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~535_combout\,
	datac => \RAM64|ALT_INV_ram~536_combout\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \RAM64|ram~537_combout\);

\CPU|ULA1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~13_sumout\ = SUM(( (!\CPU|DECODER1|Equal10~0_combout\ & \RAM64|ram~542_combout\) ) + ( \CPU|REGA|DOUT\(3) ) + ( \CPU|ULA1|Add0~10\ ))
-- \CPU|ULA1|Add0~14\ = CARRY(( (!\CPU|DECODER1|Equal10~0_combout\ & \RAM64|ram~542_combout\) ) + ( \CPU|REGA|DOUT\(3) ) + ( \CPU|ULA1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER1|ALT_INV_Equal10~0_combout\,
	datad => \RAM64|ALT_INV_ram~542_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(3),
	cin => \CPU|ULA1|Add0~10\,
	sumout => \CPU|ULA1|Add0~13_sumout\,
	cout => \CPU|ULA1|Add0~14\);

\CPU|ULA1|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~13_sumout\ = SUM(( (!\RAM64|ram~542_combout\) # (\CPU|DECODER1|Equal10~0_combout\) ) + ( \CPU|REGA|DOUT\(3) ) + ( \CPU|ULA1|Add1~10\ ))
-- \CPU|ULA1|Add1~14\ = CARRY(( (!\RAM64|ram~542_combout\) # (\CPU|DECODER1|Equal10~0_combout\) ) + ( \CPU|REGA|DOUT\(3) ) + ( \CPU|ULA1|Add1~10\ ))
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0000000000000000111111110000000000000000000000001111111110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \AND_SW0_7|ALT_INV_saida~1_combout\,
	datad => \ALT_INV_SW[3]~input_o\,
=======
	lut_mask => "0000000000000000111111110000000000000000000000001111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER1|ALT_INV_Equal10~0_combout\,
	datad => \RAM64|ALT_INV_ram~542_combout\,
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
	dataf => \CPU|REGA|ALT_INV_DOUT\(3),
	cin => \CPU|ULA1|Add1~10\,
	sumout => \CPU|ULA1|Add1~13_sumout\,
	cout => \CPU|ULA1|Add1~14\);

\CPU|ULA1|saida[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
<<<<<<< HEAD
-- \CPU|ULA1|saida[3]~3_combout\ = (!\CPU|DECODER1|saida~0_combout\ & (((\CPU|ULA1|Add1~13_sumout\)))) # (\CPU|DECODER1|saida~0_combout\ & (\AND_SW0_7|saida~1_combout\ & (\SW[3]~input_o\)))
=======
-- \CPU|ULA1|saida[3]~3_combout\ = (!\CPU|DECODER1|saida~0_combout\ & (((\CPU|ULA1|Add1~13_sumout\)))) # (\CPU|DECODER1|saida~0_combout\ & (!\CPU|DECODER1|Equal10~0_combout\ & (\RAM64|ram~542_combout\)))
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0000000110101011000000011010101100000001101010110000000110101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER1|ALT_INV_saida~0_combout\,
	datab => \AND_SW0_7|ALT_INV_saida~1_combout\,
	datac => \ALT_INV_SW[3]~input_o\,
=======
	lut_mask => "0000001011001110000000101100111000000010110011100000001011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER1|ALT_INV_Equal10~0_combout\,
	datab => \CPU|DECODER1|ALT_INV_saida~0_combout\,
	datac => \RAM64|ALT_INV_ram~542_combout\,
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
	datad => \CPU|ULA1|ALT_INV_Add1~13_sumout\,
	combout => \CPU|ULA1|saida[3]~3_combout\);

\CPU|REGA|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
<<<<<<< HEAD
	d => VCC,
	asdata => \CPU|ULA1|saida[3]~3_combout\,
	sload => VCC,
	ena => \CPU|DECODER1|saida~0_combout\,
=======
	d => \CPU|ULA1|Add0~13_sumout\,
	asdata => \CPU|ULA1|saida[3]~3_combout\,
	sload => \CPU|DECODER1|Equal10~1_combout\,
	ena => \CPU|DECODER1|saida~1_combout\,
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(3));

<<<<<<< HEAD
\REG_LEDR0_7|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(3),
	ena => \AND_LEDR0_7|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_LEDR0_7|DOUT\(3));

\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

\CPU|ULA1|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~17_sumout\ = SUM(( (!\AND_SW0_7|saida~1_combout\) # (!\SW[4]~input_o\) ) + ( \CPU|REGA|DOUT\(4) ) + ( \CPU|ULA1|Add1~14\ ))
-- \CPU|ULA1|Add1~18\ = CARRY(( (!\AND_SW0_7|saida~1_combout\) # (!\SW[4]~input_o\) ) + ( \CPU|REGA|DOUT\(4) ) + ( \CPU|ULA1|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \AND_SW0_7|ALT_INV_saida~1_combout\,
	datad => \ALT_INV_SW[4]~input_o\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(4),
	cin => \CPU|ULA1|Add1~14\,
	sumout => \CPU|ULA1|Add1~17_sumout\,
	cout => \CPU|ULA1|Add1~18\);

\CPU|ULA1|saida[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[4]~4_combout\ = (!\CPU|DECODER1|saida~0_combout\ & (((\CPU|ULA1|Add1~17_sumout\)))) # (\CPU|DECODER1|saida~0_combout\ & (\AND_SW0_7|saida~1_combout\ & (\SW[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110101011000000011010101100000001101010110000000110101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER1|ALT_INV_saida~0_combout\,
	datab => \AND_SW0_7|ALT_INV_saida~1_combout\,
	datac => \ALT_INV_SW[4]~input_o\,
	datad => \CPU|ULA1|ALT_INV_Add1~17_sumout\,
	combout => \CPU|ULA1|saida[4]~4_combout\);

\CPU|REGA|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => VCC,
	asdata => \CPU|ULA1|saida[4]~4_combout\,
	sload => VCC,
	ena => \CPU|DECODER1|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(4));

\REG_LEDR0_7|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(4),
	ena => \AND_LEDR0_7|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_LEDR0_7|DOUT\(4));

\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

\CPU|ULA1|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~21_sumout\ = SUM(( (!\AND_SW0_7|saida~1_combout\) # (!\SW[5]~input_o\) ) + ( \CPU|REGA|DOUT\(5) ) + ( \CPU|ULA1|Add1~18\ ))
-- \CPU|ULA1|Add1~22\ = CARRY(( (!\AND_SW0_7|saida~1_combout\) # (!\SW[5]~input_o\) ) + ( \CPU|REGA|DOUT\(5) ) + ( \CPU|ULA1|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \AND_SW0_7|ALT_INV_saida~1_combout\,
	datad => \ALT_INV_SW[5]~input_o\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(5),
	cin => \CPU|ULA1|Add1~18\,
	sumout => \CPU|ULA1|Add1~21_sumout\,
	cout => \CPU|ULA1|Add1~22\);

\CPU|ULA1|saida[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[5]~5_combout\ = (!\CPU|DECODER1|saida~0_combout\ & (((\CPU|ULA1|Add1~21_sumout\)))) # (\CPU|DECODER1|saida~0_combout\ & (\AND_SW0_7|saida~1_combout\ & (\SW[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110101011000000011010101100000001101010110000000110101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER1|ALT_INV_saida~0_combout\,
	datab => \AND_SW0_7|ALT_INV_saida~1_combout\,
	datac => \ALT_INV_SW[5]~input_o\,
	datad => \CPU|ULA1|ALT_INV_Add1~21_sumout\,
	combout => \CPU|ULA1|saida[5]~5_combout\);

\CPU|REGA|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => VCC,
	asdata => \CPU|ULA1|saida[5]~5_combout\,
	sload => VCC,
	ena => \CPU|DECODER1|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(5));

\REG_LEDR0_7|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(5),
	ena => \AND_LEDR0_7|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_LEDR0_7|DOUT\(5));

\SW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

\CPU|ULA1|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~25_sumout\ = SUM(( (!\AND_SW0_7|saida~1_combout\) # (!\SW[6]~input_o\) ) + ( \CPU|REGA|DOUT\(6) ) + ( \CPU|ULA1|Add1~22\ ))
-- \CPU|ULA1|Add1~26\ = CARRY(( (!\AND_SW0_7|saida~1_combout\) # (!\SW[6]~input_o\) ) + ( \CPU|REGA|DOUT\(6) ) + ( \CPU|ULA1|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \AND_SW0_7|ALT_INV_saida~1_combout\,
	datad => \ALT_INV_SW[6]~input_o\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(6),
	cin => \CPU|ULA1|Add1~22\,
	sumout => \CPU|ULA1|Add1~25_sumout\,
	cout => \CPU|ULA1|Add1~26\);

\CPU|ULA1|saida[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[6]~6_combout\ = (!\CPU|DECODER1|saida~0_combout\ & (((\CPU|ULA1|Add1~25_sumout\)))) # (\CPU|DECODER1|saida~0_combout\ & (\AND_SW0_7|saida~1_combout\ & (\SW[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110101011000000011010101100000001101010110000000110101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER1|ALT_INV_saida~0_combout\,
	datab => \AND_SW0_7|ALT_INV_saida~1_combout\,
	datac => \ALT_INV_SW[6]~input_o\,
	datad => \CPU|ULA1|ALT_INV_Add1~25_sumout\,
	combout => \CPU|ULA1|saida[6]~6_combout\);

\CPU|REGA|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => VCC,
	asdata => \CPU|ULA1|saida[6]~6_combout\,
	sload => VCC,
	ena => \CPU|DECODER1|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(6));

\REG_LEDR0_7|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(6),
	ena => \AND_LEDR0_7|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_LEDR0_7|DOUT\(6));

\SW[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

\CPU|ULA1|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~29_sumout\ = SUM(( (!\AND_SW0_7|saida~1_combout\) # (!\SW[7]~input_o\) ) + ( \CPU|REGA|DOUT\(7) ) + ( \CPU|ULA1|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \AND_SW0_7|ALT_INV_saida~1_combout\,
	datad => \ALT_INV_SW[7]~input_o\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(7),
	cin => \CPU|ULA1|Add1~26\,
	sumout => \CPU|ULA1|Add1~29_sumout\);

\CPU|ULA1|saida[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[7]~7_combout\ = (!\CPU|DECODER1|saida~0_combout\ & (((\CPU|ULA1|Add1~29_sumout\)))) # (\CPU|DECODER1|saida~0_combout\ & (\AND_SW0_7|saida~1_combout\ & (\SW[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110101011000000011010101100000001101010110000000110101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER1|ALT_INV_saida~0_combout\,
	datab => \AND_SW0_7|ALT_INV_saida~1_combout\,
	datac => \ALT_INV_SW[7]~input_o\,
	datad => \CPU|ULA1|ALT_INV_Add1~29_sumout\,
	combout => \CPU|ULA1|saida[7]~7_combout\);

\CPU|REGA|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => VCC,
	asdata => \CPU|ULA1|saida[7]~7_combout\,
	sload => VCC,
	ena => \CPU|DECODER1|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(7));

\REG_LEDR0_7|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(7),
	ena => \AND_LEDR0_7|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_LEDR0_7|DOUT\(7));

\FLIP_FLOP_LED8|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FLIP_FLOP_LED8|DOUT~0_combout\ = ( \ROM|memROM~7_combout\ & ( \ROM|memROM~8_combout\ & ( \FLIP_FLOP_LED8|DOUT~q\ ) ) ) # ( !\ROM|memROM~7_combout\ & ( \ROM|memROM~8_combout\ & ( (!\AND_HEX0|saida~0_combout\ & (\FLIP_FLOP_LED8|DOUT~q\)) # 
-- (\AND_HEX0|saida~0_combout\ & ((!\ROM|memROM~6_combout\ & ((\CPU|REGA|DOUT\(0)))) # (\ROM|memROM~6_combout\ & (\FLIP_FLOP_LED8|DOUT~q\)))) ) ) ) # ( \ROM|memROM~7_combout\ & ( !\ROM|memROM~8_combout\ & ( \FLIP_FLOP_LED8|DOUT~q\ ) ) ) # ( 
-- !\ROM|memROM~7_combout\ & ( !\ROM|memROM~8_combout\ & ( \FLIP_FLOP_LED8|DOUT~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010011010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FLIP_FLOP_LED8|ALT_INV_DOUT~q\,
	datab => \CPU|REGA|ALT_INV_DOUT\(0),
	datac => \AND_HEX0|ALT_INV_saida~0_combout\,
	datad => \ROM|ALT_INV_memROM~6_combout\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~8_combout\,
	combout => \FLIP_FLOP_LED8|DOUT~0_combout\);

\FLIP_FLOP_LED8|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FLIP_FLOP_LED8|DOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FLIP_FLOP_LED8|DOUT~q\);

\FLIP_FLOP_LED9|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FLIP_FLOP_LED9|DOUT~0_combout\ = ( \ROM|memROM~7_combout\ & ( \ROM|memROM~8_combout\ & ( \FLIP_FLOP_LED9|DOUT~q\ ) ) ) # ( !\ROM|memROM~7_combout\ & ( \ROM|memROM~8_combout\ & ( \FLIP_FLOP_LED9|DOUT~q\ ) ) ) # ( \ROM|memROM~7_combout\ & ( 
-- !\ROM|memROM~8_combout\ & ( \FLIP_FLOP_LED9|DOUT~q\ ) ) ) # ( !\ROM|memROM~7_combout\ & ( !\ROM|memROM~8_combout\ & ( (!\AND_HEX0|saida~0_combout\ & (\FLIP_FLOP_LED9|DOUT~q\)) # (\AND_HEX0|saida~0_combout\ & ((!\ROM|memROM~6_combout\ & 
-- (\FLIP_FLOP_LED9|DOUT~q\)) # (\ROM|memROM~6_combout\ & ((\CPU|REGA|DOUT\(0)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010011010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FLIP_FLOP_LED9|ALT_INV_DOUT~q\,
	datab => \CPU|REGA|ALT_INV_DOUT\(0),
	datac => \AND_HEX0|ALT_INV_saida~0_combout\,
	datad => \ROM|ALT_INV_memROM~6_combout\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~8_combout\,
	combout => \FLIP_FLOP_LED9|DOUT~0_combout\);

\FLIP_FLOP_LED9|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FLIP_FLOP_LED9|DOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FLIP_FLOP_LED9|DOUT~q\);

\AND_HEX0|saida~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \AND_HEX0|saida~2_combout\ = (\AND_HEX0|saida~0_combout\ & \AND_HEX0|saida~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \AND_HEX0|ALT_INV_saida~0_combout\,
	datab => \AND_HEX0|ALT_INV_saida~1_combout\,
	combout => \AND_HEX0|saida~2_combout\);

\REG_HEX0|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(0),
	ena => \AND_HEX0|saida~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX0|DOUT\(0));

=======
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
\REG_HEX0|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(3),
<<<<<<< HEAD
	ena => \AND_HEX0|saida~2_combout\,
=======
	ena => \DECODER2|Equal7~1_combout\,
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX0|DOUT\(3));

<<<<<<< HEAD
\REG_HEX0|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(2),
	ena => \AND_HEX0|saida~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX0|DOUT\(2));

=======
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
\REG_HEX0|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(1),
<<<<<<< HEAD
	ena => \AND_HEX0|saida~2_combout\,
=======
	ena => \DECODER2|Equal7~1_combout\,
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX0|DOUT\(1));

<<<<<<< HEAD
\DECODER_7SEG_0|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_7SEG_0|rascSaida7seg[0]~0_combout\ = (!\REG_HEX0|DOUT\(3) & (!\REG_HEX0|DOUT\(1) & (!\REG_HEX0|DOUT\(0) $ (!\REG_HEX0|DOUT\(2))))) # (\REG_HEX0|DOUT\(3) & (\REG_HEX0|DOUT\(0) & (!\REG_HEX0|DOUT\(2) $ (!\REG_HEX0|DOUT\(1)))))
=======
\REG_HEX0|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(2),
	ena => \DECODER2|Equal7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX0|DOUT\(2));

\DECODER_7SEG_0|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_7SEG_0|rascSaida7seg[0]~0_combout\ = (!\REG_HEX0|DOUT\(3) & (!\REG_HEX0|DOUT\(1) & (!\REG_HEX0|DOUT\(0) $ (!\REG_HEX0|DOUT\(2))))) # (\REG_HEX0|DOUT\(3) & (\REG_HEX0|DOUT\(0) & (!\REG_HEX0|DOUT\(1) $ (!\REG_HEX0|DOUT\(2)))))
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0100100100010000010010010001000001001001000100000100100100010000",
=======
	lut_mask => "0100000110010000010000011001000001000001100100000100000110010000",
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX0|ALT_INV_DOUT\(0),
	datab => \REG_HEX0|ALT_INV_DOUT\(3),
<<<<<<< HEAD
	datac => \REG_HEX0|ALT_INV_DOUT\(2),
	datad => \REG_HEX0|ALT_INV_DOUT\(1),
=======
	datac => \REG_HEX0|ALT_INV_DOUT\(1),
	datad => \REG_HEX0|ALT_INV_DOUT\(2),
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
	combout => \DECODER_7SEG_0|rascSaida7seg[0]~0_combout\);

\DECODER_7SEG_0|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
<<<<<<< HEAD
-- \DECODER_7SEG_0|rascSaida7seg[1]~1_combout\ = (!\REG_HEX0|DOUT\(3) & (\REG_HEX0|DOUT\(2) & (!\REG_HEX0|DOUT\(0) $ (!\REG_HEX0|DOUT\(1))))) # (\REG_HEX0|DOUT\(3) & ((!\REG_HEX0|DOUT\(0) & (\REG_HEX0|DOUT\(2))) # (\REG_HEX0|DOUT\(0) & 
-- ((\REG_HEX0|DOUT\(1))))))
=======
-- \DECODER_7SEG_0|rascSaida7seg[1]~1_combout\ = (!\REG_HEX0|DOUT\(3) & (\REG_HEX0|DOUT\(2) & (!\REG_HEX0|DOUT\(0) $ (!\REG_HEX0|DOUT\(1))))) # (\REG_HEX0|DOUT\(3) & ((!\REG_HEX0|DOUT\(0) & ((\REG_HEX0|DOUT\(2)))) # (\REG_HEX0|DOUT\(0) & 
-- (\REG_HEX0|DOUT\(1)))))
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0000011000011011000001100001101100000110000110110000011000011011",
=======
	lut_mask => "0000000101101011000000010110101100000001011010110000000101101011",
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX0|ALT_INV_DOUT\(0),
	datab => \REG_HEX0|ALT_INV_DOUT\(3),
<<<<<<< HEAD
	datac => \REG_HEX0|ALT_INV_DOUT\(2),
	datad => \REG_HEX0|ALT_INV_DOUT\(1),
=======
	datac => \REG_HEX0|ALT_INV_DOUT\(1),
	datad => \REG_HEX0|ALT_INV_DOUT\(2),
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
	combout => \DECODER_7SEG_0|rascSaida7seg[1]~1_combout\);

\DECODER_7SEG_0|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
<<<<<<< HEAD
-- \DECODER_7SEG_0|rascSaida7seg[2]~2_combout\ = (!\REG_HEX0|DOUT\(3) & (!\REG_HEX0|DOUT\(0) & (!\REG_HEX0|DOUT\(2) & \REG_HEX0|DOUT\(1)))) # (\REG_HEX0|DOUT\(3) & (\REG_HEX0|DOUT\(2) & ((!\REG_HEX0|DOUT\(0)) # (\REG_HEX0|DOUT\(1)))))
=======
-- \DECODER_7SEG_0|rascSaida7seg[2]~2_combout\ = (!\REG_HEX0|DOUT\(3) & (!\REG_HEX0|DOUT\(0) & (\REG_HEX0|DOUT\(1) & !\REG_HEX0|DOUT\(2)))) # (\REG_HEX0|DOUT\(3) & (\REG_HEX0|DOUT\(2) & ((!\REG_HEX0|DOUT\(0)) # (\REG_HEX0|DOUT\(1)))))
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0000001010000011000000101000001100000010100000110000001010000011",
=======
	lut_mask => "0000100000100011000010000010001100001000001000110000100000100011",
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX0|ALT_INV_DOUT\(0),
	datab => \REG_HEX0|ALT_INV_DOUT\(3),
<<<<<<< HEAD
	datac => \REG_HEX0|ALT_INV_DOUT\(2),
	datad => \REG_HEX0|ALT_INV_DOUT\(1),
=======
	datac => \REG_HEX0|ALT_INV_DOUT\(1),
	datad => \REG_HEX0|ALT_INV_DOUT\(2),
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
	combout => \DECODER_7SEG_0|rascSaida7seg[2]~2_combout\);

\DECODER_7SEG_0|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_7SEG_0|rascSaida7seg[3]~3_combout\ = (!\REG_HEX0|DOUT\(1) & (!\REG_HEX0|DOUT\(3) & (!\REG_HEX0|DOUT\(0) $ (!\REG_HEX0|DOUT\(2))))) # (\REG_HEX0|DOUT\(1) & ((!\REG_HEX0|DOUT\(0) & (!\REG_HEX0|DOUT\(2) & \REG_HEX0|DOUT\(3))) # (\REG_HEX0|DOUT\(0) & 
-- (\REG_HEX0|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100100001010010010010000101001001001000010100100100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX0|ALT_INV_DOUT\(0),
	datab => \REG_HEX0|ALT_INV_DOUT\(1),
	datac => \REG_HEX0|ALT_INV_DOUT\(2),
	datad => \REG_HEX0|ALT_INV_DOUT\(3),
	combout => \DECODER_7SEG_0|rascSaida7seg[3]~3_combout\);

\DECODER_7SEG_0|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_7SEG_0|rascSaida7seg[4]~4_combout\ = (!\REG_HEX0|DOUT\(1) & ((!\REG_HEX0|DOUT\(2) & ((\REG_HEX0|DOUT\(0)))) # (\REG_HEX0|DOUT\(2) & (!\REG_HEX0|DOUT\(3))))) # (\REG_HEX0|DOUT\(1) & (!\REG_HEX0|DOUT\(3) & ((\REG_HEX0|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0010000011101010001000001110101000100000111010100010000011101010",
=======
	lut_mask => "0000100011101010000010001110101000001000111010100000100011101010",
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX0|ALT_INV_DOUT\(3),
<<<<<<< HEAD
	datab => \REG_HEX0|ALT_INV_DOUT\(2),
	datac => \REG_HEX0|ALT_INV_DOUT\(1),
=======
	datab => \REG_HEX0|ALT_INV_DOUT\(1),
	datac => \REG_HEX0|ALT_INV_DOUT\(2),
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
	datad => \REG_HEX0|ALT_INV_DOUT\(0),
	combout => \DECODER_7SEG_0|rascSaida7seg[4]~4_combout\);

\DECODER_7SEG_0|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
<<<<<<< HEAD
-- \DECODER_7SEG_0|rascSaida7seg[5]~5_combout\ = (!\REG_HEX0|DOUT\(0) & (!\REG_HEX0|DOUT\(2) & (\REG_HEX0|DOUT\(1) & !\REG_HEX0|DOUT\(3)))) # (\REG_HEX0|DOUT\(0) & (!\REG_HEX0|DOUT\(3) $ (((\REG_HEX0|DOUT\(2) & !\REG_HEX0|DOUT\(1))))))
=======
-- \DECODER_7SEG_0|rascSaida7seg[5]~5_combout\ = (!\REG_HEX0|DOUT\(0) & (\REG_HEX0|DOUT\(1) & (!\REG_HEX0|DOUT\(2) & !\REG_HEX0|DOUT\(3)))) # (\REG_HEX0|DOUT\(0) & (!\REG_HEX0|DOUT\(3) $ (((!\REG_HEX0|DOUT\(1) & \REG_HEX0|DOUT\(2))))))
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0100110100010000010011010001000001001101000100000100110100010000",
=======
	lut_mask => "0111000100000100011100010000010001110001000001000111000100000100",
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX0|ALT_INV_DOUT\(0),
<<<<<<< HEAD
	datab => \REG_HEX0|ALT_INV_DOUT\(2),
	datac => \REG_HEX0|ALT_INV_DOUT\(1),
=======
	datab => \REG_HEX0|ALT_INV_DOUT\(1),
	datac => \REG_HEX0|ALT_INV_DOUT\(2),
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
	datad => \REG_HEX0|ALT_INV_DOUT\(3),
	combout => \DECODER_7SEG_0|rascSaida7seg[5]~5_combout\);

\DECODER_7SEG_0|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
<<<<<<< HEAD
-- \DECODER_7SEG_0|rascSaida7seg[6]~6_combout\ = (!\REG_HEX0|DOUT\(0) & (!\REG_HEX0|DOUT\(1) & (!\REG_HEX0|DOUT\(3) $ (\REG_HEX0|DOUT\(2))))) # (\REG_HEX0|DOUT\(0) & (!\REG_HEX0|DOUT\(3) & (!\REG_HEX0|DOUT\(2) $ (\REG_HEX0|DOUT\(1)))))
=======
-- \DECODER_7SEG_0|rascSaida7seg[6]~6_combout\ = (!\REG_HEX0|DOUT\(0) & (!\REG_HEX0|DOUT\(1) & (!\REG_HEX0|DOUT\(3) $ (\REG_HEX0|DOUT\(2))))) # (\REG_HEX0|DOUT\(0) & (!\REG_HEX0|DOUT\(3) & (!\REG_HEX0|DOUT\(1) $ (\REG_HEX0|DOUT\(2)))))
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "1100001000000100110000100000010011000010000001001100001000000100",
=======
	lut_mask => "1100000000100100110000000010010011000000001001001100000000100100",
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX0|ALT_INV_DOUT\(0),
	datab => \REG_HEX0|ALT_INV_DOUT\(3),
<<<<<<< HEAD
	datac => \REG_HEX0|ALT_INV_DOUT\(2),
	datad => \REG_HEX0|ALT_INV_DOUT\(1),
	combout => \DECODER_7SEG_0|rascSaida7seg[6]~6_combout\);

\AND_HEX1|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AND_HEX1|saida~0_combout\ = (\AND_HEX0|saida~0_combout\ & (!\ROM|memROM~6_combout\ & (\ROM|memROM~7_combout\ & \ROM|memROM~8_combout\)))
=======
	datac => \REG_HEX0|ALT_INV_DOUT\(1),
	datad => \REG_HEX0|ALT_INV_DOUT\(2),
	combout => \DECODER_7SEG_0|rascSaida7seg[6]~6_combout\);

\DECODER2|Equal7~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER2|Equal7~2_combout\ = (\ROM|memROM~2_combout\ & (!\ROM|memROM~4_combout\ & (!\ROM|memROM~6_combout\ & \DECODER2|Equal7~0_combout\)))
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0000000000000100000000000000010000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \AND_HEX0|ALT_INV_saida~0_combout\,
	datab => \ROM|ALT_INV_memROM~6_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \ROM|ALT_INV_memROM~8_combout\,
	combout => \AND_HEX1|saida~0_combout\);
=======
	lut_mask => "0000000001000000000000000100000000000000010000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~4_combout\,
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datad => \DECODER2|ALT_INV_Equal7~0_combout\,
	combout => \DECODER2|Equal7~2_combout\);
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17

\REG_HEX1|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(0),
<<<<<<< HEAD
	ena => \AND_HEX1|saida~0_combout\,
=======
	ena => \DECODER2|Equal7~2_combout\,
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX1|DOUT\(0));

\REG_HEX1|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(3),
<<<<<<< HEAD
	ena => \AND_HEX1|saida~0_combout\,
=======
	ena => \DECODER2|Equal7~2_combout\,
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX1|DOUT\(3));

<<<<<<< HEAD
\REG_HEX1|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(2),
	ena => \AND_HEX1|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX1|DOUT\(2));

=======
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
\REG_HEX1|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(1),
<<<<<<< HEAD
	ena => \AND_HEX1|saida~0_combout\,
=======
	ena => \DECODER2|Equal7~2_combout\,
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX1|DOUT\(1));

<<<<<<< HEAD
\DECODER_7SEG_1|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_7SEG_1|rascSaida7seg[0]~0_combout\ = (!\REG_HEX1|DOUT\(3) & (!\REG_HEX1|DOUT\(1) & (!\REG_HEX1|DOUT\(0) $ (!\REG_HEX1|DOUT\(2))))) # (\REG_HEX1|DOUT\(3) & (\REG_HEX1|DOUT\(0) & (!\REG_HEX1|DOUT\(2) $ (!\REG_HEX1|DOUT\(1)))))
=======
\REG_HEX1|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(2),
	ena => \DECODER2|Equal7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX1|DOUT\(2));

\DECODER_7SEG_1|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_7SEG_1|rascSaida7seg[0]~0_combout\ = (!\REG_HEX1|DOUT\(3) & (!\REG_HEX1|DOUT\(1) & (!\REG_HEX1|DOUT\(0) $ (!\REG_HEX1|DOUT\(2))))) # (\REG_HEX1|DOUT\(3) & (\REG_HEX1|DOUT\(0) & (!\REG_HEX1|DOUT\(1) $ (!\REG_HEX1|DOUT\(2)))))
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0100100100010000010010010001000001001001000100000100100100010000",
=======
	lut_mask => "0100000110010000010000011001000001000001100100000100000110010000",
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX1|ALT_INV_DOUT\(0),
	datab => \REG_HEX1|ALT_INV_DOUT\(3),
<<<<<<< HEAD
	datac => \REG_HEX1|ALT_INV_DOUT\(2),
	datad => \REG_HEX1|ALT_INV_DOUT\(1),
=======
	datac => \REG_HEX1|ALT_INV_DOUT\(1),
	datad => \REG_HEX1|ALT_INV_DOUT\(2),
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
	combout => \DECODER_7SEG_1|rascSaida7seg[0]~0_combout\);

\DECODER_7SEG_1|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
<<<<<<< HEAD
-- \DECODER_7SEG_1|rascSaida7seg[1]~1_combout\ = (!\REG_HEX1|DOUT\(3) & (\REG_HEX1|DOUT\(2) & (!\REG_HEX1|DOUT\(0) $ (!\REG_HEX1|DOUT\(1))))) # (\REG_HEX1|DOUT\(3) & ((!\REG_HEX1|DOUT\(0) & (\REG_HEX1|DOUT\(2))) # (\REG_HEX1|DOUT\(0) & 
-- ((\REG_HEX1|DOUT\(1))))))
=======
-- \DECODER_7SEG_1|rascSaida7seg[1]~1_combout\ = (!\REG_HEX1|DOUT\(3) & (\REG_HEX1|DOUT\(2) & (!\REG_HEX1|DOUT\(0) $ (!\REG_HEX1|DOUT\(1))))) # (\REG_HEX1|DOUT\(3) & ((!\REG_HEX1|DOUT\(0) & ((\REG_HEX1|DOUT\(2)))) # (\REG_HEX1|DOUT\(0) & 
-- (\REG_HEX1|DOUT\(1)))))
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0000011000011011000001100001101100000110000110110000011000011011",
=======
	lut_mask => "0000000101101011000000010110101100000001011010110000000101101011",
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX1|ALT_INV_DOUT\(0),
	datab => \REG_HEX1|ALT_INV_DOUT\(3),
<<<<<<< HEAD
	datac => \REG_HEX1|ALT_INV_DOUT\(2),
	datad => \REG_HEX1|ALT_INV_DOUT\(1),
=======
	datac => \REG_HEX1|ALT_INV_DOUT\(1),
	datad => \REG_HEX1|ALT_INV_DOUT\(2),
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
	combout => \DECODER_7SEG_1|rascSaida7seg[1]~1_combout\);

\DECODER_7SEG_1|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
<<<<<<< HEAD
-- \DECODER_7SEG_1|rascSaida7seg[2]~2_combout\ = (!\REG_HEX1|DOUT\(3) & (!\REG_HEX1|DOUT\(0) & (!\REG_HEX1|DOUT\(2) & \REG_HEX1|DOUT\(1)))) # (\REG_HEX1|DOUT\(3) & (\REG_HEX1|DOUT\(2) & ((!\REG_HEX1|DOUT\(0)) # (\REG_HEX1|DOUT\(1)))))
=======
-- \DECODER_7SEG_1|rascSaida7seg[2]~2_combout\ = (!\REG_HEX1|DOUT\(3) & (!\REG_HEX1|DOUT\(0) & (\REG_HEX1|DOUT\(1) & !\REG_HEX1|DOUT\(2)))) # (\REG_HEX1|DOUT\(3) & (\REG_HEX1|DOUT\(2) & ((!\REG_HEX1|DOUT\(0)) # (\REG_HEX1|DOUT\(1)))))
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0000001010000011000000101000001100000010100000110000001010000011",
=======
	lut_mask => "0000100000100011000010000010001100001000001000110000100000100011",
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX1|ALT_INV_DOUT\(0),
	datab => \REG_HEX1|ALT_INV_DOUT\(3),
<<<<<<< HEAD
	datac => \REG_HEX1|ALT_INV_DOUT\(2),
	datad => \REG_HEX1|ALT_INV_DOUT\(1),
=======
	datac => \REG_HEX1|ALT_INV_DOUT\(1),
	datad => \REG_HEX1|ALT_INV_DOUT\(2),
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
	combout => \DECODER_7SEG_1|rascSaida7seg[2]~2_combout\);

\DECODER_7SEG_1|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_7SEG_1|rascSaida7seg[3]~3_combout\ = (!\REG_HEX1|DOUT\(1) & (!\REG_HEX1|DOUT\(3) & (!\REG_HEX1|DOUT\(0) $ (!\REG_HEX1|DOUT\(2))))) # (\REG_HEX1|DOUT\(1) & ((!\REG_HEX1|DOUT\(0) & (!\REG_HEX1|DOUT\(2) & \REG_HEX1|DOUT\(3))) # (\REG_HEX1|DOUT\(0) & 
-- (\REG_HEX1|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100100001010010010010000101001001001000010100100100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX1|ALT_INV_DOUT\(0),
	datab => \REG_HEX1|ALT_INV_DOUT\(1),
	datac => \REG_HEX1|ALT_INV_DOUT\(2),
	datad => \REG_HEX1|ALT_INV_DOUT\(3),
	combout => \DECODER_7SEG_1|rascSaida7seg[3]~3_combout\);

\DECODER_7SEG_1|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_7SEG_1|rascSaida7seg[4]~4_combout\ = (!\REG_HEX1|DOUT\(1) & ((!\REG_HEX1|DOUT\(2) & ((\REG_HEX1|DOUT\(0)))) # (\REG_HEX1|DOUT\(2) & (!\REG_HEX1|DOUT\(3))))) # (\REG_HEX1|DOUT\(1) & (!\REG_HEX1|DOUT\(3) & ((\REG_HEX1|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0010000011101010001000001110101000100000111010100010000011101010",
=======
	lut_mask => "0000100011101010000010001110101000001000111010100000100011101010",
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX1|ALT_INV_DOUT\(3),
<<<<<<< HEAD
	datab => \REG_HEX1|ALT_INV_DOUT\(2),
	datac => \REG_HEX1|ALT_INV_DOUT\(1),
=======
	datab => \REG_HEX1|ALT_INV_DOUT\(1),
	datac => \REG_HEX1|ALT_INV_DOUT\(2),
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
	datad => \REG_HEX1|ALT_INV_DOUT\(0),
	combout => \DECODER_7SEG_1|rascSaida7seg[4]~4_combout\);

\DECODER_7SEG_1|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
<<<<<<< HEAD
-- \DECODER_7SEG_1|rascSaida7seg[5]~5_combout\ = (!\REG_HEX1|DOUT\(0) & (!\REG_HEX1|DOUT\(2) & (\REG_HEX1|DOUT\(1) & !\REG_HEX1|DOUT\(3)))) # (\REG_HEX1|DOUT\(0) & (!\REG_HEX1|DOUT\(3) $ (((\REG_HEX1|DOUT\(2) & !\REG_HEX1|DOUT\(1))))))
=======
-- \DECODER_7SEG_1|rascSaida7seg[5]~5_combout\ = (!\REG_HEX1|DOUT\(0) & (\REG_HEX1|DOUT\(1) & (!\REG_HEX1|DOUT\(2) & !\REG_HEX1|DOUT\(3)))) # (\REG_HEX1|DOUT\(0) & (!\REG_HEX1|DOUT\(3) $ (((!\REG_HEX1|DOUT\(1) & \REG_HEX1|DOUT\(2))))))
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0100110100010000010011010001000001001101000100000100110100010000",
=======
	lut_mask => "0111000100000100011100010000010001110001000001000111000100000100",
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX1|ALT_INV_DOUT\(0),
<<<<<<< HEAD
	datab => \REG_HEX1|ALT_INV_DOUT\(2),
	datac => \REG_HEX1|ALT_INV_DOUT\(1),
=======
	datab => \REG_HEX1|ALT_INV_DOUT\(1),
	datac => \REG_HEX1|ALT_INV_DOUT\(2),
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
	datad => \REG_HEX1|ALT_INV_DOUT\(3),
	combout => \DECODER_7SEG_1|rascSaida7seg[5]~5_combout\);

\DECODER_7SEG_1|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
<<<<<<< HEAD
-- \DECODER_7SEG_1|rascSaida7seg[6]~6_combout\ = (!\REG_HEX1|DOUT\(0) & (!\REG_HEX1|DOUT\(1) & (!\REG_HEX1|DOUT\(3) $ (\REG_HEX1|DOUT\(2))))) # (\REG_HEX1|DOUT\(0) & (!\REG_HEX1|DOUT\(3) & (!\REG_HEX1|DOUT\(2) $ (\REG_HEX1|DOUT\(1)))))
=======
-- \DECODER_7SEG_1|rascSaida7seg[6]~6_combout\ = (!\REG_HEX1|DOUT\(0) & (!\REG_HEX1|DOUT\(1) & (!\REG_HEX1|DOUT\(3) $ (\REG_HEX1|DOUT\(2))))) # (\REG_HEX1|DOUT\(0) & (!\REG_HEX1|DOUT\(3) & (!\REG_HEX1|DOUT\(1) $ (\REG_HEX1|DOUT\(2)))))
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "1100001000000100110000100000010011000010000001001100001000000100",
=======
	lut_mask => "1100000000100100110000000010010011000000001001001100000000100100",
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX1|ALT_INV_DOUT\(0),
	datab => \REG_HEX1|ALT_INV_DOUT\(3),
<<<<<<< HEAD
	datac => \REG_HEX1|ALT_INV_DOUT\(2),
	datad => \REG_HEX1|ALT_INV_DOUT\(1),
	combout => \DECODER_7SEG_1|rascSaida7seg[6]~6_combout\);

\AND_HEX2|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AND_HEX2|saida~0_combout\ = (\AND_HEX0|saida~0_combout\ & (\ROM|memROM~6_combout\ & (\ROM|memROM~7_combout\ & !\ROM|memROM~8_combout\)))
=======
	datac => \REG_HEX1|ALT_INV_DOUT\(1),
	datad => \REG_HEX1|ALT_INV_DOUT\(2),
	combout => \DECODER_7SEG_1|rascSaida7seg[6]~6_combout\);

\DECODER2|Equal7~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER2|Equal7~3_combout\ = (!\ROM|memROM~2_combout\ & (\ROM|memROM~4_combout\ & (!\ROM|memROM~6_combout\ & \DECODER2|Equal7~0_combout\)))
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0000000100000000000000010000000000000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \AND_HEX0|ALT_INV_saida~0_combout\,
	datab => \ROM|ALT_INV_memROM~6_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \ROM|ALT_INV_memROM~8_combout\,
	combout => \AND_HEX2|saida~0_combout\);
=======
	lut_mask => "0000000000100000000000000010000000000000001000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~4_combout\,
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datad => \DECODER2|ALT_INV_Equal7~0_combout\,
	combout => \DECODER2|Equal7~3_combout\);
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17

\REG_HEX2|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(0),
<<<<<<< HEAD
	ena => \AND_HEX2|saida~0_combout\,
=======
	ena => \DECODER2|Equal7~3_combout\,
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX2|DOUT\(0));

\REG_HEX2|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(3),
<<<<<<< HEAD
	ena => \AND_HEX2|saida~0_combout\,
=======
	ena => \DECODER2|Equal7~3_combout\,
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX2|DOUT\(3));

<<<<<<< HEAD
\REG_HEX2|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(2),
	ena => \AND_HEX2|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX2|DOUT\(2));

=======
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
\REG_HEX2|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(1),
<<<<<<< HEAD
	ena => \AND_HEX2|saida~0_combout\,
=======
	ena => \DECODER2|Equal7~3_combout\,
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX2|DOUT\(1));

<<<<<<< HEAD
\DECODER_7SEG_2|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_7SEG_2|rascSaida7seg[0]~0_combout\ = (!\REG_HEX2|DOUT\(3) & (!\REG_HEX2|DOUT\(1) & (!\REG_HEX2|DOUT\(0) $ (!\REG_HEX2|DOUT\(2))))) # (\REG_HEX2|DOUT\(3) & (\REG_HEX2|DOUT\(0) & (!\REG_HEX2|DOUT\(2) $ (!\REG_HEX2|DOUT\(1)))))
=======
\REG_HEX2|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(2),
	ena => \DECODER2|Equal7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX2|DOUT\(2));

\DECODER_7SEG_2|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_7SEG_2|rascSaida7seg[0]~0_combout\ = (!\REG_HEX2|DOUT\(3) & (!\REG_HEX2|DOUT\(1) & (!\REG_HEX2|DOUT\(0) $ (!\REG_HEX2|DOUT\(2))))) # (\REG_HEX2|DOUT\(3) & (\REG_HEX2|DOUT\(0) & (!\REG_HEX2|DOUT\(1) $ (!\REG_HEX2|DOUT\(2)))))
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0100100100010000010010010001000001001001000100000100100100010000",
=======
	lut_mask => "0100000110010000010000011001000001000001100100000100000110010000",
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX2|ALT_INV_DOUT\(0),
	datab => \REG_HEX2|ALT_INV_DOUT\(3),
<<<<<<< HEAD
	datac => \REG_HEX2|ALT_INV_DOUT\(2),
	datad => \REG_HEX2|ALT_INV_DOUT\(1),
=======
	datac => \REG_HEX2|ALT_INV_DOUT\(1),
	datad => \REG_HEX2|ALT_INV_DOUT\(2),
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
	combout => \DECODER_7SEG_2|rascSaida7seg[0]~0_combout\);

\DECODER_7SEG_2|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
<<<<<<< HEAD
-- \DECODER_7SEG_2|rascSaida7seg[1]~1_combout\ = (!\REG_HEX2|DOUT\(3) & (\REG_HEX2|DOUT\(2) & (!\REG_HEX2|DOUT\(0) $ (!\REG_HEX2|DOUT\(1))))) # (\REG_HEX2|DOUT\(3) & ((!\REG_HEX2|DOUT\(0) & (\REG_HEX2|DOUT\(2))) # (\REG_HEX2|DOUT\(0) & 
-- ((\REG_HEX2|DOUT\(1))))))
=======
-- \DECODER_7SEG_2|rascSaida7seg[1]~1_combout\ = (!\REG_HEX2|DOUT\(3) & (\REG_HEX2|DOUT\(2) & (!\REG_HEX2|DOUT\(0) $ (!\REG_HEX2|DOUT\(1))))) # (\REG_HEX2|DOUT\(3) & ((!\REG_HEX2|DOUT\(0) & ((\REG_HEX2|DOUT\(2)))) # (\REG_HEX2|DOUT\(0) & 
-- (\REG_HEX2|DOUT\(1)))))
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0000011000011011000001100001101100000110000110110000011000011011",
=======
	lut_mask => "0000000101101011000000010110101100000001011010110000000101101011",
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX2|ALT_INV_DOUT\(0),
	datab => \REG_HEX2|ALT_INV_DOUT\(3),
<<<<<<< HEAD
	datac => \REG_HEX2|ALT_INV_DOUT\(2),
	datad => \REG_HEX2|ALT_INV_DOUT\(1),
=======
	datac => \REG_HEX2|ALT_INV_DOUT\(1),
	datad => \REG_HEX2|ALT_INV_DOUT\(2),
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
	combout => \DECODER_7SEG_2|rascSaida7seg[1]~1_combout\);

\DECODER_7SEG_2|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
<<<<<<< HEAD
-- \DECODER_7SEG_2|rascSaida7seg[2]~2_combout\ = (!\REG_HEX2|DOUT\(3) & (!\REG_HEX2|DOUT\(0) & (!\REG_HEX2|DOUT\(2) & \REG_HEX2|DOUT\(1)))) # (\REG_HEX2|DOUT\(3) & (\REG_HEX2|DOUT\(2) & ((!\REG_HEX2|DOUT\(0)) # (\REG_HEX2|DOUT\(1)))))
=======
-- \DECODER_7SEG_2|rascSaida7seg[2]~2_combout\ = (!\REG_HEX2|DOUT\(3) & (!\REG_HEX2|DOUT\(0) & (\REG_HEX2|DOUT\(1) & !\REG_HEX2|DOUT\(2)))) # (\REG_HEX2|DOUT\(3) & (\REG_HEX2|DOUT\(2) & ((!\REG_HEX2|DOUT\(0)) # (\REG_HEX2|DOUT\(1)))))
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0000001010000011000000101000001100000010100000110000001010000011",
=======
	lut_mask => "0000100000100011000010000010001100001000001000110000100000100011",
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX2|ALT_INV_DOUT\(0),
	datab => \REG_HEX2|ALT_INV_DOUT\(3),
<<<<<<< HEAD
	datac => \REG_HEX2|ALT_INV_DOUT\(2),
	datad => \REG_HEX2|ALT_INV_DOUT\(1),
=======
	datac => \REG_HEX2|ALT_INV_DOUT\(1),
	datad => \REG_HEX2|ALT_INV_DOUT\(2),
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
	combout => \DECODER_7SEG_2|rascSaida7seg[2]~2_combout\);

\DECODER_7SEG_2|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_7SEG_2|rascSaida7seg[3]~3_combout\ = (!\REG_HEX2|DOUT\(1) & (!\REG_HEX2|DOUT\(3) & (!\REG_HEX2|DOUT\(0) $ (!\REG_HEX2|DOUT\(2))))) # (\REG_HEX2|DOUT\(1) & ((!\REG_HEX2|DOUT\(0) & (!\REG_HEX2|DOUT\(2) & \REG_HEX2|DOUT\(3))) # (\REG_HEX2|DOUT\(0) & 
-- (\REG_HEX2|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100100001010010010010000101001001001000010100100100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX2|ALT_INV_DOUT\(0),
	datab => \REG_HEX2|ALT_INV_DOUT\(1),
	datac => \REG_HEX2|ALT_INV_DOUT\(2),
	datad => \REG_HEX2|ALT_INV_DOUT\(3),
	combout => \DECODER_7SEG_2|rascSaida7seg[3]~3_combout\);

\DECODER_7SEG_2|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_7SEG_2|rascSaida7seg[4]~4_combout\ = (!\REG_HEX2|DOUT\(1) & ((!\REG_HEX2|DOUT\(2) & ((\REG_HEX2|DOUT\(0)))) # (\REG_HEX2|DOUT\(2) & (!\REG_HEX2|DOUT\(3))))) # (\REG_HEX2|DOUT\(1) & (!\REG_HEX2|DOUT\(3) & ((\REG_HEX2|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0010000011101010001000001110101000100000111010100010000011101010",
=======
	lut_mask => "0000100011101010000010001110101000001000111010100000100011101010",
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX2|ALT_INV_DOUT\(3),
<<<<<<< HEAD
	datab => \REG_HEX2|ALT_INV_DOUT\(2),
	datac => \REG_HEX2|ALT_INV_DOUT\(1),
=======
	datab => \REG_HEX2|ALT_INV_DOUT\(1),
	datac => \REG_HEX2|ALT_INV_DOUT\(2),
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
	datad => \REG_HEX2|ALT_INV_DOUT\(0),
	combout => \DECODER_7SEG_2|rascSaida7seg[4]~4_combout\);

\DECODER_7SEG_2|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
<<<<<<< HEAD
-- \DECODER_7SEG_2|rascSaida7seg[5]~5_combout\ = (!\REG_HEX2|DOUT\(0) & (!\REG_HEX2|DOUT\(2) & (\REG_HEX2|DOUT\(1) & !\REG_HEX2|DOUT\(3)))) # (\REG_HEX2|DOUT\(0) & (!\REG_HEX2|DOUT\(3) $ (((\REG_HEX2|DOUT\(2) & !\REG_HEX2|DOUT\(1))))))
=======
-- \DECODER_7SEG_2|rascSaida7seg[5]~5_combout\ = (!\REG_HEX2|DOUT\(0) & (\REG_HEX2|DOUT\(1) & (!\REG_HEX2|DOUT\(2) & !\REG_HEX2|DOUT\(3)))) # (\REG_HEX2|DOUT\(0) & (!\REG_HEX2|DOUT\(3) $ (((!\REG_HEX2|DOUT\(1) & \REG_HEX2|DOUT\(2))))))
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0100110100010000010011010001000001001101000100000100110100010000",
=======
	lut_mask => "0111000100000100011100010000010001110001000001000111000100000100",
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX2|ALT_INV_DOUT\(0),
<<<<<<< HEAD
	datab => \REG_HEX2|ALT_INV_DOUT\(2),
	datac => \REG_HEX2|ALT_INV_DOUT\(1),
=======
	datab => \REG_HEX2|ALT_INV_DOUT\(1),
	datac => \REG_HEX2|ALT_INV_DOUT\(2),
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
	datad => \REG_HEX2|ALT_INV_DOUT\(3),
	combout => \DECODER_7SEG_2|rascSaida7seg[5]~5_combout\);

\DECODER_7SEG_2|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
<<<<<<< HEAD
-- \DECODER_7SEG_2|rascSaida7seg[6]~6_combout\ = (!\REG_HEX2|DOUT\(0) & (!\REG_HEX2|DOUT\(1) & (!\REG_HEX2|DOUT\(3) $ (\REG_HEX2|DOUT\(2))))) # (\REG_HEX2|DOUT\(0) & (!\REG_HEX2|DOUT\(3) & (!\REG_HEX2|DOUT\(2) $ (\REG_HEX2|DOUT\(1)))))
=======
-- \DECODER_7SEG_2|rascSaida7seg[6]~6_combout\ = (!\REG_HEX2|DOUT\(0) & (!\REG_HEX2|DOUT\(1) & (!\REG_HEX2|DOUT\(3) $ (\REG_HEX2|DOUT\(2))))) # (\REG_HEX2|DOUT\(0) & (!\REG_HEX2|DOUT\(3) & (!\REG_HEX2|DOUT\(1) $ (\REG_HEX2|DOUT\(2)))))
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "1100001000000100110000100000010011000010000001001100001000000100",
=======
	lut_mask => "1100000000100100110000000010010011000000001001001100000000100100",
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX2|ALT_INV_DOUT\(0),
	datab => \REG_HEX2|ALT_INV_DOUT\(3),
<<<<<<< HEAD
	datac => \REG_HEX2|ALT_INV_DOUT\(2),
	datad => \REG_HEX2|ALT_INV_DOUT\(1),
	combout => \DECODER_7SEG_2|rascSaida7seg[6]~6_combout\);

\AND_HEX3|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AND_HEX3|saida~0_combout\ = (\AND_HEX0|saida~0_combout\ & (\ROM|memROM~6_combout\ & (\ROM|memROM~7_combout\ & \ROM|memROM~8_combout\)))
=======
	datac => \REG_HEX2|ALT_INV_DOUT\(1),
	datad => \REG_HEX2|ALT_INV_DOUT\(2),
	combout => \DECODER_7SEG_2|rascSaida7seg[6]~6_combout\);

\DECODER2|Equal7~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER2|Equal7~4_combout\ = (\ROM|memROM~2_combout\ & (\ROM|memROM~4_combout\ & (!\ROM|memROM~6_combout\ & \DECODER2|Equal7~0_combout\)))
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0000000000000001000000000000000100000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \AND_HEX0|ALT_INV_saida~0_combout\,
	datab => \ROM|ALT_INV_memROM~6_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \ROM|ALT_INV_memROM~8_combout\,
	combout => \AND_HEX3|saida~0_combout\);
=======
	lut_mask => "0000000000010000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~4_combout\,
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datad => \DECODER2|ALT_INV_Equal7~0_combout\,
	combout => \DECODER2|Equal7~4_combout\);
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17

\REG_HEX3|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(0),
<<<<<<< HEAD
	ena => \AND_HEX3|saida~0_combout\,
=======
	ena => \DECODER2|Equal7~4_combout\,
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX3|DOUT\(0));

\REG_HEX3|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(3),
<<<<<<< HEAD
	ena => \AND_HEX3|saida~0_combout\,
=======
	ena => \DECODER2|Equal7~4_combout\,
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX3|DOUT\(3));

<<<<<<< HEAD
\REG_HEX3|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(2),
	ena => \AND_HEX3|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX3|DOUT\(2));

=======
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
\REG_HEX3|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(1),
<<<<<<< HEAD
	ena => \AND_HEX3|saida~0_combout\,
=======
	ena => \DECODER2|Equal7~4_combout\,
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX3|DOUT\(1));

<<<<<<< HEAD
\DECODER_7SEG_3|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_7SEG_3|rascSaida7seg[0]~0_combout\ = (!\REG_HEX3|DOUT\(3) & (!\REG_HEX3|DOUT\(1) & (!\REG_HEX3|DOUT\(0) $ (!\REG_HEX3|DOUT\(2))))) # (\REG_HEX3|DOUT\(3) & (\REG_HEX3|DOUT\(0) & (!\REG_HEX3|DOUT\(2) $ (!\REG_HEX3|DOUT\(1)))))
=======
\REG_HEX3|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(2),
	ena => \DECODER2|Equal7~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX3|DOUT\(2));

\DECODER_7SEG_3|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_7SEG_3|rascSaida7seg[0]~0_combout\ = (!\REG_HEX3|DOUT\(3) & (!\REG_HEX3|DOUT\(1) & (!\REG_HEX3|DOUT\(0) $ (!\REG_HEX3|DOUT\(2))))) # (\REG_HEX3|DOUT\(3) & (\REG_HEX3|DOUT\(0) & (!\REG_HEX3|DOUT\(1) $ (!\REG_HEX3|DOUT\(2)))))
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0100100100010000010010010001000001001001000100000100100100010000",
=======
	lut_mask => "0100000110010000010000011001000001000001100100000100000110010000",
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX3|ALT_INV_DOUT\(0),
	datab => \REG_HEX3|ALT_INV_DOUT\(3),
<<<<<<< HEAD
	datac => \REG_HEX3|ALT_INV_DOUT\(2),
	datad => \REG_HEX3|ALT_INV_DOUT\(1),
=======
	datac => \REG_HEX3|ALT_INV_DOUT\(1),
	datad => \REG_HEX3|ALT_INV_DOUT\(2),
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
	combout => \DECODER_7SEG_3|rascSaida7seg[0]~0_combout\);

\DECODER_7SEG_3|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
<<<<<<< HEAD
-- \DECODER_7SEG_3|rascSaida7seg[1]~1_combout\ = (!\REG_HEX3|DOUT\(3) & (\REG_HEX3|DOUT\(2) & (!\REG_HEX3|DOUT\(0) $ (!\REG_HEX3|DOUT\(1))))) # (\REG_HEX3|DOUT\(3) & ((!\REG_HEX3|DOUT\(0) & (\REG_HEX3|DOUT\(2))) # (\REG_HEX3|DOUT\(0) & 
-- ((\REG_HEX3|DOUT\(1))))))
=======
-- \DECODER_7SEG_3|rascSaida7seg[1]~1_combout\ = (!\REG_HEX3|DOUT\(3) & (\REG_HEX3|DOUT\(2) & (!\REG_HEX3|DOUT\(0) $ (!\REG_HEX3|DOUT\(1))))) # (\REG_HEX3|DOUT\(3) & ((!\REG_HEX3|DOUT\(0) & ((\REG_HEX3|DOUT\(2)))) # (\REG_HEX3|DOUT\(0) & 
-- (\REG_HEX3|DOUT\(1)))))
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0000011000011011000001100001101100000110000110110000011000011011",
=======
	lut_mask => "0000000101101011000000010110101100000001011010110000000101101011",
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX3|ALT_INV_DOUT\(0),
	datab => \REG_HEX3|ALT_INV_DOUT\(3),
<<<<<<< HEAD
	datac => \REG_HEX3|ALT_INV_DOUT\(2),
	datad => \REG_HEX3|ALT_INV_DOUT\(1),
=======
	datac => \REG_HEX3|ALT_INV_DOUT\(1),
	datad => \REG_HEX3|ALT_INV_DOUT\(2),
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
	combout => \DECODER_7SEG_3|rascSaida7seg[1]~1_combout\);

\DECODER_7SEG_3|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
<<<<<<< HEAD
-- \DECODER_7SEG_3|rascSaida7seg[2]~2_combout\ = (!\REG_HEX3|DOUT\(3) & (!\REG_HEX3|DOUT\(0) & (!\REG_HEX3|DOUT\(2) & \REG_HEX3|DOUT\(1)))) # (\REG_HEX3|DOUT\(3) & (\REG_HEX3|DOUT\(2) & ((!\REG_HEX3|DOUT\(0)) # (\REG_HEX3|DOUT\(1)))))
=======
-- \DECODER_7SEG_3|rascSaida7seg[2]~2_combout\ = (!\REG_HEX3|DOUT\(3) & (!\REG_HEX3|DOUT\(0) & (\REG_HEX3|DOUT\(1) & !\REG_HEX3|DOUT\(2)))) # (\REG_HEX3|DOUT\(3) & (\REG_HEX3|DOUT\(2) & ((!\REG_HEX3|DOUT\(0)) # (\REG_HEX3|DOUT\(1)))))
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0000001010000011000000101000001100000010100000110000001010000011",
=======
	lut_mask => "0000100000100011000010000010001100001000001000110000100000100011",
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX3|ALT_INV_DOUT\(0),
	datab => \REG_HEX3|ALT_INV_DOUT\(3),
<<<<<<< HEAD
	datac => \REG_HEX3|ALT_INV_DOUT\(2),
	datad => \REG_HEX3|ALT_INV_DOUT\(1),
=======
	datac => \REG_HEX3|ALT_INV_DOUT\(1),
	datad => \REG_HEX3|ALT_INV_DOUT\(2),
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
	combout => \DECODER_7SEG_3|rascSaida7seg[2]~2_combout\);

\DECODER_7SEG_3|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_7SEG_3|rascSaida7seg[3]~3_combout\ = (!\REG_HEX3|DOUT\(1) & (!\REG_HEX3|DOUT\(3) & (!\REG_HEX3|DOUT\(0) $ (!\REG_HEX3|DOUT\(2))))) # (\REG_HEX3|DOUT\(1) & ((!\REG_HEX3|DOUT\(0) & (!\REG_HEX3|DOUT\(2) & \REG_HEX3|DOUT\(3))) # (\REG_HEX3|DOUT\(0) & 
-- (\REG_HEX3|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100100001010010010010000101001001001000010100100100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX3|ALT_INV_DOUT\(0),
	datab => \REG_HEX3|ALT_INV_DOUT\(1),
	datac => \REG_HEX3|ALT_INV_DOUT\(2),
	datad => \REG_HEX3|ALT_INV_DOUT\(3),
	combout => \DECODER_7SEG_3|rascSaida7seg[3]~3_combout\);

\DECODER_7SEG_3|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_7SEG_3|rascSaida7seg[4]~4_combout\ = (!\REG_HEX3|DOUT\(1) & ((!\REG_HEX3|DOUT\(2) & ((\REG_HEX3|DOUT\(0)))) # (\REG_HEX3|DOUT\(2) & (!\REG_HEX3|DOUT\(3))))) # (\REG_HEX3|DOUT\(1) & (!\REG_HEX3|DOUT\(3) & ((\REG_HEX3|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0010000011101010001000001110101000100000111010100010000011101010",
=======
	lut_mask => "0000100011101010000010001110101000001000111010100000100011101010",
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX3|ALT_INV_DOUT\(3),
<<<<<<< HEAD
	datab => \REG_HEX3|ALT_INV_DOUT\(2),
	datac => \REG_HEX3|ALT_INV_DOUT\(1),
=======
	datab => \REG_HEX3|ALT_INV_DOUT\(1),
	datac => \REG_HEX3|ALT_INV_DOUT\(2),
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
	datad => \REG_HEX3|ALT_INV_DOUT\(0),
	combout => \DECODER_7SEG_3|rascSaida7seg[4]~4_combout\);

\DECODER_7SEG_3|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
<<<<<<< HEAD
-- \DECODER_7SEG_3|rascSaida7seg[5]~5_combout\ = (!\REG_HEX3|DOUT\(0) & (!\REG_HEX3|DOUT\(2) & (\REG_HEX3|DOUT\(1) & !\REG_HEX3|DOUT\(3)))) # (\REG_HEX3|DOUT\(0) & (!\REG_HEX3|DOUT\(3) $ (((\REG_HEX3|DOUT\(2) & !\REG_HEX3|DOUT\(1))))))
=======
-- \DECODER_7SEG_3|rascSaida7seg[5]~5_combout\ = (!\REG_HEX3|DOUT\(0) & (\REG_HEX3|DOUT\(1) & (!\REG_HEX3|DOUT\(2) & !\REG_HEX3|DOUT\(3)))) # (\REG_HEX3|DOUT\(0) & (!\REG_HEX3|DOUT\(3) $ (((!\REG_HEX3|DOUT\(1) & \REG_HEX3|DOUT\(2))))))
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0100110100010000010011010001000001001101000100000100110100010000",
=======
	lut_mask => "0111000100000100011100010000010001110001000001000111000100000100",
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX3|ALT_INV_DOUT\(0),
<<<<<<< HEAD
	datab => \REG_HEX3|ALT_INV_DOUT\(2),
	datac => \REG_HEX3|ALT_INV_DOUT\(1),
=======
	datab => \REG_HEX3|ALT_INV_DOUT\(1),
	datac => \REG_HEX3|ALT_INV_DOUT\(2),
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
	datad => \REG_HEX3|ALT_INV_DOUT\(3),
	combout => \DECODER_7SEG_3|rascSaida7seg[5]~5_combout\);

\DECODER_7SEG_3|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
<<<<<<< HEAD
-- \DECODER_7SEG_3|rascSaida7seg[6]~6_combout\ = (!\REG_HEX3|DOUT\(0) & (!\REG_HEX3|DOUT\(1) & (!\REG_HEX3|DOUT\(3) $ (\REG_HEX3|DOUT\(2))))) # (\REG_HEX3|DOUT\(0) & (!\REG_HEX3|DOUT\(3) & (!\REG_HEX3|DOUT\(2) $ (\REG_HEX3|DOUT\(1)))))
=======
-- \DECODER_7SEG_3|rascSaida7seg[6]~6_combout\ = (!\REG_HEX3|DOUT\(0) & (!\REG_HEX3|DOUT\(1) & (!\REG_HEX3|DOUT\(3) $ (\REG_HEX3|DOUT\(2))))) # (\REG_HEX3|DOUT\(0) & (!\REG_HEX3|DOUT\(3) & (!\REG_HEX3|DOUT\(1) $ (\REG_HEX3|DOUT\(2)))))
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "1100001000000100110000100000010011000010000001001100001000000100",
=======
	lut_mask => "1100000000100100110000000010010011000000001001001100000000100100",
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX3|ALT_INV_DOUT\(0),
	datab => \REG_HEX3|ALT_INV_DOUT\(3),
<<<<<<< HEAD
	datac => \REG_HEX3|ALT_INV_DOUT\(2),
	datad => \REG_HEX3|ALT_INV_DOUT\(1),
	combout => \DECODER_7SEG_3|rascSaida7seg[6]~6_combout\);

\AND_HEX0|saida~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \AND_HEX0|saida~3_combout\ = (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(4) & \ROM|memROM~1_combout\))
=======
	datac => \REG_HEX3|ALT_INV_DOUT\(1),
	datad => \REG_HEX3|ALT_INV_DOUT\(2),
	combout => \DECODER_7SEG_3|rascSaida7seg[6]~6_combout\);

\DECODER2|Equal7~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER2|Equal7~5_combout\ = (!\ROM|memROM~2_combout\ & (!\ROM|memROM~4_combout\ & (\ROM|memROM~6_combout\ & \DECODER2|Equal7~0_combout\)))
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(4),
	datac => \ROM|ALT_INV_memROM~1_combout\,
	combout => \AND_HEX0|saida~3_combout\);

\AND_HEX4|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AND_HEX4|saida~0_combout\ = ( !\ROM|memROM~8_combout\ & ( (\ROM|memROM~9_combout\ & (\AND_HEX0|saida~3_combout\ & (!\ROM|memROM~6_combout\ & \ROM|memROM~7_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000000000000000000000100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~9_combout\,
	datab => \AND_HEX0|ALT_INV_saida~3_combout\,
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datad => \ROM|ALT_INV_memROM~7_combout\,
	datae => \ROM|ALT_INV_memROM~8_combout\,
	combout => \AND_HEX4|saida~0_combout\);
=======
	lut_mask => "0000000000001000000000000000100000000000000010000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~4_combout\,
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datad => \DECODER2|ALT_INV_Equal7~0_combout\,
	combout => \DECODER2|Equal7~5_combout\);
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17

\REG_HEX4|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(0),
<<<<<<< HEAD
	ena => \AND_HEX4|saida~0_combout\,
=======
	ena => \DECODER2|Equal7~5_combout\,
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX4|DOUT\(0));

\REG_HEX4|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(3),
<<<<<<< HEAD
	ena => \AND_HEX4|saida~0_combout\,
=======
	ena => \DECODER2|Equal7~5_combout\,
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX4|DOUT\(3));

<<<<<<< HEAD
\REG_HEX4|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(2),
	ena => \AND_HEX4|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX4|DOUT\(2));

=======
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
\REG_HEX4|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(1),
<<<<<<< HEAD
	ena => \AND_HEX4|saida~0_combout\,
=======
	ena => \DECODER2|Equal7~5_combout\,
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX4|DOUT\(1));

<<<<<<< HEAD
\DECODER_7SEG_4|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_7SEG_4|rascSaida7seg[0]~0_combout\ = (!\REG_HEX4|DOUT\(3) & (!\REG_HEX4|DOUT\(1) & (!\REG_HEX4|DOUT\(0) $ (!\REG_HEX4|DOUT\(2))))) # (\REG_HEX4|DOUT\(3) & (\REG_HEX4|DOUT\(0) & (!\REG_HEX4|DOUT\(2) $ (!\REG_HEX4|DOUT\(1)))))
=======
\REG_HEX4|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(2),
	ena => \DECODER2|Equal7~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX4|DOUT\(2));

\DECODER_7SEG_4|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_7SEG_4|rascSaida7seg[0]~0_combout\ = (!\REG_HEX4|DOUT\(3) & (!\REG_HEX4|DOUT\(1) & (!\REG_HEX4|DOUT\(0) $ (!\REG_HEX4|DOUT\(2))))) # (\REG_HEX4|DOUT\(3) & (\REG_HEX4|DOUT\(0) & (!\REG_HEX4|DOUT\(1) $ (!\REG_HEX4|DOUT\(2)))))
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0100100100010000010010010001000001001001000100000100100100010000",
=======
	lut_mask => "0100000110010000010000011001000001000001100100000100000110010000",
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX4|ALT_INV_DOUT\(0),
	datab => \REG_HEX4|ALT_INV_DOUT\(3),
<<<<<<< HEAD
	datac => \REG_HEX4|ALT_INV_DOUT\(2),
	datad => \REG_HEX4|ALT_INV_DOUT\(1),
=======
	datac => \REG_HEX4|ALT_INV_DOUT\(1),
	datad => \REG_HEX4|ALT_INV_DOUT\(2),
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
	combout => \DECODER_7SEG_4|rascSaida7seg[0]~0_combout\);

\DECODER_7SEG_4|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
<<<<<<< HEAD
-- \DECODER_7SEG_4|rascSaida7seg[1]~1_combout\ = (!\REG_HEX4|DOUT\(3) & (\REG_HEX4|DOUT\(2) & (!\REG_HEX4|DOUT\(0) $ (!\REG_HEX4|DOUT\(1))))) # (\REG_HEX4|DOUT\(3) & ((!\REG_HEX4|DOUT\(0) & (\REG_HEX4|DOUT\(2))) # (\REG_HEX4|DOUT\(0) & 
-- ((\REG_HEX4|DOUT\(1))))))
=======
-- \DECODER_7SEG_4|rascSaida7seg[1]~1_combout\ = (!\REG_HEX4|DOUT\(3) & (\REG_HEX4|DOUT\(2) & (!\REG_HEX4|DOUT\(0) $ (!\REG_HEX4|DOUT\(1))))) # (\REG_HEX4|DOUT\(3) & ((!\REG_HEX4|DOUT\(0) & ((\REG_HEX4|DOUT\(2)))) # (\REG_HEX4|DOUT\(0) & 
-- (\REG_HEX4|DOUT\(1)))))
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0000011000011011000001100001101100000110000110110000011000011011",
=======
	lut_mask => "0000000101101011000000010110101100000001011010110000000101101011",
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX4|ALT_INV_DOUT\(0),
	datab => \REG_HEX4|ALT_INV_DOUT\(3),
<<<<<<< HEAD
	datac => \REG_HEX4|ALT_INV_DOUT\(2),
	datad => \REG_HEX4|ALT_INV_DOUT\(1),
=======
	datac => \REG_HEX4|ALT_INV_DOUT\(1),
	datad => \REG_HEX4|ALT_INV_DOUT\(2),
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
	combout => \DECODER_7SEG_4|rascSaida7seg[1]~1_combout\);

\DECODER_7SEG_4|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
<<<<<<< HEAD
-- \DECODER_7SEG_4|rascSaida7seg[2]~2_combout\ = (!\REG_HEX4|DOUT\(3) & (!\REG_HEX4|DOUT\(0) & (!\REG_HEX4|DOUT\(2) & \REG_HEX4|DOUT\(1)))) # (\REG_HEX4|DOUT\(3) & (\REG_HEX4|DOUT\(2) & ((!\REG_HEX4|DOUT\(0)) # (\REG_HEX4|DOUT\(1)))))
=======
-- \DECODER_7SEG_4|rascSaida7seg[2]~2_combout\ = (!\REG_HEX4|DOUT\(3) & (!\REG_HEX4|DOUT\(0) & (\REG_HEX4|DOUT\(1) & !\REG_HEX4|DOUT\(2)))) # (\REG_HEX4|DOUT\(3) & (\REG_HEX4|DOUT\(2) & ((!\REG_HEX4|DOUT\(0)) # (\REG_HEX4|DOUT\(1)))))
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0000001010000011000000101000001100000010100000110000001010000011",
=======
	lut_mask => "0000100000100011000010000010001100001000001000110000100000100011",
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX4|ALT_INV_DOUT\(0),
	datab => \REG_HEX4|ALT_INV_DOUT\(3),
<<<<<<< HEAD
	datac => \REG_HEX4|ALT_INV_DOUT\(2),
	datad => \REG_HEX4|ALT_INV_DOUT\(1),
=======
	datac => \REG_HEX4|ALT_INV_DOUT\(1),
	datad => \REG_HEX4|ALT_INV_DOUT\(2),
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
	combout => \DECODER_7SEG_4|rascSaida7seg[2]~2_combout\);

\DECODER_7SEG_4|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_7SEG_4|rascSaida7seg[3]~3_combout\ = (!\REG_HEX4|DOUT\(1) & (!\REG_HEX4|DOUT\(3) & (!\REG_HEX4|DOUT\(0) $ (!\REG_HEX4|DOUT\(2))))) # (\REG_HEX4|DOUT\(1) & ((!\REG_HEX4|DOUT\(0) & (!\REG_HEX4|DOUT\(2) & \REG_HEX4|DOUT\(3))) # (\REG_HEX4|DOUT\(0) & 
-- (\REG_HEX4|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100100001010010010010000101001001001000010100100100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX4|ALT_INV_DOUT\(0),
	datab => \REG_HEX4|ALT_INV_DOUT\(1),
	datac => \REG_HEX4|ALT_INV_DOUT\(2),
	datad => \REG_HEX4|ALT_INV_DOUT\(3),
	combout => \DECODER_7SEG_4|rascSaida7seg[3]~3_combout\);

\DECODER_7SEG_4|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_7SEG_4|rascSaida7seg[4]~4_combout\ = (!\REG_HEX4|DOUT\(1) & ((!\REG_HEX4|DOUT\(2) & ((\REG_HEX4|DOUT\(0)))) # (\REG_HEX4|DOUT\(2) & (!\REG_HEX4|DOUT\(3))))) # (\REG_HEX4|DOUT\(1) & (!\REG_HEX4|DOUT\(3) & ((\REG_HEX4|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0010000011101010001000001110101000100000111010100010000011101010",
=======
	lut_mask => "0000100011101010000010001110101000001000111010100000100011101010",
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX4|ALT_INV_DOUT\(3),
<<<<<<< HEAD
	datab => \REG_HEX4|ALT_INV_DOUT\(2),
	datac => \REG_HEX4|ALT_INV_DOUT\(1),
=======
	datab => \REG_HEX4|ALT_INV_DOUT\(1),
	datac => \REG_HEX4|ALT_INV_DOUT\(2),
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
	datad => \REG_HEX4|ALT_INV_DOUT\(0),
	combout => \DECODER_7SEG_4|rascSaida7seg[4]~4_combout\);

\DECODER_7SEG_4|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
<<<<<<< HEAD
-- \DECODER_7SEG_4|rascSaida7seg[5]~5_combout\ = (!\REG_HEX4|DOUT\(0) & (!\REG_HEX4|DOUT\(2) & (\REG_HEX4|DOUT\(1) & !\REG_HEX4|DOUT\(3)))) # (\REG_HEX4|DOUT\(0) & (!\REG_HEX4|DOUT\(3) $ (((\REG_HEX4|DOUT\(2) & !\REG_HEX4|DOUT\(1))))))
=======
-- \DECODER_7SEG_4|rascSaida7seg[5]~5_combout\ = (!\REG_HEX4|DOUT\(0) & (\REG_HEX4|DOUT\(1) & (!\REG_HEX4|DOUT\(2) & !\REG_HEX4|DOUT\(3)))) # (\REG_HEX4|DOUT\(0) & (!\REG_HEX4|DOUT\(3) $ (((!\REG_HEX4|DOUT\(1) & \REG_HEX4|DOUT\(2))))))
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0100110100010000010011010001000001001101000100000100110100010000",
=======
	lut_mask => "0111000100000100011100010000010001110001000001000111000100000100",
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX4|ALT_INV_DOUT\(0),
<<<<<<< HEAD
	datab => \REG_HEX4|ALT_INV_DOUT\(2),
	datac => \REG_HEX4|ALT_INV_DOUT\(1),
=======
	datab => \REG_HEX4|ALT_INV_DOUT\(1),
	datac => \REG_HEX4|ALT_INV_DOUT\(2),
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
	datad => \REG_HEX4|ALT_INV_DOUT\(3),
	combout => \DECODER_7SEG_4|rascSaida7seg[5]~5_combout\);

\DECODER_7SEG_4|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
<<<<<<< HEAD
-- \DECODER_7SEG_4|rascSaida7seg[6]~6_combout\ = (!\REG_HEX4|DOUT\(0) & (!\REG_HEX4|DOUT\(1) & (!\REG_HEX4|DOUT\(3) $ (\REG_HEX4|DOUT\(2))))) # (\REG_HEX4|DOUT\(0) & (!\REG_HEX4|DOUT\(3) & (!\REG_HEX4|DOUT\(2) $ (\REG_HEX4|DOUT\(1)))))
=======
-- \DECODER_7SEG_4|rascSaida7seg[6]~6_combout\ = (!\REG_HEX4|DOUT\(0) & (!\REG_HEX4|DOUT\(1) & (!\REG_HEX4|DOUT\(3) $ (\REG_HEX4|DOUT\(2))))) # (\REG_HEX4|DOUT\(0) & (!\REG_HEX4|DOUT\(3) & (!\REG_HEX4|DOUT\(1) $ (\REG_HEX4|DOUT\(2)))))
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "1100001000000100110000100000010011000010000001001100001000000100",
=======
	lut_mask => "1100000000100100110000000010010011000000001001001100000000100100",
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX4|ALT_INV_DOUT\(0),
	datab => \REG_HEX4|ALT_INV_DOUT\(3),
<<<<<<< HEAD
	datac => \REG_HEX4|ALT_INV_DOUT\(2),
	datad => \REG_HEX4|ALT_INV_DOUT\(1),
	combout => \DECODER_7SEG_4|rascSaida7seg[6]~6_combout\);

\AND_HEX5|saida\ : cyclonev_lcell_comb
-- Equation(s):
-- \AND_HEX5|saida~combout\ = ( \ROM|memROM~8_combout\ & ( (\ROM|memROM~9_combout\ & (\AND_HEX0|saida~3_combout\ & (!\ROM|memROM~6_combout\ & \ROM|memROM~7_combout\))) ) )
=======
	datac => \REG_HEX4|ALT_INV_DOUT\(1),
	datad => \REG_HEX4|ALT_INV_DOUT\(2),
	combout => \DECODER_7SEG_4|rascSaida7seg[6]~6_combout\);

\DECODER2|Equal7~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER2|Equal7~6_combout\ = (\ROM|memROM~2_combout\ & (!\ROM|memROM~4_combout\ & (\ROM|memROM~6_combout\ & \DECODER2|Equal7~0_combout\)))
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0000000000000000000000000001000000000000000000000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~9_combout\,
	datab => \AND_HEX0|ALT_INV_saida~3_combout\,
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datad => \ROM|ALT_INV_memROM~7_combout\,
	datae => \ROM|ALT_INV_memROM~8_combout\,
	combout => \AND_HEX5|saida~combout\);
=======
	lut_mask => "0000000000000100000000000000010000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~4_combout\,
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datad => \DECODER2|ALT_INV_Equal7~0_combout\,
	combout => \DECODER2|Equal7~6_combout\);
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17

\REG_HEX5|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(0),
<<<<<<< HEAD
	ena => \AND_HEX5|saida~combout\,
=======
	ena => \DECODER2|Equal7~6_combout\,
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX5|DOUT\(0));

\REG_HEX5|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(3),
<<<<<<< HEAD
	ena => \AND_HEX5|saida~combout\,
=======
	ena => \DECODER2|Equal7~6_combout\,
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX5|DOUT\(3));

<<<<<<< HEAD
\REG_HEX5|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(2),
	ena => \AND_HEX5|saida~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX5|DOUT\(2));

=======
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
\REG_HEX5|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(1),
<<<<<<< HEAD
	ena => \AND_HEX5|saida~combout\,
=======
	ena => \DECODER2|Equal7~6_combout\,
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX5|DOUT\(1));

<<<<<<< HEAD
\DECODER_7SEG_5|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_7SEG_5|rascSaida7seg[0]~0_combout\ = (!\REG_HEX5|DOUT\(3) & (!\REG_HEX5|DOUT\(1) & (!\REG_HEX5|DOUT\(0) $ (!\REG_HEX5|DOUT\(2))))) # (\REG_HEX5|DOUT\(3) & (\REG_HEX5|DOUT\(0) & (!\REG_HEX5|DOUT\(2) $ (!\REG_HEX5|DOUT\(1)))))
=======
\REG_HEX5|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(2),
	ena => \DECODER2|Equal7~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX5|DOUT\(2));

\DECODER_7SEG_5|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_7SEG_5|rascSaida7seg[0]~0_combout\ = (!\REG_HEX5|DOUT\(3) & (!\REG_HEX5|DOUT\(1) & (!\REG_HEX5|DOUT\(0) $ (!\REG_HEX5|DOUT\(2))))) # (\REG_HEX5|DOUT\(3) & (\REG_HEX5|DOUT\(0) & (!\REG_HEX5|DOUT\(1) $ (!\REG_HEX5|DOUT\(2)))))
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0100100100010000010010010001000001001001000100000100100100010000",
=======
	lut_mask => "0100000110010000010000011001000001000001100100000100000110010000",
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX5|ALT_INV_DOUT\(0),
	datab => \REG_HEX5|ALT_INV_DOUT\(3),
<<<<<<< HEAD
	datac => \REG_HEX5|ALT_INV_DOUT\(2),
	datad => \REG_HEX5|ALT_INV_DOUT\(1),
=======
	datac => \REG_HEX5|ALT_INV_DOUT\(1),
	datad => \REG_HEX5|ALT_INV_DOUT\(2),
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
	combout => \DECODER_7SEG_5|rascSaida7seg[0]~0_combout\);

\DECODER_7SEG_5|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
<<<<<<< HEAD
-- \DECODER_7SEG_5|rascSaida7seg[1]~1_combout\ = (!\REG_HEX5|DOUT\(3) & (\REG_HEX5|DOUT\(2) & (!\REG_HEX5|DOUT\(0) $ (!\REG_HEX5|DOUT\(1))))) # (\REG_HEX5|DOUT\(3) & ((!\REG_HEX5|DOUT\(0) & (\REG_HEX5|DOUT\(2))) # (\REG_HEX5|DOUT\(0) & 
-- ((\REG_HEX5|DOUT\(1))))))
=======
-- \DECODER_7SEG_5|rascSaida7seg[1]~1_combout\ = (!\REG_HEX5|DOUT\(3) & (\REG_HEX5|DOUT\(2) & (!\REG_HEX5|DOUT\(0) $ (!\REG_HEX5|DOUT\(1))))) # (\REG_HEX5|DOUT\(3) & ((!\REG_HEX5|DOUT\(0) & ((\REG_HEX5|DOUT\(2)))) # (\REG_HEX5|DOUT\(0) & 
-- (\REG_HEX5|DOUT\(1)))))
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0000011000011011000001100001101100000110000110110000011000011011",
=======
	lut_mask => "0000000101101011000000010110101100000001011010110000000101101011",
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX5|ALT_INV_DOUT\(0),
	datab => \REG_HEX5|ALT_INV_DOUT\(3),
<<<<<<< HEAD
	datac => \REG_HEX5|ALT_INV_DOUT\(2),
	datad => \REG_HEX5|ALT_INV_DOUT\(1),
=======
	datac => \REG_HEX5|ALT_INV_DOUT\(1),
	datad => \REG_HEX5|ALT_INV_DOUT\(2),
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
	combout => \DECODER_7SEG_5|rascSaida7seg[1]~1_combout\);

\DECODER_7SEG_5|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
<<<<<<< HEAD
-- \DECODER_7SEG_5|rascSaida7seg[2]~2_combout\ = (!\REG_HEX5|DOUT\(3) & (!\REG_HEX5|DOUT\(0) & (!\REG_HEX5|DOUT\(2) & \REG_HEX5|DOUT\(1)))) # (\REG_HEX5|DOUT\(3) & (\REG_HEX5|DOUT\(2) & ((!\REG_HEX5|DOUT\(0)) # (\REG_HEX5|DOUT\(1)))))
=======
-- \DECODER_7SEG_5|rascSaida7seg[2]~2_combout\ = (!\REG_HEX5|DOUT\(3) & (!\REG_HEX5|DOUT\(0) & (\REG_HEX5|DOUT\(1) & !\REG_HEX5|DOUT\(2)))) # (\REG_HEX5|DOUT\(3) & (\REG_HEX5|DOUT\(2) & ((!\REG_HEX5|DOUT\(0)) # (\REG_HEX5|DOUT\(1)))))
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0000001010000011000000101000001100000010100000110000001010000011",
=======
	lut_mask => "0000100000100011000010000010001100001000001000110000100000100011",
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX5|ALT_INV_DOUT\(0),
	datab => \REG_HEX5|ALT_INV_DOUT\(3),
<<<<<<< HEAD
	datac => \REG_HEX5|ALT_INV_DOUT\(2),
	datad => \REG_HEX5|ALT_INV_DOUT\(1),
=======
	datac => \REG_HEX5|ALT_INV_DOUT\(1),
	datad => \REG_HEX5|ALT_INV_DOUT\(2),
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
	combout => \DECODER_7SEG_5|rascSaida7seg[2]~2_combout\);

\DECODER_7SEG_5|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_7SEG_5|rascSaida7seg[3]~3_combout\ = (!\REG_HEX5|DOUT\(1) & (!\REG_HEX5|DOUT\(3) & (!\REG_HEX5|DOUT\(0) $ (!\REG_HEX5|DOUT\(2))))) # (\REG_HEX5|DOUT\(1) & ((!\REG_HEX5|DOUT\(0) & (!\REG_HEX5|DOUT\(2) & \REG_HEX5|DOUT\(3))) # (\REG_HEX5|DOUT\(0) & 
-- (\REG_HEX5|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100100001010010010010000101001001001000010100100100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX5|ALT_INV_DOUT\(0),
	datab => \REG_HEX5|ALT_INV_DOUT\(1),
	datac => \REG_HEX5|ALT_INV_DOUT\(2),
	datad => \REG_HEX5|ALT_INV_DOUT\(3),
	combout => \DECODER_7SEG_5|rascSaida7seg[3]~3_combout\);

\DECODER_7SEG_5|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_7SEG_5|rascSaida7seg[4]~4_combout\ = (!\REG_HEX5|DOUT\(1) & ((!\REG_HEX5|DOUT\(2) & ((\REG_HEX5|DOUT\(0)))) # (\REG_HEX5|DOUT\(2) & (!\REG_HEX5|DOUT\(3))))) # (\REG_HEX5|DOUT\(1) & (!\REG_HEX5|DOUT\(3) & ((\REG_HEX5|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0010000011101010001000001110101000100000111010100010000011101010",
=======
	lut_mask => "0000100011101010000010001110101000001000111010100000100011101010",
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX5|ALT_INV_DOUT\(3),
<<<<<<< HEAD
	datab => \REG_HEX5|ALT_INV_DOUT\(2),
	datac => \REG_HEX5|ALT_INV_DOUT\(1),
=======
	datab => \REG_HEX5|ALT_INV_DOUT\(1),
	datac => \REG_HEX5|ALT_INV_DOUT\(2),
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
	datad => \REG_HEX5|ALT_INV_DOUT\(0),
	combout => \DECODER_7SEG_5|rascSaida7seg[4]~4_combout\);

\DECODER_7SEG_5|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
<<<<<<< HEAD
-- \DECODER_7SEG_5|rascSaida7seg[5]~5_combout\ = (!\REG_HEX5|DOUT\(0) & (!\REG_HEX5|DOUT\(2) & (\REG_HEX5|DOUT\(1) & !\REG_HEX5|DOUT\(3)))) # (\REG_HEX5|DOUT\(0) & (!\REG_HEX5|DOUT\(3) $ (((\REG_HEX5|DOUT\(2) & !\REG_HEX5|DOUT\(1))))))
=======
-- \DECODER_7SEG_5|rascSaida7seg[5]~5_combout\ = (!\REG_HEX5|DOUT\(0) & (\REG_HEX5|DOUT\(1) & (!\REG_HEX5|DOUT\(2) & !\REG_HEX5|DOUT\(3)))) # (\REG_HEX5|DOUT\(0) & (!\REG_HEX5|DOUT\(3) $ (((!\REG_HEX5|DOUT\(1) & \REG_HEX5|DOUT\(2))))))
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "0100110100010000010011010001000001001101000100000100110100010000",
=======
	lut_mask => "0111000100000100011100010000010001110001000001000111000100000100",
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX5|ALT_INV_DOUT\(0),
<<<<<<< HEAD
	datab => \REG_HEX5|ALT_INV_DOUT\(2),
	datac => \REG_HEX5|ALT_INV_DOUT\(1),
=======
	datab => \REG_HEX5|ALT_INV_DOUT\(1),
	datac => \REG_HEX5|ALT_INV_DOUT\(2),
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
	datad => \REG_HEX5|ALT_INV_DOUT\(3),
	combout => \DECODER_7SEG_5|rascSaida7seg[5]~5_combout\);

\DECODER_7SEG_5|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
<<<<<<< HEAD
-- \DECODER_7SEG_5|rascSaida7seg[6]~6_combout\ = (!\REG_HEX5|DOUT\(0) & (!\REG_HEX5|DOUT\(1) & (!\REG_HEX5|DOUT\(3) $ (\REG_HEX5|DOUT\(2))))) # (\REG_HEX5|DOUT\(0) & (!\REG_HEX5|DOUT\(3) & (!\REG_HEX5|DOUT\(2) $ (\REG_HEX5|DOUT\(1)))))
=======
-- \DECODER_7SEG_5|rascSaida7seg[6]~6_combout\ = (!\REG_HEX5|DOUT\(0) & (!\REG_HEX5|DOUT\(1) & (!\REG_HEX5|DOUT\(3) $ (\REG_HEX5|DOUT\(2))))) # (\REG_HEX5|DOUT\(0) & (!\REG_HEX5|DOUT\(3) & (!\REG_HEX5|DOUT\(1) $ (\REG_HEX5|DOUT\(2)))))
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
<<<<<<< HEAD
	lut_mask => "1100001000000100110000100000010011000010000001001100001000000100",
=======
	lut_mask => "1100000000100100110000000010010011000000001001001100000000100100",
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX5|ALT_INV_DOUT\(0),
	datab => \REG_HEX5|ALT_INV_DOUT\(3),
<<<<<<< HEAD
	datac => \REG_HEX5|ALT_INV_DOUT\(2),
	datad => \REG_HEX5|ALT_INV_DOUT\(1),
	combout => \DECODER_7SEG_5|rascSaida7seg[6]~6_combout\);

=======
	datac => \REG_HEX5|ALT_INV_DOUT\(1),
	datad => \REG_HEX5|ALT_INV_DOUT\(2),
	combout => \DECODER_7SEG_5|rascSaida7seg[6]~6_combout\);

\RAM64|ram~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(4),
	ena => \RAM64|ram~560_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~19_q\);

\RAM64|ram~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(4),
	ena => \RAM64|ram~561_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~27_q\);

\RAM64|ram~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(4),
	ena => \RAM64|ram~562_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~51_q\);

\RAM64|ram~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(4),
	ena => \RAM64|ram~563_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~59_q\);

\RAM64|ram~543\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~543_combout\ = ( \ROM|memROM~2_combout\ & ( \ROM|memROM~6_combout\ & ( \RAM64|ram~59_q\ ) ) ) # ( !\ROM|memROM~2_combout\ & ( \ROM|memROM~6_combout\ & ( \RAM64|ram~51_q\ ) ) ) # ( \ROM|memROM~2_combout\ & ( !\ROM|memROM~6_combout\ & ( 
-- \RAM64|ram~27_q\ ) ) ) # ( !\ROM|memROM~2_combout\ & ( !\ROM|memROM~6_combout\ & ( \RAM64|ram~19_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~19_q\,
	datab => \RAM64|ALT_INV_ram~27_q\,
	datac => \RAM64|ALT_INV_ram~51_q\,
	datad => \RAM64|ALT_INV_ram~59_q\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~6_combout\,
	combout => \RAM64|ram~543_combout\);

\RAM64|ram~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(4),
	ena => \RAM64|ram~564_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~35_q\);

\RAM64|ram~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(4),
	ena => \RAM64|ram~565_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~43_q\);

\RAM64|ram~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(4),
	ena => \RAM64|ram~566_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~67_q\);

\RAM64|ram~75\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(4),
	ena => \RAM64|ram~567_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~75_q\);

\RAM64|ram~544\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~544_combout\ = ( \ROM|memROM~2_combout\ & ( \ROM|memROM~6_combout\ & ( \RAM64|ram~75_q\ ) ) ) # ( !\ROM|memROM~2_combout\ & ( \ROM|memROM~6_combout\ & ( \RAM64|ram~67_q\ ) ) ) # ( \ROM|memROM~2_combout\ & ( !\ROM|memROM~6_combout\ & ( 
-- \RAM64|ram~43_q\ ) ) ) # ( !\ROM|memROM~2_combout\ & ( !\ROM|memROM~6_combout\ & ( \RAM64|ram~35_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~35_q\,
	datab => \RAM64|ALT_INV_ram~43_q\,
	datac => \RAM64|ALT_INV_ram~67_q\,
	datad => \RAM64|ALT_INV_ram~75_q\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~6_combout\,
	combout => \RAM64|ram~544_combout\);

\RAM64|ram~545\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~545_combout\ = ( !\ROM|memROM~11_combout\ & ( \ROM|memROM~4_combout\ & ( \RAM64|ram~544_combout\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( !\ROM|memROM~4_combout\ & ( \RAM64|ram~543_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~543_combout\,
	datac => \RAM64|ALT_INV_ram~544_combout\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \RAM64|ram~545_combout\);

\CPU|ULA1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~17_sumout\ = SUM(( (!\CPU|DECODER1|Equal10~0_combout\ & \RAM64|ram~545_combout\) ) + ( \CPU|REGA|DOUT\(4) ) + ( \CPU|ULA1|Add0~14\ ))
-- \CPU|ULA1|Add0~18\ = CARRY(( (!\CPU|DECODER1|Equal10~0_combout\ & \RAM64|ram~545_combout\) ) + ( \CPU|REGA|DOUT\(4) ) + ( \CPU|ULA1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER1|ALT_INV_Equal10~0_combout\,
	datad => \RAM64|ALT_INV_ram~545_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(4),
	cin => \CPU|ULA1|Add0~14\,
	sumout => \CPU|ULA1|Add0~17_sumout\,
	cout => \CPU|ULA1|Add0~18\);

\CPU|ULA1|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~17_sumout\ = SUM(( (!\RAM64|ram~545_combout\) # (\CPU|DECODER1|Equal10~0_combout\) ) + ( \CPU|REGA|DOUT\(4) ) + ( \CPU|ULA1|Add1~14\ ))
-- \CPU|ULA1|Add1~18\ = CARRY(( (!\RAM64|ram~545_combout\) # (\CPU|DECODER1|Equal10~0_combout\) ) + ( \CPU|REGA|DOUT\(4) ) + ( \CPU|ULA1|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER1|ALT_INV_Equal10~0_combout\,
	datad => \RAM64|ALT_INV_ram~545_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(4),
	cin => \CPU|ULA1|Add1~14\,
	sumout => \CPU|ULA1|Add1~17_sumout\,
	cout => \CPU|ULA1|Add1~18\);

\CPU|ULA1|saida[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[4]~4_combout\ = (!\CPU|DECODER1|saida~0_combout\ & (((\CPU|ULA1|Add1~17_sumout\)))) # (\CPU|DECODER1|saida~0_combout\ & (!\CPU|DECODER1|Equal10~0_combout\ & (\RAM64|ram~545_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001011001110000000101100111000000010110011100000001011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER1|ALT_INV_Equal10~0_combout\,
	datab => \CPU|DECODER1|ALT_INV_saida~0_combout\,
	datac => \RAM64|ALT_INV_ram~545_combout\,
	datad => \CPU|ULA1|ALT_INV_Add1~17_sumout\,
	combout => \CPU|ULA1|saida[4]~4_combout\);

\CPU|REGA|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|ULA1|Add0~17_sumout\,
	asdata => \CPU|ULA1|saida[4]~4_combout\,
	sload => \CPU|DECODER1|Equal10~1_combout\,
	ena => \CPU|DECODER1|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(4));

\ROM|memROM~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~15_combout\ = (\ROM|memROM~1_combout\ & \ROM|memROM~7_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~7_combout\,
	combout => \ROM|memROM~15_combout\);

\RAM64|ram~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(5),
	ena => \RAM64|ram~560_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~20_q\);

\RAM64|ram~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(5),
	ena => \RAM64|ram~564_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~36_q\);

\RAM64|ram~546\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~546_combout\ = ( !\ROM|memROM~11_combout\ & ( \ROM|memROM~4_combout\ & ( \RAM64|ram~36_q\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( !\ROM|memROM~4_combout\ & ( \RAM64|ram~20_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~20_q\,
	datac => \RAM64|ALT_INV_ram~36_q\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \RAM64|ram~546_combout\);

\RAM64|ram~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(5),
	ena => \RAM64|ram~562_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~52_q\);

\RAM64|ram~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(5),
	ena => \RAM64|ram~566_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~68_q\);

\RAM64|ram~547\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~547_combout\ = ( !\ROM|memROM~11_combout\ & ( \ROM|memROM~4_combout\ & ( \RAM64|ram~68_q\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( !\ROM|memROM~4_combout\ & ( \RAM64|ram~52_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~52_q\,
	datac => \RAM64|ALT_INV_ram~68_q\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \RAM64|ram~547_combout\);

\RAM64|ram~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(5),
	ena => \RAM64|ram~561_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~28_q\);

\RAM64|ram~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(5),
	ena => \RAM64|ram~565_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~44_q\);

\RAM64|ram~548\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~548_combout\ = ( !\ROM|memROM~11_combout\ & ( \ROM|memROM~4_combout\ & ( \RAM64|ram~44_q\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( !\ROM|memROM~4_combout\ & ( \RAM64|ram~28_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~28_q\,
	datac => \RAM64|ALT_INV_ram~44_q\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \RAM64|ram~548_combout\);

\RAM64|ram~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(5),
	ena => \RAM64|ram~563_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~60_q\);

\RAM64|ram~76\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(5),
	ena => \RAM64|ram~567_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~76_q\);

\RAM64|ram~549\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~549_combout\ = ( !\ROM|memROM~11_combout\ & ( \ROM|memROM~4_combout\ & ( \RAM64|ram~76_q\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( !\ROM|memROM~4_combout\ & ( \RAM64|ram~60_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~60_q\,
	datac => \RAM64|ALT_INV_ram~76_q\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \RAM64|ram~549_combout\);

\RAM64|ram~550\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~550_combout\ = ( \ROM|memROM~6_combout\ & ( \ROM|memROM~2_combout\ & ( \RAM64|ram~549_combout\ ) ) ) # ( !\ROM|memROM~6_combout\ & ( \ROM|memROM~2_combout\ & ( \RAM64|ram~548_combout\ ) ) ) # ( \ROM|memROM~6_combout\ & ( !\ROM|memROM~2_combout\ 
-- & ( \RAM64|ram~547_combout\ ) ) ) # ( !\ROM|memROM~6_combout\ & ( !\ROM|memROM~2_combout\ & ( \RAM64|ram~546_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~546_combout\,
	datab => \RAM64|ALT_INV_ram~547_combout\,
	datac => \RAM64|ALT_INV_ram~548_combout\,
	datad => \RAM64|ALT_INV_ram~549_combout\,
	datae => \ROM|ALT_INV_memROM~6_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM64|ram~550_combout\);

\CPU|ULA1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~21_sumout\ = SUM(( (!\CPU|DECODER1|Equal10~0_combout\ & (((\RAM64|ram~550_combout\)))) # (\CPU|DECODER1|Equal10~0_combout\ & (\ROM|memROM~15_combout\ & (!\CPU|PC|DOUT\(8)))) ) + ( \CPU|REGA|DOUT\(5) ) + ( \CPU|ULA1|Add0~18\ ))
-- \CPU|ULA1|Add0~22\ = CARRY(( (!\CPU|DECODER1|Equal10~0_combout\ & (((\RAM64|ram~550_combout\)))) # (\CPU|DECODER1|Equal10~0_combout\ & (\ROM|memROM~15_combout\ & (!\CPU|PC|DOUT\(8)))) ) + ( \CPU|REGA|DOUT\(5) ) + ( \CPU|ULA1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000001000010111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER1|ALT_INV_Equal10~0_combout\,
	datab => \ROM|ALT_INV_memROM~15_combout\,
	datac => \CPU|PC|ALT_INV_DOUT\(8),
	datad => \RAM64|ALT_INV_ram~550_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(5),
	cin => \CPU|ULA1|Add0~18\,
	sumout => \CPU|ULA1|Add0~21_sumout\,
	cout => \CPU|ULA1|Add0~22\);

\CPU|ULA1|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~21_sumout\ = SUM(( (!\CPU|DECODER1|Equal10~0_combout\ & (((!\RAM64|ram~550_combout\)))) # (\CPU|DECODER1|Equal10~0_combout\ & ((!\ROM|memROM~15_combout\) # ((\CPU|PC|DOUT\(8))))) ) + ( \CPU|REGA|DOUT\(5) ) + ( \CPU|ULA1|Add1~18\ ))
-- \CPU|ULA1|Add1~22\ = CARRY(( (!\CPU|DECODER1|Equal10~0_combout\ & (((!\RAM64|ram~550_combout\)))) # (\CPU|DECODER1|Equal10~0_combout\ & ((!\ROM|memROM~15_combout\) # ((\CPU|PC|DOUT\(8))))) ) + ( \CPU|REGA|DOUT\(5) ) + ( \CPU|ULA1|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001110111101000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER1|ALT_INV_Equal10~0_combout\,
	datab => \ROM|ALT_INV_memROM~15_combout\,
	datac => \CPU|PC|ALT_INV_DOUT\(8),
	datad => \RAM64|ALT_INV_ram~550_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(5),
	cin => \CPU|ULA1|Add1~18\,
	sumout => \CPU|ULA1|Add1~21_sumout\,
	cout => \CPU|ULA1|Add1~22\);

\CPU|ULA1|saida[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[5]~5_combout\ = ( \CPU|ULA1|Add1~21_sumout\ & ( (!\CPU|DECODER1|saida~0_combout\) # ((!\CPU|DECODER1|Equal10~0_combout\ & ((\RAM64|ram~550_combout\))) # (\CPU|DECODER1|Equal10~0_combout\ & (\ROM|memROM~11_combout\))) ) ) # ( 
-- !\CPU|ULA1|Add1~21_sumout\ & ( (\CPU|DECODER1|saida~0_combout\ & ((!\CPU|DECODER1|Equal10~0_combout\ & ((\RAM64|ram~550_combout\))) # (\CPU|DECODER1|Equal10~0_combout\ & (\ROM|memROM~11_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001101111100011111110100000001000011011111000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~11_combout\,
	datab => \CPU|DECODER1|ALT_INV_Equal10~0_combout\,
	datac => \CPU|DECODER1|ALT_INV_saida~0_combout\,
	datad => \RAM64|ALT_INV_ram~550_combout\,
	datae => \CPU|ULA1|ALT_INV_Add1~21_sumout\,
	combout => \CPU|ULA1|saida[5]~5_combout\);

\CPU|REGA|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|ULA1|Add0~21_sumout\,
	asdata => \CPU|ULA1|saida[5]~5_combout\,
	sload => \CPU|DECODER1|Equal10~1_combout\,
	ena => \CPU|DECODER1|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(5));

\RAM64|ram~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(6),
	ena => \RAM64|ram~560_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~21_q\);

\RAM64|ram~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(6),
	ena => \RAM64|ram~561_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~29_q\);

\RAM64|ram~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(6),
	ena => \RAM64|ram~562_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~53_q\);

\RAM64|ram~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(6),
	ena => \RAM64|ram~563_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~61_q\);

\RAM64|ram~551\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~551_combout\ = ( \ROM|memROM~2_combout\ & ( \ROM|memROM~6_combout\ & ( \RAM64|ram~61_q\ ) ) ) # ( !\ROM|memROM~2_combout\ & ( \ROM|memROM~6_combout\ & ( \RAM64|ram~53_q\ ) ) ) # ( \ROM|memROM~2_combout\ & ( !\ROM|memROM~6_combout\ & ( 
-- \RAM64|ram~29_q\ ) ) ) # ( !\ROM|memROM~2_combout\ & ( !\ROM|memROM~6_combout\ & ( \RAM64|ram~21_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~21_q\,
	datab => \RAM64|ALT_INV_ram~29_q\,
	datac => \RAM64|ALT_INV_ram~53_q\,
	datad => \RAM64|ALT_INV_ram~61_q\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~6_combout\,
	combout => \RAM64|ram~551_combout\);

\RAM64|ram~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(6),
	ena => \RAM64|ram~564_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~37_q\);

\RAM64|ram~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(6),
	ena => \RAM64|ram~565_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~45_q\);

\RAM64|ram~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(6),
	ena => \RAM64|ram~566_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~69_q\);

\RAM64|ram~77\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(6),
	ena => \RAM64|ram~567_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~77_q\);

\RAM64|ram~552\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~552_combout\ = ( \ROM|memROM~2_combout\ & ( \ROM|memROM~6_combout\ & ( \RAM64|ram~77_q\ ) ) ) # ( !\ROM|memROM~2_combout\ & ( \ROM|memROM~6_combout\ & ( \RAM64|ram~69_q\ ) ) ) # ( \ROM|memROM~2_combout\ & ( !\ROM|memROM~6_combout\ & ( 
-- \RAM64|ram~45_q\ ) ) ) # ( !\ROM|memROM~2_combout\ & ( !\ROM|memROM~6_combout\ & ( \RAM64|ram~37_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~37_q\,
	datab => \RAM64|ALT_INV_ram~45_q\,
	datac => \RAM64|ALT_INV_ram~69_q\,
	datad => \RAM64|ALT_INV_ram~77_q\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~6_combout\,
	combout => \RAM64|ram~552_combout\);

\RAM64|ram~553\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~553_combout\ = ( !\ROM|memROM~11_combout\ & ( \ROM|memROM~4_combout\ & ( \RAM64|ram~552_combout\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( !\ROM|memROM~4_combout\ & ( \RAM64|ram~551_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~551_combout\,
	datac => \RAM64|ALT_INV_ram~552_combout\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \RAM64|ram~553_combout\);

\CPU|ULA1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~25_sumout\ = SUM(( (!\CPU|DECODER1|Equal10~0_combout\ & \RAM64|ram~553_combout\) ) + ( \CPU|REGA|DOUT\(6) ) + ( \CPU|ULA1|Add0~22\ ))
-- \CPU|ULA1|Add0~26\ = CARRY(( (!\CPU|DECODER1|Equal10~0_combout\ & \RAM64|ram~553_combout\) ) + ( \CPU|REGA|DOUT\(6) ) + ( \CPU|ULA1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER1|ALT_INV_Equal10~0_combout\,
	datad => \RAM64|ALT_INV_ram~553_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(6),
	cin => \CPU|ULA1|Add0~22\,
	sumout => \CPU|ULA1|Add0~25_sumout\,
	cout => \CPU|ULA1|Add0~26\);

\CPU|ULA1|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~25_sumout\ = SUM(( (!\RAM64|ram~553_combout\) # (\CPU|DECODER1|Equal10~0_combout\) ) + ( \CPU|REGA|DOUT\(6) ) + ( \CPU|ULA1|Add1~22\ ))
-- \CPU|ULA1|Add1~26\ = CARRY(( (!\RAM64|ram~553_combout\) # (\CPU|DECODER1|Equal10~0_combout\) ) + ( \CPU|REGA|DOUT\(6) ) + ( \CPU|ULA1|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER1|ALT_INV_Equal10~0_combout\,
	datad => \RAM64|ALT_INV_ram~553_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(6),
	cin => \CPU|ULA1|Add1~22\,
	sumout => \CPU|ULA1|Add1~25_sumout\,
	cout => \CPU|ULA1|Add1~26\);

\CPU|ULA1|saida[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[6]~6_combout\ = (!\CPU|DECODER1|saida~0_combout\ & (((\CPU|ULA1|Add1~25_sumout\)))) # (\CPU|DECODER1|saida~0_combout\ & (!\CPU|DECODER1|Equal10~0_combout\ & (\RAM64|ram~553_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001011001110000000101100111000000010110011100000001011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER1|ALT_INV_Equal10~0_combout\,
	datab => \CPU|DECODER1|ALT_INV_saida~0_combout\,
	datac => \RAM64|ALT_INV_ram~553_combout\,
	datad => \CPU|ULA1|ALT_INV_Add1~25_sumout\,
	combout => \CPU|ULA1|saida[6]~6_combout\);

\CPU|REGA|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|ULA1|Add0~25_sumout\,
	asdata => \CPU|ULA1|saida[6]~6_combout\,
	sload => \CPU|DECODER1|Equal10~1_combout\,
	ena => \CPU|DECODER1|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(6));

\RAM64|ram~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(7),
	ena => \RAM64|ram~560_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~22_q\);

\RAM64|ram~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(7),
	ena => \RAM64|ram~564_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~38_q\);

\RAM64|ram~554\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~554_combout\ = ( !\ROM|memROM~11_combout\ & ( \ROM|memROM~4_combout\ & ( \RAM64|ram~38_q\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( !\ROM|memROM~4_combout\ & ( \RAM64|ram~22_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~22_q\,
	datac => \RAM64|ALT_INV_ram~38_q\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \RAM64|ram~554_combout\);

\RAM64|ram~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(7),
	ena => \RAM64|ram~562_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~54_q\);

\RAM64|ram~70\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(7),
	ena => \RAM64|ram~566_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~70_q\);

\RAM64|ram~555\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~555_combout\ = ( !\ROM|memROM~11_combout\ & ( \ROM|memROM~4_combout\ & ( \RAM64|ram~70_q\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( !\ROM|memROM~4_combout\ & ( \RAM64|ram~54_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~54_q\,
	datac => \RAM64|ALT_INV_ram~70_q\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \RAM64|ram~555_combout\);

\RAM64|ram~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(7),
	ena => \RAM64|ram~561_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~30_q\);

\RAM64|ram~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(7),
	ena => \RAM64|ram~565_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~46_q\);

\RAM64|ram~556\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~556_combout\ = ( !\ROM|memROM~11_combout\ & ( \ROM|memROM~4_combout\ & ( \RAM64|ram~46_q\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( !\ROM|memROM~4_combout\ & ( \RAM64|ram~30_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~30_q\,
	datac => \RAM64|ALT_INV_ram~46_q\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \RAM64|ram~556_combout\);

\RAM64|ram~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(7),
	ena => \RAM64|ram~563_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~62_q\);

\RAM64|ram~78\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(7),
	ena => \RAM64|ram~567_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~78_q\);

\RAM64|ram~557\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~557_combout\ = ( !\ROM|memROM~11_combout\ & ( \ROM|memROM~4_combout\ & ( \RAM64|ram~78_q\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( !\ROM|memROM~4_combout\ & ( \RAM64|ram~62_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~62_q\,
	datac => \RAM64|ALT_INV_ram~78_q\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \RAM64|ram~557_combout\);

\RAM64|ram~558\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~558_combout\ = ( \ROM|memROM~6_combout\ & ( \ROM|memROM~2_combout\ & ( \RAM64|ram~557_combout\ ) ) ) # ( !\ROM|memROM~6_combout\ & ( \ROM|memROM~2_combout\ & ( \RAM64|ram~556_combout\ ) ) ) # ( \ROM|memROM~6_combout\ & ( !\ROM|memROM~2_combout\ 
-- & ( \RAM64|ram~555_combout\ ) ) ) # ( !\ROM|memROM~6_combout\ & ( !\ROM|memROM~2_combout\ & ( \RAM64|ram~554_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~554_combout\,
	datab => \RAM64|ALT_INV_ram~555_combout\,
	datac => \RAM64|ALT_INV_ram~556_combout\,
	datad => \RAM64|ALT_INV_ram~557_combout\,
	datae => \ROM|ALT_INV_memROM~6_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM64|ram~558_combout\);

\CPU|ULA1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~29_sumout\ = SUM(( (!\CPU|DECODER1|Equal10~0_combout\ & \RAM64|ram~558_combout\) ) + ( \CPU|REGA|DOUT\(7) ) + ( \CPU|ULA1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER1|ALT_INV_Equal10~0_combout\,
	datad => \RAM64|ALT_INV_ram~558_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(7),
	cin => \CPU|ULA1|Add0~26\,
	sumout => \CPU|ULA1|Add0~29_sumout\);

\CPU|ULA1|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~29_sumout\ = SUM(( (!\RAM64|ram~558_combout\) # (\CPU|DECODER1|Equal10~0_combout\) ) + ( \CPU|REGA|DOUT\(7) ) + ( \CPU|ULA1|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER1|ALT_INV_Equal10~0_combout\,
	datad => \RAM64|ALT_INV_ram~558_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(7),
	cin => \CPU|ULA1|Add1~26\,
	sumout => \CPU|ULA1|Add1~29_sumout\);

\CPU|ULA1|saida[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[7]~7_combout\ = (!\CPU|DECODER1|saida~0_combout\ & (((\CPU|ULA1|Add1~29_sumout\)))) # (\CPU|DECODER1|saida~0_combout\ & (!\CPU|DECODER1|Equal10~0_combout\ & (\RAM64|ram~558_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001011001110000000101100111000000010110011100000001011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER1|ALT_INV_Equal10~0_combout\,
	datab => \CPU|DECODER1|ALT_INV_saida~0_combout\,
	datac => \RAM64|ALT_INV_ram~558_combout\,
	datad => \CPU|ULA1|ALT_INV_Add1~29_sumout\,
	combout => \CPU|ULA1|saida[7]~7_combout\);

\CPU|REGA|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|ULA1|Add0~29_sumout\,
	asdata => \CPU|ULA1|saida[7]~7_combout\,
	sload => \CPU|DECODER1|Equal10~1_combout\,
	ena => \CPU|DECODER1|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(7));

>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);
<<<<<<< HEAD
=======

\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

\SW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

\SW[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

\SW[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

\SW[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

\FPGA_RESET_N~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FPGA_RESET_N,
	o => \FPGA_RESET_N~input_o\);
>>>>>>> cafc17b46a731f175043c3bbfe3e93ab0b07dd17
END structure;


