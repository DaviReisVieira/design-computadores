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

-- DATE "10/15/2022 11:52:21"

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
	FPGA_RESET_N : IN std_logic
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
SIGNAL \CPU|incrementaPC|Add0~10\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~13_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~14\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~17_sumout\ : std_logic;
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
SIGNAL \DECODER_7SEG_0|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \DECODER_7SEG_0|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \DECODER_7SEG_0|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \DECODER_7SEG_0|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \DECODER_7SEG_0|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \DECODER_7SEG_0|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \DECODER_7SEG_0|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \AND_HEX1|saida~0_combout\ : std_logic;
SIGNAL \DECODER_7SEG_1|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \DECODER_7SEG_1|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \DECODER_7SEG_1|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \DECODER_7SEG_1|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \DECODER_7SEG_1|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \DECODER_7SEG_1|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \DECODER_7SEG_1|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \AND_HEX2|saida~0_combout\ : std_logic;
SIGNAL \DECODER_7SEG_2|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \DECODER_7SEG_2|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \DECODER_7SEG_2|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \DECODER_7SEG_2|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \DECODER_7SEG_2|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \DECODER_7SEG_2|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \DECODER_7SEG_2|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \AND_HEX3|saida~0_combout\ : std_logic;
SIGNAL \DECODER_7SEG_3|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \DECODER_7SEG_3|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \DECODER_7SEG_3|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \DECODER_7SEG_3|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \DECODER_7SEG_3|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \DECODER_7SEG_3|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \DECODER_7SEG_3|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \AND_HEX0|saida~3_combout\ : std_logic;
SIGNAL \AND_HEX4|saida~0_combout\ : std_logic;
SIGNAL \DECODER_7SEG_4|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \DECODER_7SEG_4|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \DECODER_7SEG_4|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \DECODER_7SEG_4|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \DECODER_7SEG_4|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \DECODER_7SEG_4|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \DECODER_7SEG_4|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \AND_HEX5|saida~combout\ : std_logic;
SIGNAL \DECODER_7SEG_5|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \DECODER_7SEG_5|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \DECODER_7SEG_5|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \DECODER_7SEG_5|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \DECODER_7SEG_5|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \DECODER_7SEG_5|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \DECODER_7SEG_5|rascSaida7seg[6]~6_combout\ : std_logic;
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
SIGNAL \REG_HEX4|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REG_HEX3|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REG_HEX2|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REG_HEX1|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REG_HEX0|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FLIP_FLOP_LED9|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \FLIP_FLOP_LED8|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~1_sumout\ : std_logic;
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
\CPU|ULA1|ALT_INV_Add1~29_sumout\ <= NOT \CPU|ULA1|Add1~29_sumout\;
\CPU|ULA1|ALT_INV_Add1~25_sumout\ <= NOT \CPU|ULA1|Add1~25_sumout\;
\CPU|ULA1|ALT_INV_Add1~21_sumout\ <= NOT \CPU|ULA1|Add1~21_sumout\;
\CPU|ULA1|ALT_INV_Add1~17_sumout\ <= NOT \CPU|ULA1|Add1~17_sumout\;
\CPU|ULA1|ALT_INV_Add1~13_sumout\ <= NOT \CPU|ULA1|Add1~13_sumout\;
\CPU|ULA1|ALT_INV_Add1~9_sumout\ <= NOT \CPU|ULA1|Add1~9_sumout\;
\CPU|ULA1|ALT_INV_Add1~5_sumout\ <= NOT \CPU|ULA1|Add1~5_sumout\;
\CPU|ULA1|ALT_INV_Add1~1_sumout\ <= NOT \CPU|ULA1|Add1~1_sumout\;
\CPU|REGA|ALT_INV_DOUT\(7) <= NOT \CPU|REGA|DOUT\(7);
\CPU|REGA|ALT_INV_DOUT\(6) <= NOT \CPU|REGA|DOUT\(6);
\CPU|REGA|ALT_INV_DOUT\(5) <= NOT \CPU|REGA|DOUT\(5);
\CPU|REGA|ALT_INV_DOUT\(4) <= NOT \CPU|REGA|DOUT\(4);
\CPU|REGA|ALT_INV_DOUT\(3) <= NOT \CPU|REGA|DOUT\(3);
\CPU|REGA|ALT_INV_DOUT\(2) <= NOT \CPU|REGA|DOUT\(2);
\CPU|REGA|ALT_INV_DOUT\(1) <= NOT \CPU|REGA|DOUT\(1);
\CPU|PC|ALT_INV_DOUT\(8) <= NOT \CPU|PC|DOUT\(8);
\CPU|PC|ALT_INV_DOUT\(7) <= NOT \CPU|PC|DOUT\(7);
\CPU|PC|ALT_INV_DOUT\(6) <= NOT \CPU|PC|DOUT\(6);
\CPU|PC|ALT_INV_DOUT\(5) <= NOT \CPU|PC|DOUT\(5);
\CPU|PC|ALT_INV_DOUT\(4) <= NOT \CPU|PC|DOUT\(4);
\CPU|PC|ALT_INV_DOUT\(3) <= NOT \CPU|PC|DOUT\(3);
\CPU|PC|ALT_INV_DOUT\(2) <= NOT \CPU|PC|DOUT\(2);
\CPU|PC|ALT_INV_DOUT\(1) <= NOT \CPU|PC|DOUT\(1);
\CPU|PC|ALT_INV_DOUT\(0) <= NOT \CPU|PC|DOUT\(0);
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

\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_LEDR0_7|DOUT\(0),
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
	i => \REG_LEDR0_7|DOUT\(1),
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
	i => \REG_LEDR0_7|DOUT\(2),
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
	i => \REG_LEDR0_7|DOUT\(3),
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
	i => \REG_LEDR0_7|DOUT\(4),
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
	i => \REG_LEDR0_7|DOUT\(5),
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
	i => \REG_LEDR0_7|DOUT\(6),
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
	i => \REG_LEDR0_7|DOUT\(7),
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
	i => \FLIP_FLOP_LED8|DOUT~q\,
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
	i => \FLIP_FLOP_LED9|DOUT~q\,
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

