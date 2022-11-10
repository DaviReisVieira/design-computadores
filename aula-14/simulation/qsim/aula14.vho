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

-- DATE "11/10/2022 07:35:21"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
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
	DATA_OUT : OUT std_logic_vector(31 DOWNTO 0);
	KEY : IN std_logic_vector(3 DOWNTO 0);
	inspectR0 : OUT std_logic_vector(31 DOWNTO 0);
	inspectR1 : OUT std_logic_vector(31 DOWNTO 0);
	inspectR2 : OUT std_logic_vector(31 DOWNTO 0);
	inspectEndRS : OUT std_logic_vector(4 DOWNTO 0);
	inspectEndRT : OUT std_logic_vector(4 DOWNTO 0);
	inspectEndRD : OUT std_logic_vector(4 DOWNTO 0);
	inspectInstru : OUT std_logic_vector(31 DOWNTO 0);
	inspectPC : OUT std_logic_vector(31 DOWNTO 0)
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
SIGNAL ww_DATA_OUT : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_inspectR0 : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_inspectR1 : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_inspectR2 : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_inspectEndRS : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_inspectEndRT : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_inspectEndRD : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_inspectInstru : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_inspectPC : std_logic_vector(31 DOWNTO 0);
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \DATA_OUT[0]~output_o\ : std_logic;
SIGNAL \DATA_OUT[1]~output_o\ : std_logic;
SIGNAL \DATA_OUT[2]~output_o\ : std_logic;
SIGNAL \DATA_OUT[3]~output_o\ : std_logic;
SIGNAL \DATA_OUT[4]~output_o\ : std_logic;
SIGNAL \DATA_OUT[5]~output_o\ : std_logic;
SIGNAL \DATA_OUT[6]~output_o\ : std_logic;
SIGNAL \DATA_OUT[7]~output_o\ : std_logic;
SIGNAL \DATA_OUT[8]~output_o\ : std_logic;
SIGNAL \DATA_OUT[9]~output_o\ : std_logic;
SIGNAL \DATA_OUT[10]~output_o\ : std_logic;
SIGNAL \DATA_OUT[11]~output_o\ : std_logic;
SIGNAL \DATA_OUT[12]~output_o\ : std_logic;
SIGNAL \DATA_OUT[13]~output_o\ : std_logic;
SIGNAL \DATA_OUT[14]~output_o\ : std_logic;
SIGNAL \DATA_OUT[15]~output_o\ : std_logic;
SIGNAL \DATA_OUT[16]~output_o\ : std_logic;
SIGNAL \DATA_OUT[17]~output_o\ : std_logic;
SIGNAL \DATA_OUT[18]~output_o\ : std_logic;
SIGNAL \DATA_OUT[19]~output_o\ : std_logic;
SIGNAL \DATA_OUT[20]~output_o\ : std_logic;
SIGNAL \DATA_OUT[21]~output_o\ : std_logic;
SIGNAL \DATA_OUT[22]~output_o\ : std_logic;
SIGNAL \DATA_OUT[23]~output_o\ : std_logic;
SIGNAL \DATA_OUT[24]~output_o\ : std_logic;
SIGNAL \DATA_OUT[25]~output_o\ : std_logic;
SIGNAL \DATA_OUT[26]~output_o\ : std_logic;
SIGNAL \DATA_OUT[27]~output_o\ : std_logic;
SIGNAL \DATA_OUT[28]~output_o\ : std_logic;
SIGNAL \DATA_OUT[29]~output_o\ : std_logic;
SIGNAL \DATA_OUT[30]~output_o\ : std_logic;
SIGNAL \DATA_OUT[31]~output_o\ : std_logic;
SIGNAL \inspectR0[0]~output_o\ : std_logic;
SIGNAL \inspectR0[1]~output_o\ : std_logic;
SIGNAL \inspectR0[2]~output_o\ : std_logic;
SIGNAL \inspectR0[3]~output_o\ : std_logic;
SIGNAL \inspectR0[4]~output_o\ : std_logic;
SIGNAL \inspectR0[5]~output_o\ : std_logic;
SIGNAL \inspectR0[6]~output_o\ : std_logic;
SIGNAL \inspectR0[7]~output_o\ : std_logic;
SIGNAL \inspectR0[8]~output_o\ : std_logic;
SIGNAL \inspectR0[9]~output_o\ : std_logic;
SIGNAL \inspectR0[10]~output_o\ : std_logic;
SIGNAL \inspectR0[11]~output_o\ : std_logic;
SIGNAL \inspectR0[12]~output_o\ : std_logic;
SIGNAL \inspectR0[13]~output_o\ : std_logic;
SIGNAL \inspectR0[14]~output_o\ : std_logic;
SIGNAL \inspectR0[15]~output_o\ : std_logic;
SIGNAL \inspectR0[16]~output_o\ : std_logic;
SIGNAL \inspectR0[17]~output_o\ : std_logic;
SIGNAL \inspectR0[18]~output_o\ : std_logic;
SIGNAL \inspectR0[19]~output_o\ : std_logic;
SIGNAL \inspectR0[20]~output_o\ : std_logic;
SIGNAL \inspectR0[21]~output_o\ : std_logic;
SIGNAL \inspectR0[22]~output_o\ : std_logic;
SIGNAL \inspectR0[23]~output_o\ : std_logic;
SIGNAL \inspectR0[24]~output_o\ : std_logic;
SIGNAL \inspectR0[25]~output_o\ : std_logic;
SIGNAL \inspectR0[26]~output_o\ : std_logic;
SIGNAL \inspectR0[27]~output_o\ : std_logic;
SIGNAL \inspectR0[28]~output_o\ : std_logic;
SIGNAL \inspectR0[29]~output_o\ : std_logic;
SIGNAL \inspectR0[30]~output_o\ : std_logic;
SIGNAL \inspectR0[31]~output_o\ : std_logic;
SIGNAL \inspectR1[0]~output_o\ : std_logic;
SIGNAL \inspectR1[1]~output_o\ : std_logic;
SIGNAL \inspectR1[2]~output_o\ : std_logic;
SIGNAL \inspectR1[3]~output_o\ : std_logic;
SIGNAL \inspectR1[4]~output_o\ : std_logic;
SIGNAL \inspectR1[5]~output_o\ : std_logic;
SIGNAL \inspectR1[6]~output_o\ : std_logic;
SIGNAL \inspectR1[7]~output_o\ : std_logic;
SIGNAL \inspectR1[8]~output_o\ : std_logic;
SIGNAL \inspectR1[9]~output_o\ : std_logic;
SIGNAL \inspectR1[10]~output_o\ : std_logic;
SIGNAL \inspectR1[11]~output_o\ : std_logic;
SIGNAL \inspectR1[12]~output_o\ : std_logic;
SIGNAL \inspectR1[13]~output_o\ : std_logic;
SIGNAL \inspectR1[14]~output_o\ : std_logic;
SIGNAL \inspectR1[15]~output_o\ : std_logic;
SIGNAL \inspectR1[16]~output_o\ : std_logic;
SIGNAL \inspectR1[17]~output_o\ : std_logic;
SIGNAL \inspectR1[18]~output_o\ : std_logic;
SIGNAL \inspectR1[19]~output_o\ : std_logic;
SIGNAL \inspectR1[20]~output_o\ : std_logic;
SIGNAL \inspectR1[21]~output_o\ : std_logic;
SIGNAL \inspectR1[22]~output_o\ : std_logic;
SIGNAL \inspectR1[23]~output_o\ : std_logic;
SIGNAL \inspectR1[24]~output_o\ : std_logic;
SIGNAL \inspectR1[25]~output_o\ : std_logic;
SIGNAL \inspectR1[26]~output_o\ : std_logic;
SIGNAL \inspectR1[27]~output_o\ : std_logic;
SIGNAL \inspectR1[28]~output_o\ : std_logic;
SIGNAL \inspectR1[29]~output_o\ : std_logic;
SIGNAL \inspectR1[30]~output_o\ : std_logic;
SIGNAL \inspectR1[31]~output_o\ : std_logic;
SIGNAL \inspectR2[0]~output_o\ : std_logic;
SIGNAL \inspectR2[1]~output_o\ : std_logic;
SIGNAL \inspectR2[2]~output_o\ : std_logic;
SIGNAL \inspectR2[3]~output_o\ : std_logic;
SIGNAL \inspectR2[4]~output_o\ : std_logic;
SIGNAL \inspectR2[5]~output_o\ : std_logic;
SIGNAL \inspectR2[6]~output_o\ : std_logic;
SIGNAL \inspectR2[7]~output_o\ : std_logic;
SIGNAL \inspectR2[8]~output_o\ : std_logic;
SIGNAL \inspectR2[9]~output_o\ : std_logic;
SIGNAL \inspectR2[10]~output_o\ : std_logic;
SIGNAL \inspectR2[11]~output_o\ : std_logic;
SIGNAL \inspectR2[12]~output_o\ : std_logic;
SIGNAL \inspectR2[13]~output_o\ : std_logic;
SIGNAL \inspectR2[14]~output_o\ : std_logic;
SIGNAL \inspectR2[15]~output_o\ : std_logic;
SIGNAL \inspectR2[16]~output_o\ : std_logic;
SIGNAL \inspectR2[17]~output_o\ : std_logic;
SIGNAL \inspectR2[18]~output_o\ : std_logic;
SIGNAL \inspectR2[19]~output_o\ : std_logic;
SIGNAL \inspectR2[20]~output_o\ : std_logic;
SIGNAL \inspectR2[21]~output_o\ : std_logic;
SIGNAL \inspectR2[22]~output_o\ : std_logic;
SIGNAL \inspectR2[23]~output_o\ : std_logic;
SIGNAL \inspectR2[24]~output_o\ : std_logic;
SIGNAL \inspectR2[25]~output_o\ : std_logic;
SIGNAL \inspectR2[26]~output_o\ : std_logic;
SIGNAL \inspectR2[27]~output_o\ : std_logic;
SIGNAL \inspectR2[28]~output_o\ : std_logic;
SIGNAL \inspectR2[29]~output_o\ : std_logic;
SIGNAL \inspectR2[30]~output_o\ : std_logic;
SIGNAL \inspectR2[31]~output_o\ : std_logic;
SIGNAL \inspectEndRS[0]~output_o\ : std_logic;
SIGNAL \inspectEndRS[1]~output_o\ : std_logic;
SIGNAL \inspectEndRS[2]~output_o\ : std_logic;
SIGNAL \inspectEndRS[3]~output_o\ : std_logic;
SIGNAL \inspectEndRS[4]~output_o\ : std_logic;
SIGNAL \inspectEndRT[0]~output_o\ : std_logic;
SIGNAL \inspectEndRT[1]~output_o\ : std_logic;
SIGNAL \inspectEndRT[2]~output_o\ : std_logic;
SIGNAL \inspectEndRT[3]~output_o\ : std_logic;
SIGNAL \inspectEndRT[4]~output_o\ : std_logic;
SIGNAL \inspectEndRD[0]~output_o\ : std_logic;
SIGNAL \inspectEndRD[1]~output_o\ : std_logic;
SIGNAL \inspectEndRD[2]~output_o\ : std_logic;
SIGNAL \inspectEndRD[3]~output_o\ : std_logic;
SIGNAL \inspectEndRD[4]~output_o\ : std_logic;
SIGNAL \inspectInstru[0]~output_o\ : std_logic;
SIGNAL \inspectInstru[1]~output_o\ : std_logic;
SIGNAL \inspectInstru[2]~output_o\ : std_logic;
SIGNAL \inspectInstru[3]~output_o\ : std_logic;
SIGNAL \inspectInstru[4]~output_o\ : std_logic;
SIGNAL \inspectInstru[5]~output_o\ : std_logic;
SIGNAL \inspectInstru[6]~output_o\ : std_logic;
SIGNAL \inspectInstru[7]~output_o\ : std_logic;
SIGNAL \inspectInstru[8]~output_o\ : std_logic;
SIGNAL \inspectInstru[9]~output_o\ : std_logic;
SIGNAL \inspectInstru[10]~output_o\ : std_logic;
SIGNAL \inspectInstru[11]~output_o\ : std_logic;
SIGNAL \inspectInstru[12]~output_o\ : std_logic;
SIGNAL \inspectInstru[13]~output_o\ : std_logic;
SIGNAL \inspectInstru[14]~output_o\ : std_logic;
SIGNAL \inspectInstru[15]~output_o\ : std_logic;
SIGNAL \inspectInstru[16]~output_o\ : std_logic;
SIGNAL \inspectInstru[17]~output_o\ : std_logic;
SIGNAL \inspectInstru[18]~output_o\ : std_logic;
SIGNAL \inspectInstru[19]~output_o\ : std_logic;
SIGNAL \inspectInstru[20]~output_o\ : std_logic;
SIGNAL \inspectInstru[21]~output_o\ : std_logic;
SIGNAL \inspectInstru[22]~output_o\ : std_logic;
SIGNAL \inspectInstru[23]~output_o\ : std_logic;
SIGNAL \inspectInstru[24]~output_o\ : std_logic;
SIGNAL \inspectInstru[25]~output_o\ : std_logic;
SIGNAL \inspectInstru[26]~output_o\ : std_logic;
SIGNAL \inspectInstru[27]~output_o\ : std_logic;
SIGNAL \inspectInstru[28]~output_o\ : std_logic;
SIGNAL \inspectInstru[29]~output_o\ : std_logic;
SIGNAL \inspectInstru[30]~output_o\ : std_logic;
SIGNAL \inspectInstru[31]~output_o\ : std_logic;
SIGNAL \inspectPC[0]~output_o\ : std_logic;
SIGNAL \inspectPC[1]~output_o\ : std_logic;
SIGNAL \inspectPC[2]~output_o\ : std_logic;
SIGNAL \inspectPC[3]~output_o\ : std_logic;
SIGNAL \inspectPC[4]~output_o\ : std_logic;
SIGNAL \inspectPC[5]~output_o\ : std_logic;
SIGNAL \inspectPC[6]~output_o\ : std_logic;
SIGNAL \inspectPC[7]~output_o\ : std_logic;
SIGNAL \inspectPC[8]~output_o\ : std_logic;
SIGNAL \inspectPC[9]~output_o\ : std_logic;
SIGNAL \inspectPC[10]~output_o\ : std_logic;
SIGNAL \inspectPC[11]~output_o\ : std_logic;
SIGNAL \inspectPC[12]~output_o\ : std_logic;
SIGNAL \inspectPC[13]~output_o\ : std_logic;
SIGNAL \inspectPC[14]~output_o\ : std_logic;
SIGNAL \inspectPC[15]~output_o\ : std_logic;
SIGNAL \inspectPC[16]~output_o\ : std_logic;
SIGNAL \inspectPC[17]~output_o\ : std_logic;
SIGNAL \inspectPC[18]~output_o\ : std_logic;
SIGNAL \inspectPC[19]~output_o\ : std_logic;
SIGNAL \inspectPC[20]~output_o\ : std_logic;
SIGNAL \inspectPC[21]~output_o\ : std_logic;
SIGNAL \inspectPC[22]~output_o\ : std_logic;
SIGNAL \inspectPC[23]~output_o\ : std_logic;
SIGNAL \inspectPC[24]~output_o\ : std_logic;
SIGNAL \inspectPC[25]~output_o\ : std_logic;
SIGNAL \inspectPC[26]~output_o\ : std_logic;
SIGNAL \inspectPC[27]~output_o\ : std_logic;
SIGNAL \inspectPC[28]~output_o\ : std_logic;
SIGNAL \inspectPC[29]~output_o\ : std_logic;
SIGNAL \inspectPC[30]~output_o\ : std_logic;
SIGNAL \inspectPC[31]~output_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \incrementaPC|Add0~21_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~22\ : std_logic;
SIGNAL \incrementaPC|Add0~17_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~18\ : std_logic;
SIGNAL \incrementaPC|Add0~13_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~14\ : std_logic;
SIGNAL \incrementaPC|Add0~9_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~10\ : std_logic;
SIGNAL \incrementaPC|Add0~5_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~6\ : std_logic;
SIGNAL \incrementaPC|Add0~1_sumout\ : std_logic;
SIGNAL \ROM|memROM~0_combout\ : std_logic;
SIGNAL \ROM|memROM~1_combout\ : std_logic;
SIGNAL \ROM|memROM~2_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~2\ : std_logic;
SIGNAL \incrementaPC|Add0~25_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~26\ : std_logic;
SIGNAL \incrementaPC|Add0~29_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~30\ : std_logic;
SIGNAL \incrementaPC|Add0~33_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~34\ : std_logic;
SIGNAL \incrementaPC|Add0~37_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~38\ : std_logic;
SIGNAL \incrementaPC|Add0~41_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~42\ : std_logic;
SIGNAL \incrementaPC|Add0~45_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~46\ : std_logic;
SIGNAL \incrementaPC|Add0~49_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~50\ : std_logic;
SIGNAL \incrementaPC|Add0~53_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~54\ : std_logic;
SIGNAL \incrementaPC|Add0~57_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~58\ : std_logic;
SIGNAL \incrementaPC|Add0~61_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~62\ : std_logic;
SIGNAL \incrementaPC|Add0~65_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~66\ : std_logic;
SIGNAL \incrementaPC|Add0~69_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~70\ : std_logic;
SIGNAL \incrementaPC|Add0~73_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~74\ : std_logic;
SIGNAL \incrementaPC|Add0~77_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~78\ : std_logic;
SIGNAL \incrementaPC|Add0~81_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~82\ : std_logic;
SIGNAL \incrementaPC|Add0~85_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~86\ : std_logic;
SIGNAL \incrementaPC|Add0~89_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~90\ : std_logic;
SIGNAL \incrementaPC|Add0~93_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~94\ : std_logic;
SIGNAL \incrementaPC|Add0~97_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~98\ : std_logic;
SIGNAL \incrementaPC|Add0~101_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~102\ : std_logic;
SIGNAL \incrementaPC|Add0~105_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~106\ : std_logic;
SIGNAL \incrementaPC|Add0~109_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~110\ : std_logic;
SIGNAL \incrementaPC|Add0~113_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~114\ : std_logic;
SIGNAL \incrementaPC|Add0~117_sumout\ : std_logic;
SIGNAL \ProgramCounter|DOUT\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ProgramCounter|ALT_INV_DOUT\ : std_logic_vector(31 DOWNTO 2);