\CPU|incrementaPC|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~5_sumout\ = SUM(( \CPU|PC|DOUT\(1) ) + ( GND ) + ( \CPU|incrementaPC|Add0~2\ ))
-- \CPU|incrementaPC|Add0~6\ = CARRY(( \CPU|PC|DOUT\(1) ) + ( GND ) + ( \CPU|incrementaPC|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
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
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
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

\ROM|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~4_combout\ = (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT\(1)) # (!\CPU|PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010100000000000101010000000000010101000000000001010100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~4_combout\);

\ROM|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~7_combout\ = (\ROM|memROM~2_combout\ & !\ROM|memROM~4_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~4_combout\,
	combout => \ROM|memROM~7_combout\);

\CPU|PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|incrementaPC|Add0~21_sumout\,
	asdata => \ROM|memROM~7_combout\,
	sload => \CPU|DESVIO1|Sel\(0),
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
	sload => \CPU|DESVIO1|Sel\(0),
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
	asdata => \ROM|memROM~2_combout\,
	sload => \CPU|DESVIO1|Sel\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(8));

\DATA_IN[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATA_IN[0]~0_combout\ = ( !\CPU|PC|DOUT\(7) & ( !\CPU|PC|DOUT\(8) & ( (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(5) & !\CPU|PC|DOUT\(6)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
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
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|incrementaPC|Add0~25_sumout\,
	asdata => \DATA_IN[0]~0_combout\,
	sload => \CPU|DESVIO1|Sel\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(6));

\ROM|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~1_combout\ = (!\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(6) & (!\CPU|PC|DOUT\(7) & !\CPU|PC|DOUT\(8))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
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

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
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

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|DESVIO1|ALT_INV_Sel\(0),
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \CPU|DESVIO1|ALT_INV_Sel~0_combout\,
	combout => \CPU|DESVIO1|Sel\(0));

\CPU|PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|incrementaPC|Add0~5_sumout\,
	asdata => \ROM|memROM~6_combout\,
	sload => \CPU|DESVIO1|Sel\(0),
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

\ROM|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~0_combout\ = (\CPU|PC|DOUT\(3) & (((\CPU|PC|DOUT\(1) & \CPU|PC|DOUT\(2))) # (\CPU|PC|DOUT\(0))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010111000000000101011100000000010101110000000001010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~0_combout\);

\ROM|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~9_combout\ = (\ROM|memROM~0_combout\ & \ROM|memROM~2_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	combout => \ROM|memROM~9_combout\);

\CPU|PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|incrementaPC|Add0~9_sumout\,
	asdata => \ROM|memROM~9_combout\,
	sload => \CPU|DESVIO1|Sel\(0),
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
	sload => \CPU|DESVIO1|Sel\(0),
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
	sload => \CPU|DESVIO1|Sel\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(4));

\ROM|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~2_combout\ = ( !\CPU|PC|DOUT\(8) & ( (!\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(6) & !\CPU|PC|DOUT\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(4),
	datab => \CPU|PC|ALT_INV_DOUT\(5),
	datac => \CPU|PC|ALT_INV_DOUT\(6),
	datad => \CPU|PC|ALT_INV_DOUT\(7),
	datae => \CPU|PC|ALT_INV_DOUT\(8),
	combout => \ROM|memROM~2_combout\);

\ROM|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~5_combout\ = (!\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(1) & ((\CPU|PC|DOUT\(3)))) # (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(3))))) # (\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(1)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
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

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~5_combout\,
	combout => \ROM|memROM~8_combout\);

\CPU|PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|incrementaPC|Add0~1_sumout\,
	asdata => \ROM|memROM~8_combout\,
	sload => \CPU|DESVIO1|Sel\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(0));

\CPU|DECODER1|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER1|saida~0_combout\ = (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(4) & \ROM|memROM~1_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
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
-- \CPU|ULA1|Add1~1_sumout\ = SUM(( !\DATA_IN[0]~5_combout\ ) + ( \CPU|REGA|DOUT\(0) ) + ( \CPU|ULA1|Add1~34_cout\ ))
-- \CPU|ULA1|Add1~2\ = CARRY(( !\DATA_IN[0]~5_combout\ ) + ( \CPU|REGA|DOUT\(0) ) + ( \CPU|ULA1|Add1~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_DATA_IN[0]~5_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(0),
	cin => \CPU|ULA1|Add1~34_cout\,
	sumout => \CPU|ULA1|Add1~1_sumout\,
	cout => \CPU|ULA1|Add1~2\);

\CPU|ULA1|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[0]~0_combout\ = (!\CPU|DECODER1|saida~0_combout\ & ((\CPU|ULA1|Add1~1_sumout\))) # (\CPU|DECODER1|saida~0_combout\ & (\DATA_IN[0]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER1|ALT_INV_saida~0_combout\,
	datab => \ALT_INV_DATA_IN[0]~5_combout\,
	datac => \CPU|ULA1|ALT_INV_Add1~1_sumout\,
	combout => \CPU|ULA1|saida[0]~0_combout\);

\CPU|REGA|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => VCC,
	asdata => \CPU|ULA1|saida[0]~0_combout\,
	sload => VCC,
	ena => \CPU|DECODER1|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(0));

\AND_HEX0|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AND_HEX0|saida~0_combout\ = (\CPU|PC|DOUT\(0) & (!\ROM|memROM~0_combout\ & (!\CPU|PC|DOUT\(4) & \ROM|memROM~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
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

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \AND_HEX0|ALT_INV_saida~0_combout\,
	datab => \AND_SW0_7|ALT_INV_saida~0_combout\,
	combout => \AND_LEDR0_7|saida~0_combout\);

\REG_LEDR0_7|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(0),
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

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
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

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|MUX1|ALT_INV_saida_MUX[1]~0_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(1),
	cin => \CPU|ULA1|Add1~2\,
	sumout => \CPU|ULA1|Add1~5_sumout\,
	cout => \CPU|ULA1|Add1~6\);

\CPU|ULA1|saida[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[1]~1_combout\ = (!\CPU|DECODER1|saida~0_combout\ & ((\CPU|ULA1|Add1~5_sumout\))) # (\CPU|DECODER1|saida~0_combout\ & (\CPU|MUX1|saida_MUX[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER1|ALT_INV_saida~0_combout\,
	datab => \CPU|MUX1|ALT_INV_saida_MUX[1]~0_combout\,
	datac => \CPU|ULA1|ALT_INV_Add1~5_sumout\,
	combout => \CPU|ULA1|saida[1]~1_combout\);

\CPU|REGA|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => VCC,
	asdata => \CPU|ULA1|saida[1]~1_combout\,
	sload => VCC,
	ena => \CPU|DECODER1|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(1));

\REG_LEDR0_7|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(1),
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

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
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

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|MUX1|ALT_INV_saida_MUX[2]~1_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(2),
	cin => \CPU|ULA1|Add1~6\,
	sumout => \CPU|ULA1|Add1~9_sumout\,
	cout => \CPU|ULA1|Add1~10\);

\CPU|ULA1|saida[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[2]~2_combout\ = (!\CPU|DECODER1|saida~0_combout\ & ((\CPU|ULA1|Add1~9_sumout\))) # (\CPU|DECODER1|saida~0_combout\ & (\CPU|MUX1|saida_MUX[2]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER1|ALT_INV_saida~0_combout\,
	datab => \CPU|MUX1|ALT_INV_saida_MUX[2]~1_combout\,
	datac => \CPU|ULA1|ALT_INV_Add1~9_sumout\,
	combout => \CPU|ULA1|saida[2]~2_combout\);

\CPU|REGA|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => VCC,
	asdata => \CPU|ULA1|saida[2]~2_combout\,
	sload => VCC,
	ena => \CPU|DECODER1|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(2));

\REG_LEDR0_7|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(2),
	ena => \AND_LEDR0_7|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_LEDR0_7|DOUT\(2));

\AND_SW0_7|saida~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \AND_SW0_7|saida~1_combout\ = (!\ROM|memROM~9_combout\ & (!\AND_SW0_7|saida~0_combout\ & \DATA_IN[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
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

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \AND_SW0_7|ALT_INV_saida~1_combout\,
	datad => \ALT_INV_SW[3]~input_o\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(3),
	cin => \CPU|ULA1|Add1~10\,
	sumout => \CPU|ULA1|Add1~13_sumout\,
	cout => \CPU|ULA1|Add1~14\);

\CPU|ULA1|saida[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[3]~3_combout\ = (!\CPU|DECODER1|saida~0_combout\ & (((\CPU|ULA1|Add1~13_sumout\)))) # (\CPU|DECODER1|saida~0_combout\ & (\AND_SW0_7|saida~1_combout\ & (\SW[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110101011000000011010101100000001101010110000000110101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER1|ALT_INV_saida~0_combout\,
	datab => \AND_SW0_7|ALT_INV_saida~1_combout\,
	datac => \ALT_INV_SW[3]~input_o\,
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
	d => VCC,
	asdata => \CPU|ULA1|saida[3]~3_combout\,
	sload => VCC,
	ena => \CPU|DECODER1|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(3));

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

\REG_HEX0|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(3),
	ena => \AND_HEX0|saida~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX0|DOUT\(3));

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

\REG_HEX0|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(1),
	ena => \AND_HEX0|saida~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX0|DOUT\(1));

\DECODER_7SEG_0|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_7SEG_0|rascSaida7seg[0]~0_combout\ = (!\REG_HEX0|DOUT\(3) & (!\REG_HEX0|DOUT\(1) & (!\REG_HEX0|DOUT\(0) $ (!\REG_HEX0|DOUT\(2))))) # (\REG_HEX0|DOUT\(3) & (\REG_HEX0|DOUT\(0) & (!\REG_HEX0|DOUT\(2) $ (!\REG_HEX0|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100010000010010010001000001001001000100000100100100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX0|ALT_INV_DOUT\(0),
	datab => \REG_HEX0|ALT_INV_DOUT\(3),
	datac => \REG_HEX0|ALT_INV_DOUT\(2),
	datad => \REG_HEX0|ALT_INV_DOUT\(1),
	combout => \DECODER_7SEG_0|rascSaida7seg[0]~0_combout\);

\DECODER_7SEG_0|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_7SEG_0|rascSaida7seg[1]~1_combout\ = (!\REG_HEX0|DOUT\(3) & (\REG_HEX0|DOUT\(2) & (!\REG_HEX0|DOUT\(0) $ (!\REG_HEX0|DOUT\(1))))) # (\REG_HEX0|DOUT\(3) & ((!\REG_HEX0|DOUT\(0) & (\REG_HEX0|DOUT\(2))) # (\REG_HEX0|DOUT\(0) & 
-- ((\REG_HEX0|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000011011000001100001101100000110000110110000011000011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX0|ALT_INV_DOUT\(0),
	datab => \REG_HEX0|ALT_INV_DOUT\(3),
	datac => \REG_HEX0|ALT_INV_DOUT\(2),
	datad => \REG_HEX0|ALT_INV_DOUT\(1),
	combout => \DECODER_7SEG_0|rascSaida7seg[1]~1_combout\);

\DECODER_7SEG_0|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_7SEG_0|rascSaida7seg[2]~2_combout\ = (!\REG_HEX0|DOUT\(3) & (!\REG_HEX0|DOUT\(0) & (!\REG_HEX0|DOUT\(2) & \REG_HEX0|DOUT\(1)))) # (\REG_HEX0|DOUT\(3) & (\REG_HEX0|DOUT\(2) & ((!\REG_HEX0|DOUT\(0)) # (\REG_HEX0|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010000011000000101000001100000010100000110000001010000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX0|ALT_INV_DOUT\(0),
	datab => \REG_HEX0|ALT_INV_DOUT\(3),
	datac => \REG_HEX0|ALT_INV_DOUT\(2),
	datad => \REG_HEX0|ALT_INV_DOUT\(1),
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
	lut_mask => "0010000011101010001000001110101000100000111010100010000011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX0|ALT_INV_DOUT\(3),
	datab => \REG_HEX0|ALT_INV_DOUT\(2),
	datac => \REG_HEX0|ALT_INV_DOUT\(1),
	datad => \REG_HEX0|ALT_INV_DOUT\(0),
	combout => \DECODER_7SEG_0|rascSaida7seg[4]~4_combout\);

\DECODER_7SEG_0|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_7SEG_0|rascSaida7seg[5]~5_combout\ = (!\REG_HEX0|DOUT\(0) & (!\REG_HEX0|DOUT\(2) & (\REG_HEX0|DOUT\(1) & !\REG_HEX0|DOUT\(3)))) # (\REG_HEX0|DOUT\(0) & (!\REG_HEX0|DOUT\(3) $ (((\REG_HEX0|DOUT\(2) & !\REG_HEX0|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110100010000010011010001000001001101000100000100110100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX0|ALT_INV_DOUT\(0),
	datab => \REG_HEX0|ALT_INV_DOUT\(2),
	datac => \REG_HEX0|ALT_INV_DOUT\(1),
	datad => \REG_HEX0|ALT_INV_DOUT\(3),
	combout => \DECODER_7SEG_0|rascSaida7seg[5]~5_combout\);

\DECODER_7SEG_0|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_7SEG_0|rascSaida7seg[6]~6_combout\ = (!\REG_HEX0|DOUT\(0) & (!\REG_HEX0|DOUT\(1) & (!\REG_HEX0|DOUT\(3) $ (\REG_HEX0|DOUT\(2))))) # (\REG_HEX0|DOUT\(0) & (!\REG_HEX0|DOUT\(3) & (!\REG_HEX0|DOUT\(2) $ (\REG_HEX0|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001000000100110000100000010011000010000001001100001000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX0|ALT_INV_DOUT\(0),
	datab => \REG_HEX0|ALT_INV_DOUT\(3),
	datac => \REG_HEX0|ALT_INV_DOUT\(2),
	datad => \REG_HEX0|ALT_INV_DOUT\(1),
	combout => \DECODER_7SEG_0|rascSaida7seg[6]~6_combout\);

\AND_HEX1|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AND_HEX1|saida~0_combout\ = (\AND_HEX0|saida~0_combout\ & (!\ROM|memROM~6_combout\ & (\ROM|memROM~7_combout\ & \ROM|memROM~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \AND_HEX0|ALT_INV_saida~0_combout\,
	datab => \ROM|ALT_INV_memROM~6_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \ROM|ALT_INV_memROM~8_combout\,
	combout => \AND_HEX1|saida~0_combout\);

\REG_HEX1|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(0),
	ena => \AND_HEX1|saida~0_combout\,
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
	ena => \AND_HEX1|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX1|DOUT\(3));

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

\REG_HEX1|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(1),
	ena => \AND_HEX1|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX1|DOUT\(1));

\DECODER_7SEG_1|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_7SEG_1|rascSaida7seg[0]~0_combout\ = (!\REG_HEX1|DOUT\(3) & (!\REG_HEX1|DOUT\(1) & (!\REG_HEX1|DOUT\(0) $ (!\REG_HEX1|DOUT\(2))))) # (\REG_HEX1|DOUT\(3) & (\REG_HEX1|DOUT\(0) & (!\REG_HEX1|DOUT\(2) $ (!\REG_HEX1|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100010000010010010001000001001001000100000100100100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX1|ALT_INV_DOUT\(0),
	datab => \REG_HEX1|ALT_INV_DOUT\(3),
	datac => \REG_HEX1|ALT_INV_DOUT\(2),
	datad => \REG_HEX1|ALT_INV_DOUT\(1),
	combout => \DECODER_7SEG_1|rascSaida7seg[0]~0_combout\);