BEGIN

ww_CLOCK_50 <= CLOCK_50;
DATA_OUT <= ww_DATA_OUT;
ww_KEY <= KEY;
inspectR0 <= ww_inspectR0;
inspectR1 <= ww_inspectR1;
inspectR2 <= ww_inspectR2;
inspectEndRS <= ww_inspectEndRS;
inspectEndRT <= ww_inspectEndRT;
inspectEndRD <= ww_inspectEndRD;
inspectInstru <= ww_inspectInstru;
inspectPC <= ww_inspectPC;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ProgramCounter|ALT_INV_DOUT\(31) <= NOT \ProgramCounter|DOUT\(31);
\ProgramCounter|ALT_INV_DOUT\(30) <= NOT \ProgramCounter|DOUT\(30);
\ProgramCounter|ALT_INV_DOUT\(29) <= NOT \ProgramCounter|DOUT\(29);
\ProgramCounter|ALT_INV_DOUT\(28) <= NOT \ProgramCounter|DOUT\(28);
\ProgramCounter|ALT_INV_DOUT\(27) <= NOT \ProgramCounter|DOUT\(27);
\ProgramCounter|ALT_INV_DOUT\(26) <= NOT \ProgramCounter|DOUT\(26);
\ProgramCounter|ALT_INV_DOUT\(25) <= NOT \ProgramCounter|DOUT\(25);
\ProgramCounter|ALT_INV_DOUT\(24) <= NOT \ProgramCounter|DOUT\(24);
\ProgramCounter|ALT_INV_DOUT\(23) <= NOT \ProgramCounter|DOUT\(23);
\ProgramCounter|ALT_INV_DOUT\(22) <= NOT \ProgramCounter|DOUT\(22);
\ProgramCounter|ALT_INV_DOUT\(21) <= NOT \ProgramCounter|DOUT\(21);
\ProgramCounter|ALT_INV_DOUT\(20) <= NOT \ProgramCounter|DOUT\(20);
\ProgramCounter|ALT_INV_DOUT\(19) <= NOT \ProgramCounter|DOUT\(19);
\ProgramCounter|ALT_INV_DOUT\(18) <= NOT \ProgramCounter|DOUT\(18);
\ProgramCounter|ALT_INV_DOUT\(17) <= NOT \ProgramCounter|DOUT\(17);
\ProgramCounter|ALT_INV_DOUT\(16) <= NOT \ProgramCounter|DOUT\(16);
\ProgramCounter|ALT_INV_DOUT\(15) <= NOT \ProgramCounter|DOUT\(15);
\ProgramCounter|ALT_INV_DOUT\(14) <= NOT \ProgramCounter|DOUT\(14);
\ProgramCounter|ALT_INV_DOUT\(13) <= NOT \ProgramCounter|DOUT\(13);
\ProgramCounter|ALT_INV_DOUT\(12) <= NOT \ProgramCounter|DOUT\(12);
\ProgramCounter|ALT_INV_DOUT\(11) <= NOT \ProgramCounter|DOUT\(11);
\ProgramCounter|ALT_INV_DOUT\(10) <= NOT \ProgramCounter|DOUT\(10);
\ProgramCounter|ALT_INV_DOUT\(9) <= NOT \ProgramCounter|DOUT\(9);
\ProgramCounter|ALT_INV_DOUT\(8) <= NOT \ProgramCounter|DOUT\(8);
\ProgramCounter|ALT_INV_DOUT\(2) <= NOT \ProgramCounter|DOUT\(2);
\ProgramCounter|ALT_INV_DOUT\(3) <= NOT \ProgramCounter|DOUT\(3);
\ProgramCounter|ALT_INV_DOUT\(4) <= NOT \ProgramCounter|DOUT\(4);
\ProgramCounter|ALT_INV_DOUT\(5) <= NOT \ProgramCounter|DOUT\(5);
\ProgramCounter|ALT_INV_DOUT\(6) <= NOT \ProgramCounter|DOUT\(6);
\ProgramCounter|ALT_INV_DOUT\(7) <= NOT \ProgramCounter|DOUT\(7);