\DECODER_7SEG_1|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_7SEG_1|rascSaida7seg[1]~1_combout\ = (!\REG_HEX1|DOUT\(3) & (\REG_HEX1|DOUT\(2) & (!\REG_HEX1|DOUT\(0) $ (!\REG_HEX1|DOUT\(1))))) # (\REG_HEX1|DOUT\(3) & ((!\REG_HEX1|DOUT\(0) & (\REG_HEX1|DOUT\(2))) # (\REG_HEX1|DOUT\(0) & 
-- ((\REG_HEX1|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000011011000001100001101100000110000110110000011000011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX1|ALT_INV_DOUT\(0),
	datab => \REG_HEX1|ALT_INV_DOUT\(3),
	datac => \REG_HEX1|ALT_INV_DOUT\(2),
	datad => \REG_HEX1|ALT_INV_DOUT\(1),
	combout => \DECODER_7SEG_1|rascSaida7seg[1]~1_combout\);

\DECODER_7SEG_1|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_7SEG_1|rascSaida7seg[2]~2_combout\ = (!\REG_HEX1|DOUT\(3) & (!\REG_HEX1|DOUT\(0) & (!\REG_HEX1|DOUT\(2) & \REG_HEX1|DOUT\(1)))) # (\REG_HEX1|DOUT\(3) & (\REG_HEX1|DOUT\(2) & ((!\REG_HEX1|DOUT\(0)) # (\REG_HEX1|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010000011000000101000001100000010100000110000001010000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX1|ALT_INV_DOUT\(0),
	datab => \REG_HEX1|ALT_INV_DOUT\(3),
	datac => \REG_HEX1|ALT_INV_DOUT\(2),
	datad => \REG_HEX1|ALT_INV_DOUT\(1),
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
	lut_mask => "0010000011101010001000001110101000100000111010100010000011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX1|ALT_INV_DOUT\(3),
	datab => \REG_HEX1|ALT_INV_DOUT\(2),
	datac => \REG_HEX1|ALT_INV_DOUT\(1),
	datad => \REG_HEX1|ALT_INV_DOUT\(0),
	combout => \DECODER_7SEG_1|rascSaida7seg[4]~4_combout\);

\DECODER_7SEG_1|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_7SEG_1|rascSaida7seg[5]~5_combout\ = (!\REG_HEX1|DOUT\(0) & (!\REG_HEX1|DOUT\(2) & (\REG_HEX1|DOUT\(1) & !\REG_HEX1|DOUT\(3)))) # (\REG_HEX1|DOUT\(0) & (!\REG_HEX1|DOUT\(3) $ (((\REG_HEX1|DOUT\(2) & !\REG_HEX1|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110100010000010011010001000001001101000100000100110100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX1|ALT_INV_DOUT\(0),
	datab => \REG_HEX1|ALT_INV_DOUT\(2),
	datac => \REG_HEX1|ALT_INV_DOUT\(1),
	datad => \REG_HEX1|ALT_INV_DOUT\(3),
	combout => \DECODER_7SEG_1|rascSaida7seg[5]~5_combout\);

\DECODER_7SEG_1|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_7SEG_1|rascSaida7seg[6]~6_combout\ = (!\REG_HEX1|DOUT\(0) & (!\REG_HEX1|DOUT\(1) & (!\REG_HEX1|DOUT\(3) $ (\REG_HEX1|DOUT\(2))))) # (\REG_HEX1|DOUT\(0) & (!\REG_HEX1|DOUT\(3) & (!\REG_HEX1|DOUT\(2) $ (\REG_HEX1|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001000000100110000100000010011000010000001001100001000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX1|ALT_INV_DOUT\(0),
	datab => \REG_HEX1|ALT_INV_DOUT\(3),
	datac => \REG_HEX1|ALT_INV_DOUT\(2),
	datad => \REG_HEX1|ALT_INV_DOUT\(1),
	combout => \DECODER_7SEG_1|rascSaida7seg[6]~6_combout\);

\AND_HEX2|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AND_HEX2|saida~0_combout\ = (\AND_HEX0|saida~0_combout\ & (\ROM|memROM~6_combout\ & (\ROM|memROM~7_combout\ & !\ROM|memROM~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000010000000000000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \AND_HEX0|ALT_INV_saida~0_combout\,
	datab => \ROM|ALT_INV_memROM~6_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \ROM|ALT_INV_memROM~8_combout\,
	combout => \AND_HEX2|saida~0_combout\);

\REG_HEX2|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(0),
	ena => \AND_HEX2|saida~0_combout\,
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
	ena => \AND_HEX2|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX2|DOUT\(3));

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

\REG_HEX2|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(1),
	ena => \AND_HEX2|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX2|DOUT\(1));

\DECODER_7SEG_2|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_7SEG_2|rascSaida7seg[0]~0_combout\ = (!\REG_HEX2|DOUT\(3) & (!\REG_HEX2|DOUT\(1) & (!\REG_HEX2|DOUT\(0) $ (!\REG_HEX2|DOUT\(2))))) # (\REG_HEX2|DOUT\(3) & (\REG_HEX2|DOUT\(0) & (!\REG_HEX2|DOUT\(2) $ (!\REG_HEX2|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100010000010010010001000001001001000100000100100100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX2|ALT_INV_DOUT\(0),
	datab => \REG_HEX2|ALT_INV_DOUT\(3),
	datac => \REG_HEX2|ALT_INV_DOUT\(2),
	datad => \REG_HEX2|ALT_INV_DOUT\(1),
	combout => \DECODER_7SEG_2|rascSaida7seg[0]~0_combout\);

\DECODER_7SEG_2|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_7SEG_2|rascSaida7seg[1]~1_combout\ = (!\REG_HEX2|DOUT\(3) & (\REG_HEX2|DOUT\(2) & (!\REG_HEX2|DOUT\(0) $ (!\REG_HEX2|DOUT\(1))))) # (\REG_HEX2|DOUT\(3) & ((!\REG_HEX2|DOUT\(0) & (\REG_HEX2|DOUT\(2))) # (\REG_HEX2|DOUT\(0) & 
-- ((\REG_HEX2|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000011011000001100001101100000110000110110000011000011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX2|ALT_INV_DOUT\(0),
	datab => \REG_HEX2|ALT_INV_DOUT\(3),
	datac => \REG_HEX2|ALT_INV_DOUT\(2),
	datad => \REG_HEX2|ALT_INV_DOUT\(1),
	combout => \DECODER_7SEG_2|rascSaida7seg[1]~1_combout\);

\DECODER_7SEG_2|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_7SEG_2|rascSaida7seg[2]~2_combout\ = (!\REG_HEX2|DOUT\(3) & (!\REG_HEX2|DOUT\(0) & (!\REG_HEX2|DOUT\(2) & \REG_HEX2|DOUT\(1)))) # (\REG_HEX2|DOUT\(3) & (\REG_HEX2|DOUT\(2) & ((!\REG_HEX2|DOUT\(0)) # (\REG_HEX2|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010000011000000101000001100000010100000110000001010000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX2|ALT_INV_DOUT\(0),
	datab => \REG_HEX2|ALT_INV_DOUT\(3),
	datac => \REG_HEX2|ALT_INV_DOUT\(2),
	datad => \REG_HEX2|ALT_INV_DOUT\(1),
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
	lut_mask => "0010000011101010001000001110101000100000111010100010000011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX2|ALT_INV_DOUT\(3),
	datab => \REG_HEX2|ALT_INV_DOUT\(2),
	datac => \REG_HEX2|ALT_INV_DOUT\(1),
	datad => \REG_HEX2|ALT_INV_DOUT\(0),
	combout => \DECODER_7SEG_2|rascSaida7seg[4]~4_combout\);