\DATA_OUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DATA_OUT[0]~output_o\);

\DATA_OUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DATA_OUT[1]~output_o\);

\DATA_OUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DATA_OUT[2]~output_o\);

\DATA_OUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DATA_OUT[3]~output_o\);

\DATA_OUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DATA_OUT[4]~output_o\);

\DATA_OUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DATA_OUT[5]~output_o\);

\DATA_OUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DATA_OUT[6]~output_o\);

\DATA_OUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DATA_OUT[7]~output_o\);

\DATA_OUT[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DATA_OUT[8]~output_o\);

\DATA_OUT[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DATA_OUT[9]~output_o\);

\DATA_OUT[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DATA_OUT[10]~output_o\);

\DATA_OUT[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DATA_OUT[11]~output_o\);

\DATA_OUT[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DATA_OUT[12]~output_o\);

\DATA_OUT[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DATA_OUT[13]~output_o\);

\DATA_OUT[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DATA_OUT[14]~output_o\);

\DATA_OUT[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DATA_OUT[15]~output_o\);

\DATA_OUT[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DATA_OUT[16]~output_o\);

\DATA_OUT[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DATA_OUT[17]~output_o\);

\DATA_OUT[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DATA_OUT[18]~output_o\);

\DATA_OUT[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DATA_OUT[19]~output_o\);

\DATA_OUT[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DATA_OUT[20]~output_o\);

\DATA_OUT[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DATA_OUT[21]~output_o\);

\DATA_OUT[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DATA_OUT[22]~output_o\);

\DATA_OUT[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DATA_OUT[23]~output_o\);

\DATA_OUT[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DATA_OUT[24]~output_o\);

\DATA_OUT[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DATA_OUT[25]~output_o\);

\DATA_OUT[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DATA_OUT[26]~output_o\);

\DATA_OUT[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DATA_OUT[27]~output_o\);

\DATA_OUT[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DATA_OUT[28]~output_o\);

\DATA_OUT[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DATA_OUT[29]~output_o\);

\DATA_OUT[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DATA_OUT[30]~output_o\);

\DATA_OUT[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DATA_OUT[31]~output_o\);

\inspectR0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectR0[0]~output_o\);

\inspectR0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectR0[1]~output_o\);

\inspectR0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectR0[2]~output_o\);

\inspectR0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectR0[3]~output_o\);

\inspectR0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectR0[4]~output_o\);

\inspectR0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectR0[5]~output_o\);

\inspectR0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectR0[6]~output_o\);

\inspectR0[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectR0[7]~output_o\);

\inspectR0[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectR0[8]~output_o\);

\inspectR0[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectR0[9]~output_o\);

\inspectR0[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectR0[10]~output_o\);

\inspectR0[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectR0[11]~output_o\);

\inspectR0[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectR0[12]~output_o\);

\inspectR0[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectR0[13]~output_o\);

\inspectR0[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectR0[14]~output_o\);

\inspectR0[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectR0[15]~output_o\);

\inspectR0[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectR0[16]~output_o\);

\inspectR0[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectR0[17]~output_o\);

\inspectR0[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectR0[18]~output_o\);

\inspectR0[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectR0[19]~output_o\);

\inspectR0[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectR0[20]~output_o\);

\inspectR0[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectR0[21]~output_o\);

\inspectR0[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectR0[22]~output_o\);

\inspectR0[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectR0[23]~output_o\);

\inspectR0[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectR0[24]~output_o\);

\inspectR0[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectR0[25]~output_o\);

\inspectR0[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectR0[26]~output_o\);

\inspectR0[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectR0[27]~output_o\);

\inspectR0[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectR0[28]~output_o\);

\inspectR0[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectR0[29]~output_o\);

\inspectR0[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectR0[30]~output_o\);

\inspectR0[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectR0[31]~output_o\);

\inspectR1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectR1[0]~output_o\);

\inspectR1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectR1[1]~output_o\);

\inspectR1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectR1[2]~output_o\);

\inspectR1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectR1[3]~output_o\);

\inspectR1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectR1[4]~output_o\);

\inspectR1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectR1[5]~output_o\);

\inspectR1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectR1[6]~output_o\);

\inspectR1[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectR1[7]~output_o\);

\inspectR1[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectR1[8]~output_o\);

\inspectR1[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectR1[9]~output_o\);

\inspectR1[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectR1[10]~output_o\);

\inspectR1[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectR1[11]~output_o\);

\inspectR1[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectR1[12]~output_o\);

\inspectR1[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectR1[13]~output_o\);

\inspectR1[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectR1[14]~output_o\);

\inspectR1[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectR1[15]~output_o\);

\inspectR1[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectR1[16]~output_o\);

\inspectR1[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectR1[17]~output_o\);

\inspectR1[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectR1[18]~output_o\);

\inspectR1[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectR1[19]~output_o\);

\inspectR1[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectR1[20]~output_o\);

\inspectR1[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectR1[21]~output_o\);

\inspectR1[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectR1[22]~output_o\);

\inspectR1[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectR1[23]~output_o\);

\inspectR1[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectR1[24]~output_o\);

\inspectR1[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectR1[25]~output_o\);

\inspectR1[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectR1[26]~output_o\);

\inspectR1[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectR1[27]~output_o\);

\inspectR1[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectR1[28]~output_o\);

\inspectR1[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectR1[29]~output_o\);

\inspectR1[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectR1[30]~output_o\);

\inspectR1[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectR1[31]~output_o\);