\DECODER_7SEG_2|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_7SEG_2|rascSaida7seg[5]~5_combout\ = (!\REG_HEX2|DOUT\(0) & (!\REG_HEX2|DOUT\(2) & (\REG_HEX2|DOUT\(1) & !\REG_HEX2|DOUT\(3)))) # (\REG_HEX2|DOUT\(0) & (!\REG_HEX2|DOUT\(3) $ (((\REG_HEX2|DOUT\(2) & !\REG_HEX2|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110100010000010011010001000001001101000100000100110100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX2|ALT_INV_DOUT\(0),
	datab => \REG_HEX2|ALT_INV_DOUT\(2),
	datac => \REG_HEX2|ALT_INV_DOUT\(1),
	datad => \REG_HEX2|ALT_INV_DOUT\(3),
	combout => \DECODER_7SEG_2|rascSaida7seg[5]~5_combout\);

\DECODER_7SEG_2|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_7SEG_2|rascSaida7seg[6]~6_combout\ = (!\REG_HEX2|DOUT\(0) & (!\REG_HEX2|DOUT\(1) & (!\REG_HEX2|DOUT\(3) $ (\REG_HEX2|DOUT\(2))))) # (\REG_HEX2|DOUT\(0) & (!\REG_HEX2|DOUT\(3) & (!\REG_HEX2|DOUT\(2) $ (\REG_HEX2|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001000000100110000100000010011000010000001001100001000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX2|ALT_INV_DOUT\(0),
	datab => \REG_HEX2|ALT_INV_DOUT\(3),
	datac => \REG_HEX2|ALT_INV_DOUT\(2),
	datad => \REG_HEX2|ALT_INV_DOUT\(1),
	combout => \DECODER_7SEG_2|rascSaida7seg[6]~6_combout\);

\AND_HEX3|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AND_HEX3|saida~0_combout\ = (\AND_HEX0|saida~0_combout\ & (\ROM|memROM~6_combout\ & (\ROM|memROM~7_combout\ & \ROM|memROM~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \AND_HEX0|ALT_INV_saida~0_combout\,
	datab => \ROM|ALT_INV_memROM~6_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \ROM|ALT_INV_memROM~8_combout\,
	combout => \AND_HEX3|saida~0_combout\);

\REG_HEX3|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(0),
	ena => \AND_HEX3|saida~0_combout\,
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
	ena => \AND_HEX3|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX3|DOUT\(3));

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

\REG_HEX3|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(1),
	ena => \AND_HEX3|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX3|DOUT\(1));

\DECODER_7SEG_3|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_7SEG_3|rascSaida7seg[0]~0_combout\ = (!\REG_HEX3|DOUT\(3) & (!\REG_HEX3|DOUT\(1) & (!\REG_HEX3|DOUT\(0) $ (!\REG_HEX3|DOUT\(2))))) # (\REG_HEX3|DOUT\(3) & (\REG_HEX3|DOUT\(0) & (!\REG_HEX3|DOUT\(2) $ (!\REG_HEX3|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100010000010010010001000001001001000100000100100100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX3|ALT_INV_DOUT\(0),
	datab => \REG_HEX3|ALT_INV_DOUT\(3),
	datac => \REG_HEX3|ALT_INV_DOUT\(2),
	datad => \REG_HEX3|ALT_INV_DOUT\(1),
	combout => \DECODER_7SEG_3|rascSaida7seg[0]~0_combout\);

\DECODER_7SEG_3|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_7SEG_3|rascSaida7seg[1]~1_combout\ = (!\REG_HEX3|DOUT\(3) & (\REG_HEX3|DOUT\(2) & (!\REG_HEX3|DOUT\(0) $ (!\REG_HEX3|DOUT\(1))))) # (\REG_HEX3|DOUT\(3) & ((!\REG_HEX3|DOUT\(0) & (\REG_HEX3|DOUT\(2))) # (\REG_HEX3|DOUT\(0) & 
-- ((\REG_HEX3|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000011011000001100001101100000110000110110000011000011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX3|ALT_INV_DOUT\(0),
	datab => \REG_HEX3|ALT_INV_DOUT\(3),
	datac => \REG_HEX3|ALT_INV_DOUT\(2),
	datad => \REG_HEX3|ALT_INV_DOUT\(1),
	combout => \DECODER_7SEG_3|rascSaida7seg[1]~1_combout\);

\DECODER_7SEG_3|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_7SEG_3|rascSaida7seg[2]~2_combout\ = (!\REG_HEX3|DOUT\(3) & (!\REG_HEX3|DOUT\(0) & (!\REG_HEX3|DOUT\(2) & \REG_HEX3|DOUT\(1)))) # (\REG_HEX3|DOUT\(3) & (\REG_HEX3|DOUT\(2) & ((!\REG_HEX3|DOUT\(0)) # (\REG_HEX3|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010000011000000101000001100000010100000110000001010000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX3|ALT_INV_DOUT\(0),
	datab => \REG_HEX3|ALT_INV_DOUT\(3),
	datac => \REG_HEX3|ALT_INV_DOUT\(2),
	datad => \REG_HEX3|ALT_INV_DOUT\(1),
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
	lut_mask => "0010000011101010001000001110101000100000111010100010000011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX3|ALT_INV_DOUT\(3),
	datab => \REG_HEX3|ALT_INV_DOUT\(2),
	datac => \REG_HEX3|ALT_INV_DOUT\(1),
	datad => \REG_HEX3|ALT_INV_DOUT\(0),
	combout => \DECODER_7SEG_3|rascSaida7seg[4]~4_combout\);

\DECODER_7SEG_3|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_7SEG_3|rascSaida7seg[5]~5_combout\ = (!\REG_HEX3|DOUT\(0) & (!\REG_HEX3|DOUT\(2) & (\REG_HEX3|DOUT\(1) & !\REG_HEX3|DOUT\(3)))) # (\REG_HEX3|DOUT\(0) & (!\REG_HEX3|DOUT\(3) $ (((\REG_HEX3|DOUT\(2) & !\REG_HEX3|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110100010000010011010001000001001101000100000100110100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX3|ALT_INV_DOUT\(0),
	datab => \REG_HEX3|ALT_INV_DOUT\(2),
	datac => \REG_HEX3|ALT_INV_DOUT\(1),
	datad => \REG_HEX3|ALT_INV_DOUT\(3),
	combout => \DECODER_7SEG_3|rascSaida7seg[5]~5_combout\);

\DECODER_7SEG_3|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_7SEG_3|rascSaida7seg[6]~6_combout\ = (!\REG_HEX3|DOUT\(0) & (!\REG_HEX3|DOUT\(1) & (!\REG_HEX3|DOUT\(3) $ (\REG_HEX3|DOUT\(2))))) # (\REG_HEX3|DOUT\(0) & (!\REG_HEX3|DOUT\(3) & (!\REG_HEX3|DOUT\(2) $ (\REG_HEX3|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001000000100110000100000010011000010000001001100001000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX3|ALT_INV_DOUT\(0),
	datab => \REG_HEX3|ALT_INV_DOUT\(3),
	datac => \REG_HEX3|ALT_INV_DOUT\(2),
	datad => \REG_HEX3|ALT_INV_DOUT\(1),
	combout => \DECODER_7SEG_3|rascSaida7seg[6]~6_combout\);

\AND_HEX0|saida~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \AND_HEX0|saida~3_combout\ = (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(4) & \ROM|memROM~1_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
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

\REG_HEX4|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(0),
	ena => \AND_HEX4|saida~0_combout\,
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
	ena => \AND_HEX4|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX4|DOUT\(3));

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

\REG_HEX4|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(1),
	ena => \AND_HEX4|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX4|DOUT\(1));

\DECODER_7SEG_4|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_7SEG_4|rascSaida7seg[0]~0_combout\ = (!\REG_HEX4|DOUT\(3) & (!\REG_HEX4|DOUT\(1) & (!\REG_HEX4|DOUT\(0) $ (!\REG_HEX4|DOUT\(2))))) # (\REG_HEX4|DOUT\(3) & (\REG_HEX4|DOUT\(0) & (!\REG_HEX4|DOUT\(2) $ (!\REG_HEX4|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100010000010010010001000001001001000100000100100100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX4|ALT_INV_DOUT\(0),
	datab => \REG_HEX4|ALT_INV_DOUT\(3),
	datac => \REG_HEX4|ALT_INV_DOUT\(2),
	datad => \REG_HEX4|ALT_INV_DOUT\(1),
	combout => \DECODER_7SEG_4|rascSaida7seg[0]~0_combout\);

\DECODER_7SEG_4|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_7SEG_4|rascSaida7seg[1]~1_combout\ = (!\REG_HEX4|DOUT\(3) & (\REG_HEX4|DOUT\(2) & (!\REG_HEX4|DOUT\(0) $ (!\REG_HEX4|DOUT\(1))))) # (\REG_HEX4|DOUT\(3) & ((!\REG_HEX4|DOUT\(0) & (\REG_HEX4|DOUT\(2))) # (\REG_HEX4|DOUT\(0) & 
-- ((\REG_HEX4|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000011011000001100001101100000110000110110000011000011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX4|ALT_INV_DOUT\(0),
	datab => \REG_HEX4|ALT_INV_DOUT\(3),
	datac => \REG_HEX4|ALT_INV_DOUT\(2),
	datad => \REG_HEX4|ALT_INV_DOUT\(1),
	combout => \DECODER_7SEG_4|rascSaida7seg[1]~1_combout\);

\DECODER_7SEG_4|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_7SEG_4|rascSaida7seg[2]~2_combout\ = (!\REG_HEX4|DOUT\(3) & (!\REG_HEX4|DOUT\(0) & (!\REG_HEX4|DOUT\(2) & \REG_HEX4|DOUT\(1)))) # (\REG_HEX4|DOUT\(3) & (\REG_HEX4|DOUT\(2) & ((!\REG_HEX4|DOUT\(0)) # (\REG_HEX4|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010000011000000101000001100000010100000110000001010000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX4|ALT_INV_DOUT\(0),
	datab => \REG_HEX4|ALT_INV_DOUT\(3),
	datac => \REG_HEX4|ALT_INV_DOUT\(2),
	datad => \REG_HEX4|ALT_INV_DOUT\(1),
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
	lut_mask => "0010000011101010001000001110101000100000111010100010000011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX4|ALT_INV_DOUT\(3),
	datab => \REG_HEX4|ALT_INV_DOUT\(2),
	datac => \REG_HEX4|ALT_INV_DOUT\(1),
	datad => \REG_HEX4|ALT_INV_DOUT\(0),
	combout => \DECODER_7SEG_4|rascSaida7seg[4]~4_combout\);

\DECODER_7SEG_4|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_7SEG_4|rascSaida7seg[5]~5_combout\ = (!\REG_HEX4|DOUT\(0) & (!\REG_HEX4|DOUT\(2) & (\REG_HEX4|DOUT\(1) & !\REG_HEX4|DOUT\(3)))) # (\REG_HEX4|DOUT\(0) & (!\REG_HEX4|DOUT\(3) $ (((\REG_HEX4|DOUT\(2) & !\REG_HEX4|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110100010000010011010001000001001101000100000100110100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX4|ALT_INV_DOUT\(0),
	datab => \REG_HEX4|ALT_INV_DOUT\(2),
	datac => \REG_HEX4|ALT_INV_DOUT\(1),
	datad => \REG_HEX4|ALT_INV_DOUT\(3),
	combout => \DECODER_7SEG_4|rascSaida7seg[5]~5_combout\);