\inspectR2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectR2[0]~output_o\);

\inspectR2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectR2[1]~output_o\);

\inspectR2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectR2[2]~output_o\);

\inspectR2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectR2[3]~output_o\);

\inspectR2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectR2[4]~output_o\);

\inspectR2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectR2[5]~output_o\);

\inspectR2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectR2[6]~output_o\);

\inspectR2[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectR2[7]~output_o\);

\inspectR2[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectR2[8]~output_o\);

\inspectR2[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectR2[9]~output_o\);

\inspectR2[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectR2[10]~output_o\);

\inspectR2[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectR2[11]~output_o\);

\inspectR2[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectR2[12]~output_o\);

\inspectR2[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectR2[13]~output_o\);

\inspectR2[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectR2[14]~output_o\);

\inspectR2[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectR2[15]~output_o\);

\inspectR2[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectR2[16]~output_o\);

\inspectR2[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectR2[17]~output_o\);

\inspectR2[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectR2[18]~output_o\);

\inspectR2[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectR2[19]~output_o\);

\inspectR2[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectR2[20]~output_o\);

\inspectR2[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectR2[21]~output_o\);

\inspectR2[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectR2[22]~output_o\);

\inspectR2[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectR2[23]~output_o\);

\inspectR2[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectR2[24]~output_o\);

\inspectR2[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectR2[25]~output_o\);

\inspectR2[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectR2[26]~output_o\);

\inspectR2[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectR2[27]~output_o\);

\inspectR2[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectR2[28]~output_o\);

\inspectR2[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectR2[29]~output_o\);

\inspectR2[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectR2[30]~output_o\);

\inspectR2[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectR2[31]~output_o\);

\inspectEndRS[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectEndRS[0]~output_o\);

\inspectEndRS[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~0_combout\,
	devoe => ww_devoe,
	o => \inspectEndRS[1]~output_o\);

\inspectEndRS[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectEndRS[2]~output_o\);

\inspectEndRS[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~0_combout\,
	devoe => ww_devoe,
	o => \inspectEndRS[3]~output_o\);

\inspectEndRS[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectEndRS[4]~output_o\);

\inspectEndRT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~1_combout\,
	devoe => ww_devoe,
	o => \inspectEndRT[0]~output_o\);

\inspectEndRT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~2_combout\,
	devoe => ww_devoe,
	o => \inspectEndRT[1]~output_o\);

\inspectEndRT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectEndRT[2]~output_o\);

\inspectEndRT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~0_combout\,
	devoe => ww_devoe,
	o => \inspectEndRT[3]~output_o\);

\inspectEndRT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectEndRT[4]~output_o\);

\inspectEndRD[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectEndRD[0]~output_o\);

\inspectEndRD[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectEndRD[1]~output_o\);

\inspectEndRD[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectEndRD[2]~output_o\);

\inspectEndRD[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectEndRD[3]~output_o\);

\inspectEndRD[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectEndRD[4]~output_o\);

\inspectInstru[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectInstru[0]~output_o\);

\inspectInstru[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectInstru[1]~output_o\);

\inspectInstru[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectInstru[2]~output_o\);

\inspectInstru[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectInstru[3]~output_o\);

\inspectInstru[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectInstru[4]~output_o\);

\inspectInstru[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectInstru[5]~output_o\);

\inspectInstru[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectInstru[6]~output_o\);

\inspectInstru[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectInstru[7]~output_o\);

\inspectInstru[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectInstru[8]~output_o\);

\inspectInstru[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectInstru[9]~output_o\);

\inspectInstru[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectInstru[10]~output_o\);

\inspectInstru[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectInstru[11]~output_o\);

\inspectInstru[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectInstru[12]~output_o\);

\inspectInstru[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectInstru[13]~output_o\);

\inspectInstru[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectInstru[14]~output_o\);

\inspectInstru[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectInstru[15]~output_o\);

\inspectInstru[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~1_combout\,
	devoe => ww_devoe,
	o => \inspectInstru[16]~output_o\);

\inspectInstru[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~2_combout\,
	devoe => ww_devoe,
	o => \inspectInstru[17]~output_o\);

\inspectInstru[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectInstru[18]~output_o\);

\inspectInstru[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~0_combout\,
	devoe => ww_devoe,
	o => \inspectInstru[19]~output_o\);

\inspectInstru[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectInstru[20]~output_o\);

\inspectInstru[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectInstru[21]~output_o\);

\inspectInstru[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~0_combout\,
	devoe => ww_devoe,
	o => \inspectInstru[22]~output_o\);

\inspectInstru[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectInstru[23]~output_o\);

\inspectInstru[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~0_combout\,
	devoe => ww_devoe,
	o => \inspectInstru[24]~output_o\);

\inspectInstru[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectInstru[25]~output_o\);

\inspectInstru[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~0_combout\,
	devoe => ww_devoe,
	o => \inspectInstru[26]~output_o\);

\inspectInstru[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~0_combout\,
	devoe => ww_devoe,
	o => \inspectInstru[27]~output_o\);

\inspectInstru[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectInstru[28]~output_o\);

\inspectInstru[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~1_combout\,
	devoe => ww_devoe,
	o => \inspectInstru[29]~output_o\);

\inspectInstru[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectInstru[30]~output_o\);

\inspectInstru[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~0_combout\,
	devoe => ww_devoe,
	o => \inspectInstru[31]~output_o\);

\inspectPC[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectPC[0]~output_o\);

\inspectPC[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inspectPC[1]~output_o\);

\inspectPC[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgramCounter|DOUT\(2),
	devoe => ww_devoe,
	o => \inspectPC[2]~output_o\);

\inspectPC[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgramCounter|DOUT\(3),
	devoe => ww_devoe,
	o => \inspectPC[3]~output_o\);

\inspectPC[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgramCounter|DOUT\(4),
	devoe => ww_devoe,
	o => \inspectPC[4]~output_o\);

\inspectPC[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgramCounter|DOUT\(5),
	devoe => ww_devoe,
	o => \inspectPC[5]~output_o\);

\inspectPC[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgramCounter|DOUT\(6),
	devoe => ww_devoe,
	o => \inspectPC[6]~output_o\);

\inspectPC[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgramCounter|DOUT\(7),
	devoe => ww_devoe,
	o => \inspectPC[7]~output_o\);

\inspectPC[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgramCounter|DOUT\(8),
	devoe => ww_devoe,
	o => \inspectPC[8]~output_o\);

\inspectPC[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgramCounter|DOUT\(9),
	devoe => ww_devoe,
	o => \inspectPC[9]~output_o\);

\inspectPC[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgramCounter|DOUT\(10),
	devoe => ww_devoe,
	o => \inspectPC[10]~output_o\);

\inspectPC[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgramCounter|DOUT\(11),
	devoe => ww_devoe,
	o => \inspectPC[11]~output_o\);

\inspectPC[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgramCounter|DOUT\(12),
	devoe => ww_devoe,
	o => \inspectPC[12]~output_o\);

\inspectPC[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgramCounter|DOUT\(13),
	devoe => ww_devoe,
	o => \inspectPC[13]~output_o\);

\inspectPC[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgramCounter|DOUT\(14),
	devoe => ww_devoe,
	o => \inspectPC[14]~output_o\);

\inspectPC[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgramCounter|DOUT\(15),
	devoe => ww_devoe,
	o => \inspectPC[15]~output_o\);

\inspectPC[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgramCounter|DOUT\(16),
	devoe => ww_devoe,
	o => \inspectPC[16]~output_o\);

\inspectPC[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgramCounter|DOUT\(17),
	devoe => ww_devoe,
	o => \inspectPC[17]~output_o\);

\inspectPC[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgramCounter|DOUT\(18),
	devoe => ww_devoe,
	o => \inspectPC[18]~output_o\);

\inspectPC[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgramCounter|DOUT\(19),
	devoe => ww_devoe,
	o => \inspectPC[19]~output_o\);

\inspectPC[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgramCounter|DOUT\(20),
	devoe => ww_devoe,
	o => \inspectPC[20]~output_o\);

\inspectPC[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgramCounter|DOUT\(21),
	devoe => ww_devoe,
	o => \inspectPC[21]~output_o\);

\inspectPC[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgramCounter|DOUT\(22),
	devoe => ww_devoe,
	o => \inspectPC[22]~output_o\);

\inspectPC[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgramCounter|DOUT\(23),
	devoe => ww_devoe,
	o => \inspectPC[23]~output_o\);

\inspectPC[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgramCounter|DOUT\(24),
	devoe => ww_devoe,
	o => \inspectPC[24]~output_o\);

\inspectPC[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgramCounter|DOUT\(25),
	devoe => ww_devoe,
	o => \inspectPC[25]~output_o\);

\inspectPC[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgramCounter|DOUT\(26),
	devoe => ww_devoe,
	o => \inspectPC[26]~output_o\);

\inspectPC[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgramCounter|DOUT\(27),
	devoe => ww_devoe,
	o => \inspectPC[27]~output_o\);

\inspectPC[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgramCounter|DOUT\(28),
	devoe => ww_devoe,
	o => \inspectPC[28]~output_o\);

\inspectPC[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgramCounter|DOUT\(29),
	devoe => ww_devoe,
	o => \inspectPC[29]~output_o\);