\DECODER_7SEG_4|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_7SEG_4|rascSaida7seg[6]~6_combout\ = (!\REG_HEX4|DOUT\(0) & (!\REG_HEX4|DOUT\(1) & (!\REG_HEX4|DOUT\(3) $ (\REG_HEX4|DOUT\(2))))) # (\REG_HEX4|DOUT\(0) & (!\REG_HEX4|DOUT\(3) & (!\REG_HEX4|DOUT\(2) $ (\REG_HEX4|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001000000100110000100000010011000010000001001100001000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX4|ALT_INV_DOUT\(0),
	datab => \REG_HEX4|ALT_INV_DOUT\(3),
	datac => \REG_HEX4|ALT_INV_DOUT\(2),
	datad => \REG_HEX4|ALT_INV_DOUT\(1),
	combout => \DECODER_7SEG_4|rascSaida7seg[6]~6_combout\);

\AND_HEX5|saida\ : cyclonev_lcell_comb
-- Equation(s):
-- \AND_HEX5|saida~combout\ = ( \ROM|memROM~8_combout\ & ( (\ROM|memROM~9_combout\ & (\AND_HEX0|saida~3_combout\ & (!\ROM|memROM~6_combout\ & \ROM|memROM~7_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
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

\REG_HEX5|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(0),
	ena => \AND_HEX5|saida~combout\,
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
	ena => \AND_HEX5|saida~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX5|DOUT\(3));

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

\REG_HEX5|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(1),
	ena => \AND_HEX5|saida~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX5|DOUT\(1));

\DECODER_7SEG_5|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_7SEG_5|rascSaida7seg[0]~0_combout\ = (!\REG_HEX5|DOUT\(3) & (!\REG_HEX5|DOUT\(1) & (!\REG_HEX5|DOUT\(0) $ (!\REG_HEX5|DOUT\(2))))) # (\REG_HEX5|DOUT\(3) & (\REG_HEX5|DOUT\(0) & (!\REG_HEX5|DOUT\(2) $ (!\REG_HEX5|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100010000010010010001000001001001000100000100100100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX5|ALT_INV_DOUT\(0),
	datab => \REG_HEX5|ALT_INV_DOUT\(3),
	datac => \REG_HEX5|ALT_INV_DOUT\(2),
	datad => \REG_HEX5|ALT_INV_DOUT\(1),
	combout => \DECODER_7SEG_5|rascSaida7seg[0]~0_combout\);

\DECODER_7SEG_5|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_7SEG_5|rascSaida7seg[1]~1_combout\ = (!\REG_HEX5|DOUT\(3) & (\REG_HEX5|DOUT\(2) & (!\REG_HEX5|DOUT\(0) $ (!\REG_HEX5|DOUT\(1))))) # (\REG_HEX5|DOUT\(3) & ((!\REG_HEX5|DOUT\(0) & (\REG_HEX5|DOUT\(2))) # (\REG_HEX5|DOUT\(0) & 
-- ((\REG_HEX5|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000011011000001100001101100000110000110110000011000011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX5|ALT_INV_DOUT\(0),
	datab => \REG_HEX5|ALT_INV_DOUT\(3),
	datac => \REG_HEX5|ALT_INV_DOUT\(2),
	datad => \REG_HEX5|ALT_INV_DOUT\(1),
	combout => \DECODER_7SEG_5|rascSaida7seg[1]~1_combout\);

\DECODER_7SEG_5|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_7SEG_5|rascSaida7seg[2]~2_combout\ = (!\REG_HEX5|DOUT\(3) & (!\REG_HEX5|DOUT\(0) & (!\REG_HEX5|DOUT\(2) & \REG_HEX5|DOUT\(1)))) # (\REG_HEX5|DOUT\(3) & (\REG_HEX5|DOUT\(2) & ((!\REG_HEX5|DOUT\(0)) # (\REG_HEX5|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010000011000000101000001100000010100000110000001010000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX5|ALT_INV_DOUT\(0),
	datab => \REG_HEX5|ALT_INV_DOUT\(3),
	datac => \REG_HEX5|ALT_INV_DOUT\(2),
	datad => \REG_HEX5|ALT_INV_DOUT\(1),
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
	lut_mask => "0010000011101010001000001110101000100000111010100010000011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX5|ALT_INV_DOUT\(3),
	datab => \REG_HEX5|ALT_INV_DOUT\(2),
	datac => \REG_HEX5|ALT_INV_DOUT\(1),
	datad => \REG_HEX5|ALT_INV_DOUT\(0),
	combout => \DECODER_7SEG_5|rascSaida7seg[4]~4_combout\);

\DECODER_7SEG_5|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_7SEG_5|rascSaida7seg[5]~5_combout\ = (!\REG_HEX5|DOUT\(0) & (!\REG_HEX5|DOUT\(2) & (\REG_HEX5|DOUT\(1) & !\REG_HEX5|DOUT\(3)))) # (\REG_HEX5|DOUT\(0) & (!\REG_HEX5|DOUT\(3) $ (((\REG_HEX5|DOUT\(2) & !\REG_HEX5|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110100010000010011010001000001001101000100000100110100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX5|ALT_INV_DOUT\(0),
	datab => \REG_HEX5|ALT_INV_DOUT\(2),
	datac => \REG_HEX5|ALT_INV_DOUT\(1),
	datad => \REG_HEX5|ALT_INV_DOUT\(3),
	combout => \DECODER_7SEG_5|rascSaida7seg[5]~5_combout\);

\DECODER_7SEG_5|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_7SEG_5|rascSaida7seg[6]~6_combout\ = (!\REG_HEX5|DOUT\(0) & (!\REG_HEX5|DOUT\(1) & (!\REG_HEX5|DOUT\(3) $ (\REG_HEX5|DOUT\(2))))) # (\REG_HEX5|DOUT\(0) & (!\REG_HEX5|DOUT\(3) & (!\REG_HEX5|DOUT\(2) $ (\REG_HEX5|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001000000100110000100000010011000010000001001100001000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX5|ALT_INV_DOUT\(0),
	datab => \REG_HEX5|ALT_INV_DOUT\(3),
	datac => \REG_HEX5|ALT_INV_DOUT\(2),
	datad => \REG_HEX5|ALT_INV_DOUT\(1),
	combout => \DECODER_7SEG_5|rascSaida7seg[6]~6_combout\);

\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);
END structure;