\inspectPC[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgramCounter|DOUT\(30),
	devoe => ww_devoe,
	o => \inspectPC[30]~output_o\);

\inspectPC[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ProgramCounter|DOUT\(31),
	devoe => ww_devoe,
	o => \inspectPC[31]~output_o\);

\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

\incrementaPC|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~21_sumout\ = SUM(( \ProgramCounter|DOUT\(2) ) + ( VCC ) + ( !VCC ))
-- \incrementaPC|Add0~22\ = CARRY(( \ProgramCounter|DOUT\(2) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ProgramCounter|ALT_INV_DOUT\(2),
	cin => GND,
	sumout => \incrementaPC|Add0~21_sumout\,
	cout => \incrementaPC|Add0~22\);

\ProgramCounter|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \incrementaPC|Add0~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ProgramCounter|DOUT\(2));

\incrementaPC|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~17_sumout\ = SUM(( \ProgramCounter|DOUT\(3) ) + ( GND ) + ( \incrementaPC|Add0~22\ ))
-- \incrementaPC|Add0~18\ = CARRY(( \ProgramCounter|DOUT\(3) ) + ( GND ) + ( \incrementaPC|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ProgramCounter|ALT_INV_DOUT\(3),
	cin => \incrementaPC|Add0~22\,
	sumout => \incrementaPC|Add0~17_sumout\,
	cout => \incrementaPC|Add0~18\);

\ProgramCounter|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \incrementaPC|Add0~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ProgramCounter|DOUT\(3));

\incrementaPC|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~13_sumout\ = SUM(( \ProgramCounter|DOUT\(4) ) + ( GND ) + ( \incrementaPC|Add0~18\ ))
-- \incrementaPC|Add0~14\ = CARRY(( \ProgramCounter|DOUT\(4) ) + ( GND ) + ( \incrementaPC|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ProgramCounter|ALT_INV_DOUT\(4),
	cin => \incrementaPC|Add0~18\,
	sumout => \incrementaPC|Add0~13_sumout\,
	cout => \incrementaPC|Add0~14\);

\ProgramCounter|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \incrementaPC|Add0~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ProgramCounter|DOUT\(4));

\incrementaPC|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~9_sumout\ = SUM(( \ProgramCounter|DOUT\(5) ) + ( GND ) + ( \incrementaPC|Add0~14\ ))
-- \incrementaPC|Add0~10\ = CARRY(( \ProgramCounter|DOUT\(5) ) + ( GND ) + ( \incrementaPC|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ProgramCounter|ALT_INV_DOUT\(5),
	cin => \incrementaPC|Add0~14\,
	sumout => \incrementaPC|Add0~9_sumout\,
	cout => \incrementaPC|Add0~10\);

\ProgramCounter|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \incrementaPC|Add0~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ProgramCounter|DOUT\(5));

\incrementaPC|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~5_sumout\ = SUM(( \ProgramCounter|DOUT\(6) ) + ( GND ) + ( \incrementaPC|Add0~10\ ))
-- \incrementaPC|Add0~6\ = CARRY(( \ProgramCounter|DOUT\(6) ) + ( GND ) + ( \incrementaPC|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ProgramCounter|ALT_INV_DOUT\(6),
	cin => \incrementaPC|Add0~10\,
	sumout => \incrementaPC|Add0~5_sumout\,
	cout => \incrementaPC|Add0~6\);

\ProgramCounter|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \incrementaPC|Add0~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ProgramCounter|DOUT\(6));

\incrementaPC|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~1_sumout\ = SUM(( \ProgramCounter|DOUT\(7) ) + ( GND ) + ( \incrementaPC|Add0~6\ ))
-- \incrementaPC|Add0~2\ = CARRY(( \ProgramCounter|DOUT\(7) ) + ( GND ) + ( \incrementaPC|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ProgramCounter|ALT_INV_DOUT\(7),
	cin => \incrementaPC|Add0~6\,
	sumout => \incrementaPC|Add0~1_sumout\,
	cout => \incrementaPC|Add0~2\);

\ProgramCounter|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \incrementaPC|Add0~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ProgramCounter|DOUT\(7));

\ROM|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~0_combout\ = ( !\ProgramCounter|DOUT\(3) & ( (!\ProgramCounter|DOUT\(7) & (!\ProgramCounter|DOUT\(6) & (!\ProgramCounter|DOUT\(5) & !\ProgramCounter|DOUT\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ProgramCounter|ALT_INV_DOUT\(7),
	datab => \ProgramCounter|ALT_INV_DOUT\(6),
	datac => \ProgramCounter|ALT_INV_DOUT\(5),
	datad => \ProgramCounter|ALT_INV_DOUT\(4),
	datae => \ProgramCounter|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~0_combout\);

\ROM|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~1_combout\ = ( !\ProgramCounter|DOUT\(3) & ( !\ProgramCounter|DOUT\(2) & ( (!\ProgramCounter|DOUT\(7) & (!\ProgramCounter|DOUT\(6) & (!\ProgramCounter|DOUT\(5) & !\ProgramCounter|DOUT\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ProgramCounter|ALT_INV_DOUT\(7),
	datab => \ProgramCounter|ALT_INV_DOUT\(6),
	datac => \ProgramCounter|ALT_INV_DOUT\(5),
	datad => \ProgramCounter|ALT_INV_DOUT\(4),
	datae => \ProgramCounter|ALT_INV_DOUT\(3),
	dataf => \ProgramCounter|ALT_INV_DOUT\(2),
	combout => \ROM|memROM~1_combout\);

\ROM|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~2_combout\ = ( !\ProgramCounter|DOUT\(3) & ( \ProgramCounter|DOUT\(2) & ( (!\ProgramCounter|DOUT\(7) & (!\ProgramCounter|DOUT\(6) & (!\ProgramCounter|DOUT\(5) & !\ProgramCounter|DOUT\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ProgramCounter|ALT_INV_DOUT\(7),
	datab => \ProgramCounter|ALT_INV_DOUT\(6),
	datac => \ProgramCounter|ALT_INV_DOUT\(5),
	datad => \ProgramCounter|ALT_INV_DOUT\(4),
	datae => \ProgramCounter|ALT_INV_DOUT\(3),
	dataf => \ProgramCounter|ALT_INV_DOUT\(2),
	combout => \ROM|memROM~2_combout\);

\incrementaPC|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~25_sumout\ = SUM(( \ProgramCounter|DOUT\(8) ) + ( GND ) + ( \incrementaPC|Add0~2\ ))
-- \incrementaPC|Add0~26\ = CARRY(( \ProgramCounter|DOUT\(8) ) + ( GND ) + ( \incrementaPC|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ProgramCounter|ALT_INV_DOUT\(8),
	cin => \incrementaPC|Add0~2\,
	sumout => \incrementaPC|Add0~25_sumout\,
	cout => \incrementaPC|Add0~26\);

\ProgramCounter|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \incrementaPC|Add0~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ProgramCounter|DOUT\(8));

\incrementaPC|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~29_sumout\ = SUM(( \ProgramCounter|DOUT\(9) ) + ( GND ) + ( \incrementaPC|Add0~26\ ))
-- \incrementaPC|Add0~30\ = CARRY(( \ProgramCounter|DOUT\(9) ) + ( GND ) + ( \incrementaPC|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ProgramCounter|ALT_INV_DOUT\(9),
	cin => \incrementaPC|Add0~26\,
	sumout => \incrementaPC|Add0~29_sumout\,
	cout => \incrementaPC|Add0~30\);

\ProgramCounter|DOUT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \incrementaPC|Add0~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ProgramCounter|DOUT\(9));

\incrementaPC|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~33_sumout\ = SUM(( \ProgramCounter|DOUT\(10) ) + ( GND ) + ( \incrementaPC|Add0~30\ ))
-- \incrementaPC|Add0~34\ = CARRY(( \ProgramCounter|DOUT\(10) ) + ( GND ) + ( \incrementaPC|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ProgramCounter|ALT_INV_DOUT\(10),
	cin => \incrementaPC|Add0~30\,
	sumout => \incrementaPC|Add0~33_sumout\,
	cout => \incrementaPC|Add0~34\);

\ProgramCounter|DOUT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \incrementaPC|Add0~33_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ProgramCounter|DOUT\(10));

\incrementaPC|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~37_sumout\ = SUM(( \ProgramCounter|DOUT\(11) ) + ( GND ) + ( \incrementaPC|Add0~34\ ))
-- \incrementaPC|Add0~38\ = CARRY(( \ProgramCounter|DOUT\(11) ) + ( GND ) + ( \incrementaPC|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ProgramCounter|ALT_INV_DOUT\(11),
	cin => \incrementaPC|Add0~34\,
	sumout => \incrementaPC|Add0~37_sumout\,
	cout => \incrementaPC|Add0~38\);

\ProgramCounter|DOUT[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \incrementaPC|Add0~37_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ProgramCounter|DOUT\(11));

\incrementaPC|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~41_sumout\ = SUM(( \ProgramCounter|DOUT\(12) ) + ( GND ) + ( \incrementaPC|Add0~38\ ))
-- \incrementaPC|Add0~42\ = CARRY(( \ProgramCounter|DOUT\(12) ) + ( GND ) + ( \incrementaPC|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ProgramCounter|ALT_INV_DOUT\(12),
	cin => \incrementaPC|Add0~38\,
	sumout => \incrementaPC|Add0~41_sumout\,
	cout => \incrementaPC|Add0~42\);

\ProgramCounter|DOUT[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \incrementaPC|Add0~41_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ProgramCounter|DOUT\(12));

\incrementaPC|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~45_sumout\ = SUM(( \ProgramCounter|DOUT\(13) ) + ( GND ) + ( \incrementaPC|Add0~42\ ))
-- \incrementaPC|Add0~46\ = CARRY(( \ProgramCounter|DOUT\(13) ) + ( GND ) + ( \incrementaPC|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ProgramCounter|ALT_INV_DOUT\(13),
	cin => \incrementaPC|Add0~42\,
	sumout => \incrementaPC|Add0~45_sumout\,
	cout => \incrementaPC|Add0~46\);

\ProgramCounter|DOUT[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \incrementaPC|Add0~45_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ProgramCounter|DOUT\(13));

\incrementaPC|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~49_sumout\ = SUM(( \ProgramCounter|DOUT\(14) ) + ( GND ) + ( \incrementaPC|Add0~46\ ))
-- \incrementaPC|Add0~50\ = CARRY(( \ProgramCounter|DOUT\(14) ) + ( GND ) + ( \incrementaPC|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ProgramCounter|ALT_INV_DOUT\(14),
	cin => \incrementaPC|Add0~46\,
	sumout => \incrementaPC|Add0~49_sumout\,
	cout => \incrementaPC|Add0~50\);

\ProgramCounter|DOUT[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \incrementaPC|Add0~49_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ProgramCounter|DOUT\(14));

\incrementaPC|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~53_sumout\ = SUM(( \ProgramCounter|DOUT\(15) ) + ( GND ) + ( \incrementaPC|Add0~50\ ))
-- \incrementaPC|Add0~54\ = CARRY(( \ProgramCounter|DOUT\(15) ) + ( GND ) + ( \incrementaPC|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ProgramCounter|ALT_INV_DOUT\(15),
	cin => \incrementaPC|Add0~50\,
	sumout => \incrementaPC|Add0~53_sumout\,
	cout => \incrementaPC|Add0~54\);

\ProgramCounter|DOUT[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \incrementaPC|Add0~53_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ProgramCounter|DOUT\(15));

\incrementaPC|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~57_sumout\ = SUM(( \ProgramCounter|DOUT\(16) ) + ( GND ) + ( \incrementaPC|Add0~54\ ))
-- \incrementaPC|Add0~58\ = CARRY(( \ProgramCounter|DOUT\(16) ) + ( GND ) + ( \incrementaPC|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ProgramCounter|ALT_INV_DOUT\(16),
	cin => \incrementaPC|Add0~54\,
	sumout => \incrementaPC|Add0~57_sumout\,
	cout => \incrementaPC|Add0~58\);

\ProgramCounter|DOUT[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \incrementaPC|Add0~57_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ProgramCounter|DOUT\(16));

\incrementaPC|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~61_sumout\ = SUM(( \ProgramCounter|DOUT\(17) ) + ( GND ) + ( \incrementaPC|Add0~58\ ))
-- \incrementaPC|Add0~62\ = CARRY(( \ProgramCounter|DOUT\(17) ) + ( GND ) + ( \incrementaPC|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ProgramCounter|ALT_INV_DOUT\(17),
	cin => \incrementaPC|Add0~58\,
	sumout => \incrementaPC|Add0~61_sumout\,
	cout => \incrementaPC|Add0~62\);

\ProgramCounter|DOUT[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \incrementaPC|Add0~61_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ProgramCounter|DOUT\(17));

\incrementaPC|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~65_sumout\ = SUM(( \ProgramCounter|DOUT\(18) ) + ( GND ) + ( \incrementaPC|Add0~62\ ))
-- \incrementaPC|Add0~66\ = CARRY(( \ProgramCounter|DOUT\(18) ) + ( GND ) + ( \incrementaPC|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ProgramCounter|ALT_INV_DOUT\(18),
	cin => \incrementaPC|Add0~62\,
	sumout => \incrementaPC|Add0~65_sumout\,
	cout => \incrementaPC|Add0~66\);

\ProgramCounter|DOUT[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \incrementaPC|Add0~65_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ProgramCounter|DOUT\(18));

\incrementaPC|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~69_sumout\ = SUM(( \ProgramCounter|DOUT\(19) ) + ( GND ) + ( \incrementaPC|Add0~66\ ))
-- \incrementaPC|Add0~70\ = CARRY(( \ProgramCounter|DOUT\(19) ) + ( GND ) + ( \incrementaPC|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ProgramCounter|ALT_INV_DOUT\(19),
	cin => \incrementaPC|Add0~66\,
	sumout => \incrementaPC|Add0~69_sumout\,
	cout => \incrementaPC|Add0~70\);

\ProgramCounter|DOUT[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \incrementaPC|Add0~69_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ProgramCounter|DOUT\(19));

\incrementaPC|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~73_sumout\ = SUM(( \ProgramCounter|DOUT\(20) ) + ( GND ) + ( \incrementaPC|Add0~70\ ))
-- \incrementaPC|Add0~74\ = CARRY(( \ProgramCounter|DOUT\(20) ) + ( GND ) + ( \incrementaPC|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ProgramCounter|ALT_INV_DOUT\(20),
	cin => \incrementaPC|Add0~70\,
	sumout => \incrementaPC|Add0~73_sumout\,
	cout => \incrementaPC|Add0~74\);

\ProgramCounter|DOUT[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \incrementaPC|Add0~73_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ProgramCounter|DOUT\(20));

\incrementaPC|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~77_sumout\ = SUM(( \ProgramCounter|DOUT\(21) ) + ( GND ) + ( \incrementaPC|Add0~74\ ))
-- \incrementaPC|Add0~78\ = CARRY(( \ProgramCounter|DOUT\(21) ) + ( GND ) + ( \incrementaPC|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ProgramCounter|ALT_INV_DOUT\(21),
	cin => \incrementaPC|Add0~74\,
	sumout => \incrementaPC|Add0~77_sumout\,
	cout => \incrementaPC|Add0~78\);

\ProgramCounter|DOUT[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \incrementaPC|Add0~77_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ProgramCounter|DOUT\(21));

\incrementaPC|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~81_sumout\ = SUM(( \ProgramCounter|DOUT\(22) ) + ( GND ) + ( \incrementaPC|Add0~78\ ))
-- \incrementaPC|Add0~82\ = CARRY(( \ProgramCounter|DOUT\(22) ) + ( GND ) + ( \incrementaPC|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ProgramCounter|ALT_INV_DOUT\(22),
	cin => \incrementaPC|Add0~78\,
	sumout => \incrementaPC|Add0~81_sumout\,
	cout => \incrementaPC|Add0~82\);

\ProgramCounter|DOUT[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \incrementaPC|Add0~81_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ProgramCounter|DOUT\(22));

\incrementaPC|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~85_sumout\ = SUM(( \ProgramCounter|DOUT\(23) ) + ( GND ) + ( \incrementaPC|Add0~82\ ))
-- \incrementaPC|Add0~86\ = CARRY(( \ProgramCounter|DOUT\(23) ) + ( GND ) + ( \incrementaPC|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ProgramCounter|ALT_INV_DOUT\(23),
	cin => \incrementaPC|Add0~82\,
	sumout => \incrementaPC|Add0~85_sumout\,
	cout => \incrementaPC|Add0~86\);

\ProgramCounter|DOUT[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \incrementaPC|Add0~85_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ProgramCounter|DOUT\(23));

\incrementaPC|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~89_sumout\ = SUM(( \ProgramCounter|DOUT\(24) ) + ( GND ) + ( \incrementaPC|Add0~86\ ))
-- \incrementaPC|Add0~90\ = CARRY(( \ProgramCounter|DOUT\(24) ) + ( GND ) + ( \incrementaPC|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ProgramCounter|ALT_INV_DOUT\(24),
	cin => \incrementaPC|Add0~86\,
	sumout => \incrementaPC|Add0~89_sumout\,
	cout => \incrementaPC|Add0~90\);

\ProgramCounter|DOUT[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \incrementaPC|Add0~89_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ProgramCounter|DOUT\(24));

\incrementaPC|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~93_sumout\ = SUM(( \ProgramCounter|DOUT\(25) ) + ( GND ) + ( \incrementaPC|Add0~90\ ))
-- \incrementaPC|Add0~94\ = CARRY(( \ProgramCounter|DOUT\(25) ) + ( GND ) + ( \incrementaPC|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ProgramCounter|ALT_INV_DOUT\(25),
	cin => \incrementaPC|Add0~90\,
	sumout => \incrementaPC|Add0~93_sumout\,
	cout => \incrementaPC|Add0~94\);

\ProgramCounter|DOUT[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \incrementaPC|Add0~93_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ProgramCounter|DOUT\(25));

\incrementaPC|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~97_sumout\ = SUM(( \ProgramCounter|DOUT\(26) ) + ( GND ) + ( \incrementaPC|Add0~94\ ))
-- \incrementaPC|Add0~98\ = CARRY(( \ProgramCounter|DOUT\(26) ) + ( GND ) + ( \incrementaPC|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ProgramCounter|ALT_INV_DOUT\(26),
	cin => \incrementaPC|Add0~94\,
	sumout => \incrementaPC|Add0~97_sumout\,
	cout => \incrementaPC|Add0~98\);

\ProgramCounter|DOUT[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \incrementaPC|Add0~97_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ProgramCounter|DOUT\(26));

\incrementaPC|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~101_sumout\ = SUM(( \ProgramCounter|DOUT\(27) ) + ( GND ) + ( \incrementaPC|Add0~98\ ))
-- \incrementaPC|Add0~102\ = CARRY(( \ProgramCounter|DOUT\(27) ) + ( GND ) + ( \incrementaPC|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ProgramCounter|ALT_INV_DOUT\(27),
	cin => \incrementaPC|Add0~98\,
	sumout => \incrementaPC|Add0~101_sumout\,
	cout => \incrementaPC|Add0~102\);

\ProgramCounter|DOUT[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \incrementaPC|Add0~101_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ProgramCounter|DOUT\(27));

\incrementaPC|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~105_sumout\ = SUM(( \ProgramCounter|DOUT\(28) ) + ( GND ) + ( \incrementaPC|Add0~102\ ))
-- \incrementaPC|Add0~106\ = CARRY(( \ProgramCounter|DOUT\(28) ) + ( GND ) + ( \incrementaPC|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ProgramCounter|ALT_INV_DOUT\(28),
	cin => \incrementaPC|Add0~102\,
	sumout => \incrementaPC|Add0~105_sumout\,
	cout => \incrementaPC|Add0~106\);

\ProgramCounter|DOUT[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \incrementaPC|Add0~105_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ProgramCounter|DOUT\(28));

\incrementaPC|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~109_sumout\ = SUM(( \ProgramCounter|DOUT\(29) ) + ( GND ) + ( \incrementaPC|Add0~106\ ))
-- \incrementaPC|Add0~110\ = CARRY(( \ProgramCounter|DOUT\(29) ) + ( GND ) + ( \incrementaPC|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ProgramCounter|ALT_INV_DOUT\(29),
	cin => \incrementaPC|Add0~106\,
	sumout => \incrementaPC|Add0~109_sumout\,
	cout => \incrementaPC|Add0~110\);

\ProgramCounter|DOUT[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \incrementaPC|Add0~109_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ProgramCounter|DOUT\(29));

\incrementaPC|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~113_sumout\ = SUM(( \ProgramCounter|DOUT\(30) ) + ( GND ) + ( \incrementaPC|Add0~110\ ))
-- \incrementaPC|Add0~114\ = CARRY(( \ProgramCounter|DOUT\(30) ) + ( GND ) + ( \incrementaPC|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ProgramCounter|ALT_INV_DOUT\(30),
	cin => \incrementaPC|Add0~110\,
	sumout => \incrementaPC|Add0~113_sumout\,
	cout => \incrementaPC|Add0~114\);

\ProgramCounter|DOUT[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \incrementaPC|Add0~113_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ProgramCounter|DOUT\(30));

\incrementaPC|Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~117_sumout\ = SUM(( \ProgramCounter|DOUT\(31) ) + ( GND ) + ( \incrementaPC|Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ProgramCounter|ALT_INV_DOUT\(31),
	cin => \incrementaPC|Add0~114\,
	sumout => \incrementaPC|Add0~117_sumout\);

\ProgramCounter|DOUT[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \incrementaPC|Add0~117_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ProgramCounter|DOUT\(31));

\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

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

ww_DATA_OUT(0) <= \DATA_OUT[0]~output_o\;

ww_DATA_OUT(1) <= \DATA_OUT[1]~output_o\;

ww_DATA_OUT(2) <= \DATA_OUT[2]~output_o\;

ww_DATA_OUT(3) <= \DATA_OUT[3]~output_o\;

ww_DATA_OUT(4) <= \DATA_OUT[4]~output_o\;

ww_DATA_OUT(5) <= \DATA_OUT[5]~output_o\;

ww_DATA_OUT(6) <= \DATA_OUT[6]~output_o\;

ww_DATA_OUT(7) <= \DATA_OUT[7]~output_o\;

ww_DATA_OUT(8) <= \DATA_OUT[8]~output_o\;

ww_DATA_OUT(9) <= \DATA_OUT[9]~output_o\;

ww_DATA_OUT(10) <= \DATA_OUT[10]~output_o\;

ww_DATA_OUT(11) <= \DATA_OUT[11]~output_o\;

ww_DATA_OUT(12) <= \DATA_OUT[12]~output_o\;

ww_DATA_OUT(13) <= \DATA_OUT[13]~output_o\;

ww_DATA_OUT(14) <= \DATA_OUT[14]~output_o\;

ww_DATA_OUT(15) <= \DATA_OUT[15]~output_o\;

ww_DATA_OUT(16) <= \DATA_OUT[16]~output_o\;

ww_DATA_OUT(17) <= \DATA_OUT[17]~output_o\;

ww_DATA_OUT(18) <= \DATA_OUT[18]~output_o\;

ww_DATA_OUT(19) <= \DATA_OUT[19]~output_o\;

ww_DATA_OUT(20) <= \DATA_OUT[20]~output_o\;

ww_DATA_OUT(21) <= \DATA_OUT[21]~output_o\;

ww_DATA_OUT(22) <= \DATA_OUT[22]~output_o\;

ww_DATA_OUT(23) <= \DATA_OUT[23]~output_o\;

ww_DATA_OUT(24) <= \DATA_OUT[24]~output_o\;

ww_DATA_OUT(25) <= \DATA_OUT[25]~output_o\;

ww_DATA_OUT(26) <= \DATA_OUT[26]~output_o\;

ww_DATA_OUT(27) <= \DATA_OUT[27]~output_o\;

ww_DATA_OUT(28) <= \DATA_OUT[28]~output_o\;

ww_DATA_OUT(29) <= \DATA_OUT[29]~output_o\;

ww_DATA_OUT(30) <= \DATA_OUT[30]~output_o\;

ww_DATA_OUT(31) <= \DATA_OUT[31]~output_o\;

ww_inspectR0(0) <= \inspectR0[0]~output_o\;

ww_inspectR0(1) <= \inspectR0[1]~output_o\;

ww_inspectR0(2) <= \inspectR0[2]~output_o\;

ww_inspectR0(3) <= \inspectR0[3]~output_o\;

ww_inspectR0(4) <= \inspectR0[4]~output_o\;

ww_inspectR0(5) <= \inspectR0[5]~output_o\;

ww_inspectR0(6) <= \inspectR0[6]~output_o\;

ww_inspectR0(7) <= \inspectR0[7]~output_o\;

ww_inspectR0(8) <= \inspectR0[8]~output_o\;

ww_inspectR0(9) <= \inspectR0[9]~output_o\;

ww_inspectR0(10) <= \inspectR0[10]~output_o\;

ww_inspectR0(11) <= \inspectR0[11]~output_o\;

ww_inspectR0(12) <= \inspectR0[12]~output_o\;

ww_inspectR0(13) <= \inspectR0[13]~output_o\;

ww_inspectR0(14) <= \inspectR0[14]~output_o\;

ww_inspectR0(15) <= \inspectR0[15]~output_o\;

ww_inspectR0(16) <= \inspectR0[16]~output_o\;

ww_inspectR0(17) <= \inspectR0[17]~output_o\;

ww_inspectR0(18) <= \inspectR0[18]~output_o\;

ww_inspectR0(19) <= \inspectR0[19]~output_o\;

ww_inspectR0(20) <= \inspectR0[20]~output_o\;

ww_inspectR0(21) <= \inspectR0[21]~output_o\;

ww_inspectR0(22) <= \inspectR0[22]~output_o\;

ww_inspectR0(23) <= \inspectR0[23]~output_o\;

ww_inspectR0(24) <= \inspectR0[24]~output_o\;

ww_inspectR0(25) <= \inspectR0[25]~output_o\;

ww_inspectR0(26) <= \inspectR0[26]~output_o\;

ww_inspectR0(27) <= \inspectR0[27]~output_o\;

ww_inspectR0(28) <= \inspectR0[28]~output_o\;

ww_inspectR0(29) <= \inspectR0[29]~output_o\;

ww_inspectR0(30) <= \inspectR0[30]~output_o\;

ww_inspectR0(31) <= \inspectR0[31]~output_o\;

ww_inspectR1(0) <= \inspectR1[0]~output_o\;

ww_inspectR1(1) <= \inspectR1[1]~output_o\;

ww_inspectR1(2) <= \inspectR1[2]~output_o\;

ww_inspectR1(3) <= \inspectR1[3]~output_o\;

ww_inspectR1(4) <= \inspectR1[4]~output_o\;

ww_inspectR1(5) <= \inspectR1[5]~output_o\;

ww_inspectR1(6) <= \inspectR1[6]~output_o\;

ww_inspectR1(7) <= \inspectR1[7]~output_o\;

ww_inspectR1(8) <= \inspectR1[8]~output_o\;

ww_inspectR1(9) <= \inspectR1[9]~output_o\;

ww_inspectR1(10) <= \inspectR1[10]~output_o\;

ww_inspectR1(11) <= \inspectR1[11]~output_o\;

ww_inspectR1(12) <= \inspectR1[12]~output_o\;

ww_inspectR1(13) <= \inspectR1[13]~output_o\;

ww_inspectR1(14) <= \inspectR1[14]~output_o\;

ww_inspectR1(15) <= \inspectR1[15]~output_o\;

ww_inspectR1(16) <= \inspectR1[16]~output_o\;

ww_inspectR1(17) <= \inspectR1[17]~output_o\;

ww_inspectR1(18) <= \inspectR1[18]~output_o\;

ww_inspectR1(19) <= \inspectR1[19]~output_o\;

ww_inspectR1(20) <= \inspectR1[20]~output_o\;

ww_inspectR1(21) <= \inspectR1[21]~output_o\;

ww_inspectR1(22) <= \inspectR1[22]~output_o\;

ww_inspectR1(23) <= \inspectR1[23]~output_o\;

ww_inspectR1(24) <= \inspectR1[24]~output_o\;

ww_inspectR1(25) <= \inspectR1[25]~output_o\;

ww_inspectR1(26) <= \inspectR1[26]~output_o\;

ww_inspectR1(27) <= \inspectR1[27]~output_o\;

ww_inspectR1(28) <= \inspectR1[28]~output_o\;

ww_inspectR1(29) <= \inspectR1[29]~output_o\;

ww_inspectR1(30) <= \inspectR1[30]~output_o\;

ww_inspectR1(31) <= \inspectR1[31]~output_o\;

ww_inspectR2(0) <= \inspectR2[0]~output_o\;

ww_inspectR2(1) <= \inspectR2[1]~output_o\;

ww_inspectR2(2) <= \inspectR2[2]~output_o\;

ww_inspectR2(3) <= \inspectR2[3]~output_o\;

ww_inspectR2(4) <= \inspectR2[4]~output_o\;

ww_inspectR2(5) <= \inspectR2[5]~output_o\;

ww_inspectR2(6) <= \inspectR2[6]~output_o\;

ww_inspectR2(7) <= \inspectR2[7]~output_o\;

ww_inspectR2(8) <= \inspectR2[8]~output_o\;

ww_inspectR2(9) <= \inspectR2[9]~output_o\;

ww_inspectR2(10) <= \inspectR2[10]~output_o\;

ww_inspectR2(11) <= \inspectR2[11]~output_o\;

ww_inspectR2(12) <= \inspectR2[12]~output_o\;

ww_inspectR2(13) <= \inspectR2[13]~output_o\;

ww_inspectR2(14) <= \inspectR2[14]~output_o\;

ww_inspectR2(15) <= \inspectR2[15]~output_o\;

ww_inspectR2(16) <= \inspectR2[16]~output_o\;

ww_inspectR2(17) <= \inspectR2[17]~output_o\;

ww_inspectR2(18) <= \inspectR2[18]~output_o\;

ww_inspectR2(19) <= \inspectR2[19]~output_o\;

ww_inspectR2(20) <= \inspectR2[20]~output_o\;

ww_inspectR2(21) <= \inspectR2[21]~output_o\;

ww_inspectR2(22) <= \inspectR2[22]~output_o\;

ww_inspectR2(23) <= \inspectR2[23]~output_o\;

ww_inspectR2(24) <= \inspectR2[24]~output_o\;

ww_inspectR2(25) <= \inspectR2[25]~output_o\;

ww_inspectR2(26) <= \inspectR2[26]~output_o\;

ww_inspectR2(27) <= \inspectR2[27]~output_o\;

ww_inspectR2(28) <= \inspectR2[28]~output_o\;

ww_inspectR2(29) <= \inspectR2[29]~output_o\;

ww_inspectR2(30) <= \inspectR2[30]~output_o\;

ww_inspectR2(31) <= \inspectR2[31]~output_o\;

ww_inspectEndRS(0) <= \inspectEndRS[0]~output_o\;

ww_inspectEndRS(1) <= \inspectEndRS[1]~output_o\;

ww_inspectEndRS(2) <= \inspectEndRS[2]~output_o\;

ww_inspectEndRS(3) <= \inspectEndRS[3]~output_o\;

ww_inspectEndRS(4) <= \inspectEndRS[4]~output_o\;

ww_inspectEndRT(0) <= \inspectEndRT[0]~output_o\;

ww_inspectEndRT(1) <= \inspectEndRT[1]~output_o\;

ww_inspectEndRT(2) <= \inspectEndRT[2]~output_o\;

ww_inspectEndRT(3) <= \inspectEndRT[3]~output_o\;

ww_inspectEndRT(4) <= \inspectEndRT[4]~output_o\;

ww_inspectEndRD(0) <= \inspectEndRD[0]~output_o\;

ww_inspectEndRD(1) <= \inspectEndRD[1]~output_o\;

ww_inspectEndRD(2) <= \inspectEndRD[2]~output_o\;

ww_inspectEndRD(3) <= \inspectEndRD[3]~output_o\;

ww_inspectEndRD(4) <= \inspectEndRD[4]~output_o\;

ww_inspectInstru(0) <= \inspectInstru[0]~output_o\;

ww_inspectInstru(1) <= \inspectInstru[1]~output_o\;

ww_inspectInstru(2) <= \inspectInstru[2]~output_o\;

ww_inspectInstru(3) <= \inspectInstru[3]~output_o\;

ww_inspectInstru(4) <= \inspectInstru[4]~output_o\;

ww_inspectInstru(5) <= \inspectInstru[5]~output_o\;

ww_inspectInstru(6) <= \inspectInstru[6]~output_o\;

ww_inspectInstru(7) <= \inspectInstru[7]~output_o\;

ww_inspectInstru(8) <= \inspectInstru[8]~output_o\;

ww_inspectInstru(9) <= \inspectInstru[9]~output_o\;

ww_inspectInstru(10) <= \inspectInstru[10]~output_o\;

ww_inspectInstru(11) <= \inspectInstru[11]~output_o\;

ww_inspectInstru(12) <= \inspectInstru[12]~output_o\;

ww_inspectInstru(13) <= \inspectInstru[13]~output_o\;

ww_inspectInstru(14) <= \inspectInstru[14]~output_o\;

ww_inspectInstru(15) <= \inspectInstru[15]~output_o\;

ww_inspectInstru(16) <= \inspectInstru[16]~output_o\;

ww_inspectInstru(17) <= \inspectInstru[17]~output_o\;

ww_inspectInstru(18) <= \inspectInstru[18]~output_o\;

ww_inspectInstru(19) <= \inspectInstru[19]~output_o\;

ww_inspectInstru(20) <= \inspectInstru[20]~output_o\;

ww_inspectInstru(21) <= \inspectInstru[21]~output_o\;

ww_inspectInstru(22) <= \inspectInstru[22]~output_o\;

ww_inspectInstru(23) <= \inspectInstru[23]~output_o\;

ww_inspectInstru(24) <= \inspectInstru[24]~output_o\;

ww_inspectInstru(25) <= \inspectInstru[25]~output_o\;

ww_inspectInstru(26) <= \inspectInstru[26]~output_o\;

ww_inspectInstru(27) <= \inspectInstru[27]~output_o\;

ww_inspectInstru(28) <= \inspectInstru[28]~output_o\;

ww_inspectInstru(29) <= \inspectInstru[29]~output_o\;

ww_inspectInstru(30) <= \inspectInstru[30]~output_o\;

ww_inspectInstru(31) <= \inspectInstru[31]~output_o\;

ww_inspectPC(0) <= \inspectPC[0]~output_o\;

ww_inspectPC(1) <= \inspectPC[1]~output_o\;

ww_inspectPC(2) <= \inspectPC[2]~output_o\;

ww_inspectPC(3) <= \inspectPC[3]~output_o\;

ww_inspectPC(4) <= \inspectPC[4]~output_o\;

ww_inspectPC(5) <= \inspectPC[5]~output_o\;

ww_inspectPC(6) <= \inspectPC[6]~output_o\;

ww_inspectPC(7) <= \inspectPC[7]~output_o\;

ww_inspectPC(8) <= \inspectPC[8]~output_o\;

ww_inspectPC(9) <= \inspectPC[9]~output_o\;

ww_inspectPC(10) <= \inspectPC[10]~output_o\;

ww_inspectPC(11) <= \inspectPC[11]~output_o\;

ww_inspectPC(12) <= \inspectPC[12]~output_o\;

ww_inspectPC(13) <= \inspectPC[13]~output_o\;

ww_inspectPC(14) <= \inspectPC[14]~output_o\;

ww_inspectPC(15) <= \inspectPC[15]~output_o\;

ww_inspectPC(16) <= \inspectPC[16]~output_o\;

ww_inspectPC(17) <= \inspectPC[17]~output_o\;

ww_inspectPC(18) <= \inspectPC[18]~output_o\;

ww_inspectPC(19) <= \inspectPC[19]~output_o\;

ww_inspectPC(20) <= \inspectPC[20]~output_o\;

ww_inspectPC(21) <= \inspectPC[21]~output_o\;

ww_inspectPC(22) <= \inspectPC[22]~output_o\;

ww_inspectPC(23) <= \inspectPC[23]~output_o\;

ww_inspectPC(24) <= \inspectPC[24]~output_o\;

ww_inspectPC(25) <= \inspectPC[25]~output_o\;

ww_inspectPC(26) <= \inspectPC[26]~output_o\;

ww_inspectPC(27) <= \inspectPC[27]~output_o\;

ww_inspectPC(28) <= \inspectPC[28]~output_o\;

ww_inspectPC(29) <= \inspectPC[29]~output_o\;

ww_inspectPC(30) <= \inspectPC[30]~output_o\;

ww_inspectPC(31) <= \inspectPC[31]~output_o\;
END structure;


