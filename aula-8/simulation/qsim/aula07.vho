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

-- DATE "10/19/2022 20:37:04"

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
	SW : IN std_logic_vector(9 DOWNTO 0);
	LEDR : BUFFER std_logic_vector(9 DOWNTO 0);
	HEX0 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX1 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX2 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX3 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX4 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX5 : BUFFER std_logic_vector(6 DOWNTO 0);
	KEY : IN std_logic_vector(3 DOWNTO 0);
	FPGA_RESET_N : IN std_logic;
	DATA_OUT : BUFFER std_logic_vector(7 DOWNTO 0);
	PCOUT_DEBUG : BUFFER std_logic_vector(8 DOWNTO 0);
	FLAG_DEBUG_0 : BUFFER std_logic;
	FLAG_FLIPFLOP_0 : BUFFER std_logic
	);
END TopLevel;

-- Design Ports Information
-- LEDR[0]	=>  Location: PIN_AA2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[1]	=>  Location: PIN_AA1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[2]	=>  Location: PIN_W2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[3]	=>  Location: PIN_Y3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[4]	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[5]	=>  Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[6]	=>  Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[7]	=>  Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[8]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[9]	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[0]	=>  Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[1]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[2]	=>  Location: PIN_W22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[3]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[4]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[5]	=>  Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[6]	=>  Location: PIN_AA22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[0]	=>  Location: PIN_AA20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[1]	=>  Location: PIN_AB20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[2]	=>  Location: PIN_AA19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[3]	=>  Location: PIN_AA18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[4]	=>  Location: PIN_AB18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[5]	=>  Location: PIN_AA17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[6]	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[0]	=>  Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[1]	=>  Location: PIN_AB17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[2]	=>  Location: PIN_AA10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[3]	=>  Location: PIN_Y14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[4]	=>  Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[5]	=>  Location: PIN_AB22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[6]	=>  Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[0]	=>  Location: PIN_Y16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[1]	=>  Location: PIN_W16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[2]	=>  Location: PIN_Y17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[3]	=>  Location: PIN_V16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[4]	=>  Location: PIN_U17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[5]	=>  Location: PIN_V18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[6]	=>  Location: PIN_V19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[0]	=>  Location: PIN_U20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[1]	=>  Location: PIN_Y20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[2]	=>  Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[3]	=>  Location: PIN_U16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[4]	=>  Location: PIN_U15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[5]	=>  Location: PIN_Y15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[6]	=>  Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[0]	=>  Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[1]	=>  Location: PIN_M8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[2]	=>  Location: PIN_T14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[3]	=>  Location: PIN_P14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[4]	=>  Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[5]	=>  Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[6]	=>  Location: PIN_W19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- DATA_OUT[0]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[1]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[2]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[3]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[4]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[5]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[6]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[7]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOUT_DEBUG[0]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOUT_DEBUG[1]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOUT_DEBUG[2]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOUT_DEBUG[3]	=>  Location: PIN_H9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOUT_DEBUG[4]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOUT_DEBUG[5]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOUT_DEBUG[6]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOUT_DEBUG[7]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOUT_DEBUG[8]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FLAG_DEBUG_0	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FLAG_FLIPFLOP_0	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_M9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_U13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AB13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_M6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_U7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_W9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_M7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FPGA_RESET_N	=>  Location: PIN_P22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_T13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_T12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AB15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL ww_DATA_OUT : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_PCOUT_DEBUG : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_FLAG_DEBUG_0 : std_logic;
SIGNAL ww_FLAG_FLIPFLOP_0 : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \ROM|memROM~0_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~6\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~9_sumout\ : std_logic;
SIGNAL \ROM|memROM~27_combout\ : std_logic;
SIGNAL \ROM|memROM~28_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~10\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~13_sumout\ : std_logic;
SIGNAL \CPU|MUXproxPC|saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM|memROM~16_combout\ : std_logic;
SIGNAL \ROM|memROM~17_combout\ : std_logic;
SIGNAL \CPU|DECODER1|saida~9_combout\ : std_logic;
SIGNAL \ROM|memROM~21_combout\ : std_logic;
SIGNAL \ROM|memROM~22_combout\ : std_logic;
SIGNAL \CPU|MUXproxPC|saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \ROM|memROM~10_combout\ : std_logic;
SIGNAL \ROM|memROM~11_combout\ : std_logic;
SIGNAL \CPU|DECODER1|saida[6]~6_combout\ : std_logic;
SIGNAL \CPU|DECODER1|saida[5]~2_combout\ : std_logic;
SIGNAL \CPU|DECODER1|saida[6]~7_combout\ : std_logic;
SIGNAL \ROM|memROM~1_combout\ : std_logic;
SIGNAL \ROM|memROM~2_combout\ : std_logic;
SIGNAL \ROM|memROM~29_combout\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \ROM|memROM~8_combout\ : std_logic;
SIGNAL \ROM|memROM~5_combout\ : std_logic;
SIGNAL \ROM|memROM~6_combout\ : std_logic;
SIGNAL \ROM|memROM~4_combout\ : std_logic;
SIGNAL \ROM|memROM~7_combout\ : std_logic;
SIGNAL \ROM|memROM~3_combout\ : std_logic;
SIGNAL \AND_SW0_7|saida~2_combout\ : std_logic;
SIGNAL \CPU|DECODER1|saida[2]~0_combout\ : std_logic;
SIGNAL \CPU|DECODER1|saida[2]~1_combout\ : std_logic;
SIGNAL \ROM|memROM~19_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM|memROM~18_combout\ : std_logic;
SIGNAL \ROM|memROM~23_combout\ : std_logic;
SIGNAL \ROM|memROM~25_combout\ : std_logic;
SIGNAL \AND_SW0_7|saida~0_combout\ : std_logic;
SIGNAL \AND_SW0_7|saida~1_combout\ : std_logic;
SIGNAL \AND_SW0_7|saida~3_combout\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \RAM64|ram~179feeder_combout\ : std_logic;
SIGNAL \RAM64|process_0~0_combout\ : std_logic;
SIGNAL \RAM64|process_0~1_combout\ : std_logic;
SIGNAL \ROM|memROM~9_combout\ : std_logic;
SIGNAL \RAM64|ram~775_combout\ : std_logic;
SIGNAL \RAM64|ram~776_combout\ : std_logic;
SIGNAL \RAM64|ram~179_q\ : std_logic;
SIGNAL \RAM64|ram~711_combout\ : std_logic;
SIGNAL \RAM64|ram~712_combout\ : std_logic;
SIGNAL \RAM64|ram~147_q\ : std_logic;
SIGNAL \RAM64|ram~155feeder_combout\ : std_logic;
SIGNAL \RAM64|ram~719_combout\ : std_logic;
SIGNAL \RAM64|ram~720_combout\ : std_logic;
SIGNAL \RAM64|ram~155_q\ : std_logic;
SIGNAL \RAM64|ram~783_combout\ : std_logic;
SIGNAL \RAM64|ram~784_combout\ : std_logic;
SIGNAL \RAM64|ram~187_q\ : std_logic;
SIGNAL \RAM64|ram~613_combout\ : std_logic;
SIGNAL \RAM64|ram~727_combout\ : std_logic;
SIGNAL \RAM64|ram~728_combout\ : std_logic;
SIGNAL \RAM64|ram~83_q\ : std_logic;
SIGNAL \RAM64|ram~115feeder_combout\ : std_logic;
SIGNAL \RAM64|ram~791_combout\ : std_logic;
SIGNAL \RAM64|ram~792_combout\ : std_logic;
SIGNAL \RAM64|ram~115_q\ : std_logic;
SIGNAL \RAM64|ram~91feeder_combout\ : std_logic;
SIGNAL \RAM64|ram~731_combout\ : std_logic;
SIGNAL \RAM64|ram~732_combout\ : std_logic;
SIGNAL \RAM64|ram~91_q\ : std_logic;
SIGNAL \RAM64|ram~799_combout\ : std_logic;
SIGNAL \RAM64|ram~800_combout\ : std_logic;
SIGNAL \RAM64|ram~123_q\ : std_logic;
SIGNAL \RAM64|ram~612_combout\ : std_logic;
SIGNAL \RAM64|ram~807_combout\ : std_logic;
SIGNAL \RAM64|ram~808_combout\ : std_logic;
SIGNAL \RAM64|ram~243_q\ : std_logic;
SIGNAL \RAM64|ram~747_combout\ : std_logic;
SIGNAL \RAM64|ram~748_combout\ : std_logic;
SIGNAL \RAM64|ram~219_q\ : std_logic;
SIGNAL \RAM64|ram~743_combout\ : std_logic;
SIGNAL \RAM64|ram~744_combout\ : std_logic;
SIGNAL \RAM64|ram~211_q\ : std_logic;
SIGNAL \RAM64|ram~815_combout\ : std_logic;
SIGNAL \RAM64|ram~816_combout\ : std_logic;
SIGNAL \RAM64|ram~251_q\ : std_logic;
SIGNAL \RAM64|ram~614_combout\ : std_logic;
SIGNAL \RAM64|ram~695_combout\ : std_logic;
SIGNAL \RAM64|ram~696_combout\ : std_logic;
SIGNAL \RAM64|ram~19_q\ : std_logic;
SIGNAL \RAM64|ram~27feeder_combout\ : std_logic;
SIGNAL \RAM64|ram~703_combout\ : std_logic;
SIGNAL \RAM64|ram~704_combout\ : std_logic;
SIGNAL \RAM64|ram~27_q\ : std_logic;
SIGNAL \RAM64|ram~759_combout\ : std_logic;
SIGNAL \RAM64|ram~760_combout\ : std_logic;
SIGNAL \RAM64|ram~51_q\ : std_logic;
SIGNAL \RAM64|ram~767_combout\ : std_logic;
SIGNAL \RAM64|ram~768_combout\ : std_logic;
SIGNAL \RAM64|ram~59_q\ : std_logic;
SIGNAL \RAM64|ram~611_combout\ : std_logic;
SIGNAL \RAM64|ram~615_combout\ : std_logic;
SIGNAL \RAM64|ram~765_combout\ : std_logic;
SIGNAL \RAM64|ram~766_combout\ : std_logic;
SIGNAL \RAM64|ram~323_q\ : std_logic;
SIGNAL \RAM64|ram~701_combout\ : std_logic;
SIGNAL \RAM64|ram~702_combout\ : std_logic;
SIGNAL \RAM64|ram~291_q\ : std_logic;
SIGNAL \RAM64|ram~709_combout\ : std_logic;
SIGNAL \RAM64|ram~710_combout\ : std_logic;
SIGNAL \RAM64|ram~299_q\ : std_logic;
SIGNAL \RAM64|ram~773_combout\ : std_logic;
SIGNAL \RAM64|ram~774_combout\ : std_logic;
SIGNAL \RAM64|ram~331_q\ : std_logic;
SIGNAL \RAM64|ram~626_combout\ : std_logic;
SIGNAL \RAM64|ram~725_combout\ : std_logic;
SIGNAL \RAM64|ram~726_combout\ : std_logic;
SIGNAL \RAM64|ram~427_q\ : std_logic;
SIGNAL \RAM64|ram~717_combout\ : std_logic;
SIGNAL \RAM64|ram~718_combout\ : std_logic;
SIGNAL \RAM64|ram~419_q\ : std_logic;
SIGNAL \RAM64|ram~781_combout\ : std_logic;
SIGNAL \RAM64|ram~782_combout\ : std_logic;
SIGNAL \RAM64|ram~451_q\ : std_logic;
SIGNAL \RAM64|ram~789_combout\ : std_logic;
SIGNAL \RAM64|ram~790_combout\ : std_logic;
SIGNAL \RAM64|ram~459_q\ : std_logic;
SIGNAL \RAM64|ram~628_combout\ : std_logic;
SIGNAL \RAM64|ram~753_combout\ : std_logic;
SIGNAL \RAM64|ram~754_combout\ : std_logic;
SIGNAL \RAM64|ram~483_q\ : std_logic;
SIGNAL \RAM64|ram~821_combout\ : std_logic;
SIGNAL \RAM64|ram~822_combout\ : std_logic;
SIGNAL \RAM64|ram~523_q\ : std_logic;
SIGNAL \RAM64|ram~757_combout\ : std_logic;
SIGNAL \RAM64|ram~758_combout\ : std_logic;
SIGNAL \RAM64|ram~491_q\ : std_logic;
SIGNAL \RAM64|ram~813_combout\ : std_logic;
SIGNAL \RAM64|ram~814_combout\ : std_logic;
SIGNAL \RAM64|ram~515_q\ : std_logic;
SIGNAL \RAM64|ram~629_combout\ : std_logic;
SIGNAL \RAM64|ram~737_combout\ : std_logic;
SIGNAL \RAM64|ram~738_combout\ : std_logic;
SIGNAL \RAM64|ram~355_q\ : std_logic;
SIGNAL \RAM64|ram~805_combout\ : std_logic;
SIGNAL \RAM64|ram~806_combout\ : std_logic;
SIGNAL \RAM64|ram~395_q\ : std_logic;
SIGNAL \RAM64|ram~797_combout\ : std_logic;
SIGNAL \RAM64|ram~798_combout\ : std_logic;
SIGNAL \RAM64|ram~387_q\ : std_logic;
SIGNAL \RAM64|ram~741_combout\ : std_logic;
SIGNAL \RAM64|ram~742_combout\ : std_logic;
SIGNAL \RAM64|ram~363_q\ : std_logic;
SIGNAL \RAM64|ram~627_combout\ : std_logic;
SIGNAL \RAM64|ram~630_combout\ : std_logic;
SIGNAL \RAM64|ram~723_combout\ : std_logic;
SIGNAL \RAM64|ram~724_combout\ : std_logic;
SIGNAL \RAM64|ram~171_q\ : std_logic;
SIGNAL \RAM64|ram~715_combout\ : std_logic;
SIGNAL \RAM64|ram~716_combout\ : std_logic;
SIGNAL \RAM64|ram~163_q\ : std_logic;
SIGNAL \RAM64|ram~751_combout\ : std_logic;
SIGNAL \RAM64|ram~752_combout\ : std_logic;
SIGNAL \RAM64|ram~227_q\ : std_logic;
SIGNAL \RAM64|ram~755_combout\ : std_logic;
SIGNAL \RAM64|ram~756_combout\ : std_logic;
SIGNAL \RAM64|ram~235_q\ : std_logic;
SIGNAL \RAM64|ram~623_combout\ : std_logic;
SIGNAL \RAM64|ram~739_combout\ : std_logic;
SIGNAL \RAM64|ram~740_combout\ : std_logic;
SIGNAL \RAM64|ram~107_q\ : std_logic;
SIGNAL \RAM64|ram~35feeder_combout\ : std_logic;
SIGNAL \RAM64|ram~699_combout\ : std_logic;
SIGNAL \RAM64|ram~700_combout\ : std_logic;
SIGNAL \RAM64|ram~35_q\ : std_logic;
SIGNAL \RAM64|ram~99feeder_combout\ : std_logic;
SIGNAL \RAM64|ram~735_combout\ : std_logic;
SIGNAL \RAM64|ram~736_combout\ : std_logic;
SIGNAL \RAM64|ram~99_q\ : std_logic;
SIGNAL \RAM64|ram~707_combout\ : std_logic;
SIGNAL \RAM64|ram~708_combout\ : std_logic;
SIGNAL \RAM64|ram~43_q\ : std_logic;
SIGNAL \RAM64|ram~621_combout\ : std_logic;
SIGNAL \RAM64|ram~763_combout\ : std_logic;
SIGNAL \RAM64|ram~764_combout\ : std_logic;
SIGNAL \RAM64|ram~67_q\ : std_logic;
SIGNAL \RAM64|ram~795_combout\ : std_logic;
SIGNAL \RAM64|ram~796_combout\ : std_logic;
SIGNAL \RAM64|ram~131_q\ : std_logic;
SIGNAL \RAM64|ram~771_combout\ : std_logic;
SIGNAL \RAM64|ram~772_combout\ : std_logic;
SIGNAL \RAM64|ram~75_q\ : std_logic;
SIGNAL \RAM64|ram~803_combout\ : std_logic;
SIGNAL \RAM64|ram~804_combout\ : std_logic;
SIGNAL \RAM64|ram~139_q\ : std_logic;
SIGNAL \RAM64|ram~622_combout\ : std_logic;
SIGNAL \RAM64|ram~779_combout\ : std_logic;
SIGNAL \RAM64|ram~780_combout\ : std_logic;
SIGNAL \RAM64|ram~195_q\ : std_logic;
SIGNAL \RAM64|ram~787_combout\ : std_logic;
SIGNAL \RAM64|ram~788_combout\ : std_logic;
SIGNAL \RAM64|ram~203_q\ : std_logic;
SIGNAL \RAM64|ram~259feeder_combout\ : std_logic;
SIGNAL \RAM64|ram~811_combout\ : std_logic;
SIGNAL \RAM64|ram~812_combout\ : std_logic;
SIGNAL \RAM64|ram~259_q\ : std_logic;
SIGNAL \RAM64|ram~819_combout\ : std_logic;
SIGNAL \RAM64|ram~820_combout\ : std_logic;
SIGNAL \RAM64|ram~267_q\ : std_logic;
SIGNAL \RAM64|ram~624_combout\ : std_logic;
SIGNAL \RAM64|ram~625_combout\ : std_logic;
SIGNAL \RAM64|ram~339feeder_combout\ : std_logic;
SIGNAL \RAM64|ram~729_combout\ : std_logic;
SIGNAL \RAM64|ram~730_combout\ : std_logic;
SIGNAL \RAM64|ram~339_q\ : std_logic;
SIGNAL \RAM64|ram~745_combout\ : std_logic;
SIGNAL \RAM64|ram~746_combout\ : std_logic;
SIGNAL \RAM64|ram~467_q\ : std_logic;
SIGNAL \RAM64|ram~733_combout\ : std_logic;
SIGNAL \RAM64|ram~734_combout\ : std_logic;
SIGNAL \RAM64|ram~347_q\ : std_logic;
SIGNAL \RAM64|ram~749_combout\ : std_logic;
SIGNAL \RAM64|ram~750_combout\ : std_logic;
SIGNAL \RAM64|ram~475_q\ : std_logic;
SIGNAL \RAM64|ram~617_combout\ : std_logic;
SIGNAL \RAM64|ram~801_combout\ : std_logic;
SIGNAL \RAM64|ram~802_combout\ : std_logic;
SIGNAL \RAM64|ram~379_q\ : std_logic;
SIGNAL \RAM64|ram~809_combout\ : std_logic;
SIGNAL \RAM64|ram~810_combout\ : std_logic;
SIGNAL \RAM64|ram~499_q\ : std_logic;
SIGNAL \RAM64|ram~793_combout\ : std_logic;
SIGNAL \RAM64|ram~794_combout\ : std_logic;
SIGNAL \RAM64|ram~371_q\ : std_logic;
SIGNAL \RAM64|ram~817_combout\ : std_logic;
SIGNAL \RAM64|ram~818_combout\ : std_logic;
SIGNAL \RAM64|ram~507_q\ : std_logic;
SIGNAL \RAM64|ram~619_combout\ : std_logic;
SIGNAL \RAM64|ram~307feeder_combout\ : std_logic;
SIGNAL \RAM64|ram~761_combout\ : std_logic;
SIGNAL \RAM64|ram~762_combout\ : std_logic;
SIGNAL \RAM64|ram~307_q\ : std_logic;
SIGNAL \RAM64|ram~769_combout\ : std_logic;
SIGNAL \RAM64|ram~770_combout\ : std_logic;
SIGNAL \RAM64|ram~315_q\ : std_logic;
SIGNAL \RAM64|ram~435feeder_combout\ : std_logic;
SIGNAL \RAM64|ram~777_combout\ : std_logic;
SIGNAL \RAM64|ram~778_combout\ : std_logic;
SIGNAL \RAM64|ram~435_q\ : std_logic;
SIGNAL \RAM64|ram~785_combout\ : std_logic;
SIGNAL \RAM64|ram~786_combout\ : std_logic;
SIGNAL \RAM64|ram~443_q\ : std_logic;
SIGNAL \RAM64|ram~618_combout\ : std_logic;
SIGNAL \RAM64|ram~705_combout\ : std_logic;
SIGNAL \RAM64|ram~706_combout\ : std_logic;
SIGNAL \RAM64|ram~283_q\ : std_logic;
SIGNAL \RAM64|ram~697_combout\ : std_logic;
SIGNAL \RAM64|ram~698_combout\ : std_logic;
SIGNAL \RAM64|ram~275_q\ : std_logic;
SIGNAL \RAM64|ram~713_combout\ : std_logic;
SIGNAL \RAM64|ram~714_combout\ : std_logic;
SIGNAL \RAM64|ram~403_q\ : std_logic;
SIGNAL \RAM64|ram~721_combout\ : std_logic;
SIGNAL \RAM64|ram~722_combout\ : std_logic;
SIGNAL \RAM64|ram~411_q\ : std_logic;
SIGNAL \RAM64|ram~616_combout\ : std_logic;
SIGNAL \RAM64|ram~620_combout\ : std_logic;
SIGNAL \RAM64|ram~631_combout\ : std_logic;
SIGNAL \DATA_IN[4]~9_combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \ROM|memROM~33_combout\ : std_logic;
SIGNAL \ROM|memROM~32_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \RAM64|ram~41_q\ : std_logic;
SIGNAL \RAM64|ram~65_q\ : std_logic;
SIGNAL \RAM64|ram~33_q\ : std_logic;
SIGNAL \RAM64|ram~73_q\ : std_logic;
SIGNAL \RAM64|ram~571_combout\ : std_logic;
SIGNAL \RAM64|ram~121_q\ : std_logic;
SIGNAL \RAM64|ram~89feeder_combout\ : std_logic;
SIGNAL \RAM64|ram~89_q\ : std_logic;
SIGNAL \RAM64|ram~81_q\ : std_logic;
SIGNAL \RAM64|ram~113_q\ : std_logic;
SIGNAL \RAM64|ram~570_combout\ : std_logic;
SIGNAL \RAM64|ram~17_q\ : std_logic;
SIGNAL \RAM64|ram~49feeder_combout\ : std_logic;
SIGNAL \RAM64|ram~49_q\ : std_logic;
SIGNAL \RAM64|ram~25_q\ : std_logic;
SIGNAL \RAM64|ram~57_q\ : std_logic;
SIGNAL \RAM64|ram~569_combout\ : std_logic;
SIGNAL \RAM64|ram~105_q\ : std_logic;
SIGNAL \RAM64|ram~97feeder_combout\ : std_logic;
SIGNAL \RAM64|ram~97_q\ : std_logic;
SIGNAL \RAM64|ram~129_q\ : std_logic;
SIGNAL \RAM64|ram~137_q\ : std_logic;
SIGNAL \RAM64|ram~572_combout\ : std_logic;
SIGNAL \RAM64|ram~573_combout\ : std_logic;
SIGNAL \RAM64|ram~409_q\ : std_logic;
SIGNAL \RAM64|ram~401_q\ : std_logic;
SIGNAL \RAM64|ram~441_q\ : std_logic;
SIGNAL \RAM64|ram~433_q\ : std_logic;
SIGNAL \RAM64|ram~584_combout\ : std_logic;
SIGNAL \RAM64|ram~489feeder_combout\ : std_logic;
SIGNAL \RAM64|ram~489_q\ : std_logic;
SIGNAL \RAM64|ram~513feeder_combout\ : std_logic;
SIGNAL \RAM64|ram~513_q\ : std_logic;
SIGNAL \RAM64|ram~481_q\ : std_logic;
SIGNAL \RAM64|ram~521_q\ : std_logic;
SIGNAL \RAM64|ram~587_combout\ : std_logic;
SIGNAL \RAM64|ram~505_q\ : std_logic;
SIGNAL \RAM64|ram~497_q\ : std_logic;
SIGNAL \RAM64|ram~465_q\ : std_logic;
SIGNAL \RAM64|ram~473feeder_combout\ : std_logic;
SIGNAL \RAM64|ram~473_q\ : std_logic;
SIGNAL \RAM64|ram~585_combout\ : std_logic;
SIGNAL \RAM64|ram~457_q\ : std_logic;
SIGNAL \RAM64|ram~449_q\ : std_logic;
SIGNAL \RAM64|ram~417feeder_combout\ : std_logic;
SIGNAL \RAM64|ram~417_q\ : std_logic;
SIGNAL \RAM64|ram~425_q\ : std_logic;
SIGNAL \RAM64|ram~586_combout\ : std_logic;
SIGNAL \RAM64|ram~588_combout\ : std_logic;
SIGNAL \RAM64|ram~297feeder_combout\ : std_logic;
SIGNAL \RAM64|ram~297_q\ : std_logic;
SIGNAL \RAM64|ram~361feeder_combout\ : std_logic;
SIGNAL \RAM64|ram~361_q\ : std_logic;
SIGNAL \RAM64|ram~393_q\ : std_logic;
SIGNAL \RAM64|ram~329_q\ : std_logic;
SIGNAL \RAM64|ram~577_combout\ : std_logic;
SIGNAL \RAM64|ram~273_q\ : std_logic;
SIGNAL \RAM64|ram~305_q\ : std_logic;
SIGNAL \RAM64|ram~337_q\ : std_logic;
SIGNAL \RAM64|ram~369_q\ : std_logic;
SIGNAL \RAM64|ram~574_combout\ : std_logic;
SIGNAL \RAM64|ram~321_q\ : std_logic;
SIGNAL \RAM64|ram~385feeder_combout\ : std_logic;
SIGNAL \RAM64|ram~385_q\ : std_logic;
SIGNAL \RAM64|ram~353feeder_combout\ : std_logic;
SIGNAL \RAM64|ram~353_q\ : std_logic;
SIGNAL \RAM64|ram~289feeder_combout\ : std_logic;
SIGNAL \RAM64|ram~289_q\ : std_logic;
SIGNAL \RAM64|ram~576_combout\ : std_logic;
SIGNAL \RAM64|ram~345_q\ : std_logic;
SIGNAL \RAM64|ram~377_q\ : std_logic;
SIGNAL \RAM64|ram~313_q\ : std_logic;
SIGNAL \RAM64|ram~281_q\ : std_logic;
SIGNAL \RAM64|ram~575_combout\ : std_logic;
SIGNAL \RAM64|ram~578_combout\ : std_logic;
SIGNAL \RAM64|ram~177_q\ : std_logic;
SIGNAL \RAM64|ram~161_q\ : std_logic;
SIGNAL \RAM64|ram~145_q\ : std_logic;
SIGNAL \RAM64|ram~193_q\ : std_logic;
SIGNAL \RAM64|ram~579_combout\ : std_logic;
SIGNAL \RAM64|ram~169_q\ : std_logic;
SIGNAL \RAM64|ram~185_q\ : std_logic;
SIGNAL \RAM64|ram~153_q\ : std_logic;
SIGNAL \RAM64|ram~201_q\ : std_logic;
SIGNAL \RAM64|ram~581_combout\ : std_logic;
SIGNAL \RAM64|ram~249_q\ : std_logic;
SIGNAL \RAM64|ram~217_q\ : std_logic;
SIGNAL \RAM64|ram~233feeder_combout\ : std_logic;
SIGNAL \RAM64|ram~233_q\ : std_logic;
SIGNAL \RAM64|ram~265_q\ : std_logic;
SIGNAL \RAM64|ram~582_combout\ : std_logic;
SIGNAL \RAM64|ram~225feeder_combout\ : std_logic;
SIGNAL \RAM64|ram~225_q\ : std_logic;
SIGNAL \RAM64|ram~241_q\ : std_logic;
SIGNAL \RAM64|ram~209_q\ : std_logic;
SIGNAL \RAM64|ram~257_q\ : std_logic;
SIGNAL \RAM64|ram~580_combout\ : std_logic;
SIGNAL \RAM64|ram~583_combout\ : std_logic;
SIGNAL \RAM64|ram~589_combout\ : std_logic;
SIGNAL \DATA_IN[2]~7_combout\ : std_logic;
SIGNAL \ROM|memROM~31_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \RAM64|ram~232_q\ : std_logic;
SIGNAL \RAM64|ram~360_q\ : std_logic;
SIGNAL \RAM64|ram~104_q\ : std_logic;
SIGNAL \RAM64|ram~488_q\ : std_logic;
SIGNAL \RAM64|ram~564_combout\ : std_logic;
SIGNAL \RAM64|ram~200_q\ : std_logic;
SIGNAL \RAM64|ram~328_q\ : std_logic;
SIGNAL \RAM64|ram~72_q\ : std_logic;
SIGNAL \RAM64|ram~456_q\ : std_logic;
SIGNAL \RAM64|ram~565_combout\ : std_logic;
SIGNAL \RAM64|ram~264_q\ : std_logic;
SIGNAL \RAM64|ram~136_q\ : std_logic;
SIGNAL \RAM64|ram~392_q\ : std_logic;
SIGNAL \RAM64|ram~520_q\ : std_logic;
SIGNAL \RAM64|ram~566_combout\ : std_logic;
SIGNAL \RAM64|ram~40_q\ : std_logic;
SIGNAL \RAM64|ram~168_q\ : std_logic;
SIGNAL \RAM64|ram~296_q\ : std_logic;
SIGNAL \RAM64|ram~424_q\ : std_logic;
SIGNAL \RAM64|ram~563_combout\ : std_logic;
SIGNAL \RAM64|ram~567_combout\ : std_logic;
SIGNAL \RAM64|ram~256_q\ : std_logic;
SIGNAL \RAM64|ram~128feeder_combout\ : std_logic;
SIGNAL \RAM64|ram~128_q\ : std_logic;
SIGNAL \RAM64|ram~384feeder_combout\ : std_logic;
SIGNAL \RAM64|ram~384_q\ : std_logic;
SIGNAL \RAM64|ram~512_q\ : std_logic;
SIGNAL \RAM64|ram~556_combout\ : std_logic;
SIGNAL \RAM64|ram~96_q\ : std_logic;
SIGNAL \RAM64|ram~224_q\ : std_logic;
SIGNAL \RAM64|ram~352_q\ : std_logic;
SIGNAL \RAM64|ram~480_q\ : std_logic;
SIGNAL \RAM64|ram~554_combout\ : std_logic;
SIGNAL \RAM64|ram~160feeder_combout\ : std_logic;
SIGNAL \RAM64|ram~160_q\ : std_logic;
SIGNAL \RAM64|ram~32_q\ : std_logic;
SIGNAL \RAM64|ram~288_q\ : std_logic;
SIGNAL \RAM64|ram~416_q\ : std_logic;
SIGNAL \RAM64|ram~553_combout\ : std_logic;
SIGNAL \RAM64|ram~320_q\ : std_logic;
SIGNAL \RAM64|ram~192_q\ : std_logic;
SIGNAL \RAM64|ram~64_q\ : std_logic;
SIGNAL \RAM64|ram~448_q\ : std_logic;
SIGNAL \RAM64|ram~555_combout\ : std_logic;
SIGNAL \RAM64|ram~557_combout\ : std_logic;
SIGNAL \RAM64|ram~112feeder_combout\ : std_logic;
SIGNAL \RAM64|ram~112_q\ : std_logic;
SIGNAL \RAM64|ram~240_q\ : std_logic;
SIGNAL \RAM64|ram~368feeder_combout\ : std_logic;
SIGNAL \RAM64|ram~368_q\ : std_logic;
SIGNAL \RAM64|ram~496_q\ : std_logic;
SIGNAL \RAM64|ram~551_combout\ : std_logic;
SIGNAL \RAM64|ram~16_q\ : std_logic;
SIGNAL \RAM64|ram~144feeder_combout\ : std_logic;
SIGNAL \RAM64|ram~144_q\ : std_logic;
SIGNAL \RAM64|ram~272_q\ : std_logic;
SIGNAL \RAM64|ram~400_q\ : std_logic;
SIGNAL \RAM64|ram~548_combout\ : std_logic;
SIGNAL \RAM64|ram~304_q\ : std_logic;
SIGNAL \RAM64|ram~176_q\ : std_logic;
SIGNAL \RAM64|ram~432_q\ : std_logic;
SIGNAL \RAM64|ram~48feeder_combout\ : std_logic;
SIGNAL \RAM64|ram~48_q\ : std_logic;
SIGNAL \RAM64|ram~550_combout\ : std_logic;
SIGNAL \RAM64|ram~208_q\ : std_logic;
SIGNAL \RAM64|ram~336feeder_combout\ : std_logic;
SIGNAL \RAM64|ram~336_q\ : std_logic;
SIGNAL \RAM64|ram~80_q\ : std_logic;
SIGNAL \RAM64|ram~464_q\ : std_logic;
SIGNAL \RAM64|ram~549_combout\ : std_logic;
SIGNAL \RAM64|ram~552_combout\ : std_logic;
SIGNAL \RAM64|ram~184_q\ : std_logic;
SIGNAL \RAM64|ram~312_q\ : std_logic;
SIGNAL \RAM64|ram~56_q\ : std_logic;
SIGNAL \RAM64|ram~440_q\ : std_logic;
SIGNAL \RAM64|ram~560_combout\ : std_logic;
SIGNAL \RAM64|ram~344_q\ : std_logic;
SIGNAL \RAM64|ram~216_q\ : std_logic;
SIGNAL \RAM64|ram~88feeder_combout\ : std_logic;
SIGNAL \RAM64|ram~88_q\ : std_logic;
SIGNAL \RAM64|ram~472_q\ : std_logic;
SIGNAL \RAM64|ram~559_combout\ : std_logic;
SIGNAL \RAM64|ram~120_q\ : std_logic;
SIGNAL \RAM64|ram~376_q\ : std_logic;
SIGNAL \RAM64|ram~248_q\ : std_logic;
SIGNAL \RAM64|ram~504_q\ : std_logic;
SIGNAL \RAM64|ram~561_combout\ : std_logic;
SIGNAL \RAM64|ram~152feeder_combout\ : std_logic;
SIGNAL \RAM64|ram~152_q\ : std_logic;
SIGNAL \RAM64|ram~24_q\ : std_logic;
SIGNAL \RAM64|ram~280_q\ : std_logic;
SIGNAL \RAM64|ram~408_q\ : std_logic;
SIGNAL \RAM64|ram~558_combout\ : std_logic;
SIGNAL \RAM64|ram~562_combout\ : std_logic;
SIGNAL \RAM64|ram~568_combout\ : std_logic;
SIGNAL \DATA_IN[1]~6_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~2\ : std_logic;
SIGNAL \CPU|ULA1|Add0~5_sumout\ : std_logic;
SIGNAL \CPU|DECODER1|saida[4]~3_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \DATA_IN[0]~0_combout\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \DATA_IN[0]~3_combout\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \DATA_IN[0]~1_combout\ : std_logic;
SIGNAL \FPGA_RESET_N~input_o\ : std_logic;
SIGNAL \DATA_IN[0]~4_combout\ : std_logic;
SIGNAL \AND_HEX5|saida~0_combout\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \detectorSubDebounceKey1|edgeDetector|saidaQ~0_combout\ : std_logic;
SIGNAL \detectorSubDebounceKey1|edgeDetector|saidaQ~q\ : std_logic;
SIGNAL \detectorSubDebounceKey1|edgeDetector|saida~combout\ : std_logic;
SIGNAL \detectorSubDebounceKey1|FFP|DOUT~feeder_combout\ : std_logic;
SIGNAL \ROM|memROM~24_combout\ : std_logic;
SIGNAL \ROM|memROM~26_combout\ : std_logic;
SIGNAL \detectorSubDebounceKey0|limpa_leitura~0_combout\ : std_logic;
SIGNAL \CPU|DECODER1|Equal5~0_combout\ : std_logic;
SIGNAL \detectorSubDebounceKey0|limpa_leitura~combout\ : std_logic;
SIGNAL \detectorSubDebounceKey1|FFP|DOUT~q\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \detectorSubDebounceKey0|edgeDetector|saidaQ~0_combout\ : std_logic;
SIGNAL \detectorSubDebounceKey0|edgeDetector|saidaQ~q\ : std_logic;
SIGNAL \detectorSubDebounceKey0|edgeDetector|saida~combout\ : std_logic;
SIGNAL \detectorSubDebounceKey0|FFP|DOUT~feeder_combout\ : std_logic;
SIGNAL \detectorSubDebounceKey0|FFP|DOUT~q\ : std_logic;
SIGNAL \DATA_IN[0]~2_combout\ : std_logic;
SIGNAL \DATA_IN[0]~5_combout\ : std_logic;
SIGNAL \RAM64|ram~191_q\ : std_logic;
SIGNAL \RAM64|ram~447_q\ : std_logic;
SIGNAL \RAM64|ram~175feeder_combout\ : std_logic;
SIGNAL \RAM64|ram~175_q\ : std_logic;
SIGNAL \RAM64|ram~431_q\ : std_logic;
SIGNAL \RAM64|ram~539_combout\ : std_logic;
SIGNAL \RAM64|ram~319_q\ : std_logic;
SIGNAL \RAM64|ram~63_q\ : std_logic;
SIGNAL \RAM64|ram~47_q\ : std_logic;
SIGNAL \RAM64|ram~303_q\ : std_logic;
SIGNAL \RAM64|ram~537_combout\ : std_logic;
SIGNAL \RAM64|ram~327feeder_combout\ : std_logic;
SIGNAL \RAM64|ram~327_q\ : std_logic;
SIGNAL \RAM64|ram~71_q\ : std_logic;
SIGNAL \RAM64|ram~311feeder_combout\ : std_logic;
SIGNAL \RAM64|ram~311_q\ : std_logic;
SIGNAL \RAM64|ram~55feeder_combout\ : std_logic;
SIGNAL \RAM64|ram~55_q\ : std_logic;
SIGNAL \RAM64|ram~538_combout\ : std_logic;
SIGNAL \RAM64|ram~455feeder_combout\ : std_logic;
SIGNAL \RAM64|ram~455_q\ : std_logic;
SIGNAL \RAM64|ram~183_q\ : std_logic;
SIGNAL \RAM64|ram~199feeder_combout\ : std_logic;
SIGNAL \RAM64|ram~199_q\ : std_logic;
SIGNAL \RAM64|ram~439_q\ : std_logic;
SIGNAL \RAM64|ram~540_combout\ : std_logic;
SIGNAL \RAM64|ram~541_combout\ : std_logic;
SIGNAL \RAM64|ram~119feeder_combout\ : std_logic;
SIGNAL \RAM64|ram~119_q\ : std_logic;
SIGNAL \RAM64|ram~135_q\ : std_logic;
SIGNAL \RAM64|ram~375_q\ : std_logic;
SIGNAL \RAM64|ram~391_q\ : std_logic;
SIGNAL \RAM64|ram~543_combout\ : std_logic;
SIGNAL \RAM64|ram~239_q\ : std_logic;
SIGNAL \RAM64|ram~511_q\ : std_logic;
SIGNAL \RAM64|ram~495feeder_combout\ : std_logic;
SIGNAL \RAM64|ram~495_q\ : std_logic;
SIGNAL \RAM64|ram~255_q\ : std_logic;
SIGNAL \RAM64|ram~544_combout\ : std_logic;
SIGNAL \RAM64|ram~367_q\ : std_logic;
SIGNAL \RAM64|ram~383_q\ : std_logic;
SIGNAL \RAM64|ram~111_q\ : std_logic;
SIGNAL \RAM64|ram~127_q\ : std_logic;
SIGNAL \RAM64|ram~542_combout\ : std_logic;
SIGNAL \RAM64|ram~519_q\ : std_logic;
SIGNAL \RAM64|ram~263_q\ : std_logic;
SIGNAL \RAM64|ram~503_q\ : std_logic;
SIGNAL \RAM64|ram~247_q\ : std_logic;
SIGNAL \RAM64|ram~545_combout\ : std_logic;
SIGNAL \RAM64|ram~546_combout\ : std_logic;
SIGNAL \RAM64|ram~39_q\ : std_logic;
SIGNAL \RAM64|ram~23_q\ : std_logic;
SIGNAL \RAM64|ram~295feeder_combout\ : std_logic;
SIGNAL \RAM64|ram~295_q\ : std_logic;
SIGNAL \RAM64|ram~279_q\ : std_logic;
SIGNAL \RAM64|ram~528_combout\ : std_logic;
SIGNAL \RAM64|ram~407_q\ : std_logic;
SIGNAL \RAM64|ram~423_q\ : std_logic;
SIGNAL \RAM64|ram~151_q\ : std_logic;
SIGNAL \RAM64|ram~167_q\ : std_logic;
SIGNAL \RAM64|ram~530_combout\ : std_logic;
SIGNAL \RAM64|ram~287_q\ : std_logic;
SIGNAL \RAM64|ram~31feeder_combout\ : std_logic;
SIGNAL \RAM64|ram~31_q\ : std_logic;
SIGNAL \RAM64|ram~271_q\ : std_logic;
SIGNAL \RAM64|ram~15_q\ : std_logic;
SIGNAL \RAM64|ram~527_combout\ : std_logic;
SIGNAL \RAM64|ram~143_q\ : std_logic;
SIGNAL \RAM64|ram~399_q\ : std_logic;
SIGNAL \RAM64|ram~415_q\ : std_logic;
SIGNAL \RAM64|ram~159_q\ : std_logic;
SIGNAL \RAM64|ram~529_combout\ : std_logic;
SIGNAL \RAM64|ram~531_combout\ : std_logic;
SIGNAL \RAM64|ram~463_q\ : std_logic;
SIGNAL \RAM64|ram~207_q\ : std_logic;
SIGNAL \RAM64|ram~471_q\ : std_logic;
SIGNAL \RAM64|ram~215_q\ : std_logic;
SIGNAL \RAM64|ram~534_combout\ : std_logic;
SIGNAL \RAM64|ram~103_q\ : std_logic;
SIGNAL \RAM64|ram~95_q\ : std_logic;
SIGNAL \RAM64|ram~359_q\ : std_logic;
SIGNAL \RAM64|ram~351_q\ : std_logic;
SIGNAL \RAM64|ram~533_combout\ : std_logic;
SIGNAL \RAM64|ram~487feeder_combout\ : std_logic;
SIGNAL \RAM64|ram~487_q\ : std_logic;
SIGNAL \RAM64|ram~223_q\ : std_logic;
SIGNAL \RAM64|ram~479feeder_combout\ : std_logic;
SIGNAL \RAM64|ram~479_q\ : std_logic;
SIGNAL \RAM64|ram~231feeder_combout\ : std_logic;
SIGNAL \RAM64|ram~231_q\ : std_logic;
SIGNAL \RAM64|ram~535_combout\ : std_logic;
SIGNAL \RAM64|ram~79_q\ : std_logic;
SIGNAL \RAM64|ram~87_q\ : std_logic;
SIGNAL \RAM64|ram~343_q\ : std_logic;
SIGNAL \RAM64|ram~335_q\ : std_logic;
SIGNAL \RAM64|ram~532_combout\ : std_logic;
SIGNAL \RAM64|ram~536_combout\ : std_logic;
SIGNAL \RAM64|ram~547_combout\ : std_logic;
SIGNAL \DATA_IN[0]~15_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~34_cout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~22\ : std_logic;
SIGNAL \CPU|ULA1|Add1~25_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[1]~1_combout\ : std_logic;
SIGNAL \CPU|DECODER1|saida[3]~4_combout\ : std_logic;
SIGNAL \CPU|DECODER1|saida[5]~5_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~6\ : std_logic;
SIGNAL \CPU|ULA1|Add0~9_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~26\ : std_logic;
SIGNAL \CPU|ULA1|Add1~29_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[2]~2_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~10\ : std_logic;
SIGNAL \CPU|ULA1|Add0~13_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~30\ : std_logic;
SIGNAL \CPU|ULA1|Add1~1_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[3]~3_combout\ : std_logic;
SIGNAL \RAM64|ram~354_q\ : std_logic;
SIGNAL \RAM64|ram~338_q\ : std_logic;
SIGNAL \RAM64|ram~466_q\ : std_logic;
SIGNAL \RAM64|ram~482_q\ : std_logic;
SIGNAL \RAM64|ram~596_combout\ : std_logic;
SIGNAL \RAM64|ram~410_q\ : std_logic;
SIGNAL \RAM64|ram~282_q\ : std_logic;
SIGNAL \RAM64|ram~298_q\ : std_logic;
SIGNAL \RAM64|ram~426_q\ : std_logic;
SIGNAL \RAM64|ram~597_combout\ : std_logic;
SIGNAL \RAM64|ram~402_q\ : std_logic;
SIGNAL \RAM64|ram~418_q\ : std_logic;
SIGNAL \RAM64|ram~274_q\ : std_logic;
SIGNAL \RAM64|ram~290_q\ : std_logic;
SIGNAL \RAM64|ram~595_combout\ : std_logic;
SIGNAL \RAM64|ram~474_q\ : std_logic;
SIGNAL \RAM64|ram~346_q\ : std_logic;
SIGNAL \RAM64|ram~362_q\ : std_logic;
SIGNAL \RAM64|ram~490_q\ : std_logic;
SIGNAL \RAM64|ram~598_combout\ : std_logic;
SIGNAL \RAM64|ram~599_combout\ : std_logic;
SIGNAL \RAM64|ram~186_q\ : std_logic;
SIGNAL \RAM64|ram~178feeder_combout\ : std_logic;
SIGNAL \RAM64|ram~178_q\ : std_logic;
SIGNAL \RAM64|ram~194_q\ : std_logic;
SIGNAL \RAM64|ram~202_q\ : std_logic;
SIGNAL \RAM64|ram~602_combout\ : std_logic;
SIGNAL \RAM64|ram~114_q\ : std_logic;
SIGNAL \RAM64|ram~122_q\ : std_logic;
SIGNAL \RAM64|ram~130_q\ : std_logic;
SIGNAL \RAM64|ram~138_q\ : std_logic;
SIGNAL \RAM64|ram~601_combout\ : std_logic;
SIGNAL \RAM64|ram~258_q\ : std_logic;
SIGNAL \RAM64|ram~250_q\ : std_logic;
SIGNAL \RAM64|ram~266_q\ : std_logic;
SIGNAL \RAM64|ram~242_q\ : std_logic;
SIGNAL \RAM64|ram~603_combout\ : std_logic;
SIGNAL \RAM64|ram~58_q\ : std_logic;
SIGNAL \RAM64|ram~66_q\ : std_logic;
SIGNAL \RAM64|ram~50_q\ : std_logic;
SIGNAL \RAM64|ram~74_q\ : std_logic;
SIGNAL \RAM64|ram~600_combout\ : std_logic;
SIGNAL \RAM64|ram~604_combout\ : std_logic;
SIGNAL \RAM64|ram~218_q\ : std_logic;
SIGNAL \RAM64|ram~154_q\ : std_logic;
SIGNAL \RAM64|ram~234_q\ : std_logic;
SIGNAL \RAM64|ram~170_q\ : std_logic;
SIGNAL \RAM64|ram~593_combout\ : std_logic;
SIGNAL \RAM64|ram~146_q\ : std_logic;
SIGNAL \RAM64|ram~210_q\ : std_logic;
SIGNAL \RAM64|ram~162_q\ : std_logic;
SIGNAL \RAM64|ram~226_q\ : std_logic;
SIGNAL \RAM64|ram~592_combout\ : std_logic;
SIGNAL \RAM64|ram~18feeder_combout\ : std_logic;
SIGNAL \RAM64|ram~18_q\ : std_logic;
SIGNAL \RAM64|ram~82_q\ : std_logic;
SIGNAL \RAM64|ram~98_q\ : std_logic;
SIGNAL \RAM64|ram~34_q\ : std_logic;
SIGNAL \RAM64|ram~590_combout\ : std_logic;
SIGNAL \RAM64|ram~26_q\ : std_logic;
SIGNAL \RAM64|ram~106_q\ : std_logic;
SIGNAL \RAM64|ram~90feeder_combout\ : std_logic;
SIGNAL \RAM64|ram~90_q\ : std_logic;
SIGNAL \RAM64|ram~42_q\ : std_logic;
SIGNAL \RAM64|ram~591_combout\ : std_logic;
SIGNAL \RAM64|ram~594_combout\ : std_logic;
SIGNAL \RAM64|ram~450_q\ : std_logic;
SIGNAL \RAM64|ram~498_q\ : std_logic;
SIGNAL \RAM64|ram~434_q\ : std_logic;
SIGNAL \RAM64|ram~514_q\ : std_logic;
SIGNAL \RAM64|ram~607_combout\ : std_logic;
SIGNAL \RAM64|ram~370_q\ : std_logic;
SIGNAL \RAM64|ram~322_q\ : std_logic;
SIGNAL \RAM64|ram~306_q\ : std_logic;
SIGNAL \RAM64|ram~386_q\ : std_logic;
SIGNAL \RAM64|ram~605_combout\ : std_logic;
SIGNAL \RAM64|ram~330feeder_combout\ : std_logic;
SIGNAL \RAM64|ram~330_q\ : std_logic;
SIGNAL \RAM64|ram~378_q\ : std_logic;
SIGNAL \RAM64|ram~314_q\ : std_logic;
SIGNAL \RAM64|ram~394_q\ : std_logic;
SIGNAL \RAM64|ram~606_combout\ : std_logic;
SIGNAL \RAM64|ram~458feeder_combout\ : std_logic;
SIGNAL \RAM64|ram~458_q\ : std_logic;
SIGNAL \RAM64|ram~522feeder_combout\ : std_logic;
SIGNAL \RAM64|ram~522_q\ : std_logic;
SIGNAL \RAM64|ram~442_q\ : std_logic;
SIGNAL \RAM64|ram~506_q\ : std_logic;
SIGNAL \RAM64|ram~608_combout\ : std_logic;
SIGNAL \RAM64|ram~609_combout\ : std_logic;
SIGNAL \RAM64|ram~610_combout\ : std_logic;
SIGNAL \DATA_IN[3]~8_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~14\ : std_logic;
SIGNAL \CPU|ULA1|Add0~17_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~2\ : std_logic;
SIGNAL \CPU|ULA1|Add1~5_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[4]~4_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~18\ : std_logic;
SIGNAL \CPU|ULA1|Add0~21_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[5]~5_combout\ : std_logic;
SIGNAL \RAM64|ram~356_q\ : std_logic;
SIGNAL \RAM64|ram~340_q\ : std_logic;
SIGNAL \RAM64|ram~468_q\ : std_logic;
SIGNAL \RAM64|ram~484_q\ : std_logic;
SIGNAL \RAM64|ram~638_combout\ : std_logic;
SIGNAL \RAM64|ram~324_q\ : std_logic;
SIGNAL \RAM64|ram~308_q\ : std_logic;
SIGNAL \RAM64|ram~436_q\ : std_logic;
SIGNAL \RAM64|ram~452_q\ : std_logic;
SIGNAL \RAM64|ram~639_combout\ : std_logic;
SIGNAL \RAM64|ram~516_q\ : std_logic;
SIGNAL \RAM64|ram~372_q\ : std_logic;
SIGNAL \RAM64|ram~388_q\ : std_logic;
SIGNAL \RAM64|ram~500_q\ : std_logic;
SIGNAL \RAM64|ram~640_combout\ : std_logic;
SIGNAL \RAM64|ram~276_q\ : std_logic;
SIGNAL \RAM64|ram~404_q\ : std_logic;
SIGNAL \RAM64|ram~292feeder_combout\ : std_logic;
SIGNAL \RAM64|ram~292_q\ : std_logic;
SIGNAL \RAM64|ram~420_q\ : std_logic;
SIGNAL \RAM64|ram~637_combout\ : std_logic;
SIGNAL \RAM64|ram~641_combout\ : std_logic;
SIGNAL \RAM64|ram~508_q\ : std_logic;
SIGNAL \RAM64|ram~380_q\ : std_logic;
SIGNAL \RAM64|ram~316_q\ : std_logic;
SIGNAL \RAM64|ram~444_q\ : std_logic;
SIGNAL \RAM64|ram~648_combout\ : std_logic;
SIGNAL \RAM64|ram~364_q\ : std_logic;
SIGNAL \RAM64|ram~300feeder_combout\ : std_logic;
SIGNAL \RAM64|ram~300_q\ : std_logic;
SIGNAL \RAM64|ram~428_q\ : std_logic;
SIGNAL \RAM64|ram~492_q\ : std_logic;
SIGNAL \RAM64|ram~649_combout\ : std_logic;
SIGNAL \RAM64|ram~284feeder_combout\ : std_logic;
SIGNAL \RAM64|ram~284_q\ : std_logic;
SIGNAL \RAM64|ram~476_q\ : std_logic;
SIGNAL \RAM64|ram~348_q\ : std_logic;
SIGNAL \RAM64|ram~412_q\ : std_logic;
SIGNAL \RAM64|ram~647_combout\ : std_logic;
SIGNAL \RAM64|ram~396_q\ : std_logic;
SIGNAL \RAM64|ram~460_q\ : std_logic;
SIGNAL \RAM64|ram~332_q\ : std_logic;
SIGNAL \RAM64|ram~524_q\ : std_logic;
SIGNAL \RAM64|ram~650_combout\ : std_logic;
SIGNAL \RAM64|ram~651_combout\ : std_logic;
SIGNAL \RAM64|ram~220_q\ : std_logic;
SIGNAL \RAM64|ram~124_q\ : std_logic;
SIGNAL \RAM64|ram~92_q\ : std_logic;
SIGNAL \RAM64|ram~252_q\ : std_logic;
SIGNAL \RAM64|ram~643_combout\ : std_logic;
SIGNAL \RAM64|ram~268_q\ : std_logic;
SIGNAL \RAM64|ram~140_q\ : std_logic;
SIGNAL \RAM64|ram~108_q\ : std_logic;
SIGNAL \RAM64|ram~236_q\ : std_logic;
SIGNAL \RAM64|ram~645_combout\ : std_logic;
SIGNAL \RAM64|ram~172_q\ : std_logic;
SIGNAL \RAM64|ram~204_q\ : std_logic;
SIGNAL \RAM64|ram~44_q\ : std_logic;
SIGNAL \RAM64|ram~76_q\ : std_logic;
SIGNAL \RAM64|ram~644_combout\ : std_logic;
SIGNAL \RAM64|ram~28_q\ : std_logic;
SIGNAL \RAM64|ram~156feeder_combout\ : std_logic;
SIGNAL \RAM64|ram~156_q\ : std_logic;
SIGNAL \RAM64|ram~60_q\ : std_logic;
SIGNAL \RAM64|ram~188_q\ : std_logic;
SIGNAL \RAM64|ram~642_combout\ : std_logic;
SIGNAL \RAM64|ram~646_combout\ : std_logic;
SIGNAL \RAM64|ram~116_q\ : std_logic;
SIGNAL \RAM64|ram~212_q\ : std_logic;
SIGNAL \RAM64|ram~84_q\ : std_logic;
SIGNAL \RAM64|ram~244_q\ : std_logic;
SIGNAL \RAM64|ram~633_combout\ : std_logic;
SIGNAL \RAM64|ram~20_q\ : std_logic;
SIGNAL \RAM64|ram~148feeder_combout\ : std_logic;
SIGNAL \RAM64|ram~148_q\ : std_logic;
SIGNAL \RAM64|ram~52_q\ : std_logic;
SIGNAL \RAM64|ram~180_q\ : std_logic;
SIGNAL \RAM64|ram~632_combout\ : std_logic;
SIGNAL \RAM64|ram~36feeder_combout\ : std_logic;
SIGNAL \RAM64|ram~36_q\ : std_logic;
SIGNAL \RAM64|ram~68_q\ : std_logic;
SIGNAL \RAM64|ram~164_q\ : std_logic;
SIGNAL \RAM64|ram~196_q\ : std_logic;
SIGNAL \RAM64|ram~634_combout\ : std_logic;
SIGNAL \RAM64|ram~100_q\ : std_logic;
SIGNAL \RAM64|ram~132_q\ : std_logic;
SIGNAL \RAM64|ram~228_q\ : std_logic;
SIGNAL \RAM64|ram~260_q\ : std_logic;
SIGNAL \RAM64|ram~635_combout\ : std_logic;
SIGNAL \RAM64|ram~636_combout\ : std_logic;
SIGNAL \RAM64|ram~652_combout\ : std_logic;
SIGNAL \DATA_IN[5]~10_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~6\ : std_logic;
SIGNAL \CPU|ULA1|Add1~9_sumout\ : std_logic;
SIGNAL \CPU|DECODER1|saida~8_combout\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \DATA_IN[7]~13_combout\ : std_logic;
SIGNAL \DATA_IN[7]~12_combout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \RAM64|ram~381_q\ : std_logic;
SIGNAL \RAM64|ram~349_q\ : std_logic;
SIGNAL \RAM64|ram~365_q\ : std_logic;
SIGNAL \RAM64|ram~397_q\ : std_logic;
SIGNAL \RAM64|ram~661_combout\ : std_logic;
SIGNAL \RAM64|ram~285_q\ : std_logic;
SIGNAL \RAM64|ram~301feeder_combout\ : std_logic;
SIGNAL \RAM64|ram~301_q\ : std_logic;
SIGNAL \RAM64|ram~317_q\ : std_logic;
SIGNAL \RAM64|ram~333_q\ : std_logic;
SIGNAL \RAM64|ram~660_combout\ : std_logic;
SIGNAL \RAM64|ram~341_q\ : std_logic;
SIGNAL \RAM64|ram~357_q\ : std_logic;
SIGNAL \RAM64|ram~373feeder_combout\ : std_logic;
SIGNAL \RAM64|ram~373_q\ : std_logic;
SIGNAL \RAM64|ram~389_q\ : std_logic;
SIGNAL \RAM64|ram~659_combout\ : std_logic;
SIGNAL \RAM64|ram~277_q\ : std_logic;
SIGNAL \RAM64|ram~309_q\ : std_logic;
SIGNAL \RAM64|ram~293_q\ : std_logic;
SIGNAL \RAM64|ram~325_q\ : std_logic;
SIGNAL \RAM64|ram~658_combout\ : std_logic;
SIGNAL \RAM64|ram~662_combout\ : std_logic;
SIGNAL \RAM64|ram~149_q\ : std_logic;
SIGNAL \RAM64|ram~189feeder_combout\ : std_logic;
SIGNAL \RAM64|ram~189_q\ : std_logic;
SIGNAL \RAM64|ram~181_q\ : std_logic;
SIGNAL \RAM64|ram~157feeder_combout\ : std_logic;
SIGNAL \RAM64|ram~157_q\ : std_logic;
SIGNAL \RAM64|ram~663_combout\ : std_logic;
SIGNAL \RAM64|ram~229feeder_combout\ : std_logic;
SIGNAL \RAM64|ram~229_q\ : std_logic;
SIGNAL \RAM64|ram~237_q\ : std_logic;
SIGNAL \RAM64|ram~261feeder_combout\ : std_logic;
SIGNAL \RAM64|ram~261_q\ : std_logic;
SIGNAL \RAM64|ram~269_q\ : std_logic;
SIGNAL \RAM64|ram~666_combout\ : std_logic;
SIGNAL \RAM64|ram~165feeder_combout\ : std_logic;
SIGNAL \RAM64|ram~165_q\ : std_logic;
SIGNAL \RAM64|ram~173_q\ : std_logic;
SIGNAL \RAM64|ram~197_q\ : std_logic;
SIGNAL \RAM64|ram~205_q\ : std_logic;
SIGNAL \RAM64|ram~665_combout\ : std_logic;
SIGNAL \RAM64|ram~245_q\ : std_logic;
SIGNAL \RAM64|ram~213_q\ : std_logic;
SIGNAL \RAM64|ram~253_q\ : std_logic;
SIGNAL \RAM64|ram~221_q\ : std_logic;
SIGNAL \RAM64|ram~664_combout\ : std_logic;
SIGNAL \RAM64|ram~667_combout\ : std_logic;
SIGNAL \RAM64|ram~21_q\ : std_logic;
SIGNAL \RAM64|ram~53_q\ : std_logic;
SIGNAL \RAM64|ram~117_q\ : std_logic;
SIGNAL \RAM64|ram~85_q\ : std_logic;
SIGNAL \RAM64|ram~653_combout\ : std_logic;
SIGNAL \RAM64|ram~45_q\ : std_logic;
SIGNAL \RAM64|ram~109_q\ : std_logic;
SIGNAL \RAM64|ram~77_q\ : std_logic;
SIGNAL \RAM64|ram~141_q\ : std_logic;
SIGNAL \RAM64|ram~656_combout\ : std_logic;
SIGNAL \RAM64|ram~61_q\ : std_logic;
SIGNAL \RAM64|ram~93_q\ : std_logic;
SIGNAL \RAM64|ram~29feeder_combout\ : std_logic;
SIGNAL \RAM64|ram~29_q\ : std_logic;
SIGNAL \RAM64|ram~125_q\ : std_logic;
SIGNAL \RAM64|ram~654_combout\ : std_logic;
SIGNAL \RAM64|ram~69_q\ : std_logic;
SIGNAL \RAM64|ram~101_q\ : std_logic;
SIGNAL \RAM64|ram~37feeder_combout\ : std_logic;
SIGNAL \RAM64|ram~37_q\ : std_logic;
SIGNAL \RAM64|ram~133_q\ : std_logic;
SIGNAL \RAM64|ram~655_combout\ : std_logic;
SIGNAL \RAM64|ram~657_combout\ : std_logic;
SIGNAL \RAM64|ram~485_q\ : std_logic;
SIGNAL \RAM64|ram~453_q\ : std_logic;
SIGNAL \RAM64|ram~421_q\ : std_logic;
SIGNAL \RAM64|ram~517_q\ : std_logic;
SIGNAL \RAM64|ram~670_combout\ : std_logic;
SIGNAL \RAM64|ram~437_q\ : std_logic;
SIGNAL \RAM64|ram~405_q\ : std_logic;
SIGNAL \RAM64|ram~469_q\ : std_logic;
SIGNAL \RAM64|ram~501_q\ : std_logic;
SIGNAL \RAM64|ram~668_combout\ : std_logic;
SIGNAL \RAM64|ram~445_q\ : std_logic;
SIGNAL \RAM64|ram~413_q\ : std_logic;
SIGNAL \RAM64|ram~477_q\ : std_logic;
SIGNAL \RAM64|ram~509_q\ : std_logic;
SIGNAL \RAM64|ram~669_combout\ : std_logic;
SIGNAL \RAM64|ram~493_q\ : std_logic;
SIGNAL \RAM64|ram~429_q\ : std_logic;
SIGNAL \RAM64|ram~461_q\ : std_logic;
SIGNAL \RAM64|ram~525_q\ : std_logic;
SIGNAL \RAM64|ram~671_combout\ : std_logic;
SIGNAL \RAM64|ram~672_combout\ : std_logic;
SIGNAL \RAM64|ram~673_combout\ : std_logic;
SIGNAL \DATA_IN[6]~11_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~22\ : std_logic;
SIGNAL \CPU|ULA1|Add0~25_sumout\ : std_logic;
SIGNAL \ROM|memROM~30_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~10\ : std_logic;
SIGNAL \CPU|ULA1|Add1~13_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[6]~6_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~26\ : std_logic;
SIGNAL \CPU|ULA1|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[7]~7_combout\ : std_logic;
SIGNAL \RAM64|ram~398_q\ : std_logic;
SIGNAL \RAM64|ram~518_q\ : std_logic;
SIGNAL \RAM64|ram~526_q\ : std_logic;
SIGNAL \RAM64|ram~390_q\ : std_logic;
SIGNAL \RAM64|ram~692_combout\ : std_logic;
SIGNAL \RAM64|ram~454_q\ : std_logic;
SIGNAL \RAM64|ram~334_q\ : std_logic;
SIGNAL \RAM64|ram~326feeder_combout\ : std_logic;
SIGNAL \RAM64|ram~326_q\ : std_logic;
SIGNAL \RAM64|ram~462feeder_combout\ : std_logic;
SIGNAL \RAM64|ram~462_q\ : std_logic;
SIGNAL \RAM64|ram~691_combout\ : std_logic;
SIGNAL \RAM64|ram~510_q\ : std_logic;
SIGNAL \RAM64|ram~374_q\ : std_logic;
SIGNAL \RAM64|ram~382feeder_combout\ : std_logic;
SIGNAL \RAM64|ram~382_q\ : std_logic;
SIGNAL \RAM64|ram~502feeder_combout\ : std_logic;
SIGNAL \RAM64|ram~502_q\ : std_logic;
SIGNAL \RAM64|ram~690_combout\ : std_logic;
SIGNAL \RAM64|ram~310feeder_combout\ : std_logic;
SIGNAL \RAM64|ram~310_q\ : std_logic;
SIGNAL \RAM64|ram~318_q\ : std_logic;
SIGNAL \RAM64|ram~438feeder_combout\ : std_logic;
SIGNAL \RAM64|ram~438_q\ : std_logic;
SIGNAL \RAM64|ram~446_q\ : std_logic;
SIGNAL \RAM64|ram~689_combout\ : std_logic;
SIGNAL \RAM64|ram~693_combout\ : std_logic;
SIGNAL \RAM64|ram~78feeder_combout\ : std_logic;
SIGNAL \RAM64|ram~78_q\ : std_logic;
SIGNAL \RAM64|ram~206_q\ : std_logic;
SIGNAL \RAM64|ram~70_q\ : std_logic;
SIGNAL \RAM64|ram~198_q\ : std_logic;
SIGNAL \RAM64|ram~681_combout\ : std_logic;
SIGNAL \RAM64|ram~118feeder_combout\ : std_logic;
SIGNAL \RAM64|ram~118_q\ : std_logic;
SIGNAL \RAM64|ram~246_q\ : std_logic;
SIGNAL \RAM64|ram~254_q\ : std_logic;
SIGNAL \RAM64|ram~126_q\ : std_logic;
SIGNAL \RAM64|ram~680_combout\ : std_logic;
SIGNAL \RAM64|ram~134_q\ : std_logic;
SIGNAL \RAM64|ram~270_q\ : std_logic;
SIGNAL \RAM64|ram~262_q\ : std_logic;
SIGNAL \RAM64|ram~142_q\ : std_logic;
SIGNAL \RAM64|ram~682_combout\ : std_logic;
SIGNAL \RAM64|ram~182_q\ : std_logic;
SIGNAL \RAM64|ram~54feeder_combout\ : std_logic;
SIGNAL \RAM64|ram~54_q\ : std_logic;
SIGNAL \RAM64|ram~190_q\ : std_logic;
SIGNAL \RAM64|ram~62_q\ : std_logic;
SIGNAL \RAM64|ram~679_combout\ : std_logic;
SIGNAL \RAM64|ram~683_combout\ : std_logic;
SIGNAL \RAM64|ram~286_q\ : std_logic;
SIGNAL \RAM64|ram~350_q\ : std_logic;
SIGNAL \RAM64|ram~302feeder_combout\ : std_logic;
SIGNAL \RAM64|ram~302_q\ : std_logic;
SIGNAL \RAM64|ram~366_q\ : std_logic;
SIGNAL \RAM64|ram~685_combout\ : std_logic;
SIGNAL \RAM64|ram~342_q\ : std_logic;
SIGNAL \RAM64|ram~358_q\ : std_logic;
SIGNAL \RAM64|ram~278_q\ : std_logic;
SIGNAL \RAM64|ram~294_q\ : std_logic;
SIGNAL \RAM64|ram~684_combout\ : std_logic;
SIGNAL \RAM64|ram~470_q\ : std_logic;
SIGNAL \RAM64|ram~406_q\ : std_logic;
SIGNAL \RAM64|ram~422_q\ : std_logic;
SIGNAL \RAM64|ram~486_q\ : std_logic;
SIGNAL \RAM64|ram~686_combout\ : std_logic;
SIGNAL \RAM64|ram~430_q\ : std_logic;
SIGNAL \RAM64|ram~478_q\ : std_logic;
SIGNAL \RAM64|ram~414_q\ : std_logic;
SIGNAL \RAM64|ram~494_q\ : std_logic;
SIGNAL \RAM64|ram~687_combout\ : std_logic;
SIGNAL \RAM64|ram~688_combout\ : std_logic;
SIGNAL \RAM64|ram~110_q\ : std_logic;
SIGNAL \RAM64|ram~30feeder_combout\ : std_logic;
SIGNAL \RAM64|ram~30_q\ : std_logic;
SIGNAL \RAM64|ram~46feeder_combout\ : std_logic;
SIGNAL \RAM64|ram~46_q\ : std_logic;
SIGNAL \RAM64|ram~94feeder_combout\ : std_logic;
SIGNAL \RAM64|ram~94_q\ : std_logic;
SIGNAL \RAM64|ram~675_combout\ : std_logic;
SIGNAL \RAM64|ram~38feeder_combout\ : std_logic;
SIGNAL \RAM64|ram~38_q\ : std_logic;
SIGNAL \RAM64|ram~102feeder_combout\ : std_logic;
SIGNAL \RAM64|ram~102_q\ : std_logic;
SIGNAL \RAM64|ram~86_q\ : std_logic;
SIGNAL \RAM64|ram~22_q\ : std_logic;
SIGNAL \RAM64|ram~674_combout\ : std_logic;
SIGNAL \RAM64|ram~174feeder_combout\ : std_logic;
SIGNAL \RAM64|ram~174_q\ : std_logic;
SIGNAL \RAM64|ram~222_q\ : std_logic;
SIGNAL \RAM64|ram~158feeder_combout\ : std_logic;
SIGNAL \RAM64|ram~158_q\ : std_logic;
SIGNAL \RAM64|ram~238_q\ : std_logic;
SIGNAL \RAM64|ram~677_combout\ : std_logic;
SIGNAL \RAM64|ram~166_q\ : std_logic;
SIGNAL \RAM64|ram~214_q\ : std_logic;
SIGNAL \RAM64|ram~150_q\ : std_logic;
SIGNAL \RAM64|ram~230_q\ : std_logic;
SIGNAL \RAM64|ram~676_combout\ : std_logic;
SIGNAL \RAM64|ram~678_combout\ : std_logic;
SIGNAL \RAM64|ram~694_combout\ : std_logic;
SIGNAL \DATA_IN[7]~14_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~14\ : std_logic;
SIGNAL \CPU|ULA1|Add1~17_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~21_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Equal2~2_combout\ : std_logic;
SIGNAL \CPU|FLIPFLOP1|DOUT~0_combout\ : std_logic;
SIGNAL \CPU|FLIPFLOP1|DOUT~q\ : std_logic;
SIGNAL \CPU|MUXproxPC|Equal1~0_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~1_sumout\ : std_logic;
SIGNAL \CPU|MUXproxPC|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~2\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~5_sumout\ : std_logic;
SIGNAL \CPU|MUXproxPC|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \ROM|memROM~12_combout\ : std_logic;
SIGNAL \ROM|memROM~13_combout\ : std_logic;
SIGNAL \CPU|MUXproxPC|Equal2~0_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~14\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~18\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~21_sumout\ : std_logic;
SIGNAL \CPU|MUXproxPC|saida_MUX[5]~5_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~22\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~25_sumout\ : std_logic;
SIGNAL \CPU|MUXproxPC|saida_MUX[6]~6_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~26\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|MUXproxPC|saida_MUX[7]~7_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~30\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~33_sumout\ : std_logic;
SIGNAL \CPU|MUXproxPC|saida_MUX[8]~8_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[8]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM|memROM~20_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~17_sumout\ : std_logic;
SIGNAL \CPU|MUXproxPC|saida_MUX[4]~4_combout\ : std_logic;
SIGNAL \ROM|memROM~14_combout\ : std_logic;
SIGNAL \ROM|memROM~15_combout\ : std_logic;
SIGNAL \RAM64|dado_out~0_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~1_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[0]~0_combout\ : std_logic;
SIGNAL \REG_LEDR0_7|DOUT[0]~feeder_combout\ : std_logic;
SIGNAL \AND_HEX0|saida~0_combout\ : std_logic;
SIGNAL \AND_LEDR0_7|saida~0_combout\ : std_logic;
SIGNAL \REG_LEDR0_7|DOUT[2]~feeder_combout\ : std_logic;
SIGNAL \REG_LEDR0_7|DOUT[4]~feeder_combout\ : std_logic;
SIGNAL \REG_LEDR0_7|DOUT[5]~feeder_combout\ : std_logic;
SIGNAL \REG_LEDR0_7|DOUT[6]~feeder_combout\ : std_logic;
SIGNAL \AND_LEDR8|saida~0_combout\ : std_logic;
SIGNAL \FLIP_FLOP_LED8|DOUT~0_combout\ : std_logic;
SIGNAL \FLIP_FLOP_LED8|DOUT~q\ : std_logic;
SIGNAL \AND_HEX2|saida~0_combout\ : std_logic;
SIGNAL \FLIP_FLOP_LED9|DOUT~0_combout\ : std_logic;
SIGNAL \FLIP_FLOP_LED9|DOUT~q\ : std_logic;
SIGNAL \AND_HEX0|saida~1_combout\ : std_logic;
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
SIGNAL \AND_HEX2|saida~1_combout\ : std_logic;
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
SIGNAL \AND_HEX5|saida~1_combout\ : std_logic;
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
SIGNAL \CPU|ULA1|Equal2~0_combout\ : std_logic;
SIGNAL \CPU|ULA1|Equal2~1_combout\ : std_logic;
SIGNAL \REG_HEX1|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CPU|REGA|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \REG_HEX3|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CPU|PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \REG_LEDR0_7|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \REG_HEX0|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REG_HEX4|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REG_HEX2|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REG_HEX5|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CPU|END_RETORNO|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \CPU|ULA1|ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \CPU|REGA|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ROM|ALT_INV_memROM~16_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~15_combout\ : std_logic;
SIGNAL \CPU|DECODER1|ALT_INV_saida[2]~0_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~14_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~13_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~12_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~11_combout\ : std_logic;
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
SIGNAL \CPU|FLIPFLOP1|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \REG_HEX5|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REG_HEX4|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REG_HEX3|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REG_HEX2|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REG_HEX1|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REG_HEX0|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FLIP_FLOP_LED9|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \FLIP_FLOP_LED8|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \CPU|DECODER1|ALT_INV_saida[5]~2_combout\ : std_logic;
SIGNAL \ALT_INV_DATA_IN[0]~5_combout\ : std_logic;
SIGNAL \ALT_INV_DATA_IN[0]~4_combout\ : std_logic;
SIGNAL \ALT_INV_DATA_IN[0]~3_combout\ : std_logic;
SIGNAL \ALT_INV_DATA_IN[0]~2_combout\ : std_logic;
SIGNAL \detectorSubDebounceKey1|FFP|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \detectorSubDebounceKey0|FFP|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \ALT_INV_DATA_IN[0]~1_combout\ : std_logic;
SIGNAL \ALT_INV_DATA_IN[0]~0_combout\ : std_logic;
SIGNAL \AND_SW0_7|ALT_INV_saida~2_combout\ : std_logic;
SIGNAL \AND_SW0_7|ALT_INV_saida~1_combout\ : std_logic;
SIGNAL \AND_SW0_7|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_dado_out~0_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \CPU|DECODER1|ALT_INV_saida[2]~1_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~547_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~28_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~27_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~546_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~545_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~519_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~263_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~503_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~247_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~544_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~511_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~255_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~495_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~239_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~543_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~391_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~135_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~375_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~119_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~542_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~383_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~127_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~367_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~111_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~541_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~540_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~455_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~199_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~439_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~183_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~539_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~447_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~191_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~431_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~175_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~538_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~327_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~71_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~311_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~55_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~537_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~319_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~63_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~303_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~47_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~536_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~535_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~487_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~231_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~479_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~223_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~534_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~471_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~215_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~463_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~207_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~533_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~359_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~103_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~351_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~95_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~532_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~343_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~87_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~335_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~79_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~531_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~530_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~423_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~167_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~407_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~151_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~529_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~415_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~159_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~399_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~143_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~528_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~295_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~39_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~279_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~23_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~527_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~287_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~31_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~271_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~15_q\ : std_logic;
SIGNAL \AND_HEX5|ALT_INV_saida~1_combout\ : std_logic;
SIGNAL \AND_HEX5|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \AND_HEX2|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \AND_LEDR8|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \AND_HEX0|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~26_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~25_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~24_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~23_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~22_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~21_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~20_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~19_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~18_combout\ : std_logic;
SIGNAL \CPU|DECODER1|ALT_INV_Equal5~0_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~17_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~289_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~575_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~377_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~313_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~345_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~281_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~574_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~369_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~305_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~337_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~273_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~573_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~572_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~137_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~105_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~129_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~97_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~571_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~73_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~41_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~65_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~33_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~570_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~121_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~89_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~113_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~81_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~569_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~57_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~25_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~49_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~17_q\ : std_logic;
SIGNAL \ALT_INV_DATA_IN[1]~6_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~568_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~567_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~566_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~520_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~264_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~392_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~136_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~565_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~456_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~200_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~328_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~72_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~564_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~488_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~232_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~360_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~104_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~563_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~424_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~168_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~296_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~40_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~562_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~561_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~504_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~248_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~376_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~120_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~560_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~440_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~184_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~312_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~56_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~559_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~472_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~216_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~344_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~88_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~558_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~408_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~152_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~280_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~24_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~557_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~556_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~512_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~256_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~384_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~128_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~555_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~448_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~192_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~320_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~64_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~554_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~480_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~224_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~352_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~96_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~553_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~416_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~160_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~288_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~32_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~552_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~551_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~496_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~240_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~368_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~112_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~550_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~432_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~176_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~304_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~48_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~549_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~464_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~208_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~336_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~80_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~548_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~400_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~144_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~272_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~16_q\ : std_logic;
SIGNAL \AND_SW0_7|ALT_INV_saida~3_combout\ : std_logic;
SIGNAL \CPU|DECODER1|ALT_INV_saida[6]~7_combout\ : std_logic;
SIGNAL \CPU|DECODER1|ALT_INV_saida[6]~6_combout\ : std_logic;
SIGNAL \CPU|DECODER1|ALT_INV_saida[4]~3_combout\ : std_logic;
SIGNAL \CPU|MUX1|ALT_INV_saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~394_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~330_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~378_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~314_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~605_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~386_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~322_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~370_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~306_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~604_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~603_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~266_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~258_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~250_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~242_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~602_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~202_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~194_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~186_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~178_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~601_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~138_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~130_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~122_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~114_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~600_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~74_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~66_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~58_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~50_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~599_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~598_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~490_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~474_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~362_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~346_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~597_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~426_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~410_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~298_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~282_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~596_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~482_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~466_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~354_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~338_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~595_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~418_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~402_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~290_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~274_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~594_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~593_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~234_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~170_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~218_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~154_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~592_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~226_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~162_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~210_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~146_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~591_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~106_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~42_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~90_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~26_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~590_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~98_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~34_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~82_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~18_q\ : std_logic;
SIGNAL \ALT_INV_DATA_IN[2]~7_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~589_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~588_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~587_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~521_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~489_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~513_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~481_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~586_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~457_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~425_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~449_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~417_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~585_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~505_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~473_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~497_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~465_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~584_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~441_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~409_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~433_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~401_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~583_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~582_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~265_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~233_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~249_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~217_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~581_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~201_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~169_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~185_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~153_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~580_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~257_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~225_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~241_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~209_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~579_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~193_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~161_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~177_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~145_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~578_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~577_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~393_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~329_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~361_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~297_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~576_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~385_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~321_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~353_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~420_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~292_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~404_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~276_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~636_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~635_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~260_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~228_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~132_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~100_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~634_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~196_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~164_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~68_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~36_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~633_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~244_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~212_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~116_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~84_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~632_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~180_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~148_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~52_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~20_q\ : std_logic;
SIGNAL \ALT_INV_DATA_IN[4]~9_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~631_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~630_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~629_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~523_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~491_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~515_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~483_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~628_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~459_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~427_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~451_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~419_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~627_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~395_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~363_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~387_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~355_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~626_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~331_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~299_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~323_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~291_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~625_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~624_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~267_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~203_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~259_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~195_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~623_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~235_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~171_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~227_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~163_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~622_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~139_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~75_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~131_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~67_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~621_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~107_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~43_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~99_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~35_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~620_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~619_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~507_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~499_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~379_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~371_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~618_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~443_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~435_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~315_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~307_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~617_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~475_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~467_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~347_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~339_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~616_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~411_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~403_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~283_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~275_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~615_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~614_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~251_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~219_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~243_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~211_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~613_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~187_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~155_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~179_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~147_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~612_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~123_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~91_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~115_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~83_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~611_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~59_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~27_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~51_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~19_q\ : std_logic;
SIGNAL \ALT_INV_DATA_IN[3]~8_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~610_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~609_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~608_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~522_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~458_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~506_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~442_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~607_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~514_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~450_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~498_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~434_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~606_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~469_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~405_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~667_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~666_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~269_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~237_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~261_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~229_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~665_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~205_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~173_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~197_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~165_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~664_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~253_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~221_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~245_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~213_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~663_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~189_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~157_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~181_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~149_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~662_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~661_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~397_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~365_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~381_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~349_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~660_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~333_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~301_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~317_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~285_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~659_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~389_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~357_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~373_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~341_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~658_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~325_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~293_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~309_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~277_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~657_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~656_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~141_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~77_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~109_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~45_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~655_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~133_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~69_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~101_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~37_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~654_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~125_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~61_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~93_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~29_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~653_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~117_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~53_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~85_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~21_q\ : std_logic;
SIGNAL \ALT_INV_DATA_IN[5]~10_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~652_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~651_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~650_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~524_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~460_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~396_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~332_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~649_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~492_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~428_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~364_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~300_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~648_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~508_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~444_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~380_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~316_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~647_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~476_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~412_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~348_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~284_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~646_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~645_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~268_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~236_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~140_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~108_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~644_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~204_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~172_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~76_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~44_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~643_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~252_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~220_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~124_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~92_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~642_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~188_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~156_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~60_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~28_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~641_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~640_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~516_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~388_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~500_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~372_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~639_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~452_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~324_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~436_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~308_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~638_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~484_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~356_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~468_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~340_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~637_combout\ : std_logic;
SIGNAL \CPU|END_RETORNO|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \CPU|MUXproxPC|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \CPU|MUXproxPC|ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \ALT_INV_DATA_IN[7]~12_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~694_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~693_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~692_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~526_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~518_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~398_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~390_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~691_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~462_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~454_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~334_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~326_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~690_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~510_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~502_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~382_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~374_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~689_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~446_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~438_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~318_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~310_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~688_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~687_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~494_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~430_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~478_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~414_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~686_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~486_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~422_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~470_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~406_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~685_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~366_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~302_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~350_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~286_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~684_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~358_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~294_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~342_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~278_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~683_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~682_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~270_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~262_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~142_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~134_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~681_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~206_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~198_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~78_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~70_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~680_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~254_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~246_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~126_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~118_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~679_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~190_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~182_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~62_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~54_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~678_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~677_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~238_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~174_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~222_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~158_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~676_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~230_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~166_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~214_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~150_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~675_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~110_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~46_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~94_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~30_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~674_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~102_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~38_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~86_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~22_q\ : std_logic;
SIGNAL \ALT_INV_DATA_IN[6]~11_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~673_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~672_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~671_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~525_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~461_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~493_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~429_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~670_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~517_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~453_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~485_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~421_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~669_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~509_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~445_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~477_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~413_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~668_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~501_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~437_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~807_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~805_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~803_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~801_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~799_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~797_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~795_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~793_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~791_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~789_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~787_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~785_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~783_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~781_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~779_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~777_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~775_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~773_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~771_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~769_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~767_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~765_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~763_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~761_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~759_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~757_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~755_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~753_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~751_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~749_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~747_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~745_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~743_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~741_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~739_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~737_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~735_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~733_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~731_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~729_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~727_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~725_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~723_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~721_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~719_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~717_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~715_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~713_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~711_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~709_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~707_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~705_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~703_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~701_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~699_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~697_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_process_0~1_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~695_combout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Equal2~2_combout\ : std_logic;
SIGNAL \CPU|DECODER1|ALT_INV_saida~8_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~32_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~31_combout\ : std_logic;
SIGNAL \ALT_INV_DATA_IN[0]~15_combout\ : std_logic;
SIGNAL \ALT_INV_DATA_IN[7]~14_combout\ : std_logic;
SIGNAL \ALT_INV_DATA_IN[7]~13_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~30_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~29_combout\ : std_logic;
SIGNAL \ALT_INV_SW[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_FPGA_RESET_N~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \detectorSubDebounceKey1|edgeDetector|ALT_INV_saidaQ~q\ : std_logic;
SIGNAL \detectorSubDebounceKey0|edgeDetector|ALT_INV_saidaQ~q\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~33_combout\ : std_logic;
SIGNAL \detectorSubDebounceKey0|ALT_INV_limpa_leitura~combout\ : std_logic;
SIGNAL \detectorSubDebounceKey0|ALT_INV_limpa_leitura~0_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~821_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~819_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~817_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~815_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~813_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~811_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~809_combout\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\ : std_logic;

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
DATA_OUT <= ww_DATA_OUT;
PCOUT_DEBUG <= ww_PCOUT_DEBUG;
FLAG_DEBUG_0 <= ww_FLAG_DEBUG_0;
FLAG_FLIPFLOP_0 <= ww_FLAG_FLIPFLOP_0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\CPU|ULA1|ALT_INV_Add1~29_sumout\ <= NOT \CPU|ULA1|Add1~29_sumout\;
\CPU|ULA1|ALT_INV_Add1~25_sumout\ <= NOT \CPU|ULA1|Add1~25_sumout\;
\CPU|ULA1|ALT_INV_Add1~21_sumout\ <= NOT \CPU|ULA1|Add1~21_sumout\;
\CPU|ULA1|ALT_INV_Add1~17_sumout\ <= NOT \CPU|ULA1|Add1~17_sumout\;
\CPU|ULA1|ALT_INV_Add1~13_sumout\ <= NOT \CPU|ULA1|Add1~13_sumout\;
\CPU|ULA1|ALT_INV_Add1~9_sumout\ <= NOT \CPU|ULA1|Add1~9_sumout\;
\CPU|ULA1|ALT_INV_Add1~5_sumout\ <= NOT \CPU|ULA1|Add1~5_sumout\;
\CPU|ULA1|ALT_INV_Add1~1_sumout\ <= NOT \CPU|ULA1|Add1~1_sumout\;
\CPU|PC|ALT_INV_DOUT\(8) <= NOT \CPU|PC|DOUT\(8);
\CPU|PC|ALT_INV_DOUT\(7) <= NOT \CPU|PC|DOUT\(7);
\CPU|PC|ALT_INV_DOUT\(6) <= NOT \CPU|PC|DOUT\(6);
\CPU|PC|ALT_INV_DOUT\(5) <= NOT \CPU|PC|DOUT\(5);
\CPU|PC|ALT_INV_DOUT\(4) <= NOT \CPU|PC|DOUT\(4);
\CPU|PC|ALT_INV_DOUT\(3) <= NOT \CPU|PC|DOUT\(3);
\CPU|PC|ALT_INV_DOUT\(2) <= NOT \CPU|PC|DOUT\(2);
\CPU|PC|ALT_INV_DOUT\(1) <= NOT \CPU|PC|DOUT\(1);
\CPU|PC|ALT_INV_DOUT\(0) <= NOT \CPU|PC|DOUT\(0);
\CPU|REGA|ALT_INV_DOUT\(7) <= NOT \CPU|REGA|DOUT\(7);
\CPU|REGA|ALT_INV_DOUT\(6) <= NOT \CPU|REGA|DOUT\(6);
\CPU|REGA|ALT_INV_DOUT\(5) <= NOT \CPU|REGA|DOUT\(5);
\CPU|REGA|ALT_INV_DOUT\(4) <= NOT \CPU|REGA|DOUT\(4);
\CPU|REGA|ALT_INV_DOUT\(3) <= NOT \CPU|REGA|DOUT\(3);
\CPU|REGA|ALT_INV_DOUT\(2) <= NOT \CPU|REGA|DOUT\(2);
\CPU|REGA|ALT_INV_DOUT\(1) <= NOT \CPU|REGA|DOUT\(1);
\CPU|REGA|ALT_INV_DOUT\(0) <= NOT \CPU|REGA|DOUT\(0);
\ROM|ALT_INV_memROM~16_combout\ <= NOT \ROM|memROM~16_combout\;
\ROM|ALT_INV_memROM~15_combout\ <= NOT \ROM|memROM~15_combout\;
\CPU|DECODER1|ALT_INV_saida[2]~0_combout\ <= NOT \CPU|DECODER1|saida[2]~0_combout\;
\ROM|ALT_INV_memROM~14_combout\ <= NOT \ROM|memROM~14_combout\;
\ROM|ALT_INV_memROM~13_combout\ <= NOT \ROM|memROM~13_combout\;
\ROM|ALT_INV_memROM~12_combout\ <= NOT \ROM|memROM~12_combout\;
\ROM|ALT_INV_memROM~11_combout\ <= NOT \ROM|memROM~11_combout\;
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
\CPU|FLIPFLOP1|ALT_INV_DOUT~q\ <= NOT \CPU|FLIPFLOP1|DOUT~q\;
\CPU|ULA1|ALT_INV_Equal2~0_combout\ <= NOT \CPU|ULA1|Equal2~0_combout\;
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
\FLIP_FLOP_LED9|ALT_INV_DOUT~q\ <= NOT \FLIP_FLOP_LED9|DOUT~q\;
\FLIP_FLOP_LED8|ALT_INV_DOUT~q\ <= NOT \FLIP_FLOP_LED8|DOUT~q\;
\CPU|incrementaPC|ALT_INV_Add0~33_sumout\ <= NOT \CPU|incrementaPC|Add0~33_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~29_sumout\ <= NOT \CPU|incrementaPC|Add0~29_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~25_sumout\ <= NOT \CPU|incrementaPC|Add0~25_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~21_sumout\ <= NOT \CPU|incrementaPC|Add0~21_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~17_sumout\ <= NOT \CPU|incrementaPC|Add0~17_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~13_sumout\ <= NOT \CPU|incrementaPC|Add0~13_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~9_sumout\ <= NOT \CPU|incrementaPC|Add0~9_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~5_sumout\ <= NOT \CPU|incrementaPC|Add0~5_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~1_sumout\ <= NOT \CPU|incrementaPC|Add0~1_sumout\;
\CPU|DECODER1|ALT_INV_saida[5]~2_combout\ <= NOT \CPU|DECODER1|saida[5]~2_combout\;
\ALT_INV_DATA_IN[0]~5_combout\ <= NOT \DATA_IN[0]~5_combout\;
\ALT_INV_DATA_IN[0]~4_combout\ <= NOT \DATA_IN[0]~4_combout\;
\ALT_INV_DATA_IN[0]~3_combout\ <= NOT \DATA_IN[0]~3_combout\;
\ALT_INV_DATA_IN[0]~2_combout\ <= NOT \DATA_IN[0]~2_combout\;
\detectorSubDebounceKey1|FFP|ALT_INV_DOUT~q\ <= NOT \detectorSubDebounceKey1|FFP|DOUT~q\;
\detectorSubDebounceKey0|FFP|ALT_INV_DOUT~q\ <= NOT \detectorSubDebounceKey0|FFP|DOUT~q\;
\ALT_INV_DATA_IN[0]~1_combout\ <= NOT \DATA_IN[0]~1_combout\;
\ALT_INV_DATA_IN[0]~0_combout\ <= NOT \DATA_IN[0]~0_combout\;
\AND_SW0_7|ALT_INV_saida~2_combout\ <= NOT \AND_SW0_7|saida~2_combout\;
\AND_SW0_7|ALT_INV_saida~1_combout\ <= NOT \AND_SW0_7|saida~1_combout\;
\AND_SW0_7|ALT_INV_saida~0_combout\ <= NOT \AND_SW0_7|saida~0_combout\;
\RAM64|ALT_INV_dado_out~0_combout\ <= NOT \RAM64|dado_out~0_combout\;
\RAM64|ALT_INV_process_0~0_combout\ <= NOT \RAM64|process_0~0_combout\;
\CPU|DECODER1|ALT_INV_saida[2]~1_combout\ <= NOT \CPU|DECODER1|saida[2]~1_combout\;
\RAM64|ALT_INV_ram~547_combout\ <= NOT \RAM64|ram~547_combout\;
\ROM|ALT_INV_memROM~28_combout\ <= NOT \ROM|memROM~28_combout\;
\ROM|ALT_INV_memROM~27_combout\ <= NOT \ROM|memROM~27_combout\;
\RAM64|ALT_INV_ram~546_combout\ <= NOT \RAM64|ram~546_combout\;
\RAM64|ALT_INV_ram~545_combout\ <= NOT \RAM64|ram~545_combout\;
\RAM64|ALT_INV_ram~519_q\ <= NOT \RAM64|ram~519_q\;
\RAM64|ALT_INV_ram~263_q\ <= NOT \RAM64|ram~263_q\;
\RAM64|ALT_INV_ram~503_q\ <= NOT \RAM64|ram~503_q\;
\RAM64|ALT_INV_ram~247_q\ <= NOT \RAM64|ram~247_q\;
\RAM64|ALT_INV_ram~544_combout\ <= NOT \RAM64|ram~544_combout\;
\RAM64|ALT_INV_ram~511_q\ <= NOT \RAM64|ram~511_q\;
\RAM64|ALT_INV_ram~255_q\ <= NOT \RAM64|ram~255_q\;
\RAM64|ALT_INV_ram~495_q\ <= NOT \RAM64|ram~495_q\;
\RAM64|ALT_INV_ram~239_q\ <= NOT \RAM64|ram~239_q\;
\RAM64|ALT_INV_ram~543_combout\ <= NOT \RAM64|ram~543_combout\;
\RAM64|ALT_INV_ram~391_q\ <= NOT \RAM64|ram~391_q\;
\RAM64|ALT_INV_ram~135_q\ <= NOT \RAM64|ram~135_q\;
\RAM64|ALT_INV_ram~375_q\ <= NOT \RAM64|ram~375_q\;
\RAM64|ALT_INV_ram~119_q\ <= NOT \RAM64|ram~119_q\;
\RAM64|ALT_INV_ram~542_combout\ <= NOT \RAM64|ram~542_combout\;
\RAM64|ALT_INV_ram~383_q\ <= NOT \RAM64|ram~383_q\;
\RAM64|ALT_INV_ram~127_q\ <= NOT \RAM64|ram~127_q\;
\RAM64|ALT_INV_ram~367_q\ <= NOT \RAM64|ram~367_q\;
\RAM64|ALT_INV_ram~111_q\ <= NOT \RAM64|ram~111_q\;
\RAM64|ALT_INV_ram~541_combout\ <= NOT \RAM64|ram~541_combout\;
\RAM64|ALT_INV_ram~540_combout\ <= NOT \RAM64|ram~540_combout\;
\RAM64|ALT_INV_ram~455_q\ <= NOT \RAM64|ram~455_q\;
\RAM64|ALT_INV_ram~199_q\ <= NOT \RAM64|ram~199_q\;
\RAM64|ALT_INV_ram~439_q\ <= NOT \RAM64|ram~439_q\;
\RAM64|ALT_INV_ram~183_q\ <= NOT \RAM64|ram~183_q\;
\RAM64|ALT_INV_ram~539_combout\ <= NOT \RAM64|ram~539_combout\;
\RAM64|ALT_INV_ram~447_q\ <= NOT \RAM64|ram~447_q\;
\RAM64|ALT_INV_ram~191_q\ <= NOT \RAM64|ram~191_q\;
\RAM64|ALT_INV_ram~431_q\ <= NOT \RAM64|ram~431_q\;
\RAM64|ALT_INV_ram~175_q\ <= NOT \RAM64|ram~175_q\;
\RAM64|ALT_INV_ram~538_combout\ <= NOT \RAM64|ram~538_combout\;
\RAM64|ALT_INV_ram~327_q\ <= NOT \RAM64|ram~327_q\;
\RAM64|ALT_INV_ram~71_q\ <= NOT \RAM64|ram~71_q\;
\RAM64|ALT_INV_ram~311_q\ <= NOT \RAM64|ram~311_q\;
\RAM64|ALT_INV_ram~55_q\ <= NOT \RAM64|ram~55_q\;
\RAM64|ALT_INV_ram~537_combout\ <= NOT \RAM64|ram~537_combout\;
\RAM64|ALT_INV_ram~319_q\ <= NOT \RAM64|ram~319_q\;
\RAM64|ALT_INV_ram~63_q\ <= NOT \RAM64|ram~63_q\;
\RAM64|ALT_INV_ram~303_q\ <= NOT \RAM64|ram~303_q\;
\RAM64|ALT_INV_ram~47_q\ <= NOT \RAM64|ram~47_q\;
\RAM64|ALT_INV_ram~536_combout\ <= NOT \RAM64|ram~536_combout\;
\RAM64|ALT_INV_ram~535_combout\ <= NOT \RAM64|ram~535_combout\;
\RAM64|ALT_INV_ram~487_q\ <= NOT \RAM64|ram~487_q\;
\RAM64|ALT_INV_ram~231_q\ <= NOT \RAM64|ram~231_q\;
\RAM64|ALT_INV_ram~479_q\ <= NOT \RAM64|ram~479_q\;
\RAM64|ALT_INV_ram~223_q\ <= NOT \RAM64|ram~223_q\;
\RAM64|ALT_INV_ram~534_combout\ <= NOT \RAM64|ram~534_combout\;
\RAM64|ALT_INV_ram~471_q\ <= NOT \RAM64|ram~471_q\;
\RAM64|ALT_INV_ram~215_q\ <= NOT \RAM64|ram~215_q\;
\RAM64|ALT_INV_ram~463_q\ <= NOT \RAM64|ram~463_q\;
\RAM64|ALT_INV_ram~207_q\ <= NOT \RAM64|ram~207_q\;
\RAM64|ALT_INV_ram~533_combout\ <= NOT \RAM64|ram~533_combout\;
\RAM64|ALT_INV_ram~359_q\ <= NOT \RAM64|ram~359_q\;
\RAM64|ALT_INV_ram~103_q\ <= NOT \RAM64|ram~103_q\;
\RAM64|ALT_INV_ram~351_q\ <= NOT \RAM64|ram~351_q\;
\RAM64|ALT_INV_ram~95_q\ <= NOT \RAM64|ram~95_q\;
\RAM64|ALT_INV_ram~532_combout\ <= NOT \RAM64|ram~532_combout\;
\RAM64|ALT_INV_ram~343_q\ <= NOT \RAM64|ram~343_q\;
\RAM64|ALT_INV_ram~87_q\ <= NOT \RAM64|ram~87_q\;
\RAM64|ALT_INV_ram~335_q\ <= NOT \RAM64|ram~335_q\;
\RAM64|ALT_INV_ram~79_q\ <= NOT \RAM64|ram~79_q\;
\RAM64|ALT_INV_ram~531_combout\ <= NOT \RAM64|ram~531_combout\;
\RAM64|ALT_INV_ram~530_combout\ <= NOT \RAM64|ram~530_combout\;
\RAM64|ALT_INV_ram~423_q\ <= NOT \RAM64|ram~423_q\;
\RAM64|ALT_INV_ram~167_q\ <= NOT \RAM64|ram~167_q\;
\RAM64|ALT_INV_ram~407_q\ <= NOT \RAM64|ram~407_q\;
\RAM64|ALT_INV_ram~151_q\ <= NOT \RAM64|ram~151_q\;
\RAM64|ALT_INV_ram~529_combout\ <= NOT \RAM64|ram~529_combout\;
\RAM64|ALT_INV_ram~415_q\ <= NOT \RAM64|ram~415_q\;
\RAM64|ALT_INV_ram~159_q\ <= NOT \RAM64|ram~159_q\;
\RAM64|ALT_INV_ram~399_q\ <= NOT \RAM64|ram~399_q\;
\RAM64|ALT_INV_ram~143_q\ <= NOT \RAM64|ram~143_q\;
\RAM64|ALT_INV_ram~528_combout\ <= NOT \RAM64|ram~528_combout\;
\RAM64|ALT_INV_ram~295_q\ <= NOT \RAM64|ram~295_q\;
\RAM64|ALT_INV_ram~39_q\ <= NOT \RAM64|ram~39_q\;
\RAM64|ALT_INV_ram~279_q\ <= NOT \RAM64|ram~279_q\;
\RAM64|ALT_INV_ram~23_q\ <= NOT \RAM64|ram~23_q\;
\RAM64|ALT_INV_ram~527_combout\ <= NOT \RAM64|ram~527_combout\;
\RAM64|ALT_INV_ram~287_q\ <= NOT \RAM64|ram~287_q\;
\RAM64|ALT_INV_ram~31_q\ <= NOT \RAM64|ram~31_q\;
\RAM64|ALT_INV_ram~271_q\ <= NOT \RAM64|ram~271_q\;
\RAM64|ALT_INV_ram~15_q\ <= NOT \RAM64|ram~15_q\;
\AND_HEX5|ALT_INV_saida~1_combout\ <= NOT \AND_HEX5|saida~1_combout\;
\AND_HEX5|ALT_INV_saida~0_combout\ <= NOT \AND_HEX5|saida~0_combout\;
\AND_HEX2|ALT_INV_saida~0_combout\ <= NOT \AND_HEX2|saida~0_combout\;
\AND_LEDR8|ALT_INV_saida~0_combout\ <= NOT \AND_LEDR8|saida~0_combout\;
\AND_HEX0|ALT_INV_saida~0_combout\ <= NOT \AND_HEX0|saida~0_combout\;
\ROM|ALT_INV_memROM~26_combout\ <= NOT \ROM|memROM~26_combout\;
\ROM|ALT_INV_memROM~25_combout\ <= NOT \ROM|memROM~25_combout\;
\ROM|ALT_INV_memROM~24_combout\ <= NOT \ROM|memROM~24_combout\;
\ROM|ALT_INV_memROM~23_combout\ <= NOT \ROM|memROM~23_combout\;
\ROM|ALT_INV_memROM~22_combout\ <= NOT \ROM|memROM~22_combout\;
\ROM|ALT_INV_memROM~21_combout\ <= NOT \ROM|memROM~21_combout\;
\ROM|ALT_INV_memROM~20_combout\ <= NOT \ROM|memROM~20_combout\;
\ROM|ALT_INV_memROM~19_combout\ <= NOT \ROM|memROM~19_combout\;
\ROM|ALT_INV_memROM~18_combout\ <= NOT \ROM|memROM~18_combout\;
\CPU|DECODER1|ALT_INV_Equal5~0_combout\ <= NOT \CPU|DECODER1|Equal5~0_combout\;
\ROM|ALT_INV_memROM~17_combout\ <= NOT \ROM|memROM~17_combout\;
\RAM64|ALT_INV_ram~289_q\ <= NOT \RAM64|ram~289_q\;
\RAM64|ALT_INV_ram~575_combout\ <= NOT \RAM64|ram~575_combout\;
\RAM64|ALT_INV_ram~377_q\ <= NOT \RAM64|ram~377_q\;
\RAM64|ALT_INV_ram~313_q\ <= NOT \RAM64|ram~313_q\;
\RAM64|ALT_INV_ram~345_q\ <= NOT \RAM64|ram~345_q\;
\RAM64|ALT_INV_ram~281_q\ <= NOT \RAM64|ram~281_q\;
\RAM64|ALT_INV_ram~574_combout\ <= NOT \RAM64|ram~574_combout\;
\RAM64|ALT_INV_ram~369_q\ <= NOT \RAM64|ram~369_q\;
\RAM64|ALT_INV_ram~305_q\ <= NOT \RAM64|ram~305_q\;
\RAM64|ALT_INV_ram~337_q\ <= NOT \RAM64|ram~337_q\;
\RAM64|ALT_INV_ram~273_q\ <= NOT \RAM64|ram~273_q\;
\RAM64|ALT_INV_ram~573_combout\ <= NOT \RAM64|ram~573_combout\;
\RAM64|ALT_INV_ram~572_combout\ <= NOT \RAM64|ram~572_combout\;
\RAM64|ALT_INV_ram~137_q\ <= NOT \RAM64|ram~137_q\;
\RAM64|ALT_INV_ram~105_q\ <= NOT \RAM64|ram~105_q\;
\RAM64|ALT_INV_ram~129_q\ <= NOT \RAM64|ram~129_q\;
\RAM64|ALT_INV_ram~97_q\ <= NOT \RAM64|ram~97_q\;
\RAM64|ALT_INV_ram~571_combout\ <= NOT \RAM64|ram~571_combout\;
\RAM64|ALT_INV_ram~73_q\ <= NOT \RAM64|ram~73_q\;
\RAM64|ALT_INV_ram~41_q\ <= NOT \RAM64|ram~41_q\;
\RAM64|ALT_INV_ram~65_q\ <= NOT \RAM64|ram~65_q\;
\RAM64|ALT_INV_ram~33_q\ <= NOT \RAM64|ram~33_q\;
\RAM64|ALT_INV_ram~570_combout\ <= NOT \RAM64|ram~570_combout\;
\RAM64|ALT_INV_ram~121_q\ <= NOT \RAM64|ram~121_q\;
\RAM64|ALT_INV_ram~89_q\ <= NOT \RAM64|ram~89_q\;
\RAM64|ALT_INV_ram~113_q\ <= NOT \RAM64|ram~113_q\;
\RAM64|ALT_INV_ram~81_q\ <= NOT \RAM64|ram~81_q\;
\RAM64|ALT_INV_ram~569_combout\ <= NOT \RAM64|ram~569_combout\;
\RAM64|ALT_INV_ram~57_q\ <= NOT \RAM64|ram~57_q\;
\RAM64|ALT_INV_ram~25_q\ <= NOT \RAM64|ram~25_q\;
\RAM64|ALT_INV_ram~49_q\ <= NOT \RAM64|ram~49_q\;
\RAM64|ALT_INV_ram~17_q\ <= NOT \RAM64|ram~17_q\;
\ALT_INV_DATA_IN[1]~6_combout\ <= NOT \DATA_IN[1]~6_combout\;
\RAM64|ALT_INV_ram~568_combout\ <= NOT \RAM64|ram~568_combout\;
\RAM64|ALT_INV_ram~567_combout\ <= NOT \RAM64|ram~567_combout\;
\RAM64|ALT_INV_ram~566_combout\ <= NOT \RAM64|ram~566_combout\;
\RAM64|ALT_INV_ram~520_q\ <= NOT \RAM64|ram~520_q\;
\RAM64|ALT_INV_ram~264_q\ <= NOT \RAM64|ram~264_q\;
\RAM64|ALT_INV_ram~392_q\ <= NOT \RAM64|ram~392_q\;
\RAM64|ALT_INV_ram~136_q\ <= NOT \RAM64|ram~136_q\;
\RAM64|ALT_INV_ram~565_combout\ <= NOT \RAM64|ram~565_combout\;
\RAM64|ALT_INV_ram~456_q\ <= NOT \RAM64|ram~456_q\;
\RAM64|ALT_INV_ram~200_q\ <= NOT \RAM64|ram~200_q\;
\RAM64|ALT_INV_ram~328_q\ <= NOT \RAM64|ram~328_q\;
\RAM64|ALT_INV_ram~72_q\ <= NOT \RAM64|ram~72_q\;
\RAM64|ALT_INV_ram~564_combout\ <= NOT \RAM64|ram~564_combout\;
\RAM64|ALT_INV_ram~488_q\ <= NOT \RAM64|ram~488_q\;
\RAM64|ALT_INV_ram~232_q\ <= NOT \RAM64|ram~232_q\;
\RAM64|ALT_INV_ram~360_q\ <= NOT \RAM64|ram~360_q\;
\RAM64|ALT_INV_ram~104_q\ <= NOT \RAM64|ram~104_q\;
\RAM64|ALT_INV_ram~563_combout\ <= NOT \RAM64|ram~563_combout\;
\RAM64|ALT_INV_ram~424_q\ <= NOT \RAM64|ram~424_q\;
\RAM64|ALT_INV_ram~168_q\ <= NOT \RAM64|ram~168_q\;
\RAM64|ALT_INV_ram~296_q\ <= NOT \RAM64|ram~296_q\;
\RAM64|ALT_INV_ram~40_q\ <= NOT \RAM64|ram~40_q\;
\RAM64|ALT_INV_ram~562_combout\ <= NOT \RAM64|ram~562_combout\;
\RAM64|ALT_INV_ram~561_combout\ <= NOT \RAM64|ram~561_combout\;
\RAM64|ALT_INV_ram~504_q\ <= NOT \RAM64|ram~504_q\;
\RAM64|ALT_INV_ram~248_q\ <= NOT \RAM64|ram~248_q\;
\RAM64|ALT_INV_ram~376_q\ <= NOT \RAM64|ram~376_q\;
\RAM64|ALT_INV_ram~120_q\ <= NOT \RAM64|ram~120_q\;
\RAM64|ALT_INV_ram~560_combout\ <= NOT \RAM64|ram~560_combout\;
\RAM64|ALT_INV_ram~440_q\ <= NOT \RAM64|ram~440_q\;
\RAM64|ALT_INV_ram~184_q\ <= NOT \RAM64|ram~184_q\;
\RAM64|ALT_INV_ram~312_q\ <= NOT \RAM64|ram~312_q\;
\RAM64|ALT_INV_ram~56_q\ <= NOT \RAM64|ram~56_q\;
\RAM64|ALT_INV_ram~559_combout\ <= NOT \RAM64|ram~559_combout\;
\RAM64|ALT_INV_ram~472_q\ <= NOT \RAM64|ram~472_q\;
\RAM64|ALT_INV_ram~216_q\ <= NOT \RAM64|ram~216_q\;
\RAM64|ALT_INV_ram~344_q\ <= NOT \RAM64|ram~344_q\;
\RAM64|ALT_INV_ram~88_q\ <= NOT \RAM64|ram~88_q\;
\RAM64|ALT_INV_ram~558_combout\ <= NOT \RAM64|ram~558_combout\;
\RAM64|ALT_INV_ram~408_q\ <= NOT \RAM64|ram~408_q\;
\RAM64|ALT_INV_ram~152_q\ <= NOT \RAM64|ram~152_q\;
\RAM64|ALT_INV_ram~280_q\ <= NOT \RAM64|ram~280_q\;
\RAM64|ALT_INV_ram~24_q\ <= NOT \RAM64|ram~24_q\;
\RAM64|ALT_INV_ram~557_combout\ <= NOT \RAM64|ram~557_combout\;
\RAM64|ALT_INV_ram~556_combout\ <= NOT \RAM64|ram~556_combout\;
\RAM64|ALT_INV_ram~512_q\ <= NOT \RAM64|ram~512_q\;
\RAM64|ALT_INV_ram~256_q\ <= NOT \RAM64|ram~256_q\;
\RAM64|ALT_INV_ram~384_q\ <= NOT \RAM64|ram~384_q\;
\RAM64|ALT_INV_ram~128_q\ <= NOT \RAM64|ram~128_q\;
\RAM64|ALT_INV_ram~555_combout\ <= NOT \RAM64|ram~555_combout\;
\RAM64|ALT_INV_ram~448_q\ <= NOT \RAM64|ram~448_q\;
\RAM64|ALT_INV_ram~192_q\ <= NOT \RAM64|ram~192_q\;
\RAM64|ALT_INV_ram~320_q\ <= NOT \RAM64|ram~320_q\;
\RAM64|ALT_INV_ram~64_q\ <= NOT \RAM64|ram~64_q\;
\RAM64|ALT_INV_ram~554_combout\ <= NOT \RAM64|ram~554_combout\;
\RAM64|ALT_INV_ram~480_q\ <= NOT \RAM64|ram~480_q\;
\RAM64|ALT_INV_ram~224_q\ <= NOT \RAM64|ram~224_q\;
\RAM64|ALT_INV_ram~352_q\ <= NOT \RAM64|ram~352_q\;
\RAM64|ALT_INV_ram~96_q\ <= NOT \RAM64|ram~96_q\;
\RAM64|ALT_INV_ram~553_combout\ <= NOT \RAM64|ram~553_combout\;
\RAM64|ALT_INV_ram~416_q\ <= NOT \RAM64|ram~416_q\;
\RAM64|ALT_INV_ram~160_q\ <= NOT \RAM64|ram~160_q\;
\RAM64|ALT_INV_ram~288_q\ <= NOT \RAM64|ram~288_q\;
\RAM64|ALT_INV_ram~32_q\ <= NOT \RAM64|ram~32_q\;
\RAM64|ALT_INV_ram~552_combout\ <= NOT \RAM64|ram~552_combout\;
\RAM64|ALT_INV_ram~551_combout\ <= NOT \RAM64|ram~551_combout\;
\RAM64|ALT_INV_ram~496_q\ <= NOT \RAM64|ram~496_q\;
\RAM64|ALT_INV_ram~240_q\ <= NOT \RAM64|ram~240_q\;
\RAM64|ALT_INV_ram~368_q\ <= NOT \RAM64|ram~368_q\;
\RAM64|ALT_INV_ram~112_q\ <= NOT \RAM64|ram~112_q\;
\RAM64|ALT_INV_ram~550_combout\ <= NOT \RAM64|ram~550_combout\;
\RAM64|ALT_INV_ram~432_q\ <= NOT \RAM64|ram~432_q\;
\RAM64|ALT_INV_ram~176_q\ <= NOT \RAM64|ram~176_q\;
\RAM64|ALT_INV_ram~304_q\ <= NOT \RAM64|ram~304_q\;
\RAM64|ALT_INV_ram~48_q\ <= NOT \RAM64|ram~48_q\;
\RAM64|ALT_INV_ram~549_combout\ <= NOT \RAM64|ram~549_combout\;
\RAM64|ALT_INV_ram~464_q\ <= NOT \RAM64|ram~464_q\;
\RAM64|ALT_INV_ram~208_q\ <= NOT \RAM64|ram~208_q\;
\RAM64|ALT_INV_ram~336_q\ <= NOT \RAM64|ram~336_q\;
\RAM64|ALT_INV_ram~80_q\ <= NOT \RAM64|ram~80_q\;
\RAM64|ALT_INV_ram~548_combout\ <= NOT \RAM64|ram~548_combout\;
\RAM64|ALT_INV_ram~400_q\ <= NOT \RAM64|ram~400_q\;
\RAM64|ALT_INV_ram~144_q\ <= NOT \RAM64|ram~144_q\;
\RAM64|ALT_INV_ram~272_q\ <= NOT \RAM64|ram~272_q\;
\RAM64|ALT_INV_ram~16_q\ <= NOT \RAM64|ram~16_q\;
\AND_SW0_7|ALT_INV_saida~3_combout\ <= NOT \AND_SW0_7|saida~3_combout\;
\CPU|DECODER1|ALT_INV_saida[6]~7_combout\ <= NOT \CPU|DECODER1|saida[6]~7_combout\;
\CPU|DECODER1|ALT_INV_saida[6]~6_combout\ <= NOT \CPU|DECODER1|saida[6]~6_combout\;
\CPU|DECODER1|ALT_INV_saida[4]~3_combout\ <= NOT \CPU|DECODER1|saida[4]~3_combout\;
\CPU|MUX1|ALT_INV_saida_MUX[0]~0_combout\ <= NOT \CPU|MUX1|saida_MUX[0]~0_combout\;
\RAM64|ALT_INV_ram~394_q\ <= NOT \RAM64|ram~394_q\;
\RAM64|ALT_INV_ram~330_q\ <= NOT \RAM64|ram~330_q\;
\RAM64|ALT_INV_ram~378_q\ <= NOT \RAM64|ram~378_q\;
\RAM64|ALT_INV_ram~314_q\ <= NOT \RAM64|ram~314_q\;
\RAM64|ALT_INV_ram~605_combout\ <= NOT \RAM64|ram~605_combout\;
\RAM64|ALT_INV_ram~386_q\ <= NOT \RAM64|ram~386_q\;
\RAM64|ALT_INV_ram~322_q\ <= NOT \RAM64|ram~322_q\;
\RAM64|ALT_INV_ram~370_q\ <= NOT \RAM64|ram~370_q\;
\RAM64|ALT_INV_ram~306_q\ <= NOT \RAM64|ram~306_q\;
\RAM64|ALT_INV_ram~604_combout\ <= NOT \RAM64|ram~604_combout\;
\RAM64|ALT_INV_ram~603_combout\ <= NOT \RAM64|ram~603_combout\;
\RAM64|ALT_INV_ram~266_q\ <= NOT \RAM64|ram~266_q\;
\RAM64|ALT_INV_ram~258_q\ <= NOT \RAM64|ram~258_q\;
\RAM64|ALT_INV_ram~250_q\ <= NOT \RAM64|ram~250_q\;
\RAM64|ALT_INV_ram~242_q\ <= NOT \RAM64|ram~242_q\;
\RAM64|ALT_INV_ram~602_combout\ <= NOT \RAM64|ram~602_combout\;
\RAM64|ALT_INV_ram~202_q\ <= NOT \RAM64|ram~202_q\;
\RAM64|ALT_INV_ram~194_q\ <= NOT \RAM64|ram~194_q\;
\RAM64|ALT_INV_ram~186_q\ <= NOT \RAM64|ram~186_q\;
\RAM64|ALT_INV_ram~178_q\ <= NOT \RAM64|ram~178_q\;
\RAM64|ALT_INV_ram~601_combout\ <= NOT \RAM64|ram~601_combout\;
\RAM64|ALT_INV_ram~138_q\ <= NOT \RAM64|ram~138_q\;
\RAM64|ALT_INV_ram~130_q\ <= NOT \RAM64|ram~130_q\;
\RAM64|ALT_INV_ram~122_q\ <= NOT \RAM64|ram~122_q\;
\RAM64|ALT_INV_ram~114_q\ <= NOT \RAM64|ram~114_q\;
\RAM64|ALT_INV_ram~600_combout\ <= NOT \RAM64|ram~600_combout\;
\RAM64|ALT_INV_ram~74_q\ <= NOT \RAM64|ram~74_q\;
\RAM64|ALT_INV_ram~66_q\ <= NOT \RAM64|ram~66_q\;
\RAM64|ALT_INV_ram~58_q\ <= NOT \RAM64|ram~58_q\;
\RAM64|ALT_INV_ram~50_q\ <= NOT \RAM64|ram~50_q\;
\RAM64|ALT_INV_ram~599_combout\ <= NOT \RAM64|ram~599_combout\;
\RAM64|ALT_INV_ram~598_combout\ <= NOT \RAM64|ram~598_combout\;
\RAM64|ALT_INV_ram~490_q\ <= NOT \RAM64|ram~490_q\;
\RAM64|ALT_INV_ram~474_q\ <= NOT \RAM64|ram~474_q\;
\RAM64|ALT_INV_ram~362_q\ <= NOT \RAM64|ram~362_q\;
\RAM64|ALT_INV_ram~346_q\ <= NOT \RAM64|ram~346_q\;
\RAM64|ALT_INV_ram~597_combout\ <= NOT \RAM64|ram~597_combout\;
\RAM64|ALT_INV_ram~426_q\ <= NOT \RAM64|ram~426_q\;
\RAM64|ALT_INV_ram~410_q\ <= NOT \RAM64|ram~410_q\;
\RAM64|ALT_INV_ram~298_q\ <= NOT \RAM64|ram~298_q\;
\RAM64|ALT_INV_ram~282_q\ <= NOT \RAM64|ram~282_q\;
\RAM64|ALT_INV_ram~596_combout\ <= NOT \RAM64|ram~596_combout\;
\RAM64|ALT_INV_ram~482_q\ <= NOT \RAM64|ram~482_q\;
\RAM64|ALT_INV_ram~466_q\ <= NOT \RAM64|ram~466_q\;
\RAM64|ALT_INV_ram~354_q\ <= NOT \RAM64|ram~354_q\;
\RAM64|ALT_INV_ram~338_q\ <= NOT \RAM64|ram~338_q\;
\RAM64|ALT_INV_ram~595_combout\ <= NOT \RAM64|ram~595_combout\;
\RAM64|ALT_INV_ram~418_q\ <= NOT \RAM64|ram~418_q\;
\RAM64|ALT_INV_ram~402_q\ <= NOT \RAM64|ram~402_q\;
\RAM64|ALT_INV_ram~290_q\ <= NOT \RAM64|ram~290_q\;
\RAM64|ALT_INV_ram~274_q\ <= NOT \RAM64|ram~274_q\;
\RAM64|ALT_INV_ram~594_combout\ <= NOT \RAM64|ram~594_combout\;
\RAM64|ALT_INV_ram~593_combout\ <= NOT \RAM64|ram~593_combout\;
\RAM64|ALT_INV_ram~234_q\ <= NOT \RAM64|ram~234_q\;
\RAM64|ALT_INV_ram~170_q\ <= NOT \RAM64|ram~170_q\;
\RAM64|ALT_INV_ram~218_q\ <= NOT \RAM64|ram~218_q\;
\RAM64|ALT_INV_ram~154_q\ <= NOT \RAM64|ram~154_q\;
\RAM64|ALT_INV_ram~592_combout\ <= NOT \RAM64|ram~592_combout\;
\RAM64|ALT_INV_ram~226_q\ <= NOT \RAM64|ram~226_q\;
\RAM64|ALT_INV_ram~162_q\ <= NOT \RAM64|ram~162_q\;
\RAM64|ALT_INV_ram~210_q\ <= NOT \RAM64|ram~210_q\;
\RAM64|ALT_INV_ram~146_q\ <= NOT \RAM64|ram~146_q\;
\RAM64|ALT_INV_ram~591_combout\ <= NOT \RAM64|ram~591_combout\;
\RAM64|ALT_INV_ram~106_q\ <= NOT \RAM64|ram~106_q\;
\RAM64|ALT_INV_ram~42_q\ <= NOT \RAM64|ram~42_q\;
\RAM64|ALT_INV_ram~90_q\ <= NOT \RAM64|ram~90_q\;
\RAM64|ALT_INV_ram~26_q\ <= NOT \RAM64|ram~26_q\;
\RAM64|ALT_INV_ram~590_combout\ <= NOT \RAM64|ram~590_combout\;
\RAM64|ALT_INV_ram~98_q\ <= NOT \RAM64|ram~98_q\;
\RAM64|ALT_INV_ram~34_q\ <= NOT \RAM64|ram~34_q\;
\RAM64|ALT_INV_ram~82_q\ <= NOT \RAM64|ram~82_q\;
\RAM64|ALT_INV_ram~18_q\ <= NOT \RAM64|ram~18_q\;
\ALT_INV_DATA_IN[2]~7_combout\ <= NOT \DATA_IN[2]~7_combout\;
\RAM64|ALT_INV_ram~589_combout\ <= NOT \RAM64|ram~589_combout\;
\RAM64|ALT_INV_ram~588_combout\ <= NOT \RAM64|ram~588_combout\;
\RAM64|ALT_INV_ram~587_combout\ <= NOT \RAM64|ram~587_combout\;
\RAM64|ALT_INV_ram~521_q\ <= NOT \RAM64|ram~521_q\;
\RAM64|ALT_INV_ram~489_q\ <= NOT \RAM64|ram~489_q\;
\RAM64|ALT_INV_ram~513_q\ <= NOT \RAM64|ram~513_q\;
\RAM64|ALT_INV_ram~481_q\ <= NOT \RAM64|ram~481_q\;
\RAM64|ALT_INV_ram~586_combout\ <= NOT \RAM64|ram~586_combout\;
\RAM64|ALT_INV_ram~457_q\ <= NOT \RAM64|ram~457_q\;
\RAM64|ALT_INV_ram~425_q\ <= NOT \RAM64|ram~425_q\;
\RAM64|ALT_INV_ram~449_q\ <= NOT \RAM64|ram~449_q\;
\RAM64|ALT_INV_ram~417_q\ <= NOT \RAM64|ram~417_q\;
\RAM64|ALT_INV_ram~585_combout\ <= NOT \RAM64|ram~585_combout\;
\RAM64|ALT_INV_ram~505_q\ <= NOT \RAM64|ram~505_q\;
\RAM64|ALT_INV_ram~473_q\ <= NOT \RAM64|ram~473_q\;
\RAM64|ALT_INV_ram~497_q\ <= NOT \RAM64|ram~497_q\;
\RAM64|ALT_INV_ram~465_q\ <= NOT \RAM64|ram~465_q\;
\RAM64|ALT_INV_ram~584_combout\ <= NOT \RAM64|ram~584_combout\;
\RAM64|ALT_INV_ram~441_q\ <= NOT \RAM64|ram~441_q\;
\RAM64|ALT_INV_ram~409_q\ <= NOT \RAM64|ram~409_q\;
\RAM64|ALT_INV_ram~433_q\ <= NOT \RAM64|ram~433_q\;
\RAM64|ALT_INV_ram~401_q\ <= NOT \RAM64|ram~401_q\;
\RAM64|ALT_INV_ram~583_combout\ <= NOT \RAM64|ram~583_combout\;
\RAM64|ALT_INV_ram~582_combout\ <= NOT \RAM64|ram~582_combout\;
\RAM64|ALT_INV_ram~265_q\ <= NOT \RAM64|ram~265_q\;
\RAM64|ALT_INV_ram~233_q\ <= NOT \RAM64|ram~233_q\;
\RAM64|ALT_INV_ram~249_q\ <= NOT \RAM64|ram~249_q\;
\RAM64|ALT_INV_ram~217_q\ <= NOT \RAM64|ram~217_q\;
\RAM64|ALT_INV_ram~581_combout\ <= NOT \RAM64|ram~581_combout\;
\RAM64|ALT_INV_ram~201_q\ <= NOT \RAM64|ram~201_q\;
\RAM64|ALT_INV_ram~169_q\ <= NOT \RAM64|ram~169_q\;
\RAM64|ALT_INV_ram~185_q\ <= NOT \RAM64|ram~185_q\;
\RAM64|ALT_INV_ram~153_q\ <= NOT \RAM64|ram~153_q\;
\RAM64|ALT_INV_ram~580_combout\ <= NOT \RAM64|ram~580_combout\;
\RAM64|ALT_INV_ram~257_q\ <= NOT \RAM64|ram~257_q\;
\RAM64|ALT_INV_ram~225_q\ <= NOT \RAM64|ram~225_q\;
\RAM64|ALT_INV_ram~241_q\ <= NOT \RAM64|ram~241_q\;
\RAM64|ALT_INV_ram~209_q\ <= NOT \RAM64|ram~209_q\;
\RAM64|ALT_INV_ram~579_combout\ <= NOT \RAM64|ram~579_combout\;
\RAM64|ALT_INV_ram~193_q\ <= NOT \RAM64|ram~193_q\;
\RAM64|ALT_INV_ram~161_q\ <= NOT \RAM64|ram~161_q\;
\RAM64|ALT_INV_ram~177_q\ <= NOT \RAM64|ram~177_q\;
\RAM64|ALT_INV_ram~145_q\ <= NOT \RAM64|ram~145_q\;
\RAM64|ALT_INV_ram~578_combout\ <= NOT \RAM64|ram~578_combout\;
\RAM64|ALT_INV_ram~577_combout\ <= NOT \RAM64|ram~577_combout\;
\RAM64|ALT_INV_ram~393_q\ <= NOT \RAM64|ram~393_q\;
\RAM64|ALT_INV_ram~329_q\ <= NOT \RAM64|ram~329_q\;
\RAM64|ALT_INV_ram~361_q\ <= NOT \RAM64|ram~361_q\;
\RAM64|ALT_INV_ram~297_q\ <= NOT \RAM64|ram~297_q\;
\RAM64|ALT_INV_ram~576_combout\ <= NOT \RAM64|ram~576_combout\;
\RAM64|ALT_INV_ram~385_q\ <= NOT \RAM64|ram~385_q\;
\RAM64|ALT_INV_ram~321_q\ <= NOT \RAM64|ram~321_q\;
\RAM64|ALT_INV_ram~353_q\ <= NOT \RAM64|ram~353_q\;
\RAM64|ALT_INV_ram~420_q\ <= NOT \RAM64|ram~420_q\;
\RAM64|ALT_INV_ram~292_q\ <= NOT \RAM64|ram~292_q\;
\RAM64|ALT_INV_ram~404_q\ <= NOT \RAM64|ram~404_q\;
\RAM64|ALT_INV_ram~276_q\ <= NOT \RAM64|ram~276_q\;
\RAM64|ALT_INV_ram~636_combout\ <= NOT \RAM64|ram~636_combout\;
\RAM64|ALT_INV_ram~635_combout\ <= NOT \RAM64|ram~635_combout\;
\RAM64|ALT_INV_ram~260_q\ <= NOT \RAM64|ram~260_q\;
\RAM64|ALT_INV_ram~228_q\ <= NOT \RAM64|ram~228_q\;
\RAM64|ALT_INV_ram~132_q\ <= NOT \RAM64|ram~132_q\;
\RAM64|ALT_INV_ram~100_q\ <= NOT \RAM64|ram~100_q\;
\RAM64|ALT_INV_ram~634_combout\ <= NOT \RAM64|ram~634_combout\;
\RAM64|ALT_INV_ram~196_q\ <= NOT \RAM64|ram~196_q\;
\RAM64|ALT_INV_ram~164_q\ <= NOT \RAM64|ram~164_q\;
\RAM64|ALT_INV_ram~68_q\ <= NOT \RAM64|ram~68_q\;
\RAM64|ALT_INV_ram~36_q\ <= NOT \RAM64|ram~36_q\;
\RAM64|ALT_INV_ram~633_combout\ <= NOT \RAM64|ram~633_combout\;
\RAM64|ALT_INV_ram~244_q\ <= NOT \RAM64|ram~244_q\;
\RAM64|ALT_INV_ram~212_q\ <= NOT \RAM64|ram~212_q\;
\RAM64|ALT_INV_ram~116_q\ <= NOT \RAM64|ram~116_q\;
\RAM64|ALT_INV_ram~84_q\ <= NOT \RAM64|ram~84_q\;
\RAM64|ALT_INV_ram~632_combout\ <= NOT \RAM64|ram~632_combout\;
\RAM64|ALT_INV_ram~180_q\ <= NOT \RAM64|ram~180_q\;
\RAM64|ALT_INV_ram~148_q\ <= NOT \RAM64|ram~148_q\;
\RAM64|ALT_INV_ram~52_q\ <= NOT \RAM64|ram~52_q\;
\RAM64|ALT_INV_ram~20_q\ <= NOT \RAM64|ram~20_q\;
\ALT_INV_DATA_IN[4]~9_combout\ <= NOT \DATA_IN[4]~9_combout\;
\RAM64|ALT_INV_ram~631_combout\ <= NOT \RAM64|ram~631_combout\;
\RAM64|ALT_INV_ram~630_combout\ <= NOT \RAM64|ram~630_combout\;
\RAM64|ALT_INV_ram~629_combout\ <= NOT \RAM64|ram~629_combout\;
\RAM64|ALT_INV_ram~523_q\ <= NOT \RAM64|ram~523_q\;
\RAM64|ALT_INV_ram~491_q\ <= NOT \RAM64|ram~491_q\;
\RAM64|ALT_INV_ram~515_q\ <= NOT \RAM64|ram~515_q\;
\RAM64|ALT_INV_ram~483_q\ <= NOT \RAM64|ram~483_q\;
\RAM64|ALT_INV_ram~628_combout\ <= NOT \RAM64|ram~628_combout\;
\RAM64|ALT_INV_ram~459_q\ <= NOT \RAM64|ram~459_q\;
\RAM64|ALT_INV_ram~427_q\ <= NOT \RAM64|ram~427_q\;
\RAM64|ALT_INV_ram~451_q\ <= NOT \RAM64|ram~451_q\;
\RAM64|ALT_INV_ram~419_q\ <= NOT \RAM64|ram~419_q\;
\RAM64|ALT_INV_ram~627_combout\ <= NOT \RAM64|ram~627_combout\;
\RAM64|ALT_INV_ram~395_q\ <= NOT \RAM64|ram~395_q\;
\RAM64|ALT_INV_ram~363_q\ <= NOT \RAM64|ram~363_q\;
\RAM64|ALT_INV_ram~387_q\ <= NOT \RAM64|ram~387_q\;
\RAM64|ALT_INV_ram~355_q\ <= NOT \RAM64|ram~355_q\;
\RAM64|ALT_INV_ram~626_combout\ <= NOT \RAM64|ram~626_combout\;
\RAM64|ALT_INV_ram~331_q\ <= NOT \RAM64|ram~331_q\;
\RAM64|ALT_INV_ram~299_q\ <= NOT \RAM64|ram~299_q\;
\RAM64|ALT_INV_ram~323_q\ <= NOT \RAM64|ram~323_q\;
\RAM64|ALT_INV_ram~291_q\ <= NOT \RAM64|ram~291_q\;
\RAM64|ALT_INV_ram~625_combout\ <= NOT \RAM64|ram~625_combout\;
\RAM64|ALT_INV_ram~624_combout\ <= NOT \RAM64|ram~624_combout\;
\RAM64|ALT_INV_ram~267_q\ <= NOT \RAM64|ram~267_q\;
\RAM64|ALT_INV_ram~203_q\ <= NOT \RAM64|ram~203_q\;
\RAM64|ALT_INV_ram~259_q\ <= NOT \RAM64|ram~259_q\;
\RAM64|ALT_INV_ram~195_q\ <= NOT \RAM64|ram~195_q\;
\RAM64|ALT_INV_ram~623_combout\ <= NOT \RAM64|ram~623_combout\;
\RAM64|ALT_INV_ram~235_q\ <= NOT \RAM64|ram~235_q\;
\RAM64|ALT_INV_ram~171_q\ <= NOT \RAM64|ram~171_q\;
\RAM64|ALT_INV_ram~227_q\ <= NOT \RAM64|ram~227_q\;
\RAM64|ALT_INV_ram~163_q\ <= NOT \RAM64|ram~163_q\;
\RAM64|ALT_INV_ram~622_combout\ <= NOT \RAM64|ram~622_combout\;
\RAM64|ALT_INV_ram~139_q\ <= NOT \RAM64|ram~139_q\;
\RAM64|ALT_INV_ram~75_q\ <= NOT \RAM64|ram~75_q\;
\RAM64|ALT_INV_ram~131_q\ <= NOT \RAM64|ram~131_q\;
\RAM64|ALT_INV_ram~67_q\ <= NOT \RAM64|ram~67_q\;
\RAM64|ALT_INV_ram~621_combout\ <= NOT \RAM64|ram~621_combout\;
\RAM64|ALT_INV_ram~107_q\ <= NOT \RAM64|ram~107_q\;
\RAM64|ALT_INV_ram~43_q\ <= NOT \RAM64|ram~43_q\;
\RAM64|ALT_INV_ram~99_q\ <= NOT \RAM64|ram~99_q\;
\RAM64|ALT_INV_ram~35_q\ <= NOT \RAM64|ram~35_q\;
\RAM64|ALT_INV_ram~620_combout\ <= NOT \RAM64|ram~620_combout\;
\RAM64|ALT_INV_ram~619_combout\ <= NOT \RAM64|ram~619_combout\;
\RAM64|ALT_INV_ram~507_q\ <= NOT \RAM64|ram~507_q\;
\RAM64|ALT_INV_ram~499_q\ <= NOT \RAM64|ram~499_q\;
\RAM64|ALT_INV_ram~379_q\ <= NOT \RAM64|ram~379_q\;
\RAM64|ALT_INV_ram~371_q\ <= NOT \RAM64|ram~371_q\;
\RAM64|ALT_INV_ram~618_combout\ <= NOT \RAM64|ram~618_combout\;
\RAM64|ALT_INV_ram~443_q\ <= NOT \RAM64|ram~443_q\;
\RAM64|ALT_INV_ram~435_q\ <= NOT \RAM64|ram~435_q\;
\RAM64|ALT_INV_ram~315_q\ <= NOT \RAM64|ram~315_q\;
\RAM64|ALT_INV_ram~307_q\ <= NOT \RAM64|ram~307_q\;
\RAM64|ALT_INV_ram~617_combout\ <= NOT \RAM64|ram~617_combout\;
\RAM64|ALT_INV_ram~475_q\ <= NOT \RAM64|ram~475_q\;
\RAM64|ALT_INV_ram~467_q\ <= NOT \RAM64|ram~467_q\;
\RAM64|ALT_INV_ram~347_q\ <= NOT \RAM64|ram~347_q\;
\RAM64|ALT_INV_ram~339_q\ <= NOT \RAM64|ram~339_q\;
\RAM64|ALT_INV_ram~616_combout\ <= NOT \RAM64|ram~616_combout\;
\RAM64|ALT_INV_ram~411_q\ <= NOT \RAM64|ram~411_q\;
\RAM64|ALT_INV_ram~403_q\ <= NOT \RAM64|ram~403_q\;
\RAM64|ALT_INV_ram~283_q\ <= NOT \RAM64|ram~283_q\;
\RAM64|ALT_INV_ram~275_q\ <= NOT \RAM64|ram~275_q\;
\RAM64|ALT_INV_ram~615_combout\ <= NOT \RAM64|ram~615_combout\;
\RAM64|ALT_INV_ram~614_combout\ <= NOT \RAM64|ram~614_combout\;
\RAM64|ALT_INV_ram~251_q\ <= NOT \RAM64|ram~251_q\;
\RAM64|ALT_INV_ram~219_q\ <= NOT \RAM64|ram~219_q\;
\RAM64|ALT_INV_ram~243_q\ <= NOT \RAM64|ram~243_q\;
\RAM64|ALT_INV_ram~211_q\ <= NOT \RAM64|ram~211_q\;
\RAM64|ALT_INV_ram~613_combout\ <= NOT \RAM64|ram~613_combout\;
\RAM64|ALT_INV_ram~187_q\ <= NOT \RAM64|ram~187_q\;
\RAM64|ALT_INV_ram~155_q\ <= NOT \RAM64|ram~155_q\;
\RAM64|ALT_INV_ram~179_q\ <= NOT \RAM64|ram~179_q\;
\RAM64|ALT_INV_ram~147_q\ <= NOT \RAM64|ram~147_q\;
\RAM64|ALT_INV_ram~612_combout\ <= NOT \RAM64|ram~612_combout\;
\RAM64|ALT_INV_ram~123_q\ <= NOT \RAM64|ram~123_q\;
\RAM64|ALT_INV_ram~91_q\ <= NOT \RAM64|ram~91_q\;
\RAM64|ALT_INV_ram~115_q\ <= NOT \RAM64|ram~115_q\;
\RAM64|ALT_INV_ram~83_q\ <= NOT \RAM64|ram~83_q\;
\RAM64|ALT_INV_ram~611_combout\ <= NOT \RAM64|ram~611_combout\;
\RAM64|ALT_INV_ram~59_q\ <= NOT \RAM64|ram~59_q\;
\RAM64|ALT_INV_ram~27_q\ <= NOT \RAM64|ram~27_q\;
\RAM64|ALT_INV_ram~51_q\ <= NOT \RAM64|ram~51_q\;
\RAM64|ALT_INV_ram~19_q\ <= NOT \RAM64|ram~19_q\;
\ALT_INV_DATA_IN[3]~8_combout\ <= NOT \DATA_IN[3]~8_combout\;
\RAM64|ALT_INV_ram~610_combout\ <= NOT \RAM64|ram~610_combout\;
\RAM64|ALT_INV_ram~609_combout\ <= NOT \RAM64|ram~609_combout\;
\RAM64|ALT_INV_ram~608_combout\ <= NOT \RAM64|ram~608_combout\;
\RAM64|ALT_INV_ram~522_q\ <= NOT \RAM64|ram~522_q\;
\RAM64|ALT_INV_ram~458_q\ <= NOT \RAM64|ram~458_q\;
\RAM64|ALT_INV_ram~506_q\ <= NOT \RAM64|ram~506_q\;
\RAM64|ALT_INV_ram~442_q\ <= NOT \RAM64|ram~442_q\;
\RAM64|ALT_INV_ram~607_combout\ <= NOT \RAM64|ram~607_combout\;
\RAM64|ALT_INV_ram~514_q\ <= NOT \RAM64|ram~514_q\;
\RAM64|ALT_INV_ram~450_q\ <= NOT \RAM64|ram~450_q\;
\RAM64|ALT_INV_ram~498_q\ <= NOT \RAM64|ram~498_q\;
\RAM64|ALT_INV_ram~434_q\ <= NOT \RAM64|ram~434_q\;
\RAM64|ALT_INV_ram~606_combout\ <= NOT \RAM64|ram~606_combout\;
\RAM64|ALT_INV_ram~469_q\ <= NOT \RAM64|ram~469_q\;
\RAM64|ALT_INV_ram~405_q\ <= NOT \RAM64|ram~405_q\;
\RAM64|ALT_INV_ram~667_combout\ <= NOT \RAM64|ram~667_combout\;
\RAM64|ALT_INV_ram~666_combout\ <= NOT \RAM64|ram~666_combout\;
\RAM64|ALT_INV_ram~269_q\ <= NOT \RAM64|ram~269_q\;
\RAM64|ALT_INV_ram~237_q\ <= NOT \RAM64|ram~237_q\;
\RAM64|ALT_INV_ram~261_q\ <= NOT \RAM64|ram~261_q\;
\RAM64|ALT_INV_ram~229_q\ <= NOT \RAM64|ram~229_q\;
\RAM64|ALT_INV_ram~665_combout\ <= NOT \RAM64|ram~665_combout\;
\RAM64|ALT_INV_ram~205_q\ <= NOT \RAM64|ram~205_q\;
\RAM64|ALT_INV_ram~173_q\ <= NOT \RAM64|ram~173_q\;
\RAM64|ALT_INV_ram~197_q\ <= NOT \RAM64|ram~197_q\;
\RAM64|ALT_INV_ram~165_q\ <= NOT \RAM64|ram~165_q\;
\RAM64|ALT_INV_ram~664_combout\ <= NOT \RAM64|ram~664_combout\;
\RAM64|ALT_INV_ram~253_q\ <= NOT \RAM64|ram~253_q\;
\RAM64|ALT_INV_ram~221_q\ <= NOT \RAM64|ram~221_q\;
\RAM64|ALT_INV_ram~245_q\ <= NOT \RAM64|ram~245_q\;
\RAM64|ALT_INV_ram~213_q\ <= NOT \RAM64|ram~213_q\;
\RAM64|ALT_INV_ram~663_combout\ <= NOT \RAM64|ram~663_combout\;
\RAM64|ALT_INV_ram~189_q\ <= NOT \RAM64|ram~189_q\;
\RAM64|ALT_INV_ram~157_q\ <= NOT \RAM64|ram~157_q\;
\RAM64|ALT_INV_ram~181_q\ <= NOT \RAM64|ram~181_q\;
\RAM64|ALT_INV_ram~149_q\ <= NOT \RAM64|ram~149_q\;
\RAM64|ALT_INV_ram~662_combout\ <= NOT \RAM64|ram~662_combout\;
\RAM64|ALT_INV_ram~661_combout\ <= NOT \RAM64|ram~661_combout\;
\RAM64|ALT_INV_ram~397_q\ <= NOT \RAM64|ram~397_q\;
\RAM64|ALT_INV_ram~365_q\ <= NOT \RAM64|ram~365_q\;
\RAM64|ALT_INV_ram~381_q\ <= NOT \RAM64|ram~381_q\;
\RAM64|ALT_INV_ram~349_q\ <= NOT \RAM64|ram~349_q\;
\RAM64|ALT_INV_ram~660_combout\ <= NOT \RAM64|ram~660_combout\;
\RAM64|ALT_INV_ram~333_q\ <= NOT \RAM64|ram~333_q\;
\RAM64|ALT_INV_ram~301_q\ <= NOT \RAM64|ram~301_q\;
\RAM64|ALT_INV_ram~317_q\ <= NOT \RAM64|ram~317_q\;
\RAM64|ALT_INV_ram~285_q\ <= NOT \RAM64|ram~285_q\;
\RAM64|ALT_INV_ram~659_combout\ <= NOT \RAM64|ram~659_combout\;
\RAM64|ALT_INV_ram~389_q\ <= NOT \RAM64|ram~389_q\;
\RAM64|ALT_INV_ram~357_q\ <= NOT \RAM64|ram~357_q\;
\RAM64|ALT_INV_ram~373_q\ <= NOT \RAM64|ram~373_q\;
\RAM64|ALT_INV_ram~341_q\ <= NOT \RAM64|ram~341_q\;
\RAM64|ALT_INV_ram~658_combout\ <= NOT \RAM64|ram~658_combout\;
\RAM64|ALT_INV_ram~325_q\ <= NOT \RAM64|ram~325_q\;
\RAM64|ALT_INV_ram~293_q\ <= NOT \RAM64|ram~293_q\;
\RAM64|ALT_INV_ram~309_q\ <= NOT \RAM64|ram~309_q\;
\RAM64|ALT_INV_ram~277_q\ <= NOT \RAM64|ram~277_q\;
\RAM64|ALT_INV_ram~657_combout\ <= NOT \RAM64|ram~657_combout\;
\RAM64|ALT_INV_ram~656_combout\ <= NOT \RAM64|ram~656_combout\;
\RAM64|ALT_INV_ram~141_q\ <= NOT \RAM64|ram~141_q\;
\RAM64|ALT_INV_ram~77_q\ <= NOT \RAM64|ram~77_q\;
\RAM64|ALT_INV_ram~109_q\ <= NOT \RAM64|ram~109_q\;
\RAM64|ALT_INV_ram~45_q\ <= NOT \RAM64|ram~45_q\;
\RAM64|ALT_INV_ram~655_combout\ <= NOT \RAM64|ram~655_combout\;
\RAM64|ALT_INV_ram~133_q\ <= NOT \RAM64|ram~133_q\;
\RAM64|ALT_INV_ram~69_q\ <= NOT \RAM64|ram~69_q\;
\RAM64|ALT_INV_ram~101_q\ <= NOT \RAM64|ram~101_q\;
\RAM64|ALT_INV_ram~37_q\ <= NOT \RAM64|ram~37_q\;
\RAM64|ALT_INV_ram~654_combout\ <= NOT \RAM64|ram~654_combout\;
\RAM64|ALT_INV_ram~125_q\ <= NOT \RAM64|ram~125_q\;
\RAM64|ALT_INV_ram~61_q\ <= NOT \RAM64|ram~61_q\;
\RAM64|ALT_INV_ram~93_q\ <= NOT \RAM64|ram~93_q\;
\RAM64|ALT_INV_ram~29_q\ <= NOT \RAM64|ram~29_q\;
\RAM64|ALT_INV_ram~653_combout\ <= NOT \RAM64|ram~653_combout\;
\RAM64|ALT_INV_ram~117_q\ <= NOT \RAM64|ram~117_q\;
\RAM64|ALT_INV_ram~53_q\ <= NOT \RAM64|ram~53_q\;
\RAM64|ALT_INV_ram~85_q\ <= NOT \RAM64|ram~85_q\;
\RAM64|ALT_INV_ram~21_q\ <= NOT \RAM64|ram~21_q\;
\ALT_INV_DATA_IN[5]~10_combout\ <= NOT \DATA_IN[5]~10_combout\;
\RAM64|ALT_INV_ram~652_combout\ <= NOT \RAM64|ram~652_combout\;
\RAM64|ALT_INV_ram~651_combout\ <= NOT \RAM64|ram~651_combout\;
\RAM64|ALT_INV_ram~650_combout\ <= NOT \RAM64|ram~650_combout\;
\RAM64|ALT_INV_ram~524_q\ <= NOT \RAM64|ram~524_q\;
\RAM64|ALT_INV_ram~460_q\ <= NOT \RAM64|ram~460_q\;
\RAM64|ALT_INV_ram~396_q\ <= NOT \RAM64|ram~396_q\;
\RAM64|ALT_INV_ram~332_q\ <= NOT \RAM64|ram~332_q\;
\RAM64|ALT_INV_ram~649_combout\ <= NOT \RAM64|ram~649_combout\;
\RAM64|ALT_INV_ram~492_q\ <= NOT \RAM64|ram~492_q\;
\RAM64|ALT_INV_ram~428_q\ <= NOT \RAM64|ram~428_q\;
\RAM64|ALT_INV_ram~364_q\ <= NOT \RAM64|ram~364_q\;
\RAM64|ALT_INV_ram~300_q\ <= NOT \RAM64|ram~300_q\;
\RAM64|ALT_INV_ram~648_combout\ <= NOT \RAM64|ram~648_combout\;
\RAM64|ALT_INV_ram~508_q\ <= NOT \RAM64|ram~508_q\;
\RAM64|ALT_INV_ram~444_q\ <= NOT \RAM64|ram~444_q\;
\RAM64|ALT_INV_ram~380_q\ <= NOT \RAM64|ram~380_q\;
\RAM64|ALT_INV_ram~316_q\ <= NOT \RAM64|ram~316_q\;
\RAM64|ALT_INV_ram~647_combout\ <= NOT \RAM64|ram~647_combout\;
\RAM64|ALT_INV_ram~476_q\ <= NOT \RAM64|ram~476_q\;
\RAM64|ALT_INV_ram~412_q\ <= NOT \RAM64|ram~412_q\;
\RAM64|ALT_INV_ram~348_q\ <= NOT \RAM64|ram~348_q\;
\RAM64|ALT_INV_ram~284_q\ <= NOT \RAM64|ram~284_q\;
\RAM64|ALT_INV_ram~646_combout\ <= NOT \RAM64|ram~646_combout\;
\RAM64|ALT_INV_ram~645_combout\ <= NOT \RAM64|ram~645_combout\;
\RAM64|ALT_INV_ram~268_q\ <= NOT \RAM64|ram~268_q\;
\RAM64|ALT_INV_ram~236_q\ <= NOT \RAM64|ram~236_q\;
\RAM64|ALT_INV_ram~140_q\ <= NOT \RAM64|ram~140_q\;
\RAM64|ALT_INV_ram~108_q\ <= NOT \RAM64|ram~108_q\;
\RAM64|ALT_INV_ram~644_combout\ <= NOT \RAM64|ram~644_combout\;
\RAM64|ALT_INV_ram~204_q\ <= NOT \RAM64|ram~204_q\;
\RAM64|ALT_INV_ram~172_q\ <= NOT \RAM64|ram~172_q\;
\RAM64|ALT_INV_ram~76_q\ <= NOT \RAM64|ram~76_q\;
\RAM64|ALT_INV_ram~44_q\ <= NOT \RAM64|ram~44_q\;
\RAM64|ALT_INV_ram~643_combout\ <= NOT \RAM64|ram~643_combout\;
\RAM64|ALT_INV_ram~252_q\ <= NOT \RAM64|ram~252_q\;
\RAM64|ALT_INV_ram~220_q\ <= NOT \RAM64|ram~220_q\;
\RAM64|ALT_INV_ram~124_q\ <= NOT \RAM64|ram~124_q\;
\RAM64|ALT_INV_ram~92_q\ <= NOT \RAM64|ram~92_q\;
\RAM64|ALT_INV_ram~642_combout\ <= NOT \RAM64|ram~642_combout\;
\RAM64|ALT_INV_ram~188_q\ <= NOT \RAM64|ram~188_q\;
\RAM64|ALT_INV_ram~156_q\ <= NOT \RAM64|ram~156_q\;
\RAM64|ALT_INV_ram~60_q\ <= NOT \RAM64|ram~60_q\;
\RAM64|ALT_INV_ram~28_q\ <= NOT \RAM64|ram~28_q\;
\RAM64|ALT_INV_ram~641_combout\ <= NOT \RAM64|ram~641_combout\;
\RAM64|ALT_INV_ram~640_combout\ <= NOT \RAM64|ram~640_combout\;
\RAM64|ALT_INV_ram~516_q\ <= NOT \RAM64|ram~516_q\;
\RAM64|ALT_INV_ram~388_q\ <= NOT \RAM64|ram~388_q\;
\RAM64|ALT_INV_ram~500_q\ <= NOT \RAM64|ram~500_q\;
\RAM64|ALT_INV_ram~372_q\ <= NOT \RAM64|ram~372_q\;
\RAM64|ALT_INV_ram~639_combout\ <= NOT \RAM64|ram~639_combout\;
\RAM64|ALT_INV_ram~452_q\ <= NOT \RAM64|ram~452_q\;
\RAM64|ALT_INV_ram~324_q\ <= NOT \RAM64|ram~324_q\;
\RAM64|ALT_INV_ram~436_q\ <= NOT \RAM64|ram~436_q\;
\RAM64|ALT_INV_ram~308_q\ <= NOT \RAM64|ram~308_q\;
\RAM64|ALT_INV_ram~638_combout\ <= NOT \RAM64|ram~638_combout\;
\RAM64|ALT_INV_ram~484_q\ <= NOT \RAM64|ram~484_q\;
\RAM64|ALT_INV_ram~356_q\ <= NOT \RAM64|ram~356_q\;
\RAM64|ALT_INV_ram~468_q\ <= NOT \RAM64|ram~468_q\;
\RAM64|ALT_INV_ram~340_q\ <= NOT \RAM64|ram~340_q\;
\RAM64|ALT_INV_ram~637_combout\ <= NOT \RAM64|ram~637_combout\;
\CPU|END_RETORNO|ALT_INV_DOUT\(7) <= NOT \CPU|END_RETORNO|DOUT\(7);
\CPU|END_RETORNO|ALT_INV_DOUT\(6) <= NOT \CPU|END_RETORNO|DOUT\(6);
\CPU|END_RETORNO|ALT_INV_DOUT\(5) <= NOT \CPU|END_RETORNO|DOUT\(5);
\CPU|END_RETORNO|ALT_INV_DOUT\(4) <= NOT \CPU|END_RETORNO|DOUT\(4);
\CPU|END_RETORNO|ALT_INV_DOUT\(3) <= NOT \CPU|END_RETORNO|DOUT\(3);
\CPU|END_RETORNO|ALT_INV_DOUT\(2) <= NOT \CPU|END_RETORNO|DOUT\(2);
\CPU|END_RETORNO|ALT_INV_DOUT\(1) <= NOT \CPU|END_RETORNO|DOUT\(1);
\CPU|END_RETORNO|ALT_INV_DOUT\(0) <= NOT \CPU|END_RETORNO|DOUT\(0);
\CPU|MUXproxPC|ALT_INV_Equal1~0_combout\ <= NOT \CPU|MUXproxPC|Equal1~0_combout\;
\CPU|MUXproxPC|ALT_INV_Equal2~0_combout\ <= NOT \CPU|MUXproxPC|Equal2~0_combout\;
\ALT_INV_DATA_IN[7]~12_combout\ <= NOT \DATA_IN[7]~12_combout\;
\RAM64|ALT_INV_ram~694_combout\ <= NOT \RAM64|ram~694_combout\;
\RAM64|ALT_INV_ram~693_combout\ <= NOT \RAM64|ram~693_combout\;
\RAM64|ALT_INV_ram~692_combout\ <= NOT \RAM64|ram~692_combout\;
\RAM64|ALT_INV_ram~526_q\ <= NOT \RAM64|ram~526_q\;
\RAM64|ALT_INV_ram~518_q\ <= NOT \RAM64|ram~518_q\;
\RAM64|ALT_INV_ram~398_q\ <= NOT \RAM64|ram~398_q\;
\RAM64|ALT_INV_ram~390_q\ <= NOT \RAM64|ram~390_q\;
\RAM64|ALT_INV_ram~691_combout\ <= NOT \RAM64|ram~691_combout\;
\RAM64|ALT_INV_ram~462_q\ <= NOT \RAM64|ram~462_q\;
\RAM64|ALT_INV_ram~454_q\ <= NOT \RAM64|ram~454_q\;
\RAM64|ALT_INV_ram~334_q\ <= NOT \RAM64|ram~334_q\;
\RAM64|ALT_INV_ram~326_q\ <= NOT \RAM64|ram~326_q\;
\RAM64|ALT_INV_ram~690_combout\ <= NOT \RAM64|ram~690_combout\;
\RAM64|ALT_INV_ram~510_q\ <= NOT \RAM64|ram~510_q\;
\RAM64|ALT_INV_ram~502_q\ <= NOT \RAM64|ram~502_q\;
\RAM64|ALT_INV_ram~382_q\ <= NOT \RAM64|ram~382_q\;
\RAM64|ALT_INV_ram~374_q\ <= NOT \RAM64|ram~374_q\;
\RAM64|ALT_INV_ram~689_combout\ <= NOT \RAM64|ram~689_combout\;
\RAM64|ALT_INV_ram~446_q\ <= NOT \RAM64|ram~446_q\;
\RAM64|ALT_INV_ram~438_q\ <= NOT \RAM64|ram~438_q\;
\RAM64|ALT_INV_ram~318_q\ <= NOT \RAM64|ram~318_q\;
\RAM64|ALT_INV_ram~310_q\ <= NOT \RAM64|ram~310_q\;
\RAM64|ALT_INV_ram~688_combout\ <= NOT \RAM64|ram~688_combout\;
\RAM64|ALT_INV_ram~687_combout\ <= NOT \RAM64|ram~687_combout\;
\RAM64|ALT_INV_ram~494_q\ <= NOT \RAM64|ram~494_q\;
\RAM64|ALT_INV_ram~430_q\ <= NOT \RAM64|ram~430_q\;
\RAM64|ALT_INV_ram~478_q\ <= NOT \RAM64|ram~478_q\;
\RAM64|ALT_INV_ram~414_q\ <= NOT \RAM64|ram~414_q\;
\RAM64|ALT_INV_ram~686_combout\ <= NOT \RAM64|ram~686_combout\;
\RAM64|ALT_INV_ram~486_q\ <= NOT \RAM64|ram~486_q\;
\RAM64|ALT_INV_ram~422_q\ <= NOT \RAM64|ram~422_q\;
\RAM64|ALT_INV_ram~470_q\ <= NOT \RAM64|ram~470_q\;
\RAM64|ALT_INV_ram~406_q\ <= NOT \RAM64|ram~406_q\;
\RAM64|ALT_INV_ram~685_combout\ <= NOT \RAM64|ram~685_combout\;
\RAM64|ALT_INV_ram~366_q\ <= NOT \RAM64|ram~366_q\;
\RAM64|ALT_INV_ram~302_q\ <= NOT \RAM64|ram~302_q\;
\RAM64|ALT_INV_ram~350_q\ <= NOT \RAM64|ram~350_q\;
\RAM64|ALT_INV_ram~286_q\ <= NOT \RAM64|ram~286_q\;
\RAM64|ALT_INV_ram~684_combout\ <= NOT \RAM64|ram~684_combout\;
\RAM64|ALT_INV_ram~358_q\ <= NOT \RAM64|ram~358_q\;
\RAM64|ALT_INV_ram~294_q\ <= NOT \RAM64|ram~294_q\;
\RAM64|ALT_INV_ram~342_q\ <= NOT \RAM64|ram~342_q\;
\RAM64|ALT_INV_ram~278_q\ <= NOT \RAM64|ram~278_q\;
\RAM64|ALT_INV_ram~683_combout\ <= NOT \RAM64|ram~683_combout\;
\RAM64|ALT_INV_ram~682_combout\ <= NOT \RAM64|ram~682_combout\;
\RAM64|ALT_INV_ram~270_q\ <= NOT \RAM64|ram~270_q\;
\RAM64|ALT_INV_ram~262_q\ <= NOT \RAM64|ram~262_q\;
\RAM64|ALT_INV_ram~142_q\ <= NOT \RAM64|ram~142_q\;
\RAM64|ALT_INV_ram~134_q\ <= NOT \RAM64|ram~134_q\;
\RAM64|ALT_INV_ram~681_combout\ <= NOT \RAM64|ram~681_combout\;
\RAM64|ALT_INV_ram~206_q\ <= NOT \RAM64|ram~206_q\;
\RAM64|ALT_INV_ram~198_q\ <= NOT \RAM64|ram~198_q\;
\RAM64|ALT_INV_ram~78_q\ <= NOT \RAM64|ram~78_q\;
\RAM64|ALT_INV_ram~70_q\ <= NOT \RAM64|ram~70_q\;
\RAM64|ALT_INV_ram~680_combout\ <= NOT \RAM64|ram~680_combout\;
\RAM64|ALT_INV_ram~254_q\ <= NOT \RAM64|ram~254_q\;
\RAM64|ALT_INV_ram~246_q\ <= NOT \RAM64|ram~246_q\;
\RAM64|ALT_INV_ram~126_q\ <= NOT \RAM64|ram~126_q\;
\RAM64|ALT_INV_ram~118_q\ <= NOT \RAM64|ram~118_q\;
\RAM64|ALT_INV_ram~679_combout\ <= NOT \RAM64|ram~679_combout\;
\RAM64|ALT_INV_ram~190_q\ <= NOT \RAM64|ram~190_q\;
\RAM64|ALT_INV_ram~182_q\ <= NOT \RAM64|ram~182_q\;
\RAM64|ALT_INV_ram~62_q\ <= NOT \RAM64|ram~62_q\;
\RAM64|ALT_INV_ram~54_q\ <= NOT \RAM64|ram~54_q\;
\RAM64|ALT_INV_ram~678_combout\ <= NOT \RAM64|ram~678_combout\;
\RAM64|ALT_INV_ram~677_combout\ <= NOT \RAM64|ram~677_combout\;
\RAM64|ALT_INV_ram~238_q\ <= NOT \RAM64|ram~238_q\;
\RAM64|ALT_INV_ram~174_q\ <= NOT \RAM64|ram~174_q\;
\RAM64|ALT_INV_ram~222_q\ <= NOT \RAM64|ram~222_q\;
\RAM64|ALT_INV_ram~158_q\ <= NOT \RAM64|ram~158_q\;
\RAM64|ALT_INV_ram~676_combout\ <= NOT \RAM64|ram~676_combout\;
\RAM64|ALT_INV_ram~230_q\ <= NOT \RAM64|ram~230_q\;
\RAM64|ALT_INV_ram~166_q\ <= NOT \RAM64|ram~166_q\;
\RAM64|ALT_INV_ram~214_q\ <= NOT \RAM64|ram~214_q\;
\RAM64|ALT_INV_ram~150_q\ <= NOT \RAM64|ram~150_q\;
\RAM64|ALT_INV_ram~675_combout\ <= NOT \RAM64|ram~675_combout\;
\RAM64|ALT_INV_ram~110_q\ <= NOT \RAM64|ram~110_q\;
\RAM64|ALT_INV_ram~46_q\ <= NOT \RAM64|ram~46_q\;
\RAM64|ALT_INV_ram~94_q\ <= NOT \RAM64|ram~94_q\;
\RAM64|ALT_INV_ram~30_q\ <= NOT \RAM64|ram~30_q\;
\RAM64|ALT_INV_ram~674_combout\ <= NOT \RAM64|ram~674_combout\;
\RAM64|ALT_INV_ram~102_q\ <= NOT \RAM64|ram~102_q\;
\RAM64|ALT_INV_ram~38_q\ <= NOT \RAM64|ram~38_q\;
\RAM64|ALT_INV_ram~86_q\ <= NOT \RAM64|ram~86_q\;
\RAM64|ALT_INV_ram~22_q\ <= NOT \RAM64|ram~22_q\;
\ALT_INV_DATA_IN[6]~11_combout\ <= NOT \DATA_IN[6]~11_combout\;
\RAM64|ALT_INV_ram~673_combout\ <= NOT \RAM64|ram~673_combout\;
\RAM64|ALT_INV_ram~672_combout\ <= NOT \RAM64|ram~672_combout\;
\RAM64|ALT_INV_ram~671_combout\ <= NOT \RAM64|ram~671_combout\;
\RAM64|ALT_INV_ram~525_q\ <= NOT \RAM64|ram~525_q\;
\RAM64|ALT_INV_ram~461_q\ <= NOT \RAM64|ram~461_q\;
\RAM64|ALT_INV_ram~493_q\ <= NOT \RAM64|ram~493_q\;
\RAM64|ALT_INV_ram~429_q\ <= NOT \RAM64|ram~429_q\;
\RAM64|ALT_INV_ram~670_combout\ <= NOT \RAM64|ram~670_combout\;
\RAM64|ALT_INV_ram~517_q\ <= NOT \RAM64|ram~517_q\;
\RAM64|ALT_INV_ram~453_q\ <= NOT \RAM64|ram~453_q\;
\RAM64|ALT_INV_ram~485_q\ <= NOT \RAM64|ram~485_q\;
\RAM64|ALT_INV_ram~421_q\ <= NOT \RAM64|ram~421_q\;
\RAM64|ALT_INV_ram~669_combout\ <= NOT \RAM64|ram~669_combout\;
\RAM64|ALT_INV_ram~509_q\ <= NOT \RAM64|ram~509_q\;
\RAM64|ALT_INV_ram~445_q\ <= NOT \RAM64|ram~445_q\;
\RAM64|ALT_INV_ram~477_q\ <= NOT \RAM64|ram~477_q\;
\RAM64|ALT_INV_ram~413_q\ <= NOT \RAM64|ram~413_q\;
\RAM64|ALT_INV_ram~668_combout\ <= NOT \RAM64|ram~668_combout\;
\RAM64|ALT_INV_ram~501_q\ <= NOT \RAM64|ram~501_q\;
\RAM64|ALT_INV_ram~437_q\ <= NOT \RAM64|ram~437_q\;
\RAM64|ALT_INV_ram~807_combout\ <= NOT \RAM64|ram~807_combout\;
\RAM64|ALT_INV_ram~805_combout\ <= NOT \RAM64|ram~805_combout\;
\RAM64|ALT_INV_ram~803_combout\ <= NOT \RAM64|ram~803_combout\;
\RAM64|ALT_INV_ram~801_combout\ <= NOT \RAM64|ram~801_combout\;
\RAM64|ALT_INV_ram~799_combout\ <= NOT \RAM64|ram~799_combout\;
\RAM64|ALT_INV_ram~797_combout\ <= NOT \RAM64|ram~797_combout\;
\RAM64|ALT_INV_ram~795_combout\ <= NOT \RAM64|ram~795_combout\;
\RAM64|ALT_INV_ram~793_combout\ <= NOT \RAM64|ram~793_combout\;
\RAM64|ALT_INV_ram~791_combout\ <= NOT \RAM64|ram~791_combout\;
\RAM64|ALT_INV_ram~789_combout\ <= NOT \RAM64|ram~789_combout\;
\RAM64|ALT_INV_ram~787_combout\ <= NOT \RAM64|ram~787_combout\;
\RAM64|ALT_INV_ram~785_combout\ <= NOT \RAM64|ram~785_combout\;
\RAM64|ALT_INV_ram~783_combout\ <= NOT \RAM64|ram~783_combout\;
\RAM64|ALT_INV_ram~781_combout\ <= NOT \RAM64|ram~781_combout\;
\RAM64|ALT_INV_ram~779_combout\ <= NOT \RAM64|ram~779_combout\;
\RAM64|ALT_INV_ram~777_combout\ <= NOT \RAM64|ram~777_combout\;
\RAM64|ALT_INV_ram~775_combout\ <= NOT \RAM64|ram~775_combout\;
\RAM64|ALT_INV_ram~773_combout\ <= NOT \RAM64|ram~773_combout\;
\RAM64|ALT_INV_ram~771_combout\ <= NOT \RAM64|ram~771_combout\;
\RAM64|ALT_INV_ram~769_combout\ <= NOT \RAM64|ram~769_combout\;
\RAM64|ALT_INV_ram~767_combout\ <= NOT \RAM64|ram~767_combout\;
\RAM64|ALT_INV_ram~765_combout\ <= NOT \RAM64|ram~765_combout\;
\RAM64|ALT_INV_ram~763_combout\ <= NOT \RAM64|ram~763_combout\;
\RAM64|ALT_INV_ram~761_combout\ <= NOT \RAM64|ram~761_combout\;
\RAM64|ALT_INV_ram~759_combout\ <= NOT \RAM64|ram~759_combout\;
\RAM64|ALT_INV_ram~757_combout\ <= NOT \RAM64|ram~757_combout\;
\RAM64|ALT_INV_ram~755_combout\ <= NOT \RAM64|ram~755_combout\;
\RAM64|ALT_INV_ram~753_combout\ <= NOT \RAM64|ram~753_combout\;
\RAM64|ALT_INV_ram~751_combout\ <= NOT \RAM64|ram~751_combout\;
\RAM64|ALT_INV_ram~749_combout\ <= NOT \RAM64|ram~749_combout\;
\RAM64|ALT_INV_ram~747_combout\ <= NOT \RAM64|ram~747_combout\;
\RAM64|ALT_INV_ram~745_combout\ <= NOT \RAM64|ram~745_combout\;
\RAM64|ALT_INV_ram~743_combout\ <= NOT \RAM64|ram~743_combout\;
\RAM64|ALT_INV_ram~741_combout\ <= NOT \RAM64|ram~741_combout\;
\RAM64|ALT_INV_ram~739_combout\ <= NOT \RAM64|ram~739_combout\;
\RAM64|ALT_INV_ram~737_combout\ <= NOT \RAM64|ram~737_combout\;
\RAM64|ALT_INV_ram~735_combout\ <= NOT \RAM64|ram~735_combout\;
\RAM64|ALT_INV_ram~733_combout\ <= NOT \RAM64|ram~733_combout\;
\RAM64|ALT_INV_ram~731_combout\ <= NOT \RAM64|ram~731_combout\;
\RAM64|ALT_INV_ram~729_combout\ <= NOT \RAM64|ram~729_combout\;
\RAM64|ALT_INV_ram~727_combout\ <= NOT \RAM64|ram~727_combout\;
\RAM64|ALT_INV_ram~725_combout\ <= NOT \RAM64|ram~725_combout\;
\RAM64|ALT_INV_ram~723_combout\ <= NOT \RAM64|ram~723_combout\;
\RAM64|ALT_INV_ram~721_combout\ <= NOT \RAM64|ram~721_combout\;
\RAM64|ALT_INV_ram~719_combout\ <= NOT \RAM64|ram~719_combout\;
\RAM64|ALT_INV_ram~717_combout\ <= NOT \RAM64|ram~717_combout\;
\RAM64|ALT_INV_ram~715_combout\ <= NOT \RAM64|ram~715_combout\;
\RAM64|ALT_INV_ram~713_combout\ <= NOT \RAM64|ram~713_combout\;
\RAM64|ALT_INV_ram~711_combout\ <= NOT \RAM64|ram~711_combout\;
\RAM64|ALT_INV_ram~709_combout\ <= NOT \RAM64|ram~709_combout\;
\RAM64|ALT_INV_ram~707_combout\ <= NOT \RAM64|ram~707_combout\;
\RAM64|ALT_INV_ram~705_combout\ <= NOT \RAM64|ram~705_combout\;
\RAM64|ALT_INV_ram~703_combout\ <= NOT \RAM64|ram~703_combout\;
\RAM64|ALT_INV_ram~701_combout\ <= NOT \RAM64|ram~701_combout\;
\RAM64|ALT_INV_ram~699_combout\ <= NOT \RAM64|ram~699_combout\;
\RAM64|ALT_INV_ram~697_combout\ <= NOT \RAM64|ram~697_combout\;
\RAM64|ALT_INV_process_0~1_combout\ <= NOT \RAM64|process_0~1_combout\;
\RAM64|ALT_INV_ram~695_combout\ <= NOT \RAM64|ram~695_combout\;
\CPU|ULA1|ALT_INV_Equal2~2_combout\ <= NOT \CPU|ULA1|Equal2~2_combout\;
\CPU|DECODER1|ALT_INV_saida~8_combout\ <= NOT \CPU|DECODER1|saida~8_combout\;
\ROM|ALT_INV_memROM~32_combout\ <= NOT \ROM|memROM~32_combout\;
\ROM|ALT_INV_memROM~31_combout\ <= NOT \ROM|memROM~31_combout\;
\ALT_INV_DATA_IN[0]~15_combout\ <= NOT \DATA_IN[0]~15_combout\;
\ALT_INV_DATA_IN[7]~14_combout\ <= NOT \DATA_IN[7]~14_combout\;
\ALT_INV_DATA_IN[7]~13_combout\ <= NOT \DATA_IN[7]~13_combout\;
\ROM|ALT_INV_memROM~30_combout\ <= NOT \ROM|memROM~30_combout\;
\ROM|ALT_INV_memROM~29_combout\ <= NOT \ROM|memROM~29_combout\;
\CPU|END_RETORNO|ALT_INV_DOUT\(8) <= NOT \CPU|END_RETORNO|DOUT\(8);
\ALT_INV_SW[7]~input_o\ <= NOT \SW[7]~input_o\;
\ALT_INV_SW[6]~input_o\ <= NOT \SW[6]~input_o\;
\ALT_INV_SW[5]~input_o\ <= NOT \SW[5]~input_o\;
\ALT_INV_SW[4]~input_o\ <= NOT \SW[4]~input_o\;
\ALT_INV_SW[3]~input_o\ <= NOT \SW[3]~input_o\;
\ALT_INV_SW[2]~input_o\ <= NOT \SW[2]~input_o\;
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
\ALT_INV_FPGA_RESET_N~input_o\ <= NOT \FPGA_RESET_N~input_o\;
\ALT_INV_KEY[2]~input_o\ <= NOT \KEY[2]~input_o\;
\ALT_INV_SW[9]~input_o\ <= NOT \SW[9]~input_o\;
\ALT_INV_KEY[1]~input_o\ <= NOT \KEY[1]~input_o\;
\ALT_INV_KEY[0]~input_o\ <= NOT \KEY[0]~input_o\;
\ALT_INV_KEY[3]~input_o\ <= NOT \KEY[3]~input_o\;
\ALT_INV_SW[8]~input_o\ <= NOT \SW[8]~input_o\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\detectorSubDebounceKey1|edgeDetector|ALT_INV_saidaQ~q\ <= NOT \detectorSubDebounceKey1|edgeDetector|saidaQ~q\;
\detectorSubDebounceKey0|edgeDetector|ALT_INV_saidaQ~q\ <= NOT \detectorSubDebounceKey0|edgeDetector|saidaQ~q\;
\ROM|ALT_INV_memROM~33_combout\ <= NOT \ROM|memROM~33_combout\;
\detectorSubDebounceKey0|ALT_INV_limpa_leitura~combout\ <= NOT \detectorSubDebounceKey0|limpa_leitura~combout\;
\detectorSubDebounceKey0|ALT_INV_limpa_leitura~0_combout\ <= NOT \detectorSubDebounceKey0|limpa_leitura~0_combout\;
\RAM64|ALT_INV_ram~821_combout\ <= NOT \RAM64|ram~821_combout\;
\RAM64|ALT_INV_ram~819_combout\ <= NOT \RAM64|ram~819_combout\;
\RAM64|ALT_INV_ram~817_combout\ <= NOT \RAM64|ram~817_combout\;
\RAM64|ALT_INV_ram~815_combout\ <= NOT \RAM64|ram~815_combout\;
\RAM64|ALT_INV_ram~813_combout\ <= NOT \RAM64|ram~813_combout\;
\RAM64|ALT_INV_ram~811_combout\ <= NOT \RAM64|ram~811_combout\;
\RAM64|ALT_INV_ram~809_combout\ <= NOT \RAM64|ram~809_combout\;
\CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[8]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[6]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[6]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[5]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[5]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[4]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[4]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[3]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[2]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[0]~DUPLICATE_q\;

-- Location: IOOBUF_X0_Y18_N79
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

-- Location: IOOBUF_X0_Y18_N96
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

-- Location: IOOBUF_X0_Y18_N62
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

-- Location: IOOBUF_X0_Y18_N45
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

-- Location: IOOBUF_X0_Y19_N39
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

-- Location: IOOBUF_X0_Y19_N56
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

-- Location: IOOBUF_X0_Y19_N5
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

-- Location: IOOBUF_X0_Y19_N22
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

-- Location: IOOBUF_X0_Y20_N39
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

-- Location: IOOBUF_X0_Y20_N56
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

-- Location: IOOBUF_X52_Y0_N53
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

-- Location: IOOBUF_X51_Y0_N36
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

-- Location: IOOBUF_X48_Y0_N76
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

-- Location: IOOBUF_X50_Y0_N36
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

-- Location: IOOBUF_X48_Y0_N93
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

-- Location: IOOBUF_X50_Y0_N53
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

-- Location: IOOBUF_X46_Y0_N36
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

-- Location: IOOBUF_X44_Y0_N36
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

-- Location: IOOBUF_X40_Y0_N93
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

-- Location: IOOBUF_X44_Y0_N53
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

-- Location: IOOBUF_X43_Y0_N36
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

-- Location: IOOBUF_X38_Y0_N36
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

-- Location: IOOBUF_X43_Y0_N53
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

-- Location: IOOBUF_X51_Y0_N53
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

-- Location: IOOBUF_X48_Y0_N42
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

-- Location: IOOBUF_X38_Y0_N53
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

-- Location: IOOBUF_X22_Y0_N53
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

-- Location: IOOBUF_X36_Y0_N19
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

-- Location: IOOBUF_X38_Y0_N19
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

-- Location: IOOBUF_X46_Y0_N53
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

-- Location: IOOBUF_X40_Y0_N76
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

-- Location: IOOBUF_X40_Y0_N59
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

-- Location: IOOBUF_X46_Y0_N2
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

-- Location: IOOBUF_X40_Y0_N42
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

-- Location: IOOBUF_X46_Y0_N19
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

-- Location: IOOBUF_X52_Y0_N2
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

-- Location: IOOBUF_X51_Y0_N2
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

-- Location: IOOBUF_X51_Y0_N19
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

-- Location: IOOBUF_X52_Y0_N36
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

-- Location: IOOBUF_X48_Y0_N59
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

-- Location: IOOBUF_X44_Y0_N19
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

-- Location: IOOBUF_X52_Y0_N19
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

-- Location: IOOBUF_X43_Y0_N2
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

-- Location: IOOBUF_X36_Y0_N2
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

-- Location: IOOBUF_X29_Y0_N19
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

-- Location: IOOBUF_X29_Y0_N2
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

-- Location: IOOBUF_X22_Y0_N19
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

-- Location: IOOBUF_X43_Y0_N19
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

-- Location: IOOBUF_X50_Y0_N19
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

-- Location: IOOBUF_X0_Y21_N56
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

-- Location: IOOBUF_X0_Y21_N39
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

-- Location: IOOBUF_X44_Y0_N2
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

-- Location: IOOBUF_X14_Y0_N36
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

-- Location: IOOBUF_X11_Y0_N53
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

-- Location: IOOBUF_X11_Y0_N19
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

-- Location: IOOBUF_X10_Y0_N42
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

-- Location: IOOBUF_X12_Y45_N36
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

-- Location: IOOBUF_X11_Y0_N2
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

-- Location: IOOBUF_X10_Y0_N59
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

-- Location: IOOBUF_X12_Y0_N19
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

-- Location: IOOBUF_X12_Y0_N53
\PCOUT_DEBUG[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT\(0),
	devoe => ww_devoe,
	o => ww_PCOUT_DEBUG(0));

-- Location: IOOBUF_X12_Y0_N36
\PCOUT_DEBUG[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT\(1),
	devoe => ww_devoe,
	o => ww_PCOUT_DEBUG(1));

-- Location: IOOBUF_X14_Y0_N53
\PCOUT_DEBUG[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT[2]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PCOUT_DEBUG(2));

-- Location: IOOBUF_X18_Y45_N19
\PCOUT_DEBUG[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT[3]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PCOUT_DEBUG(3));

-- Location: IOOBUF_X14_Y45_N2
\PCOUT_DEBUG[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT[4]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PCOUT_DEBUG(4));

-- Location: IOOBUF_X18_Y45_N36
\PCOUT_DEBUG[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT\(5),
	devoe => ww_devoe,
	o => ww_PCOUT_DEBUG(5));

-- Location: IOOBUF_X12_Y0_N2
\PCOUT_DEBUG[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT[6]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PCOUT_DEBUG(6));

-- Location: IOOBUF_X16_Y45_N59
\PCOUT_DEBUG[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT\(7),
	devoe => ww_devoe,
	o => ww_PCOUT_DEBUG(7));

-- Location: IOOBUF_X54_Y14_N62
\PCOUT_DEBUG[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT[8]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PCOUT_DEBUG(8));

-- Location: IOOBUF_X10_Y0_N76
\FLAG_DEBUG_0~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|ULA1|Equal2~1_combout\,
	devoe => ww_devoe,
	o => ww_FLAG_DEBUG_0);

-- Location: IOOBUF_X8_Y45_N76
\FLAG_FLIPFLOP_0~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|FLIPFLOP1|DOUT~q\,
	devoe => ww_devoe,
	o => ww_FLAG_FLIPFLOP_0);

-- Location: IOIBUF_X22_Y0_N1
\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G6
\CLOCK_50~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~input_o\,
	outclk => \CLOCK_50~inputCLKENA0_outclk\);

-- Location: FF_X17_Y6_N29
\CPU|PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|MUXproxPC|saida_MUX[6]~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(6));

-- Location: LABCELL_X17_Y6_N6
\ROM|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~0_combout\ = ( !\CPU|PC|DOUT\(7) & ( (!\CPU|PC|DOUT\(6) & !\CPU|PC|DOUT\(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT\(6),
	datad => \CPU|PC|ALT_INV_DOUT\(4),
	dataf => \CPU|PC|ALT_INV_DOUT\(7),
	combout => \ROM|memROM~0_combout\);

-- Location: FF_X16_Y6_N40
\CPU|PC|DOUT[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|MUXproxPC|saida_MUX[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[5]~DUPLICATE_q\);

-- Location: FF_X16_Y6_N23
\CPU|PC|DOUT[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|MUXproxPC|saida_MUX[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[2]~DUPLICATE_q\);

-- Location: LABCELL_X14_Y8_N33
\CPU|incrementaPC|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~5_sumout\ = SUM(( \CPU|PC|DOUT\(1) ) + ( GND ) + ( \CPU|incrementaPC|Add0~2\ ))
-- \CPU|incrementaPC|Add0~6\ = CARRY(( \CPU|PC|DOUT\(1) ) + ( GND ) + ( \CPU|incrementaPC|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT\(1),
	cin => \CPU|incrementaPC|Add0~2\,
	sumout => \CPU|incrementaPC|Add0~5_sumout\,
	cout => \CPU|incrementaPC|Add0~6\);

-- Location: LABCELL_X14_Y8_N36
\CPU|incrementaPC|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~9_sumout\ = SUM(( \CPU|PC|DOUT[2]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|incrementaPC|Add0~6\ ))
-- \CPU|incrementaPC|Add0~10\ = CARRY(( \CPU|PC|DOUT[2]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|incrementaPC|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	cin => \CPU|incrementaPC|Add0~6\,
	sumout => \CPU|incrementaPC|Add0~9_sumout\,
	cout => \CPU|incrementaPC|Add0~10\);

-- Location: FF_X16_Y6_N20
\CPU|PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|MUXproxPC|saida_MUX[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(0));

-- Location: FF_X16_Y6_N38
\CPU|PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|MUXproxPC|saida_MUX[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(3));

-- Location: LABCELL_X16_Y6_N3
\ROM|memROM~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~27_combout\ = ( !\CPU|PC|DOUT\(1) & ( (!\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(5) & !\CPU|PC|DOUT\(3))) # (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(5) & \CPU|PC|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001010000000010100101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datac => \CPU|PC|ALT_INV_DOUT\(5),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	dataf => \CPU|PC|ALT_INV_DOUT\(1),
	combout => \ROM|memROM~27_combout\);

-- Location: LABCELL_X16_Y5_N12
\ROM|memROM~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~28_combout\ = ( \ROM|memROM~27_combout\ & ( \ROM|memROM~0_combout\ & ( (!\CPU|PC|DOUT[8]~DUPLICATE_q\ & !\CPU|PC|DOUT[2]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datae => \ROM|ALT_INV_memROM~27_combout\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \ROM|memROM~28_combout\);

-- Location: LABCELL_X14_Y8_N39
\CPU|incrementaPC|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~13_sumout\ = SUM(( \CPU|PC|DOUT[3]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|incrementaPC|Add0~10\ ))
-- \CPU|incrementaPC|Add0~14\ = CARRY(( \CPU|PC|DOUT[3]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|incrementaPC|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	cin => \CPU|incrementaPC|Add0~10\,
	sumout => \CPU|incrementaPC|Add0~13_sumout\,
	cout => \CPU|incrementaPC|Add0~14\);

-- Location: FF_X14_Y8_N40
\CPU|END_RETORNO|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|incrementaPC|Add0~13_sumout\,
	ena => \CPU|DECODER1|saida~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|END_RETORNO|DOUT\(3));

-- Location: LABCELL_X16_Y6_N36
\CPU|MUXproxPC|saida_MUX[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUXproxPC|saida_MUX[3]~3_combout\ = ( \CPU|END_RETORNO|DOUT\(3) & ( (!\CPU|MUXproxPC|Equal2~0_combout\ & (((\CPU|incrementaPC|Add0~13_sumout\)))) # (\CPU|MUXproxPC|Equal2~0_combout\ & ((!\CPU|MUXproxPC|Equal1~0_combout\) # 
-- ((\ROM|memROM~28_combout\)))) ) ) # ( !\CPU|END_RETORNO|DOUT\(3) & ( (!\CPU|MUXproxPC|Equal2~0_combout\ & (((\CPU|incrementaPC|Add0~13_sumout\)))) # (\CPU|MUXproxPC|Equal2~0_combout\ & (\CPU|MUXproxPC|Equal1~0_combout\ & (\ROM|memROM~28_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110101011000000011010101101000101111011110100010111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUXproxPC|ALT_INV_Equal2~0_combout\,
	datab => \CPU|MUXproxPC|ALT_INV_Equal1~0_combout\,
	datac => \ROM|ALT_INV_memROM~28_combout\,
	datad => \CPU|incrementaPC|ALT_INV_Add0~13_sumout\,
	dataf => \CPU|END_RETORNO|ALT_INV_DOUT\(3),
	combout => \CPU|MUXproxPC|saida_MUX[3]~3_combout\);

-- Location: FF_X16_Y6_N37
\CPU|PC|DOUT[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|MUXproxPC|saida_MUX[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[3]~DUPLICATE_q\);

-- Location: LABCELL_X17_Y6_N3
\ROM|memROM~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~16_combout\ = ( \CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT[3]~DUPLICATE_q\ & (\CPU|PC|DOUT\(2) & \CPU|PC|DOUT\(1))) ) ) # ( !\CPU|PC|DOUT\(5) & ( (\CPU|PC|DOUT[3]~DUPLICATE_q\ & !\CPU|PC|DOUT\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000000000000000010100000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(1),
	dataf => \CPU|PC|ALT_INV_DOUT\(5),
	combout => \ROM|memROM~16_combout\);

-- Location: LABCELL_X17_Y6_N54
\ROM|memROM~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~17_combout\ = ( !\CPU|PC|DOUT[8]~DUPLICATE_q\ & ( (\ROM|memROM~0_combout\ & (!\CPU|PC|DOUT\(0) & \ROM|memROM~16_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \CPU|PC|ALT_INV_DOUT\(0),
	datad => \ROM|ALT_INV_memROM~16_combout\,
	dataf => \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	combout => \ROM|memROM~17_combout\);

-- Location: LABCELL_X12_Y7_N18
\CPU|DECODER1|saida~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER1|saida~9_combout\ = ( !\ROM|memROM~11_combout\ & ( \ROM|memROM~17_combout\ & ( (!\ROM|memROM~15_combout\ & \ROM|memROM~13_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001010000010100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~15_combout\,
	datac => \ROM|ALT_INV_memROM~13_combout\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \ROM|ALT_INV_memROM~17_combout\,
	combout => \CPU|DECODER1|saida~9_combout\);

-- Location: FF_X14_Y8_N37
\CPU|END_RETORNO|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|incrementaPC|Add0~9_sumout\,
	ena => \CPU|DECODER1|saida~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|END_RETORNO|DOUT\(2));

-- Location: FF_X16_Y6_N46
\CPU|PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|MUXproxPC|saida_MUX[8]~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(8));

-- Location: LABCELL_X16_Y6_N33
\ROM|memROM~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~21_combout\ = ( \CPU|PC|DOUT[0]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT\(5) & \CPU|PC|DOUT\(2))) ) ) # ( !\CPU|PC|DOUT[0]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT\(5) & !\CPU|PC|DOUT\(2))) # (\CPU|PC|DOUT\(3) & 
-- (!\CPU|PC|DOUT\(5) & \CPU|PC|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010010000100100001001000010010000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(3),
	datab => \CPU|PC|ALT_INV_DOUT\(5),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	dataf => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \ROM|memROM~21_combout\);

-- Location: LABCELL_X16_Y6_N57
\ROM|memROM~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~22_combout\ = ( \ROM|memROM~21_combout\ & ( (!\CPU|PC|DOUT\(1) & (\ROM|memROM~0_combout\ & !\CPU|PC|DOUT\(8))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001100000000000000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \CPU|PC|ALT_INV_DOUT\(8),
	dataf => \ROM|ALT_INV_memROM~21_combout\,
	combout => \ROM|memROM~22_combout\);

-- Location: LABCELL_X16_Y6_N21
\CPU|MUXproxPC|saida_MUX[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUXproxPC|saida_MUX[2]~2_combout\ = ( \CPU|incrementaPC|Add0~9_sumout\ & ( (!\CPU|MUXproxPC|Equal2~0_combout\) # ((!\CPU|MUXproxPC|Equal1~0_combout\ & (\CPU|END_RETORNO|DOUT\(2))) # (\CPU|MUXproxPC|Equal1~0_combout\ & ((\ROM|memROM~22_combout\)))) ) 
-- ) # ( !\CPU|incrementaPC|Add0~9_sumout\ & ( (\CPU|MUXproxPC|Equal2~0_combout\ & ((!\CPU|MUXproxPC|Equal1~0_combout\ & (\CPU|END_RETORNO|DOUT\(2))) # (\CPU|MUXproxPC|Equal1~0_combout\ & ((\ROM|memROM~22_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101000001000001010110101110101111111010111010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUXproxPC|ALT_INV_Equal2~0_combout\,
	datab => \CPU|MUXproxPC|ALT_INV_Equal1~0_combout\,
	datac => \CPU|END_RETORNO|ALT_INV_DOUT\(2),
	datad => \ROM|ALT_INV_memROM~22_combout\,
	dataf => \CPU|incrementaPC|ALT_INV_Add0~9_sumout\,
	combout => \CPU|MUXproxPC|saida_MUX[2]~2_combout\);

-- Location: FF_X16_Y6_N22
\CPU|PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|MUXproxPC|saida_MUX[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(2));

-- Location: LABCELL_X17_Y6_N51
\ROM|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~10_combout\ = ( \CPU|PC|DOUT\(1) & ( (\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(0) & !\CPU|PC|DOUT\(3))) ) ) # ( !\CPU|PC|DOUT\(1) & ( (!\CPU|PC|DOUT\(5) & (\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(2) $ (!\CPU|PC|DOUT\(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101000000000000010100001010000000000000101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(5),
	datab => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \CPU|PC|ALT_INV_DOUT\(0),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	dataf => \CPU|PC|ALT_INV_DOUT\(1),
	combout => \ROM|memROM~10_combout\);

-- Location: LABCELL_X17_Y6_N33
\ROM|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~11_combout\ = ( !\CPU|PC|DOUT[8]~DUPLICATE_q\ & ( (\ROM|memROM~0_combout\ & \ROM|memROM~10_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \ROM|ALT_INV_memROM~10_combout\,
	dataf => \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	combout => \ROM|memROM~11_combout\);

-- Location: MLABCELL_X13_Y5_N15
\CPU|DECODER1|saida[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER1|saida[6]~6_combout\ = ( !\ROM|memROM~15_combout\ & ( !\ROM|memROM~11_combout\ & ( !\ROM|memROM~17_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~17_combout\,
	datae => \ROM|ALT_INV_memROM~15_combout\,
	dataf => \ROM|ALT_INV_memROM~11_combout\,
	combout => \CPU|DECODER1|saida[6]~6_combout\);

-- Location: LABCELL_X12_Y6_N21
\CPU|DECODER1|saida[5]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER1|saida[5]~2_combout\ = ( !\ROM|memROM~11_combout\ & ( !\ROM|memROM~13_combout\ & ( (\ROM|memROM~15_combout\ & !\ROM|memROM~17_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~15_combout\,
	datad => \ROM|ALT_INV_memROM~17_combout\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \CPU|DECODER1|saida[5]~2_combout\);

-- Location: LABCELL_X10_Y3_N42
\CPU|DECODER1|saida[6]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER1|saida[6]~7_combout\ = ( \CPU|DECODER1|saida[5]~2_combout\ & ( \CPU|DECODER1|saida[6]~6_combout\ ) ) # ( !\CPU|DECODER1|saida[5]~2_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|DECODER1|ALT_INV_saida[6]~6_combout\,
	dataf => \CPU|DECODER1|ALT_INV_saida[5]~2_combout\,
	combout => \CPU|DECODER1|saida[6]~7_combout\);

-- Location: LABCELL_X17_Y6_N12
\ROM|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~1_combout\ = ( \CPU|PC|DOUT\(5) & ( !\CPU|PC|DOUT\(0) $ (\CPU|PC|DOUT\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000011110000111100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT\(0),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	dataf => \CPU|PC|ALT_INV_DOUT\(5),
	combout => \ROM|memROM~1_combout\);

-- Location: LABCELL_X16_Y6_N27
\ROM|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~2_combout\ = ( \CPU|PC|DOUT[0]~DUPLICATE_q\ & ( (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT[3]~DUPLICATE_q\ & (\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT[5]~DUPLICATE_q\))) ) ) # ( !\CPU|PC|DOUT[0]~DUPLICATE_q\ & ( (\CPU|PC|DOUT\(1) & 
-- (!\CPU|PC|DOUT[5]~DUPLICATE_q\ & (!\CPU|PC|DOUT[3]~DUPLICATE_q\ $ (!\CPU|PC|DOUT\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010000000000000101000000000000000100000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(1),
	datab => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \ROM|memROM~2_combout\);

-- Location: LABCELL_X16_Y6_N24
\ROM|memROM~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~29_combout\ = ( \ROM|memROM~0_combout\ & ( ((!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT[3]~DUPLICATE_q\ & \ROM|memROM~1_combout\))) # (\ROM|memROM~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000111111110000100011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(1),
	datab => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \ROM|ALT_INV_memROM~1_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \ROM|memROM~29_combout\);

-- Location: IOIBUF_X36_Y0_N52
\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: LABCELL_X16_Y6_N12
\ROM|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~8_combout\ = ( \CPU|PC|DOUT\(1) & ( \ROM|memROM~0_combout\ & ( (!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(0) $ (!\CPU|PC|DOUT[5]~DUPLICATE_q\)))) ) ) ) # ( !\CPU|PC|DOUT\(1) & ( \ROM|memROM~0_combout\ & ( 
-- (!\CPU|PC|DOUT[5]~DUPLICATE_q\ & ((!\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(2))) # (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(2) & \CPU|PC|DOUT\(3))))) # (\CPU|PC|DOUT[5]~DUPLICATE_q\ & (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(0) $ (\CPU|PC|DOUT\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100110100100000100000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \CPU|PC|ALT_INV_DOUT\(3),
	datad => \CPU|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datae => \CPU|PC|ALT_INV_DOUT\(1),
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \ROM|memROM~8_combout\);

-- Location: LABCELL_X16_Y6_N54
\ROM|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~5_combout\ = ( \CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(1)) # (\CPU|PC|DOUT\(0)) ) ) # ( !\CPU|PC|DOUT\(5) & ( (\CPU|PC|DOUT\(1) & !\CPU|PC|DOUT\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000010101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(0),
	dataf => \CPU|PC|ALT_INV_DOUT\(5),
	combout => \ROM|memROM~5_combout\);

-- Location: LABCELL_X16_Y6_N0
\ROM|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~6_combout\ = ( \CPU|PC|DOUT\(3) & ( (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(5) & !\CPU|PC|DOUT[2]~DUPLICATE_q\)) ) ) # ( !\CPU|PC|DOUT\(3) & ( (!\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(5) & \CPU|PC|DOUT[2]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001001000000010000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(5),
	datac => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~6_combout\);

-- Location: LABCELL_X16_Y6_N51
\ROM|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~4_combout\ = ( !\CPU|PC|DOUT\(4) & ( (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(7) & (!\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(6)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(3),
	datab => \CPU|PC|ALT_INV_DOUT\(7),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(6),
	dataf => \CPU|PC|ALT_INV_DOUT\(4),
	combout => \ROM|memROM~4_combout\);

-- Location: LABCELL_X16_Y6_N42
\ROM|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~7_combout\ = ( \ROM|memROM~0_combout\ & ( \ROM|memROM~4_combout\ & ( (!\CPU|PC|DOUT[8]~DUPLICATE_q\ & (((\ROM|memROM~6_combout\ & !\CPU|PC|DOUT\(1))) # (\ROM|memROM~5_combout\))) ) ) ) # ( !\ROM|memROM~0_combout\ & ( \ROM|memROM~4_combout\ & ( 
-- (\ROM|memROM~5_combout\ & !\CPU|PC|DOUT[8]~DUPLICATE_q\) ) ) ) # ( \ROM|memROM~0_combout\ & ( !\ROM|memROM~4_combout\ & ( (!\CPU|PC|DOUT[8]~DUPLICATE_q\ & (\ROM|memROM~6_combout\ & !\CPU|PC|DOUT\(1))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000000001000100010001000100110001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~5_combout\,
	datab => \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datad => \CPU|PC|ALT_INV_DOUT\(1),
	datae => \ROM|ALT_INV_memROM~0_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \ROM|memROM~7_combout\);

-- Location: LABCELL_X17_Y6_N24
\ROM|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~3_combout\ = ( \CPU|PC|DOUT[3]~DUPLICATE_q\ & ( \ROM|memROM~2_combout\ & ( (!\CPU|PC|DOUT[8]~DUPLICATE_q\ & \ROM|memROM~0_combout\) ) ) ) # ( !\CPU|PC|DOUT[3]~DUPLICATE_q\ & ( \ROM|memROM~2_combout\ & ( (!\CPU|PC|DOUT[8]~DUPLICATE_q\ & 
-- \ROM|memROM~0_combout\) ) ) ) # ( !\CPU|PC|DOUT[3]~DUPLICATE_q\ & ( !\ROM|memROM~2_combout\ & ( (!\CPU|PC|DOUT[8]~DUPLICATE_q\ & (!\CPU|PC|DOUT\(1) & (\ROM|memROM~0_combout\ & \ROM|memROM~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000000000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \ROM|ALT_INV_memROM~1_combout\,
	datae => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \ROM|memROM~3_combout\);

-- Location: MLABCELL_X18_Y6_N27
\AND_SW0_7|saida~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \AND_SW0_7|saida~2_combout\ = ( !\ROM|memROM~3_combout\ & ( (!\ROM|memROM~22_combout\ & (!\ROM|memROM~7_combout\ & ((!\ROM|memROM~8_combout\) # (\CPU|PC|DOUT[8]~DUPLICATE_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010001000000000101000100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~22_combout\,
	datab => \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datac => \ROM|ALT_INV_memROM~8_combout\,
	datad => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~3_combout\,
	combout => \AND_SW0_7|saida~2_combout\);

-- Location: LABCELL_X17_Y6_N21
\CPU|DECODER1|saida[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER1|saida[2]~0_combout\ = ( !\CPU|PC|DOUT[8]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT\(7) & !\CPU|PC|DOUT\(6)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT\(7),
	datad => \CPU|PC|ALT_INV_DOUT\(6),
	dataf => \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	combout => \CPU|DECODER1|saida[2]~0_combout\);

-- Location: MLABCELL_X18_Y6_N36
\CPU|DECODER1|saida[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER1|saida[2]~1_combout\ = ( \ROM|memROM~16_combout\ & ( (\CPU|DECODER1|saida[2]~0_combout\ & (((!\CPU|PC|DOUT\(0) & !\CPU|PC|DOUT\(4))) # (\ROM|memROM~14_combout\))) ) ) # ( !\ROM|memROM~16_combout\ & ( (\CPU|DECODER1|saida[2]~0_combout\ & 
-- \ROM|memROM~14_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010101000000010101010100000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER1|ALT_INV_saida[2]~0_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(0),
	datac => \CPU|PC|ALT_INV_DOUT\(4),
	datad => \ROM|ALT_INV_memROM~14_combout\,
	dataf => \ROM|ALT_INV_memROM~16_combout\,
	combout => \CPU|DECODER1|saida[2]~1_combout\);

-- Location: LABCELL_X16_Y6_N9
\ROM|memROM~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~19_combout\ = ( !\CPU|PC|DOUT[0]~DUPLICATE_q\ & ( (\CPU|PC|DOUT\(5) & !\CPU|PC|DOUT\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT\(5),
	datad => \CPU|PC|ALT_INV_DOUT\(2),
	dataf => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \ROM|memROM~19_combout\);

-- Location: FF_X17_Y6_N41
\CPU|PC|DOUT[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|MUXproxPC|saida_MUX[4]~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[4]~DUPLICATE_q\);

-- Location: LABCELL_X17_Y6_N0
\ROM|memROM~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~18_combout\ = ( !\CPU|PC|DOUT\(7) & ( (!\CPU|PC|DOUT[3]~DUPLICATE_q\ & (!\CPU|PC|DOUT[4]~DUPLICATE_q\ & !\CPU|PC|DOUT\(6))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datab => \CPU|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT\(6),
	dataf => \CPU|PC|ALT_INV_DOUT\(7),
	combout => \ROM|memROM~18_combout\);

-- Location: LABCELL_X17_Y6_N48
\ROM|memROM~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~23_combout\ = ( \CPU|PC|DOUT\(1) & ( (!\CPU|PC|DOUT\(5) & (\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(0))) ) ) # ( !\CPU|PC|DOUT\(1) & ( (\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000000100000001000000010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(5),
	datab => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \CPU|PC|ALT_INV_DOUT\(0),
	dataf => \CPU|PC|ALT_INV_DOUT\(1),
	combout => \ROM|memROM~23_combout\);

-- Location: MLABCELL_X18_Y6_N39
\ROM|memROM~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~25_combout\ = ( \CPU|PC|DOUT\(1) & ( (\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(5)) ) ) # ( !\CPU|PC|DOUT\(1) & ( (\CPU|PC|DOUT\(5) & ((!\CPU|PC|DOUT\(0)) # (\CPU|PC|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001111000000001100111100001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT\(0),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(5),
	dataf => \CPU|PC|ALT_INV_DOUT\(1),
	combout => \ROM|memROM~25_combout\);

-- Location: MLABCELL_X18_Y6_N12
\AND_SW0_7|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AND_SW0_7|saida~0_combout\ = ( \ROM|memROM~23_combout\ & ( \ROM|memROM~25_combout\ & ( (!\CPU|PC|DOUT[8]~DUPLICATE_q\ & (\ROM|memROM~18_combout\ & ((!\ROM|memROM~19_combout\) # (\CPU|PC|DOUT\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000010100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \ROM|ALT_INV_memROM~19_combout\,
	datad => \ROM|ALT_INV_memROM~18_combout\,
	datae => \ROM|ALT_INV_memROM~23_combout\,
	dataf => \ROM|ALT_INV_memROM~25_combout\,
	combout => \AND_SW0_7|saida~0_combout\);

-- Location: MLABCELL_X18_Y6_N48
\AND_SW0_7|saida~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \AND_SW0_7|saida~1_combout\ = ( \ROM|memROM~11_combout\ & ( \ROM|memROM~15_combout\ & ( (!\CPU|DECODER1|saida[2]~1_combout\ & \AND_SW0_7|saida~0_combout\) ) ) ) # ( !\ROM|memROM~11_combout\ & ( \ROM|memROM~15_combout\ & ( 
-- (!\CPU|DECODER1|saida[2]~1_combout\ & \AND_SW0_7|saida~0_combout\) ) ) ) # ( \ROM|memROM~11_combout\ & ( !\ROM|memROM~15_combout\ & ( (!\CPU|DECODER1|saida[2]~1_combout\ & \AND_SW0_7|saida~0_combout\) ) ) ) # ( !\ROM|memROM~11_combout\ & ( 
-- !\ROM|memROM~15_combout\ & ( (\AND_SW0_7|saida~0_combout\ & ((!\ROM|memROM~13_combout\ & ((\ROM|memROM~17_combout\))) # (\ROM|memROM~13_combout\ & (!\CPU|DECODER1|saida[2]~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER1|ALT_INV_saida[2]~1_combout\,
	datab => \AND_SW0_7|ALT_INV_saida~0_combout\,
	datac => \ROM|ALT_INV_memROM~17_combout\,
	datad => \ROM|ALT_INV_memROM~13_combout\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \ROM|ALT_INV_memROM~15_combout\,
	combout => \AND_SW0_7|saida~1_combout\);

-- Location: MLABCELL_X18_Y6_N18
\AND_SW0_7|saida~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \AND_SW0_7|saida~3_combout\ = ( \AND_SW0_7|saida~1_combout\ & ( \AND_SW0_7|saida~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \AND_SW0_7|ALT_INV_saida~2_combout\,
	dataf => \AND_SW0_7|ALT_INV_saida~1_combout\,
	combout => \AND_SW0_7|saida~3_combout\);

-- Location: IOIBUF_X36_Y0_N35
\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: LABCELL_X10_Y6_N48
\RAM64|ram~179feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~179feeder_combout\ = ( \CPU|REGA|DOUT\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REGA|ALT_INV_DOUT\(4),
	combout => \RAM64|ram~179feeder_combout\);

-- Location: MLABCELL_X18_Y6_N30
\RAM64|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|process_0~0_combout\ = ( \ROM|memROM~23_combout\ & ( \ROM|memROM~25_combout\ & ( (!\CPU|PC|DOUT[8]~DUPLICATE_q\ & \ROM|memROM~18_combout\) ) ) ) # ( !\ROM|memROM~23_combout\ & ( \ROM|memROM~25_combout\ & ( (!\CPU|PC|DOUT[8]~DUPLICATE_q\ & 
-- \ROM|memROM~18_combout\) ) ) ) # ( \ROM|memROM~23_combout\ & ( !\ROM|memROM~25_combout\ & ( (!\CPU|PC|DOUT[8]~DUPLICATE_q\ & \ROM|memROM~18_combout\) ) ) ) # ( !\ROM|memROM~23_combout\ & ( !\ROM|memROM~25_combout\ & ( (\ROM|memROM~19_combout\ & 
-- (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT[8]~DUPLICATE_q\ & \ROM|memROM~18_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000001111000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~19_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datad => \ROM|ALT_INV_memROM~18_combout\,
	datae => \ROM|ALT_INV_memROM~23_combout\,
	dataf => \ROM|ALT_INV_memROM~25_combout\,
	combout => \RAM64|process_0~0_combout\);

-- Location: LABCELL_X17_Y6_N36
\RAM64|process_0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|process_0~1_combout\ = ( !\ROM|memROM~17_combout\ & ( (!\RAM64|process_0~0_combout\ & (\ROM|memROM~13_combout\ & (!\ROM|memROM~11_combout\ & \ROM|memROM~15_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000000000000000000001000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_process_0~0_combout\,
	datab => \ROM|ALT_INV_memROM~13_combout\,
	datac => \ROM|ALT_INV_memROM~11_combout\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	datae => \ROM|ALT_INV_memROM~17_combout\,
	combout => \RAM64|process_0~1_combout\);

-- Location: LABCELL_X16_Y6_N30
\ROM|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~9_combout\ = ( \ROM|memROM~8_combout\ & ( !\CPU|PC|DOUT[8]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	dataf => \ROM|ALT_INV_memROM~8_combout\,
	combout => \ROM|memROM~9_combout\);

-- Location: LABCELL_X14_Y6_N42
\RAM64|ram~775\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~775_combout\ = ( !\ROM|memROM~28_combout\ & ( !\ROM|memROM~7_combout\ & ( (!\ROM|memROM~9_combout\ & (\ROM|memROM~22_combout\ & (!\ROM|memROM~3_combout\ & \ROM|memROM~20_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~9_combout\,
	datab => \ROM|ALT_INV_memROM~22_combout\,
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datad => \ROM|ALT_INV_memROM~20_combout\,
	datae => \ROM|ALT_INV_memROM~28_combout\,
	dataf => \ROM|ALT_INV_memROM~7_combout\,
	combout => \RAM64|ram~775_combout\);

-- Location: LABCELL_X14_Y6_N21
\RAM64|ram~776\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~776_combout\ = ( \RAM64|ram~775_combout\ & ( \RAM64|process_0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_process_0~1_combout\,
	dataf => \RAM64|ALT_INV_ram~775_combout\,
	combout => \RAM64|ram~776_combout\);

-- Location: FF_X10_Y6_N50
\RAM64|ram~179\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM64|ram~179feeder_combout\,
	ena => \RAM64|ram~776_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~179_q\);

-- Location: LABCELL_X17_Y2_N15
\RAM64|ram~711\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~711_combout\ = ( !\ROM|memROM~22_combout\ & ( !\ROM|memROM~3_combout\ & ( (!\ROM|memROM~9_combout\ & (!\ROM|memROM~7_combout\ & (\ROM|memROM~20_combout\ & !\ROM|memROM~28_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~9_combout\,
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \ROM|ALT_INV_memROM~20_combout\,
	datad => \ROM|ALT_INV_memROM~28_combout\,
	datae => \ROM|ALT_INV_memROM~22_combout\,
	dataf => \ROM|ALT_INV_memROM~3_combout\,
	combout => \RAM64|ram~711_combout\);

-- Location: LABCELL_X17_Y2_N51
\RAM64|ram~712\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~712_combout\ = ( \RAM64|process_0~1_combout\ & ( \RAM64|ram~711_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM64|ALT_INV_ram~711_combout\,
	dataf => \RAM64|ALT_INV_process_0~1_combout\,
	combout => \RAM64|ram~712_combout\);

-- Location: FF_X18_Y6_N16
\RAM64|ram~147\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM64|ram~712_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~147_q\);

-- Location: LABCELL_X10_Y6_N18
\RAM64|ram~155feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~155feeder_combout\ = ( \CPU|REGA|DOUT\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REGA|ALT_INV_DOUT\(4),
	combout => \RAM64|ram~155feeder_combout\);

-- Location: MLABCELL_X18_Y3_N57
\RAM64|ram~719\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~719_combout\ = ( !\ROM|memROM~7_combout\ & ( !\ROM|memROM~3_combout\ & ( (\ROM|memROM~9_combout\ & (\ROM|memROM~20_combout\ & (!\ROM|memROM~22_combout\ & !\ROM|memROM~28_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~9_combout\,
	datab => \ROM|ALT_INV_memROM~20_combout\,
	datac => \ROM|ALT_INV_memROM~22_combout\,
	datad => \ROM|ALT_INV_memROM~28_combout\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~3_combout\,
	combout => \RAM64|ram~719_combout\);

-- Location: MLABCELL_X18_Y3_N36
\RAM64|ram~720\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~720_combout\ = ( \RAM64|process_0~1_combout\ & ( \RAM64|ram~719_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM64|ALT_INV_ram~719_combout\,
	datae => \RAM64|ALT_INV_process_0~1_combout\,
	combout => \RAM64|ram~720_combout\);

-- Location: FF_X10_Y6_N20
\RAM64|ram~155\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM64|ram~155feeder_combout\,
	ena => \RAM64|ram~720_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~155_q\);

-- Location: MLABCELL_X18_Y5_N18
\RAM64|ram~783\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~783_combout\ = ( \ROM|memROM~22_combout\ & ( \ROM|memROM~20_combout\ & ( (!\ROM|memROM~7_combout\ & (!\ROM|memROM~3_combout\ & (!\ROM|memROM~28_combout\ & \ROM|memROM~9_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datab => \ROM|ALT_INV_memROM~3_combout\,
	datac => \ROM|ALT_INV_memROM~28_combout\,
	datad => \ROM|ALT_INV_memROM~9_combout\,
	datae => \ROM|ALT_INV_memROM~22_combout\,
	dataf => \ROM|ALT_INV_memROM~20_combout\,
	combout => \RAM64|ram~783_combout\);

-- Location: LABCELL_X19_Y5_N48
\RAM64|ram~784\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~784_combout\ = ( \RAM64|ram~783_combout\ & ( \RAM64|process_0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_process_0~1_combout\,
	dataf => \RAM64|ALT_INV_ram~783_combout\,
	combout => \RAM64|ram~784_combout\);

-- Location: FF_X10_Y6_N11
\RAM64|ram~187\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM64|ram~784_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~187_q\);

-- Location: LABCELL_X10_Y6_N9
\RAM64|ram~613\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~613_combout\ = ( \RAM64|ram~187_q\ & ( \ROM|memROM~9_combout\ & ( (\RAM64|ram~155_q\) # (\ROM|memROM~22_combout\) ) ) ) # ( !\RAM64|ram~187_q\ & ( \ROM|memROM~9_combout\ & ( (!\ROM|memROM~22_combout\ & \RAM64|ram~155_q\) ) ) ) # ( 
-- \RAM64|ram~187_q\ & ( !\ROM|memROM~9_combout\ & ( (!\ROM|memROM~22_combout\ & ((\RAM64|ram~147_q\))) # (\ROM|memROM~22_combout\ & (\RAM64|ram~179_q\)) ) ) ) # ( !\RAM64|ram~187_q\ & ( !\ROM|memROM~9_combout\ & ( (!\ROM|memROM~22_combout\ & 
-- ((\RAM64|ram~147_q\))) # (\ROM|memROM~22_combout\ & (\RAM64|ram~179_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001101010011010100000000111100000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~179_q\,
	datab => \RAM64|ALT_INV_ram~147_q\,
	datac => \ROM|ALT_INV_memROM~22_combout\,
	datad => \RAM64|ALT_INV_ram~155_q\,
	datae => \RAM64|ALT_INV_ram~187_q\,
	dataf => \ROM|ALT_INV_memROM~9_combout\,
	combout => \RAM64|ram~613_combout\);

-- Location: MLABCELL_X18_Y7_N15
\RAM64|ram~727\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~727_combout\ = ( !\ROM|memROM~20_combout\ & ( \ROM|memROM~28_combout\ & ( (!\ROM|memROM~7_combout\ & (!\ROM|memROM~3_combout\ & (!\ROM|memROM~22_combout\ & !\ROM|memROM~9_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datab => \ROM|ALT_INV_memROM~3_combout\,
	datac => \ROM|ALT_INV_memROM~22_combout\,
	datad => \ROM|ALT_INV_memROM~9_combout\,
	datae => \ROM|ALT_INV_memROM~20_combout\,
	dataf => \ROM|ALT_INV_memROM~28_combout\,
	combout => \RAM64|ram~727_combout\);

-- Location: LABCELL_X14_Y7_N45
\RAM64|ram~728\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~728_combout\ = ( \RAM64|ram~727_combout\ & ( \RAM64|process_0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_process_0~1_combout\,
	dataf => \RAM64|ALT_INV_ram~727_combout\,
	combout => \RAM64|ram~728_combout\);

-- Location: FF_X16_Y5_N4
\RAM64|ram~83\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM64|ram~728_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~83_q\);

-- Location: LABCELL_X19_Y7_N12
\RAM64|ram~115feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~115feeder_combout\ = ( \CPU|REGA|DOUT\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REGA|ALT_INV_DOUT\(4),
	combout => \RAM64|ram~115feeder_combout\);

-- Location: LABCELL_X19_Y7_N51
\RAM64|ram~791\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~791_combout\ = ( !\ROM|memROM~9_combout\ & ( \ROM|memROM~22_combout\ & ( (\ROM|memROM~28_combout\ & (!\ROM|memROM~7_combout\ & (!\ROM|memROM~20_combout\ & !\ROM|memROM~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~28_combout\,
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \ROM|ALT_INV_memROM~20_combout\,
	datad => \ROM|ALT_INV_memROM~3_combout\,
	datae => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \ROM|ALT_INV_memROM~22_combout\,
	combout => \RAM64|ram~791_combout\);

-- Location: LABCELL_X19_Y7_N24
\RAM64|ram~792\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~792_combout\ = ( \RAM64|process_0~1_combout\ & ( \RAM64|ram~791_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \RAM64|ALT_INV_process_0~1_combout\,
	dataf => \RAM64|ALT_INV_ram~791_combout\,
	combout => \RAM64|ram~792_combout\);

-- Location: FF_X19_Y7_N13
\RAM64|ram~115\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM64|ram~115feeder_combout\,
	ena => \RAM64|ram~792_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~115_q\);

-- Location: LABCELL_X19_Y7_N33
\RAM64|ram~91feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~91feeder_combout\ = ( \CPU|REGA|DOUT\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REGA|ALT_INV_DOUT\(4),
	combout => \RAM64|ram~91feeder_combout\);

-- Location: LABCELL_X14_Y5_N21
\RAM64|ram~731\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~731_combout\ = ( !\ROM|memROM~22_combout\ & ( \ROM|memROM~9_combout\ & ( (!\ROM|memROM~3_combout\ & (\ROM|memROM~28_combout\ & (!\ROM|memROM~7_combout\ & !\ROM|memROM~20_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~3_combout\,
	datab => \ROM|ALT_INV_memROM~28_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \ROM|ALT_INV_memROM~20_combout\,
	datae => \ROM|ALT_INV_memROM~22_combout\,
	dataf => \ROM|ALT_INV_memROM~9_combout\,
	combout => \RAM64|ram~731_combout\);

-- Location: MLABCELL_X18_Y7_N39
\RAM64|ram~732\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~732_combout\ = ( \RAM64|ram~731_combout\ & ( \RAM64|process_0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM64|ALT_INV_process_0~1_combout\,
	dataf => \RAM64|ALT_INV_ram~731_combout\,
	combout => \RAM64|ram~732_combout\);

-- Location: FF_X19_Y7_N34
\RAM64|ram~91\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM64|ram~91feeder_combout\,
	ena => \RAM64|ram~732_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~91_q\);

-- Location: MLABCELL_X13_Y7_N45
\RAM64|ram~799\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~799_combout\ = ( \ROM|memROM~22_combout\ & ( !\ROM|memROM~3_combout\ & ( (!\ROM|memROM~20_combout\ & (!\ROM|memROM~7_combout\ & (\ROM|memROM~28_combout\ & \ROM|memROM~9_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~20_combout\,
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \ROM|ALT_INV_memROM~28_combout\,
	datad => \ROM|ALT_INV_memROM~9_combout\,
	datae => \ROM|ALT_INV_memROM~22_combout\,
	dataf => \ROM|ALT_INV_memROM~3_combout\,
	combout => \RAM64|ram~799_combout\);

-- Location: MLABCELL_X13_Y7_N30
\RAM64|ram~800\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~800_combout\ = ( \RAM64|ram~799_combout\ & ( \RAM64|process_0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM64|ALT_INV_process_0~1_combout\,
	datae => \RAM64|ALT_INV_ram~799_combout\,
	combout => \RAM64|ram~800_combout\);

-- Location: FF_X10_Y5_N44
\RAM64|ram~123\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM64|ram~800_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~123_q\);

-- Location: LABCELL_X10_Y5_N42
\RAM64|ram~612\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~612_combout\ = ( \RAM64|ram~123_q\ & ( \ROM|memROM~22_combout\ & ( (\ROM|memROM~9_combout\) # (\RAM64|ram~115_q\) ) ) ) # ( !\RAM64|ram~123_q\ & ( \ROM|memROM~22_combout\ & ( (\RAM64|ram~115_q\ & !\ROM|memROM~9_combout\) ) ) ) # ( 
-- \RAM64|ram~123_q\ & ( !\ROM|memROM~22_combout\ & ( (!\ROM|memROM~9_combout\ & (\RAM64|ram~83_q\)) # (\ROM|memROM~9_combout\ & ((\RAM64|ram~91_q\))) ) ) ) # ( !\RAM64|ram~123_q\ & ( !\ROM|memROM~22_combout\ & ( (!\ROM|memROM~9_combout\ & 
-- (\RAM64|ram~83_q\)) # (\ROM|memROM~9_combout\ & ((\RAM64|ram~91_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~83_q\,
	datab => \RAM64|ALT_INV_ram~115_q\,
	datac => \ROM|ALT_INV_memROM~9_combout\,
	datad => \RAM64|ALT_INV_ram~91_q\,
	datae => \RAM64|ALT_INV_ram~123_q\,
	dataf => \ROM|ALT_INV_memROM~22_combout\,
	combout => \RAM64|ram~612_combout\);

-- Location: MLABCELL_X18_Y2_N3
\RAM64|ram~807\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~807_combout\ = ( !\ROM|memROM~9_combout\ & ( \ROM|memROM~22_combout\ & ( (\ROM|memROM~20_combout\ & (\ROM|memROM~28_combout\ & (!\ROM|memROM~3_combout\ & !\ROM|memROM~7_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~20_combout\,
	datab => \ROM|ALT_INV_memROM~28_combout\,
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datad => \ROM|ALT_INV_memROM~7_combout\,
	datae => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \ROM|ALT_INV_memROM~22_combout\,
	combout => \RAM64|ram~807_combout\);

-- Location: MLABCELL_X18_Y2_N30
\RAM64|ram~808\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~808_combout\ = ( \RAM64|ram~807_combout\ & ( \RAM64|process_0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \RAM64|ALT_INV_ram~807_combout\,
	dataf => \RAM64|ALT_INV_process_0~1_combout\,
	combout => \RAM64|ram~808_combout\);

-- Location: FF_X10_Y4_N40
\RAM64|ram~243\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM64|ram~808_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~243_q\);

-- Location: LABCELL_X20_Y5_N39
\RAM64|ram~747\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~747_combout\ = ( \ROM|memROM~20_combout\ & ( !\ROM|memROM~3_combout\ & ( (!\ROM|memROM~7_combout\ & (!\ROM|memROM~22_combout\ & (\ROM|memROM~28_combout\ & \ROM|memROM~9_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datab => \ROM|ALT_INV_memROM~22_combout\,
	datac => \ROM|ALT_INV_memROM~28_combout\,
	datad => \ROM|ALT_INV_memROM~9_combout\,
	datae => \ROM|ALT_INV_memROM~20_combout\,
	dataf => \ROM|ALT_INV_memROM~3_combout\,
	combout => \RAM64|ram~747_combout\);

-- Location: LABCELL_X19_Y4_N3
\RAM64|ram~748\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~748_combout\ = ( \RAM64|ram~747_combout\ & ( \RAM64|process_0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_process_0~1_combout\,
	dataf => \RAM64|ALT_INV_ram~747_combout\,
	combout => \RAM64|ram~748_combout\);

-- Location: FF_X10_Y4_N4
\RAM64|ram~219\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM64|ram~748_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~219_q\);

-- Location: LABCELL_X14_Y7_N18
\RAM64|ram~743\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~743_combout\ = ( \ROM|memROM~28_combout\ & ( \ROM|memROM~20_combout\ & ( (!\ROM|memROM~3_combout\ & (!\ROM|memROM~7_combout\ & (!\ROM|memROM~9_combout\ & !\ROM|memROM~22_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~3_combout\,
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \ROM|ALT_INV_memROM~9_combout\,
	datad => \ROM|ALT_INV_memROM~22_combout\,
	datae => \ROM|ALT_INV_memROM~28_combout\,
	dataf => \ROM|ALT_INV_memROM~20_combout\,
	combout => \RAM64|ram~743_combout\);

-- Location: LABCELL_X14_Y7_N24
\RAM64|ram~744\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~744_combout\ = ( \RAM64|process_0~1_combout\ & ( \RAM64|ram~743_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM64|ALT_INV_ram~743_combout\,
	dataf => \RAM64|ALT_INV_process_0~1_combout\,
	combout => \RAM64|ram~744_combout\);

-- Location: FF_X14_Y7_N37
\RAM64|ram~211\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM64|ram~744_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~211_q\);

-- Location: LABCELL_X12_Y4_N24
\RAM64|ram~815\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~815_combout\ = ( \ROM|memROM~28_combout\ & ( \ROM|memROM~9_combout\ & ( (\ROM|memROM~20_combout\ & (!\ROM|memROM~3_combout\ & (!\ROM|memROM~7_combout\ & \ROM|memROM~22_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~20_combout\,
	datab => \ROM|ALT_INV_memROM~3_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \ROM|ALT_INV_memROM~22_combout\,
	datae => \ROM|ALT_INV_memROM~28_combout\,
	dataf => \ROM|ALT_INV_memROM~9_combout\,
	combout => \RAM64|ram~815_combout\);

-- Location: LABCELL_X12_Y4_N0
\RAM64|ram~816\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~816_combout\ = ( \RAM64|ram~815_combout\ & ( \RAM64|process_0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM64|ALT_INV_process_0~1_combout\,
	dataf => \RAM64|ALT_INV_ram~815_combout\,
	combout => \RAM64|ram~816_combout\);

-- Location: FF_X10_Y5_N56
\RAM64|ram~251\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM64|ram~816_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~251_q\);

-- Location: LABCELL_X10_Y5_N54
\RAM64|ram~614\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~614_combout\ = ( \RAM64|ram~251_q\ & ( \ROM|memROM~22_combout\ & ( (\ROM|memROM~9_combout\) # (\RAM64|ram~243_q\) ) ) ) # ( !\RAM64|ram~251_q\ & ( \ROM|memROM~22_combout\ & ( (\RAM64|ram~243_q\ & !\ROM|memROM~9_combout\) ) ) ) # ( 
-- \RAM64|ram~251_q\ & ( !\ROM|memROM~22_combout\ & ( (!\ROM|memROM~9_combout\ & ((\RAM64|ram~211_q\))) # (\ROM|memROM~9_combout\ & (\RAM64|ram~219_q\)) ) ) ) # ( !\RAM64|ram~251_q\ & ( !\ROM|memROM~22_combout\ & ( (!\ROM|memROM~9_combout\ & 
-- ((\RAM64|ram~211_q\))) # (\ROM|memROM~9_combout\ & (\RAM64|ram~219_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~243_q\,
	datab => \RAM64|ALT_INV_ram~219_q\,
	datac => \ROM|ALT_INV_memROM~9_combout\,
	datad => \RAM64|ALT_INV_ram~211_q\,
	datae => \RAM64|ALT_INV_ram~251_q\,
	dataf => \ROM|ALT_INV_memROM~22_combout\,
	combout => \RAM64|ram~614_combout\);

-- Location: MLABCELL_X18_Y3_N6
\RAM64|ram~695\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~695_combout\ = ( !\ROM|memROM~7_combout\ & ( !\ROM|memROM~20_combout\ & ( (!\ROM|memROM~3_combout\ & (!\ROM|memROM~9_combout\ & (!\ROM|memROM~28_combout\ & !\ROM|memROM~22_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~3_combout\,
	datab => \ROM|ALT_INV_memROM~9_combout\,
	datac => \ROM|ALT_INV_memROM~28_combout\,
	datad => \ROM|ALT_INV_memROM~22_combout\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~20_combout\,
	combout => \RAM64|ram~695_combout\);

-- Location: MLABCELL_X18_Y3_N21
\RAM64|ram~696\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~696_combout\ = ( \RAM64|process_0~1_combout\ & ( \RAM64|ram~695_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \RAM64|ALT_INV_process_0~1_combout\,
	dataf => \RAM64|ALT_INV_ram~695_combout\,
	combout => \RAM64|ram~696_combout\);

-- Location: FF_X18_Y3_N7
\RAM64|ram~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM64|ram~696_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~19_q\);

-- Location: LABCELL_X19_Y5_N0
\RAM64|ram~27feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~27feeder_combout\ = ( \CPU|REGA|DOUT\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REGA|ALT_INV_DOUT\(4),
	combout => \RAM64|ram~27feeder_combout\);

-- Location: LABCELL_X19_Y3_N18
\RAM64|ram~703\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~703_combout\ = ( !\ROM|memROM~28_combout\ & ( !\ROM|memROM~3_combout\ & ( (!\ROM|memROM~20_combout\ & (\ROM|memROM~9_combout\ & (!\ROM|memROM~7_combout\ & !\ROM|memROM~22_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~20_combout\,
	datab => \ROM|ALT_INV_memROM~9_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \ROM|ALT_INV_memROM~22_combout\,
	datae => \ROM|ALT_INV_memROM~28_combout\,
	dataf => \ROM|ALT_INV_memROM~3_combout\,
	combout => \RAM64|ram~703_combout\);

-- Location: LABCELL_X19_Y3_N33
\RAM64|ram~704\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~704_combout\ = ( \RAM64|ram~703_combout\ & ( \RAM64|process_0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM64|ALT_INV_process_0~1_combout\,
	dataf => \RAM64|ALT_INV_ram~703_combout\,
	combout => \RAM64|ram~704_combout\);

-- Location: FF_X19_Y5_N1
\RAM64|ram~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM64|ram~27feeder_combout\,
	ena => \RAM64|ram~704_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~27_q\);

-- Location: MLABCELL_X18_Y4_N45
\RAM64|ram~759\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~759_combout\ = ( !\ROM|memROM~28_combout\ & ( !\ROM|memROM~9_combout\ & ( (\ROM|memROM~22_combout\ & (!\ROM|memROM~3_combout\ & (!\ROM|memROM~20_combout\ & !\ROM|memROM~7_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~22_combout\,
	datab => \ROM|ALT_INV_memROM~3_combout\,
	datac => \ROM|ALT_INV_memROM~20_combout\,
	datad => \ROM|ALT_INV_memROM~7_combout\,
	datae => \ROM|ALT_INV_memROM~28_combout\,
	dataf => \ROM|ALT_INV_memROM~9_combout\,
	combout => \RAM64|ram~759_combout\);

-- Location: MLABCELL_X18_Y4_N18
\RAM64|ram~760\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~760_combout\ = ( \RAM64|ram~759_combout\ & ( \RAM64|process_0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM64|ALT_INV_process_0~1_combout\,
	datae => \RAM64|ALT_INV_ram~759_combout\,
	combout => \RAM64|ram~760_combout\);

-- Location: FF_X16_Y6_N32
\RAM64|ram~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM64|ram~760_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~51_q\);

-- Location: LABCELL_X16_Y8_N12
\RAM64|ram~767\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~767_combout\ = ( \ROM|memROM~9_combout\ & ( \ROM|memROM~22_combout\ & ( (!\ROM|memROM~28_combout\ & (!\ROM|memROM~7_combout\ & (!\ROM|memROM~3_combout\ & !\ROM|memROM~20_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~28_combout\,
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datad => \ROM|ALT_INV_memROM~20_combout\,
	datae => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \ROM|ALT_INV_memROM~22_combout\,
	combout => \RAM64|ram~767_combout\);

-- Location: LABCELL_X16_Y8_N45
\RAM64|ram~768\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~768_combout\ = ( \RAM64|process_0~1_combout\ & ( \RAM64|ram~767_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM64|ALT_INV_ram~767_combout\,
	dataf => \RAM64|ALT_INV_process_0~1_combout\,
	combout => \RAM64|ram~768_combout\);

-- Location: FF_X19_Y5_N38
\RAM64|ram~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM64|ram~768_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~59_q\);

-- Location: LABCELL_X19_Y5_N36
\RAM64|ram~611\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~611_combout\ = ( \RAM64|ram~59_q\ & ( \ROM|memROM~9_combout\ & ( (\ROM|memROM~22_combout\) # (\RAM64|ram~27_q\) ) ) ) # ( !\RAM64|ram~59_q\ & ( \ROM|memROM~9_combout\ & ( (\RAM64|ram~27_q\ & !\ROM|memROM~22_combout\) ) ) ) # ( \RAM64|ram~59_q\ 
-- & ( !\ROM|memROM~9_combout\ & ( (!\ROM|memROM~22_combout\ & (\RAM64|ram~19_q\)) # (\ROM|memROM~22_combout\ & ((\RAM64|ram~51_q\))) ) ) ) # ( !\RAM64|ram~59_q\ & ( !\ROM|memROM~9_combout\ & ( (!\ROM|memROM~22_combout\ & (\RAM64|ram~19_q\)) # 
-- (\ROM|memROM~22_combout\ & ((\RAM64|ram~51_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~19_q\,
	datab => \RAM64|ALT_INV_ram~27_q\,
	datac => \ROM|ALT_INV_memROM~22_combout\,
	datad => \RAM64|ALT_INV_ram~51_q\,
	datae => \RAM64|ALT_INV_ram~59_q\,
	dataf => \ROM|ALT_INV_memROM~9_combout\,
	combout => \RAM64|ram~611_combout\);

-- Location: LABCELL_X10_Y5_N18
\RAM64|ram~615\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~615_combout\ = ( \RAM64|ram~614_combout\ & ( \RAM64|ram~611_combout\ & ( (!\ROM|memROM~28_combout\ & ((!\ROM|memROM~20_combout\) # ((\RAM64|ram~613_combout\)))) # (\ROM|memROM~28_combout\ & (((\RAM64|ram~612_combout\)) # 
-- (\ROM|memROM~20_combout\))) ) ) ) # ( !\RAM64|ram~614_combout\ & ( \RAM64|ram~611_combout\ & ( (!\ROM|memROM~28_combout\ & ((!\ROM|memROM~20_combout\) # ((\RAM64|ram~613_combout\)))) # (\ROM|memROM~28_combout\ & (!\ROM|memROM~20_combout\ & 
-- ((\RAM64|ram~612_combout\)))) ) ) ) # ( \RAM64|ram~614_combout\ & ( !\RAM64|ram~611_combout\ & ( (!\ROM|memROM~28_combout\ & (\ROM|memROM~20_combout\ & (\RAM64|ram~613_combout\))) # (\ROM|memROM~28_combout\ & (((\RAM64|ram~612_combout\)) # 
-- (\ROM|memROM~20_combout\))) ) ) ) # ( !\RAM64|ram~614_combout\ & ( !\RAM64|ram~611_combout\ & ( (!\ROM|memROM~28_combout\ & (\ROM|memROM~20_combout\ & (\RAM64|ram~613_combout\))) # (\ROM|memROM~28_combout\ & (!\ROM|memROM~20_combout\ & 
-- ((\RAM64|ram~612_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110000100110101011110001010110011101001101111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~28_combout\,
	datab => \ROM|ALT_INV_memROM~20_combout\,
	datac => \RAM64|ALT_INV_ram~613_combout\,
	datad => \RAM64|ALT_INV_ram~612_combout\,
	datae => \RAM64|ALT_INV_ram~614_combout\,
	dataf => \RAM64|ALT_INV_ram~611_combout\,
	combout => \RAM64|ram~615_combout\);

-- Location: LABCELL_X14_Y6_N6
\RAM64|ram~765\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~765_combout\ = ( !\ROM|memROM~28_combout\ & ( !\ROM|memROM~20_combout\ & ( (\ROM|memROM~3_combout\ & (\ROM|memROM~22_combout\ & (\ROM|memROM~7_combout\ & !\ROM|memROM~9_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~3_combout\,
	datab => \ROM|ALT_INV_memROM~22_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \ROM|ALT_INV_memROM~9_combout\,
	datae => \ROM|ALT_INV_memROM~28_combout\,
	dataf => \ROM|ALT_INV_memROM~20_combout\,
	combout => \RAM64|ram~765_combout\);

-- Location: LABCELL_X14_Y6_N15
\RAM64|ram~766\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~766_combout\ = ( \RAM64|process_0~1_combout\ & ( \RAM64|ram~765_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM64|ALT_INV_ram~765_combout\,
	dataf => \RAM64|ALT_INV_process_0~1_combout\,
	combout => \RAM64|ram~766_combout\);

-- Location: FF_X13_Y7_N49
\RAM64|ram~323\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM64|ram~766_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~323_q\);

-- Location: MLABCELL_X13_Y2_N27
\RAM64|ram~701\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~701_combout\ = ( !\ROM|memROM~22_combout\ & ( !\ROM|memROM~9_combout\ & ( (!\ROM|memROM~20_combout\ & (\ROM|memROM~7_combout\ & (!\ROM|memROM~28_combout\ & \ROM|memROM~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~20_combout\,
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \ROM|ALT_INV_memROM~28_combout\,
	datad => \ROM|ALT_INV_memROM~3_combout\,
	datae => \ROM|ALT_INV_memROM~22_combout\,
	dataf => \ROM|ALT_INV_memROM~9_combout\,
	combout => \RAM64|ram~701_combout\);

-- Location: LABCELL_X14_Y2_N51
\RAM64|ram~702\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~702_combout\ = ( \RAM64|process_0~1_combout\ & ( \RAM64|ram~701_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~701_combout\,
	dataf => \RAM64|ALT_INV_process_0~1_combout\,
	combout => \RAM64|ram~702_combout\);

-- Location: FF_X14_Y2_N50
\RAM64|ram~291\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM64|ram~702_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~291_q\);

-- Location: LABCELL_X10_Y5_N12
\RAM64|ram~709\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~709_combout\ = ( \ROM|memROM~3_combout\ & ( \ROM|memROM~9_combout\ & ( (!\ROM|memROM~28_combout\ & (!\ROM|memROM~20_combout\ & (\ROM|memROM~7_combout\ & !\ROM|memROM~22_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~28_combout\,
	datab => \ROM|ALT_INV_memROM~20_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \ROM|ALT_INV_memROM~22_combout\,
	datae => \ROM|ALT_INV_memROM~3_combout\,
	dataf => \ROM|ALT_INV_memROM~9_combout\,
	combout => \RAM64|ram~709_combout\);

-- Location: LABCELL_X10_Y7_N54
\RAM64|ram~710\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~710_combout\ = ( \RAM64|process_0~1_combout\ & ( \RAM64|ram~709_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \RAM64|ALT_INV_process_0~1_combout\,
	dataf => \RAM64|ALT_INV_ram~709_combout\,
	combout => \RAM64|ram~710_combout\);

-- Location: FF_X17_Y7_N2
\RAM64|ram~299\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM64|ram~710_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~299_q\);

-- Location: LABCELL_X14_Y6_N0
\RAM64|ram~773\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~773_combout\ = ( !\ROM|memROM~28_combout\ & ( \ROM|memROM~7_combout\ & ( (\ROM|memROM~3_combout\ & (\ROM|memROM~22_combout\ & (\ROM|memROM~9_combout\ & !\ROM|memROM~20_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~3_combout\,
	datab => \ROM|ALT_INV_memROM~22_combout\,
	datac => \ROM|ALT_INV_memROM~9_combout\,
	datad => \ROM|ALT_INV_memROM~20_combout\,
	datae => \ROM|ALT_INV_memROM~28_combout\,
	dataf => \ROM|ALT_INV_memROM~7_combout\,
	combout => \RAM64|ram~773_combout\);

-- Location: LABCELL_X17_Y7_N12
\RAM64|ram~774\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~774_combout\ = ( \RAM64|process_0~1_combout\ & ( \RAM64|ram~773_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \RAM64|ALT_INV_process_0~1_combout\,
	dataf => \RAM64|ALT_INV_ram~773_combout\,
	combout => \RAM64|ram~774_combout\);

-- Location: FF_X17_Y7_N26
\RAM64|ram~331\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM64|ram~774_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~331_q\);

-- Location: LABCELL_X17_Y7_N24
\RAM64|ram~626\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~626_combout\ = ( \RAM64|ram~331_q\ & ( \ROM|memROM~9_combout\ & ( (\ROM|memROM~22_combout\) # (\RAM64|ram~299_q\) ) ) ) # ( !\RAM64|ram~331_q\ & ( \ROM|memROM~9_combout\ & ( (\RAM64|ram~299_q\ & !\ROM|memROM~22_combout\) ) ) ) # ( 
-- \RAM64|ram~331_q\ & ( !\ROM|memROM~9_combout\ & ( (!\ROM|memROM~22_combout\ & ((\RAM64|ram~291_q\))) # (\ROM|memROM~22_combout\ & (\RAM64|ram~323_q\)) ) ) ) # ( !\RAM64|ram~331_q\ & ( !\ROM|memROM~9_combout\ & ( (!\ROM|memROM~22_combout\ & 
-- ((\RAM64|ram~291_q\))) # (\ROM|memROM~22_combout\ & (\RAM64|ram~323_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101001100110101010100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~323_q\,
	datab => \RAM64|ALT_INV_ram~291_q\,
	datac => \RAM64|ALT_INV_ram~299_q\,
	datad => \ROM|ALT_INV_memROM~22_combout\,
	datae => \RAM64|ALT_INV_ram~331_q\,
	dataf => \ROM|ALT_INV_memROM~9_combout\,
	combout => \RAM64|ram~626_combout\);

-- Location: MLABCELL_X18_Y5_N39
\RAM64|ram~725\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~725_combout\ = ( !\ROM|memROM~22_combout\ & ( \ROM|memROM~9_combout\ & ( (\ROM|memROM~7_combout\ & (\ROM|memROM~20_combout\ & (\ROM|memROM~3_combout\ & !\ROM|memROM~28_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datab => \ROM|ALT_INV_memROM~20_combout\,
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datad => \ROM|ALT_INV_memROM~28_combout\,
	datae => \ROM|ALT_INV_memROM~22_combout\,
	dataf => \ROM|ALT_INV_memROM~9_combout\,
	combout => \RAM64|ram~725_combout\);

-- Location: LABCELL_X14_Y5_N39
\RAM64|ram~726\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~726_combout\ = (\RAM64|process_0~1_combout\ & \RAM64|ram~725_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_process_0~1_combout\,
	datad => \RAM64|ALT_INV_ram~725_combout\,
	combout => \RAM64|ram~726_combout\);

-- Location: FF_X14_Y5_N44
\RAM64|ram~427\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM64|ram~726_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~427_q\);

-- Location: LABCELL_X16_Y2_N0
\RAM64|ram~717\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~717_combout\ = ( !\ROM|memROM~28_combout\ & ( \ROM|memROM~20_combout\ & ( (!\ROM|memROM~9_combout\ & (!\ROM|memROM~22_combout\ & (\ROM|memROM~3_combout\ & \ROM|memROM~7_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~9_combout\,
	datab => \ROM|ALT_INV_memROM~22_combout\,
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datad => \ROM|ALT_INV_memROM~7_combout\,
	datae => \ROM|ALT_INV_memROM~28_combout\,
	dataf => \ROM|ALT_INV_memROM~20_combout\,
	combout => \RAM64|ram~717_combout\);

-- Location: LABCELL_X14_Y2_N12
\RAM64|ram~718\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~718_combout\ = (\RAM64|ram~717_combout\ & \RAM64|process_0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~717_combout\,
	datac => \RAM64|ALT_INV_process_0~1_combout\,
	combout => \RAM64|ram~718_combout\);

-- Location: FF_X14_Y2_N14
\RAM64|ram~419\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM64|ram~718_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~419_q\);

-- Location: LABCELL_X19_Y4_N57
\RAM64|ram~781\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~781_combout\ = ( \ROM|memROM~20_combout\ & ( !\ROM|memROM~28_combout\ & ( (\ROM|memROM~3_combout\ & (\ROM|memROM~22_combout\ & (!\ROM|memROM~9_combout\ & \ROM|memROM~7_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~3_combout\,
	datab => \ROM|ALT_INV_memROM~22_combout\,
	datac => \ROM|ALT_INV_memROM~9_combout\,
	datad => \ROM|ALT_INV_memROM~7_combout\,
	datae => \ROM|ALT_INV_memROM~20_combout\,
	dataf => \ROM|ALT_INV_memROM~28_combout\,
	combout => \RAM64|ram~781_combout\);

-- Location: LABCELL_X16_Y4_N12
\RAM64|ram~782\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~782_combout\ = (\RAM64|ram~781_combout\ & \RAM64|process_0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM64|ALT_INV_ram~781_combout\,
	datac => \RAM64|ALT_INV_process_0~1_combout\,
	combout => \RAM64|ram~782_combout\);

-- Location: FF_X16_Y4_N53
\RAM64|ram~451\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM64|ram~782_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~451_q\);

-- Location: MLABCELL_X13_Y7_N6
\RAM64|ram~789\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~789_combout\ = ( \ROM|memROM~22_combout\ & ( \ROM|memROM~3_combout\ & ( (\ROM|memROM~20_combout\ & (!\ROM|memROM~28_combout\ & (\ROM|memROM~9_combout\ & \ROM|memROM~7_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~20_combout\,
	datab => \ROM|ALT_INV_memROM~28_combout\,
	datac => \ROM|ALT_INV_memROM~9_combout\,
	datad => \ROM|ALT_INV_memROM~7_combout\,
	datae => \ROM|ALT_INV_memROM~22_combout\,
	dataf => \ROM|ALT_INV_memROM~3_combout\,
	combout => \RAM64|ram~789_combout\);

-- Location: MLABCELL_X13_Y7_N21
\RAM64|ram~790\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~790_combout\ = ( \RAM64|process_0~1_combout\ & ( \RAM64|ram~789_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM64|ALT_INV_ram~789_combout\,
	datae => \RAM64|ALT_INV_process_0~1_combout\,
	combout => \RAM64|ram~790_combout\);

-- Location: FF_X10_Y5_N8
\RAM64|ram~459\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM64|ram~790_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~459_q\);

-- Location: LABCELL_X10_Y5_N6
\RAM64|ram~628\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~628_combout\ = ( \RAM64|ram~459_q\ & ( \ROM|memROM~9_combout\ & ( (\ROM|memROM~22_combout\) # (\RAM64|ram~427_q\) ) ) ) # ( !\RAM64|ram~459_q\ & ( \ROM|memROM~9_combout\ & ( (\RAM64|ram~427_q\ & !\ROM|memROM~22_combout\) ) ) ) # ( 
-- \RAM64|ram~459_q\ & ( !\ROM|memROM~9_combout\ & ( (!\ROM|memROM~22_combout\ & (\RAM64|ram~419_q\)) # (\ROM|memROM~22_combout\ & ((\RAM64|ram~451_q\))) ) ) ) # ( !\RAM64|ram~459_q\ & ( !\ROM|memROM~9_combout\ & ( (!\ROM|memROM~22_combout\ & 
-- (\RAM64|ram~419_q\)) # (\ROM|memROM~22_combout\ & ((\RAM64|ram~451_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111101010101000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~427_q\,
	datab => \RAM64|ALT_INV_ram~419_q\,
	datac => \RAM64|ALT_INV_ram~451_q\,
	datad => \ROM|ALT_INV_memROM~22_combout\,
	datae => \RAM64|ALT_INV_ram~459_q\,
	dataf => \ROM|ALT_INV_memROM~9_combout\,
	combout => \RAM64|ram~628_combout\);

-- Location: LABCELL_X12_Y6_N9
\RAM64|ram~753\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~753_combout\ = ( !\ROM|memROM~22_combout\ & ( \ROM|memROM~7_combout\ & ( (\ROM|memROM~3_combout\ & (\ROM|memROM~20_combout\ & (\ROM|memROM~28_combout\ & !\ROM|memROM~9_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~3_combout\,
	datab => \ROM|ALT_INV_memROM~20_combout\,
	datac => \ROM|ALT_INV_memROM~28_combout\,
	datad => \ROM|ALT_INV_memROM~9_combout\,
	datae => \ROM|ALT_INV_memROM~22_combout\,
	dataf => \ROM|ALT_INV_memROM~7_combout\,
	combout => \RAM64|ram~753_combout\);

-- Location: LABCELL_X19_Y4_N9
\RAM64|ram~754\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~754_combout\ = ( \RAM64|ram~753_combout\ & ( \RAM64|process_0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_process_0~1_combout\,
	dataf => \RAM64|ALT_INV_ram~753_combout\,
	combout => \RAM64|ram~754_combout\);

-- Location: FF_X17_Y5_N2
\RAM64|ram~483\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM64|ram~754_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~483_q\);

-- Location: MLABCELL_X9_Y4_N21
\RAM64|ram~821\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~821_combout\ = ( \ROM|memROM~28_combout\ & ( \ROM|memROM~3_combout\ & ( (\ROM|memROM~7_combout\ & (\ROM|memROM~9_combout\ & (\ROM|memROM~20_combout\ & \ROM|memROM~22_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datab => \ROM|ALT_INV_memROM~9_combout\,
	datac => \ROM|ALT_INV_memROM~20_combout\,
	datad => \ROM|ALT_INV_memROM~22_combout\,
	datae => \ROM|ALT_INV_memROM~28_combout\,
	dataf => \ROM|ALT_INV_memROM~3_combout\,
	combout => \RAM64|ram~821_combout\);

-- Location: MLABCELL_X9_Y4_N27
\RAM64|ram~822\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~822_combout\ = ( \RAM64|ram~821_combout\ & ( \RAM64|process_0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \RAM64|ALT_INV_ram~821_combout\,
	dataf => \RAM64|ALT_INV_process_0~1_combout\,
	combout => \RAM64|ram~822_combout\);

-- Location: FF_X17_Y5_N8
\RAM64|ram~523\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM64|ram~822_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~523_q\);

-- Location: LABCELL_X12_Y5_N3
\RAM64|ram~757\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~757_combout\ = ( \ROM|memROM~28_combout\ & ( !\ROM|memROM~22_combout\ & ( (\ROM|memROM~9_combout\ & (\ROM|memROM~7_combout\ & (\ROM|memROM~3_combout\ & \ROM|memROM~20_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~9_combout\,
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datad => \ROM|ALT_INV_memROM~20_combout\,
	datae => \ROM|ALT_INV_memROM~28_combout\,
	dataf => \ROM|ALT_INV_memROM~22_combout\,
	combout => \RAM64|ram~757_combout\);

-- Location: MLABCELL_X13_Y5_N33
\RAM64|ram~758\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~758_combout\ = ( \RAM64|ram~757_combout\ & ( \RAM64|process_0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM64|ALT_INV_process_0~1_combout\,
	dataf => \RAM64|ALT_INV_ram~757_combout\,
	combout => \RAM64|ram~758_combout\);

-- Location: FF_X9_Y4_N50
\RAM64|ram~491\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM64|ram~758_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~491_q\);

-- Location: LABCELL_X12_Y4_N45
\RAM64|ram~813\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~813_combout\ = ( !\ROM|memROM~9_combout\ & ( \ROM|memROM~22_combout\ & ( (\ROM|memROM~20_combout\ & (\ROM|memROM~3_combout\ & (\ROM|memROM~7_combout\ & \ROM|memROM~28_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~20_combout\,
	datab => \ROM|ALT_INV_memROM~3_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \ROM|ALT_INV_memROM~28_combout\,
	datae => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \ROM|ALT_INV_memROM~22_combout\,
	combout => \RAM64|ram~813_combout\);

-- Location: LABCELL_X16_Y4_N54
\RAM64|ram~814\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~814_combout\ = ( \RAM64|process_0~1_combout\ & ( \RAM64|ram~813_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM64|ALT_INV_ram~813_combout\,
	dataf => \RAM64|ALT_INV_process_0~1_combout\,
	combout => \RAM64|ram~814_combout\);

-- Location: FF_X13_Y4_N40
\RAM64|ram~515\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM64|ram~814_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~515_q\);

-- Location: LABCELL_X17_Y5_N9
\RAM64|ram~629\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~629_combout\ = ( \ROM|memROM~22_combout\ & ( \ROM|memROM~9_combout\ & ( \RAM64|ram~523_q\ ) ) ) # ( !\ROM|memROM~22_combout\ & ( \ROM|memROM~9_combout\ & ( \RAM64|ram~491_q\ ) ) ) # ( \ROM|memROM~22_combout\ & ( !\ROM|memROM~9_combout\ & ( 
-- \RAM64|ram~515_q\ ) ) ) # ( !\ROM|memROM~22_combout\ & ( !\ROM|memROM~9_combout\ & ( \RAM64|ram~483_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000001111111100001111000011110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~483_q\,
	datab => \RAM64|ALT_INV_ram~523_q\,
	datac => \RAM64|ALT_INV_ram~491_q\,
	datad => \RAM64|ALT_INV_ram~515_q\,
	datae => \ROM|ALT_INV_memROM~22_combout\,
	dataf => \ROM|ALT_INV_memROM~9_combout\,
	combout => \RAM64|ram~629_combout\);

-- Location: LABCELL_X20_Y5_N30
\RAM64|ram~737\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~737_combout\ = ( !\ROM|memROM~20_combout\ & ( \ROM|memROM~3_combout\ & ( (\ROM|memROM~7_combout\ & (!\ROM|memROM~22_combout\ & (!\ROM|memROM~9_combout\ & \ROM|memROM~28_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datab => \ROM|ALT_INV_memROM~22_combout\,
	datac => \ROM|ALT_INV_memROM~9_combout\,
	datad => \ROM|ALT_INV_memROM~28_combout\,
	datae => \ROM|ALT_INV_memROM~20_combout\,
	dataf => \ROM|ALT_INV_memROM~3_combout\,
	combout => \RAM64|ram~737_combout\);

-- Location: LABCELL_X19_Y5_N51
\RAM64|ram~738\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~738_combout\ = ( \RAM64|ram~737_combout\ & ( \RAM64|process_0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_process_0~1_combout\,
	dataf => \RAM64|ALT_INV_ram~737_combout\,
	combout => \RAM64|ram~738_combout\);

-- Location: FF_X16_Y7_N29
\RAM64|ram~355\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM64|ram~738_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~355_q\);

-- Location: MLABCELL_X18_Y7_N33
\RAM64|ram~805\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~805_combout\ = ( !\ROM|memROM~20_combout\ & ( \ROM|memROM~28_combout\ & ( (\ROM|memROM~7_combout\ & (\ROM|memROM~3_combout\ & (\ROM|memROM~22_combout\ & \ROM|memROM~9_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datab => \ROM|ALT_INV_memROM~3_combout\,
	datac => \ROM|ALT_INV_memROM~22_combout\,
	datad => \ROM|ALT_INV_memROM~9_combout\,
	datae => \ROM|ALT_INV_memROM~20_combout\,
	dataf => \ROM|ALT_INV_memROM~28_combout\,
	combout => \RAM64|ram~805_combout\);

-- Location: LABCELL_X17_Y7_N48
\RAM64|ram~806\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~806_combout\ = ( \RAM64|process_0~1_combout\ & ( \RAM64|ram~805_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \RAM64|ALT_INV_process_0~1_combout\,
	dataf => \RAM64|ALT_INV_ram~805_combout\,
	combout => \RAM64|ram~806_combout\);

-- Location: FF_X17_Y7_N20
\RAM64|ram~395\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM64|ram~806_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~395_q\);

-- Location: LABCELL_X17_Y3_N12
\RAM64|ram~797\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~797_combout\ = ( \ROM|memROM~28_combout\ & ( \ROM|memROM~7_combout\ & ( (!\ROM|memROM~9_combout\ & (!\ROM|memROM~20_combout\ & (\ROM|memROM~3_combout\ & \ROM|memROM~22_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~9_combout\,
	datab => \ROM|ALT_INV_memROM~20_combout\,
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datad => \ROM|ALT_INV_memROM~22_combout\,
	datae => \ROM|ALT_INV_memROM~28_combout\,
	dataf => \ROM|ALT_INV_memROM~7_combout\,
	combout => \RAM64|ram~797_combout\);

-- Location: MLABCELL_X18_Y4_N57
\RAM64|ram~798\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~798_combout\ = ( \RAM64|ram~797_combout\ & ( \RAM64|process_0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_process_0~1_combout\,
	dataf => \RAM64|ALT_INV_ram~797_combout\,
	combout => \RAM64|ram~798_combout\);

-- Location: FF_X17_Y4_N11
\RAM64|ram~387\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM64|ram~798_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~387_q\);

-- Location: LABCELL_X19_Y7_N21
\RAM64|ram~741\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~741_combout\ = ( \ROM|memROM~3_combout\ & ( \ROM|memROM~9_combout\ & ( (\ROM|memROM~28_combout\ & (!\ROM|memROM~20_combout\ & (\ROM|memROM~7_combout\ & !\ROM|memROM~22_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~28_combout\,
	datab => \ROM|ALT_INV_memROM~20_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \ROM|ALT_INV_memROM~22_combout\,
	datae => \ROM|ALT_INV_memROM~3_combout\,
	dataf => \ROM|ALT_INV_memROM~9_combout\,
	combout => \RAM64|ram~741_combout\);

-- Location: LABCELL_X14_Y7_N57
\RAM64|ram~742\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~742_combout\ = ( \RAM64|process_0~1_combout\ & ( \RAM64|ram~741_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~741_combout\,
	dataf => \RAM64|ALT_INV_process_0~1_combout\,
	combout => \RAM64|ram~742_combout\);

-- Location: FF_X16_Y7_N38
\RAM64|ram~363\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM64|ram~742_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~363_q\);

-- Location: LABCELL_X16_Y7_N36
\RAM64|ram~627\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~627_combout\ = ( \RAM64|ram~363_q\ & ( \ROM|memROM~22_combout\ & ( (!\ROM|memROM~9_combout\ & ((\RAM64|ram~387_q\))) # (\ROM|memROM~9_combout\ & (\RAM64|ram~395_q\)) ) ) ) # ( !\RAM64|ram~363_q\ & ( \ROM|memROM~22_combout\ & ( 
-- (!\ROM|memROM~9_combout\ & ((\RAM64|ram~387_q\))) # (\ROM|memROM~9_combout\ & (\RAM64|ram~395_q\)) ) ) ) # ( \RAM64|ram~363_q\ & ( !\ROM|memROM~22_combout\ & ( (\ROM|memROM~9_combout\) # (\RAM64|ram~355_q\) ) ) ) # ( !\RAM64|ram~363_q\ & ( 
-- !\ROM|memROM~22_combout\ & ( (\RAM64|ram~355_q\ & !\ROM|memROM~9_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010111110101111100000011111100110000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~355_q\,
	datab => \RAM64|ALT_INV_ram~395_q\,
	datac => \ROM|ALT_INV_memROM~9_combout\,
	datad => \RAM64|ALT_INV_ram~387_q\,
	datae => \RAM64|ALT_INV_ram~363_q\,
	dataf => \ROM|ALT_INV_memROM~22_combout\,
	combout => \RAM64|ram~627_combout\);

-- Location: LABCELL_X10_Y5_N36
\RAM64|ram~630\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~630_combout\ = ( \RAM64|ram~629_combout\ & ( \RAM64|ram~627_combout\ & ( ((!\ROM|memROM~20_combout\ & (\RAM64|ram~626_combout\)) # (\ROM|memROM~20_combout\ & ((\RAM64|ram~628_combout\)))) # (\ROM|memROM~28_combout\) ) ) ) # ( 
-- !\RAM64|ram~629_combout\ & ( \RAM64|ram~627_combout\ & ( (!\ROM|memROM~28_combout\ & ((!\ROM|memROM~20_combout\ & (\RAM64|ram~626_combout\)) # (\ROM|memROM~20_combout\ & ((\RAM64|ram~628_combout\))))) # (\ROM|memROM~28_combout\ & 
-- (!\ROM|memROM~20_combout\)) ) ) ) # ( \RAM64|ram~629_combout\ & ( !\RAM64|ram~627_combout\ & ( (!\ROM|memROM~28_combout\ & ((!\ROM|memROM~20_combout\ & (\RAM64|ram~626_combout\)) # (\ROM|memROM~20_combout\ & ((\RAM64|ram~628_combout\))))) # 
-- (\ROM|memROM~28_combout\ & (\ROM|memROM~20_combout\)) ) ) ) # ( !\RAM64|ram~629_combout\ & ( !\RAM64|ram~627_combout\ & ( (!\ROM|memROM~28_combout\ & ((!\ROM|memROM~20_combout\ & (\RAM64|ram~626_combout\)) # (\ROM|memROM~20_combout\ & 
-- ((\RAM64|ram~628_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000110010011101101001100011011100101110101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~28_combout\,
	datab => \ROM|ALT_INV_memROM~20_combout\,
	datac => \RAM64|ALT_INV_ram~626_combout\,
	datad => \RAM64|ALT_INV_ram~628_combout\,
	datae => \RAM64|ALT_INV_ram~629_combout\,
	dataf => \RAM64|ALT_INV_ram~627_combout\,
	combout => \RAM64|ram~630_combout\);

-- Location: LABCELL_X14_Y3_N21
\RAM64|ram~723\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~723_combout\ = ( \ROM|memROM~9_combout\ & ( !\ROM|memROM~3_combout\ & ( (\ROM|memROM~20_combout\ & (!\ROM|memROM~22_combout\ & (\ROM|memROM~7_combout\ & !\ROM|memROM~28_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~20_combout\,
	datab => \ROM|ALT_INV_memROM~22_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \ROM|ALT_INV_memROM~28_combout\,
	datae => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \ROM|ALT_INV_memROM~3_combout\,
	combout => \RAM64|ram~723_combout\);

-- Location: LABCELL_X14_Y5_N24
\RAM64|ram~724\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~724_combout\ = ( \RAM64|ram~723_combout\ & ( \RAM64|process_0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM64|ALT_INV_process_0~1_combout\,
	dataf => \RAM64|ALT_INV_ram~723_combout\,
	combout => \RAM64|ram~724_combout\);

-- Location: FF_X14_Y5_N38
\RAM64|ram~171\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM64|ram~724_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~171_q\);

-- Location: MLABCELL_X13_Y6_N36
\RAM64|ram~715\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~715_combout\ = ( !\ROM|memROM~9_combout\ & ( !\ROM|memROM~22_combout\ & ( (\ROM|memROM~20_combout\ & (!\ROM|memROM~3_combout\ & (\ROM|memROM~7_combout\ & !\ROM|memROM~28_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~20_combout\,
	datab => \ROM|ALT_INV_memROM~3_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \ROM|ALT_INV_memROM~28_combout\,
	datae => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \ROM|ALT_INV_memROM~22_combout\,
	combout => \RAM64|ram~715_combout\);

-- Location: MLABCELL_X13_Y6_N27
\RAM64|ram~716\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~716_combout\ = ( \RAM64|process_0~1_combout\ & ( \RAM64|ram~715_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~715_combout\,
	dataf => \RAM64|ALT_INV_process_0~1_combout\,
	combout => \RAM64|ram~716_combout\);

-- Location: FF_X13_Y6_N28
\RAM64|ram~163\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM64|ram~716_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~163_q\);

-- Location: LABCELL_X19_Y4_N39
\RAM64|ram~751\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~751_combout\ = ( \ROM|memROM~20_combout\ & ( \ROM|memROM~28_combout\ & ( (\ROM|memROM~7_combout\ & (!\ROM|memROM~22_combout\ & (!\ROM|memROM~3_combout\ & !\ROM|memROM~9_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datab => \ROM|ALT_INV_memROM~22_combout\,
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datad => \ROM|ALT_INV_memROM~9_combout\,
	datae => \ROM|ALT_INV_memROM~20_combout\,
	dataf => \ROM|ALT_INV_memROM~28_combout\,
	combout => \RAM64|ram~751_combout\);

-- Location: LABCELL_X14_Y4_N54
\RAM64|ram~752\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~752_combout\ = ( \RAM64|process_0~1_combout\ & ( \RAM64|ram~751_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM64|ALT_INV_ram~751_combout\,
	dataf => \RAM64|ALT_INV_process_0~1_combout\,
	combout => \RAM64|ram~752_combout\);

-- Location: FF_X14_Y4_N22
\RAM64|ram~227\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM64|ram~752_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~227_q\);

-- Location: LABCELL_X17_Y5_N27
\RAM64|ram~755\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~755_combout\ = ( !\ROM|memROM~22_combout\ & ( !\ROM|memROM~3_combout\ & ( (\ROM|memROM~28_combout\ & (\ROM|memROM~20_combout\ & (\ROM|memROM~7_combout\ & \ROM|memROM~9_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~28_combout\,
	datab => \ROM|ALT_INV_memROM~20_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \ROM|ALT_INV_memROM~9_combout\,
	datae => \ROM|ALT_INV_memROM~22_combout\,
	dataf => \ROM|ALT_INV_memROM~3_combout\,
	combout => \RAM64|ram~755_combout\);

-- Location: LABCELL_X16_Y5_N6
\RAM64|ram~756\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~756_combout\ = ( \RAM64|process_0~1_combout\ & ( \RAM64|ram~755_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM64|ALT_INV_ram~755_combout\,
	dataf => \RAM64|ALT_INV_process_0~1_combout\,
	combout => \RAM64|ram~756_combout\);

-- Location: FF_X16_Y5_N32
\RAM64|ram~235\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM64|ram~756_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~235_q\);

-- Location: LABCELL_X16_Y5_N30
\RAM64|ram~623\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~623_combout\ = ( \RAM64|ram~235_q\ & ( \ROM|memROM~9_combout\ & ( (\ROM|memROM~28_combout\) # (\RAM64|ram~171_q\) ) ) ) # ( !\RAM64|ram~235_q\ & ( \ROM|memROM~9_combout\ & ( (\RAM64|ram~171_q\ & !\ROM|memROM~28_combout\) ) ) ) # ( 
-- \RAM64|ram~235_q\ & ( !\ROM|memROM~9_combout\ & ( (!\ROM|memROM~28_combout\ & (\RAM64|ram~163_q\)) # (\ROM|memROM~28_combout\ & ((\RAM64|ram~227_q\))) ) ) ) # ( !\RAM64|ram~235_q\ & ( !\ROM|memROM~9_combout\ & ( (!\ROM|memROM~28_combout\ & 
-- (\RAM64|ram~163_q\)) # (\ROM|memROM~28_combout\ & ((\RAM64|ram~227_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111101000100010001000111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~171_q\,
	datab => \ROM|ALT_INV_memROM~28_combout\,
	datac => \RAM64|ALT_INV_ram~163_q\,
	datad => \RAM64|ALT_INV_ram~227_q\,
	datae => \RAM64|ALT_INV_ram~235_q\,
	dataf => \ROM|ALT_INV_memROM~9_combout\,
	combout => \RAM64|ram~623_combout\);

-- Location: MLABCELL_X18_Y5_N12
\RAM64|ram~739\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~739_combout\ = ( !\ROM|memROM~22_combout\ & ( !\ROM|memROM~20_combout\ & ( (\ROM|memROM~28_combout\ & (!\ROM|memROM~3_combout\ & (\ROM|memROM~7_combout\ & \ROM|memROM~9_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~28_combout\,
	datab => \ROM|ALT_INV_memROM~3_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \ROM|ALT_INV_memROM~9_combout\,
	datae => \ROM|ALT_INV_memROM~22_combout\,
	dataf => \ROM|ALT_INV_memROM~20_combout\,
	combout => \RAM64|ram~739_combout\);

-- Location: MLABCELL_X13_Y5_N24
\RAM64|ram~740\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~740_combout\ = ( \RAM64|ram~739_combout\ & ( \RAM64|process_0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM64|ALT_INV_process_0~1_combout\,
	dataf => \RAM64|ALT_INV_ram~739_combout\,
	combout => \RAM64|ram~740_combout\);

-- Location: FF_X13_Y5_N2
\RAM64|ram~107\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM64|ram~740_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~107_q\);

-- Location: LABCELL_X14_Y1_N36
\RAM64|ram~35feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~35feeder_combout\ = ( \CPU|REGA|DOUT\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REGA|ALT_INV_DOUT\(4),
	combout => \RAM64|ram~35feeder_combout\);

-- Location: LABCELL_X16_Y2_N33
\RAM64|ram~699\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~699_combout\ = ( !\ROM|memROM~3_combout\ & ( !\ROM|memROM~20_combout\ & ( (!\ROM|memROM~28_combout\ & (!\ROM|memROM~9_combout\ & (!\ROM|memROM~22_combout\ & \ROM|memROM~7_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~28_combout\,
	datab => \ROM|ALT_INV_memROM~9_combout\,
	datac => \ROM|ALT_INV_memROM~22_combout\,
	datad => \ROM|ALT_INV_memROM~7_combout\,
	datae => \ROM|ALT_INV_memROM~3_combout\,
	dataf => \ROM|ALT_INV_memROM~20_combout\,
	combout => \RAM64|ram~699_combout\);

-- Location: LABCELL_X16_Y1_N54
\RAM64|ram~700\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~700_combout\ = ( \RAM64|ram~699_combout\ & ( \RAM64|process_0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \RAM64|ALT_INV_ram~699_combout\,
	dataf => \RAM64|ALT_INV_process_0~1_combout\,
	combout => \RAM64|ram~700_combout\);

-- Location: FF_X14_Y1_N37
\RAM64|ram~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM64|ram~35feeder_combout\,
	ena => \RAM64|ram~700_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~35_q\);

-- Location: LABCELL_X16_Y7_N9
\RAM64|ram~99feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~99feeder_combout\ = ( \CPU|REGA|DOUT\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REGA|ALT_INV_DOUT\(4),
	combout => \RAM64|ram~99feeder_combout\);

-- Location: MLABCELL_X18_Y7_N51
\RAM64|ram~735\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~735_combout\ = ( !\ROM|memROM~3_combout\ & ( \ROM|memROM~28_combout\ & ( (\ROM|memROM~7_combout\ & (!\ROM|memROM~22_combout\ & (!\ROM|memROM~20_combout\ & !\ROM|memROM~9_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datab => \ROM|ALT_INV_memROM~22_combout\,
	datac => \ROM|ALT_INV_memROM~20_combout\,
	datad => \ROM|ALT_INV_memROM~9_combout\,
	datae => \ROM|ALT_INV_memROM~3_combout\,
	dataf => \ROM|ALT_INV_memROM~28_combout\,
	combout => \RAM64|ram~735_combout\);

-- Location: LABCELL_X17_Y7_N6
\RAM64|ram~736\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~736_combout\ = ( \RAM64|process_0~1_combout\ & ( \RAM64|ram~735_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \RAM64|ALT_INV_process_0~1_combout\,
	dataf => \RAM64|ALT_INV_ram~735_combout\,
	combout => \RAM64|ram~736_combout\);

-- Location: FF_X16_Y7_N10
\RAM64|ram~99\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM64|ram~99feeder_combout\,
	ena => \RAM64|ram~736_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~99_q\);

-- Location: MLABCELL_X18_Y7_N21
\RAM64|ram~707\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~707_combout\ = ( !\ROM|memROM~20_combout\ & ( \ROM|memROM~9_combout\ & ( (!\ROM|memROM~28_combout\ & (!\ROM|memROM~22_combout\ & (!\ROM|memROM~3_combout\ & \ROM|memROM~7_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~28_combout\,
	datab => \ROM|ALT_INV_memROM~22_combout\,
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datad => \ROM|ALT_INV_memROM~7_combout\,
	datae => \ROM|ALT_INV_memROM~20_combout\,
	dataf => \ROM|ALT_INV_memROM~9_combout\,
	combout => \RAM64|ram~707_combout\);

-- Location: MLABCELL_X18_Y7_N42
\RAM64|ram~708\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~708_combout\ = ( \RAM64|ram~707_combout\ & ( \RAM64|process_0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \RAM64|ALT_INV_ram~707_combout\,
	dataf => \RAM64|ALT_INV_process_0~1_combout\,
	combout => \RAM64|ram~708_combout\);

-- Location: FF_X19_Y3_N23
\RAM64|ram~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM64|ram~708_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~43_q\);

-- Location: LABCELL_X12_Y5_N27
\RAM64|ram~621\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~621_combout\ = ( \ROM|memROM~28_combout\ & ( \ROM|memROM~9_combout\ & ( \RAM64|ram~107_q\ ) ) ) # ( !\ROM|memROM~28_combout\ & ( \ROM|memROM~9_combout\ & ( \RAM64|ram~43_q\ ) ) ) # ( \ROM|memROM~28_combout\ & ( !\ROM|memROM~9_combout\ & ( 
-- \RAM64|ram~99_q\ ) ) ) # ( !\ROM|memROM~28_combout\ & ( !\ROM|memROM~9_combout\ & ( \RAM64|ram~35_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000011110000111100000000111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~107_q\,
	datab => \RAM64|ALT_INV_ram~35_q\,
	datac => \RAM64|ALT_INV_ram~99_q\,
	datad => \RAM64|ALT_INV_ram~43_q\,
	datae => \ROM|ALT_INV_memROM~28_combout\,
	dataf => \ROM|ALT_INV_memROM~9_combout\,
	combout => \RAM64|ram~621_combout\);

-- Location: LABCELL_X19_Y4_N12
\RAM64|ram~763\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~763_combout\ = ( !\ROM|memROM~3_combout\ & ( !\ROM|memROM~28_combout\ & ( (\ROM|memROM~7_combout\ & (\ROM|memROM~22_combout\ & (!\ROM|memROM~20_combout\ & !\ROM|memROM~9_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datab => \ROM|ALT_INV_memROM~22_combout\,
	datac => \ROM|ALT_INV_memROM~20_combout\,
	datad => \ROM|ALT_INV_memROM~9_combout\,
	datae => \ROM|ALT_INV_memROM~3_combout\,
	dataf => \ROM|ALT_INV_memROM~28_combout\,
	combout => \RAM64|ram~763_combout\);

-- Location: LABCELL_X19_Y4_N18
\RAM64|ram~764\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~764_combout\ = ( \RAM64|ram~763_combout\ & ( \RAM64|process_0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM64|ALT_INV_process_0~1_combout\,
	dataf => \RAM64|ALT_INV_ram~763_combout\,
	combout => \RAM64|ram~764_combout\);

-- Location: FF_X12_Y3_N35
\RAM64|ram~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM64|ram~764_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~67_q\);

-- Location: LABCELL_X12_Y5_N51
\RAM64|ram~795\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~795_combout\ = ( \ROM|memROM~28_combout\ & ( \ROM|memROM~22_combout\ & ( (!\ROM|memROM~9_combout\ & (\ROM|memROM~7_combout\ & (!\ROM|memROM~3_combout\ & !\ROM|memROM~20_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~9_combout\,
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datad => \ROM|ALT_INV_memROM~20_combout\,
	datae => \ROM|ALT_INV_memROM~28_combout\,
	dataf => \ROM|ALT_INV_memROM~22_combout\,
	combout => \RAM64|ram~795_combout\);

-- Location: LABCELL_X12_Y5_N33
\RAM64|ram~796\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~796_combout\ = ( \RAM64|process_0~1_combout\ & ( \RAM64|ram~795_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~795_combout\,
	dataf => \RAM64|ALT_INV_process_0~1_combout\,
	combout => \RAM64|ram~796_combout\);

-- Location: FF_X12_Y5_N44
\RAM64|ram~131\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM64|ram~796_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~131_q\);

-- Location: LABCELL_X16_Y8_N39
\RAM64|ram~771\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~771_combout\ = ( !\ROM|memROM~28_combout\ & ( \ROM|memROM~22_combout\ & ( (!\ROM|memROM~3_combout\ & (\ROM|memROM~7_combout\ & (!\ROM|memROM~20_combout\ & \ROM|memROM~9_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~3_combout\,
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \ROM|ALT_INV_memROM~20_combout\,
	datad => \ROM|ALT_INV_memROM~9_combout\,
	datae => \ROM|ALT_INV_memROM~28_combout\,
	dataf => \ROM|ALT_INV_memROM~22_combout\,
	combout => \RAM64|ram~771_combout\);

-- Location: LABCELL_X16_Y8_N6
\RAM64|ram~772\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~772_combout\ = ( \RAM64|ram~771_combout\ & ( \RAM64|process_0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM64|ALT_INV_process_0~1_combout\,
	dataf => \RAM64|ALT_INV_ram~771_combout\,
	combout => \RAM64|ram~772_combout\);

-- Location: FF_X12_Y3_N4
\RAM64|ram~75\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM64|ram~772_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~75_q\);

-- Location: MLABCELL_X18_Y5_N3
\RAM64|ram~803\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~803_combout\ = ( \ROM|memROM~22_combout\ & ( \ROM|memROM~9_combout\ & ( (\ROM|memROM~28_combout\ & (!\ROM|memROM~20_combout\ & (!\ROM|memROM~3_combout\ & \ROM|memROM~7_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~28_combout\,
	datab => \ROM|ALT_INV_memROM~20_combout\,
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datad => \ROM|ALT_INV_memROM~7_combout\,
	datae => \ROM|ALT_INV_memROM~22_combout\,
	dataf => \ROM|ALT_INV_memROM~9_combout\,
	combout => \RAM64|ram~803_combout\);

-- Location: LABCELL_X12_Y5_N36
\RAM64|ram~804\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~804_combout\ = ( \RAM64|ram~803_combout\ & ( \RAM64|process_0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \RAM64|ALT_INV_ram~803_combout\,
	dataf => \RAM64|ALT_INV_process_0~1_combout\,
	combout => \RAM64|ram~804_combout\);

-- Location: FF_X12_Y5_N56
\RAM64|ram~139\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM64|ram~804_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~139_q\);

-- Location: LABCELL_X12_Y5_N54
\RAM64|ram~622\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~622_combout\ = ( \RAM64|ram~139_q\ & ( \ROM|memROM~9_combout\ & ( (\ROM|memROM~28_combout\) # (\RAM64|ram~75_q\) ) ) ) # ( !\RAM64|ram~139_q\ & ( \ROM|memROM~9_combout\ & ( (\RAM64|ram~75_q\ & !\ROM|memROM~28_combout\) ) ) ) # ( 
-- \RAM64|ram~139_q\ & ( !\ROM|memROM~9_combout\ & ( (!\ROM|memROM~28_combout\ & (\RAM64|ram~67_q\)) # (\ROM|memROM~28_combout\ & ((\RAM64|ram~131_q\))) ) ) ) # ( !\RAM64|ram~139_q\ & ( !\ROM|memROM~9_combout\ & ( (!\ROM|memROM~28_combout\ & 
-- (\RAM64|ram~67_q\)) # (\ROM|memROM~28_combout\ & ((\RAM64|ram~131_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010011001100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~67_q\,
	datab => \RAM64|ALT_INV_ram~131_q\,
	datac => \RAM64|ALT_INV_ram~75_q\,
	datad => \ROM|ALT_INV_memROM~28_combout\,
	datae => \RAM64|ALT_INV_ram~139_q\,
	dataf => \ROM|ALT_INV_memROM~9_combout\,
	combout => \RAM64|ram~622_combout\);

-- Location: LABCELL_X19_Y3_N0
\RAM64|ram~779\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~779_combout\ = ( !\ROM|memROM~28_combout\ & ( !\ROM|memROM~3_combout\ & ( (\ROM|memROM~20_combout\ & (!\ROM|memROM~9_combout\ & (\ROM|memROM~22_combout\ & \ROM|memROM~7_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~20_combout\,
	datab => \ROM|ALT_INV_memROM~9_combout\,
	datac => \ROM|ALT_INV_memROM~22_combout\,
	datad => \ROM|ALT_INV_memROM~7_combout\,
	datae => \ROM|ALT_INV_memROM~28_combout\,
	dataf => \ROM|ALT_INV_memROM~3_combout\,
	combout => \RAM64|ram~779_combout\);

-- Location: LABCELL_X19_Y4_N0
\RAM64|ram~780\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~780_combout\ = ( \RAM64|ram~779_combout\ & ( \RAM64|process_0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_process_0~1_combout\,
	dataf => \RAM64|ALT_INV_ram~779_combout\,
	combout => \RAM64|ram~780_combout\);

-- Location: FF_X16_Y4_N55
\RAM64|ram~195\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM64|ram~780_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~195_q\);

-- Location: LABCELL_X16_Y5_N36
\RAM64|ram~787\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~787_combout\ = ( \ROM|memROM~7_combout\ & ( !\ROM|memROM~3_combout\ & ( (\ROM|memROM~20_combout\ & (\ROM|memROM~22_combout\ & (\ROM|memROM~9_combout\ & !\ROM|memROM~28_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~20_combout\,
	datab => \ROM|ALT_INV_memROM~22_combout\,
	datac => \ROM|ALT_INV_memROM~9_combout\,
	datad => \ROM|ALT_INV_memROM~28_combout\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~3_combout\,
	combout => \RAM64|ram~787_combout\);

-- Location: LABCELL_X17_Y5_N42
\RAM64|ram~788\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~788_combout\ = ( \RAM64|ram~787_combout\ & ( \RAM64|process_0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM64|ALT_INV_process_0~1_combout\,
	dataf => \RAM64|ALT_INV_ram~787_combout\,
	combout => \RAM64|ram~788_combout\);

-- Location: FF_X13_Y6_N47
\RAM64|ram~203\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM64|ram~788_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~203_q\);

-- Location: MLABCELL_X18_Y4_N30
\RAM64|ram~259feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~259feeder_combout\ = ( \CPU|REGA|DOUT\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REGA|ALT_INV_DOUT\(4),
	combout => \RAM64|ram~259feeder_combout\);

-- Location: MLABCELL_X18_Y4_N39
\RAM64|ram~811\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~811_combout\ = ( \ROM|memROM~20_combout\ & ( \ROM|memROM~22_combout\ & ( (!\ROM|memROM~9_combout\ & (!\ROM|memROM~3_combout\ & (\ROM|memROM~28_combout\ & \ROM|memROM~7_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~9_combout\,
	datab => \ROM|ALT_INV_memROM~3_combout\,
	datac => \ROM|ALT_INV_memROM~28_combout\,
	datad => \ROM|ALT_INV_memROM~7_combout\,
	datae => \ROM|ALT_INV_memROM~20_combout\,
	dataf => \ROM|ALT_INV_memROM~22_combout\,
	combout => \RAM64|ram~811_combout\);

-- Location: MLABCELL_X18_Y4_N27
\RAM64|ram~812\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~812_combout\ = ( \RAM64|process_0~1_combout\ & ( \RAM64|ram~811_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM64|ALT_INV_ram~811_combout\,
	dataf => \RAM64|ALT_INV_process_0~1_combout\,
	combout => \RAM64|ram~812_combout\);

-- Location: FF_X18_Y4_N31
\RAM64|ram~259\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM64|ram~259feeder_combout\,
	ena => \RAM64|ram~812_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~259_q\);

-- Location: LABCELL_X14_Y5_N42
\RAM64|ram~819\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~819_combout\ = ( \ROM|memROM~22_combout\ & ( \ROM|memROM~7_combout\ & ( (\ROM|memROM~20_combout\ & (\ROM|memROM~28_combout\ & (\ROM|memROM~9_combout\ & !\ROM|memROM~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~20_combout\,
	datab => \ROM|ALT_INV_memROM~28_combout\,
	datac => \ROM|ALT_INV_memROM~9_combout\,
	datad => \ROM|ALT_INV_memROM~3_combout\,
	datae => \ROM|ALT_INV_memROM~22_combout\,
	dataf => \ROM|ALT_INV_memROM~7_combout\,
	combout => \RAM64|ram~819_combout\);

-- Location: LABCELL_X17_Y5_N54
\RAM64|ram~820\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~820_combout\ = ( \RAM64|ram~819_combout\ & ( \RAM64|process_0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM64|ALT_INV_process_0~1_combout\,
	dataf => \RAM64|ALT_INV_ram~819_combout\,
	combout => \RAM64|ram~820_combout\);

-- Location: FF_X13_Y6_N8
\RAM64|ram~267\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM64|ram~820_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~267_q\);

-- Location: MLABCELL_X13_Y6_N6
\RAM64|ram~624\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~624_combout\ = ( \RAM64|ram~267_q\ & ( \ROM|memROM~28_combout\ & ( (\RAM64|ram~259_q\) # (\ROM|memROM~9_combout\) ) ) ) # ( !\RAM64|ram~267_q\ & ( \ROM|memROM~28_combout\ & ( (!\ROM|memROM~9_combout\ & \RAM64|ram~259_q\) ) ) ) # ( 
-- \RAM64|ram~267_q\ & ( !\ROM|memROM~28_combout\ & ( (!\ROM|memROM~9_combout\ & (\RAM64|ram~195_q\)) # (\ROM|memROM~9_combout\ & ((\RAM64|ram~203_q\))) ) ) ) # ( !\RAM64|ram~267_q\ & ( !\ROM|memROM~28_combout\ & ( (!\ROM|memROM~9_combout\ & 
-- (\RAM64|ram~195_q\)) # (\ROM|memROM~9_combout\ & ((\RAM64|ram~203_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001100000000111100000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~195_q\,
	datab => \RAM64|ALT_INV_ram~203_q\,
	datac => \ROM|ALT_INV_memROM~9_combout\,
	datad => \RAM64|ALT_INV_ram~259_q\,
	datae => \RAM64|ALT_INV_ram~267_q\,
	dataf => \ROM|ALT_INV_memROM~28_combout\,
	combout => \RAM64|ram~624_combout\);

-- Location: LABCELL_X10_Y5_N0
\RAM64|ram~625\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~625_combout\ = ( \RAM64|ram~622_combout\ & ( \RAM64|ram~624_combout\ & ( ((!\ROM|memROM~20_combout\ & ((\RAM64|ram~621_combout\))) # (\ROM|memROM~20_combout\ & (\RAM64|ram~623_combout\))) # (\ROM|memROM~22_combout\) ) ) ) # ( 
-- !\RAM64|ram~622_combout\ & ( \RAM64|ram~624_combout\ & ( (!\ROM|memROM~22_combout\ & ((!\ROM|memROM~20_combout\ & ((\RAM64|ram~621_combout\))) # (\ROM|memROM~20_combout\ & (\RAM64|ram~623_combout\)))) # (\ROM|memROM~22_combout\ & 
-- (\ROM|memROM~20_combout\)) ) ) ) # ( \RAM64|ram~622_combout\ & ( !\RAM64|ram~624_combout\ & ( (!\ROM|memROM~22_combout\ & ((!\ROM|memROM~20_combout\ & ((\RAM64|ram~621_combout\))) # (\ROM|memROM~20_combout\ & (\RAM64|ram~623_combout\)))) # 
-- (\ROM|memROM~22_combout\ & (!\ROM|memROM~20_combout\)) ) ) ) # ( !\RAM64|ram~622_combout\ & ( !\RAM64|ram~624_combout\ & ( (!\ROM|memROM~22_combout\ & ((!\ROM|memROM~20_combout\ & ((\RAM64|ram~621_combout\))) # (\ROM|memROM~20_combout\ & 
-- (\RAM64|ram~623_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010010001101100111000010011100110110101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~22_combout\,
	datab => \ROM|ALT_INV_memROM~20_combout\,
	datac => \RAM64|ALT_INV_ram~623_combout\,
	datad => \RAM64|ALT_INV_ram~621_combout\,
	datae => \RAM64|ALT_INV_ram~622_combout\,
	dataf => \RAM64|ALT_INV_ram~624_combout\,
	combout => \RAM64|ram~625_combout\);

-- Location: LABCELL_X10_Y7_N6
\RAM64|ram~339feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~339feeder_combout\ = ( \CPU|REGA|DOUT\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REGA|ALT_INV_DOUT\(4),
	combout => \RAM64|ram~339feeder_combout\);

-- Location: MLABCELL_X18_Y7_N9
\RAM64|ram~729\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~729_combout\ = ( !\ROM|memROM~20_combout\ & ( \ROM|memROM~28_combout\ & ( (!\ROM|memROM~7_combout\ & (\ROM|memROM~3_combout\ & (!\ROM|memROM~22_combout\ & !\ROM|memROM~9_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datab => \ROM|ALT_INV_memROM~3_combout\,
	datac => \ROM|ALT_INV_memROM~22_combout\,
	datad => \ROM|ALT_INV_memROM~9_combout\,
	datae => \ROM|ALT_INV_memROM~20_combout\,
	dataf => \ROM|ALT_INV_memROM~28_combout\,
	combout => \RAM64|ram~729_combout\);

-- Location: MLABCELL_X18_Y7_N3
\RAM64|ram~730\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~730_combout\ = ( \RAM64|process_0~1_combout\ & ( \RAM64|ram~729_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM64|ALT_INV_ram~729_combout\,
	dataf => \RAM64|ALT_INV_process_0~1_combout\,
	combout => \RAM64|ram~730_combout\);

-- Location: FF_X10_Y7_N7
\RAM64|ram~339\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM64|ram~339feeder_combout\,
	ena => \RAM64|ram~730_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~339_q\);

-- Location: LABCELL_X14_Y7_N6
\RAM64|ram~745\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~745_combout\ = ( \ROM|memROM~3_combout\ & ( \ROM|memROM~20_combout\ & ( (\ROM|memROM~28_combout\ & (!\ROM|memROM~7_combout\ & (!\ROM|memROM~9_combout\ & !\ROM|memROM~22_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~28_combout\,
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \ROM|ALT_INV_memROM~9_combout\,
	datad => \ROM|ALT_INV_memROM~22_combout\,
	datae => \ROM|ALT_INV_memROM~3_combout\,
	dataf => \ROM|ALT_INV_memROM~20_combout\,
	combout => \RAM64|ram~745_combout\);

-- Location: LABCELL_X14_Y7_N42
\RAM64|ram~746\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~746_combout\ = ( \RAM64|ram~745_combout\ & ( \RAM64|process_0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_process_0~1_combout\,
	dataf => \RAM64|ALT_INV_ram~745_combout\,
	combout => \RAM64|ram~746_combout\);

-- Location: FF_X14_Y7_N11
\RAM64|ram~467\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM64|ram~746_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~467_q\);

-- Location: LABCELL_X19_Y4_N33
\RAM64|ram~733\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~733_combout\ = ( !\ROM|memROM~20_combout\ & ( \ROM|memROM~28_combout\ & ( (!\ROM|memROM~7_combout\ & (\ROM|memROM~3_combout\ & (!\ROM|memROM~22_combout\ & \ROM|memROM~9_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datab => \ROM|ALT_INV_memROM~3_combout\,
	datac => \ROM|ALT_INV_memROM~22_combout\,
	datad => \ROM|ALT_INV_memROM~9_combout\,
	datae => \ROM|ALT_INV_memROM~20_combout\,
	dataf => \ROM|ALT_INV_memROM~28_combout\,
	combout => \RAM64|ram~733_combout\);

-- Location: MLABCELL_X18_Y4_N15
\RAM64|ram~734\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~734_combout\ = ( \RAM64|ram~733_combout\ & ( \RAM64|process_0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_process_0~1_combout\,
	dataf => \RAM64|ALT_INV_ram~733_combout\,
	combout => \RAM64|ram~734_combout\);

-- Location: FF_X21_Y6_N16
\RAM64|ram~347\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM64|ram~734_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~347_q\);

-- Location: LABCELL_X14_Y6_N33
\RAM64|ram~749\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~749_combout\ = ( \ROM|memROM~3_combout\ & ( \ROM|memROM~20_combout\ & ( (!\ROM|memROM~7_combout\ & (!\ROM|memROM~22_combout\ & (\ROM|memROM~28_combout\ & \ROM|memROM~9_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datab => \ROM|ALT_INV_memROM~22_combout\,
	datac => \ROM|ALT_INV_memROM~28_combout\,
	datad => \ROM|ALT_INV_memROM~9_combout\,
	datae => \ROM|ALT_INV_memROM~3_combout\,
	dataf => \ROM|ALT_INV_memROM~20_combout\,
	combout => \RAM64|ram~749_combout\);

-- Location: LABCELL_X14_Y6_N18
\RAM64|ram~750\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~750_combout\ = ( \RAM64|ram~749_combout\ & ( \RAM64|process_0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_process_0~1_combout\,
	dataf => \RAM64|ALT_INV_ram~749_combout\,
	combout => \RAM64|ram~750_combout\);

-- Location: FF_X12_Y6_N7
\RAM64|ram~475\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM64|ram~750_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~475_q\);

-- Location: LABCELL_X10_Y6_N42
\RAM64|ram~617\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~617_combout\ = ( \ROM|memROM~9_combout\ & ( \ROM|memROM~20_combout\ & ( \RAM64|ram~475_q\ ) ) ) # ( !\ROM|memROM~9_combout\ & ( \ROM|memROM~20_combout\ & ( \RAM64|ram~467_q\ ) ) ) # ( \ROM|memROM~9_combout\ & ( !\ROM|memROM~20_combout\ & ( 
-- \RAM64|ram~347_q\ ) ) ) # ( !\ROM|memROM~9_combout\ & ( !\ROM|memROM~20_combout\ & ( \RAM64|ram~339_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000011110000111100110011001100110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~339_q\,
	datab => \RAM64|ALT_INV_ram~467_q\,
	datac => \RAM64|ALT_INV_ram~347_q\,
	datad => \RAM64|ALT_INV_ram~475_q\,
	datae => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \ROM|ALT_INV_memROM~20_combout\,
	combout => \RAM64|ram~617_combout\);

-- Location: MLABCELL_X13_Y5_N18
\RAM64|ram~801\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~801_combout\ = ( !\ROM|memROM~7_combout\ & ( \ROM|memROM~22_combout\ & ( (\ROM|memROM~9_combout\ & (!\ROM|memROM~20_combout\ & (\ROM|memROM~3_combout\ & \ROM|memROM~28_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~9_combout\,
	datab => \ROM|ALT_INV_memROM~20_combout\,
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datad => \ROM|ALT_INV_memROM~28_combout\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~22_combout\,
	combout => \RAM64|ram~801_combout\);

-- Location: MLABCELL_X13_Y5_N42
\RAM64|ram~802\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~802_combout\ = ( \RAM64|ram~801_combout\ & ( \RAM64|process_0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM64|ALT_INV_process_0~1_combout\,
	dataf => \RAM64|ALT_INV_ram~801_combout\,
	combout => \RAM64|ram~802_combout\);

-- Location: FF_X19_Y4_N37
\RAM64|ram~379\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM64|ram~802_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~379_q\);

-- Location: MLABCELL_X18_Y3_N15
\RAM64|ram~809\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~809_combout\ = ( !\ROM|memROM~7_combout\ & ( \ROM|memROM~3_combout\ & ( (!\ROM|memROM~9_combout\ & (\ROM|memROM~20_combout\ & (\ROM|memROM~22_combout\ & \ROM|memROM~28_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~9_combout\,
	datab => \ROM|ALT_INV_memROM~20_combout\,
	datac => \ROM|ALT_INV_memROM~22_combout\,
	datad => \ROM|ALT_INV_memROM~28_combout\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~3_combout\,
	combout => \RAM64|ram~809_combout\);

-- Location: LABCELL_X17_Y3_N24
\RAM64|ram~810\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~810_combout\ = ( \RAM64|ram~809_combout\ & ( \RAM64|process_0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM64|ALT_INV_process_0~1_combout\,
	datae => \RAM64|ALT_INV_ram~809_combout\,
	combout => \RAM64|ram~810_combout\);

-- Location: FF_X13_Y5_N11
\RAM64|ram~499\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM64|ram~810_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~499_q\);

-- Location: MLABCELL_X18_Y4_N48
\RAM64|ram~793\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~793_combout\ = ( \ROM|memROM~28_combout\ & ( !\ROM|memROM~7_combout\ & ( (\ROM|memROM~22_combout\ & (!\ROM|memROM~9_combout\ & (!\ROM|memROM~20_combout\ & \ROM|memROM~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~22_combout\,
	datab => \ROM|ALT_INV_memROM~9_combout\,
	datac => \ROM|ALT_INV_memROM~20_combout\,
	datad => \ROM|ALT_INV_memROM~3_combout\,
	datae => \ROM|ALT_INV_memROM~28_combout\,
	dataf => \ROM|ALT_INV_memROM~7_combout\,
	combout => \RAM64|ram~793_combout\);

-- Location: LABCELL_X17_Y4_N6
\RAM64|ram~794\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~794_combout\ = ( \RAM64|process_0~1_combout\ & ( \RAM64|ram~793_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM64|ALT_INV_ram~793_combout\,
	dataf => \RAM64|ALT_INV_process_0~1_combout\,
	combout => \RAM64|ram~794_combout\);

-- Location: FF_X17_Y4_N49
\RAM64|ram~371\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM64|ram~794_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~371_q\);

-- Location: LABCELL_X10_Y5_N24
\RAM64|ram~817\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~817_combout\ = ( \ROM|memROM~3_combout\ & ( \ROM|memROM~9_combout\ & ( (\ROM|memROM~28_combout\ & (\ROM|memROM~20_combout\ & (!\ROM|memROM~7_combout\ & \ROM|memROM~22_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~28_combout\,
	datab => \ROM|ALT_INV_memROM~20_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \ROM|ALT_INV_memROM~22_combout\,
	datae => \ROM|ALT_INV_memROM~3_combout\,
	dataf => \ROM|ALT_INV_memROM~9_combout\,
	combout => \RAM64|ram~817_combout\);

-- Location: MLABCELL_X13_Y5_N30
\RAM64|ram~818\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~818_combout\ = ( \RAM64|ram~817_combout\ & ( \RAM64|process_0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM64|ALT_INV_process_0~1_combout\,
	dataf => \RAM64|ALT_INV_ram~817_combout\,
	combout => \RAM64|ram~818_combout\);

-- Location: FF_X13_Y5_N50
\RAM64|ram~507\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM64|ram~818_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~507_q\);

-- Location: MLABCELL_X13_Y5_N48
\RAM64|ram~619\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~619_combout\ = ( \RAM64|ram~507_q\ & ( \ROM|memROM~20_combout\ & ( (\ROM|memROM~9_combout\) # (\RAM64|ram~499_q\) ) ) ) # ( !\RAM64|ram~507_q\ & ( \ROM|memROM~20_combout\ & ( (\RAM64|ram~499_q\ & !\ROM|memROM~9_combout\) ) ) ) # ( 
-- \RAM64|ram~507_q\ & ( !\ROM|memROM~20_combout\ & ( (!\ROM|memROM~9_combout\ & ((\RAM64|ram~371_q\))) # (\ROM|memROM~9_combout\ & (\RAM64|ram~379_q\)) ) ) ) # ( !\RAM64|ram~507_q\ & ( !\ROM|memROM~20_combout\ & ( (!\ROM|memROM~9_combout\ & 
-- ((\RAM64|ram~371_q\))) # (\ROM|memROM~9_combout\ & (\RAM64|ram~379_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~379_q\,
	datab => \RAM64|ALT_INV_ram~499_q\,
	datac => \ROM|ALT_INV_memROM~9_combout\,
	datad => \RAM64|ALT_INV_ram~371_q\,
	datae => \RAM64|ALT_INV_ram~507_q\,
	dataf => \ROM|ALT_INV_memROM~20_combout\,
	combout => \RAM64|ram~619_combout\);

-- Location: LABCELL_X16_Y2_N42
\RAM64|ram~307feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~307feeder_combout\ = ( \CPU|REGA|DOUT\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REGA|ALT_INV_DOUT\(4),
	combout => \RAM64|ram~307feeder_combout\);

-- Location: LABCELL_X16_Y2_N24
\RAM64|ram~761\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~761_combout\ = ( \ROM|memROM~3_combout\ & ( !\ROM|memROM~7_combout\ & ( (!\ROM|memROM~9_combout\ & (\ROM|memROM~22_combout\ & (!\ROM|memROM~28_combout\ & !\ROM|memROM~20_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~9_combout\,
	datab => \ROM|ALT_INV_memROM~22_combout\,
	datac => \ROM|ALT_INV_memROM~28_combout\,
	datad => \ROM|ALT_INV_memROM~20_combout\,
	datae => \ROM|ALT_INV_memROM~3_combout\,
	dataf => \ROM|ALT_INV_memROM~7_combout\,
	combout => \RAM64|ram~761_combout\);

-- Location: LABCELL_X16_Y2_N57
\RAM64|ram~762\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~762_combout\ = (\RAM64|ram~761_combout\ & \RAM64|process_0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~761_combout\,
	datad => \RAM64|ALT_INV_process_0~1_combout\,
	combout => \RAM64|ram~762_combout\);

-- Location: FF_X16_Y2_N44
\RAM64|ram~307\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM64|ram~307feeder_combout\,
	ena => \RAM64|ram~762_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~307_q\);

-- Location: LABCELL_X12_Y6_N48
\RAM64|ram~769\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~769_combout\ = ( \ROM|memROM~22_combout\ & ( !\ROM|memROM~7_combout\ & ( (!\ROM|memROM~28_combout\ & (\ROM|memROM~9_combout\ & (\ROM|memROM~3_combout\ & !\ROM|memROM~20_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~28_combout\,
	datab => \ROM|ALT_INV_memROM~9_combout\,
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datad => \ROM|ALT_INV_memROM~20_combout\,
	datae => \ROM|ALT_INV_memROM~22_combout\,
	dataf => \ROM|ALT_INV_memROM~7_combout\,
	combout => \RAM64|ram~769_combout\);

-- Location: LABCELL_X12_Y6_N24
\RAM64|ram~770\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~770_combout\ = ( \RAM64|ram~769_combout\ & ( \RAM64|process_0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_process_0~1_combout\,
	dataf => \RAM64|ALT_INV_ram~769_combout\,
	combout => \RAM64|ram~770_combout\);

-- Location: FF_X12_Y6_N17
\RAM64|ram~315\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM64|ram~770_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~315_q\);

-- Location: LABCELL_X16_Y2_N36
\RAM64|ram~435feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~435feeder_combout\ = ( \CPU|REGA|DOUT\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REGA|ALT_INV_DOUT\(4),
	combout => \RAM64|ram~435feeder_combout\);

-- Location: MLABCELL_X18_Y2_N9
\RAM64|ram~777\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~777_combout\ = ( \ROM|memROM~20_combout\ & ( !\ROM|memROM~7_combout\ & ( (!\ROM|memROM~28_combout\ & (\ROM|memROM~3_combout\ & (!\ROM|memROM~9_combout\ & \ROM|memROM~22_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~28_combout\,
	datab => \ROM|ALT_INV_memROM~3_combout\,
	datac => \ROM|ALT_INV_memROM~9_combout\,
	datad => \ROM|ALT_INV_memROM~22_combout\,
	datae => \ROM|ALT_INV_memROM~20_combout\,
	dataf => \ROM|ALT_INV_memROM~7_combout\,
	combout => \RAM64|ram~777_combout\);

-- Location: LABCELL_X17_Y2_N27
\RAM64|ram~778\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~778_combout\ = ( \RAM64|process_0~1_combout\ & ( \RAM64|ram~777_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM64|ALT_INV_ram~777_combout\,
	dataf => \RAM64|ALT_INV_process_0~1_combout\,
	combout => \RAM64|ram~778_combout\);

-- Location: FF_X16_Y2_N37
\RAM64|ram~435\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM64|ram~435feeder_combout\,
	ena => \RAM64|ram~778_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~435_q\);

-- Location: LABCELL_X10_Y4_N36
\RAM64|ram~785\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~785_combout\ = ( !\ROM|memROM~28_combout\ & ( \ROM|memROM~3_combout\ & ( (!\ROM|memROM~7_combout\ & (\ROM|memROM~9_combout\ & (\ROM|memROM~22_combout\ & \ROM|memROM~20_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datab => \ROM|ALT_INV_memROM~9_combout\,
	datac => \ROM|ALT_INV_memROM~22_combout\,
	datad => \ROM|ALT_INV_memROM~20_combout\,
	datae => \ROM|ALT_INV_memROM~28_combout\,
	dataf => \ROM|ALT_INV_memROM~3_combout\,
	combout => \RAM64|ram~785_combout\);

-- Location: LABCELL_X12_Y6_N27
\RAM64|ram~786\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~786_combout\ = ( \RAM64|ram~785_combout\ & ( \RAM64|process_0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_process_0~1_combout\,
	dataf => \RAM64|ALT_INV_ram~785_combout\,
	combout => \RAM64|ram~786_combout\);

-- Location: FF_X12_Y6_N2
\RAM64|ram~443\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM64|ram~786_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~443_q\);

-- Location: LABCELL_X12_Y6_N0
\RAM64|ram~618\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~618_combout\ = ( \RAM64|ram~443_q\ & ( \ROM|memROM~20_combout\ & ( (\RAM64|ram~435_q\) # (\ROM|memROM~9_combout\) ) ) ) # ( !\RAM64|ram~443_q\ & ( \ROM|memROM~20_combout\ & ( (!\ROM|memROM~9_combout\ & \RAM64|ram~435_q\) ) ) ) # ( 
-- \RAM64|ram~443_q\ & ( !\ROM|memROM~20_combout\ & ( (!\ROM|memROM~9_combout\ & (\RAM64|ram~307_q\)) # (\ROM|memROM~9_combout\ & ((\RAM64|ram~315_q\))) ) ) ) # ( !\RAM64|ram~443_q\ & ( !\ROM|memROM~20_combout\ & ( (!\ROM|memROM~9_combout\ & 
-- (\RAM64|ram~307_q\)) # (\ROM|memROM~9_combout\ & ((\RAM64|ram~315_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001100000000111100000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~307_q\,
	datab => \RAM64|ALT_INV_ram~315_q\,
	datac => \ROM|ALT_INV_memROM~9_combout\,
	datad => \RAM64|ALT_INV_ram~435_q\,
	datae => \RAM64|ALT_INV_ram~443_q\,
	dataf => \ROM|ALT_INV_memROM~20_combout\,
	combout => \RAM64|ram~618_combout\);

-- Location: LABCELL_X19_Y3_N39
\RAM64|ram~705\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~705_combout\ = ( !\ROM|memROM~28_combout\ & ( \ROM|memROM~3_combout\ & ( (!\ROM|memROM~22_combout\ & (!\ROM|memROM~7_combout\ & (\ROM|memROM~9_combout\ & !\ROM|memROM~20_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~22_combout\,
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \ROM|ALT_INV_memROM~9_combout\,
	datad => \ROM|ALT_INV_memROM~20_combout\,
	datae => \ROM|ALT_INV_memROM~28_combout\,
	dataf => \ROM|ALT_INV_memROM~3_combout\,
	combout => \RAM64|ram~705_combout\);

-- Location: LABCELL_X19_Y3_N30
\RAM64|ram~706\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~706_combout\ = ( \RAM64|ram~705_combout\ & ( \RAM64|process_0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM64|ALT_INV_process_0~1_combout\,
	dataf => \RAM64|ALT_INV_ram~705_combout\,
	combout => \RAM64|ram~706_combout\);

-- Location: FF_X18_Y5_N26
\RAM64|ram~283\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM64|ram~706_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~283_q\);

-- Location: MLABCELL_X18_Y3_N51
\RAM64|ram~697\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~697_combout\ = ( !\ROM|memROM~7_combout\ & ( \ROM|memROM~3_combout\ & ( (!\ROM|memROM~9_combout\ & (!\ROM|memROM~20_combout\ & (!\ROM|memROM~22_combout\ & !\ROM|memROM~28_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~9_combout\,
	datab => \ROM|ALT_INV_memROM~20_combout\,
	datac => \ROM|ALT_INV_memROM~22_combout\,
	datad => \ROM|ALT_INV_memROM~28_combout\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~3_combout\,
	combout => \RAM64|ram~697_combout\);

-- Location: MLABCELL_X18_Y3_N0
\RAM64|ram~698\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~698_combout\ = ( \RAM64|process_0~1_combout\ & ( \RAM64|ram~697_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM64|ALT_INV_ram~697_combout\,
	datae => \RAM64|ALT_INV_process_0~1_combout\,
	combout => \RAM64|ram~698_combout\);

-- Location: FF_X21_Y3_N25
\RAM64|ram~275\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM64|ram~698_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~275_q\);

-- Location: LABCELL_X14_Y3_N30
\RAM64|ram~713\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~713_combout\ = ( !\ROM|memROM~9_combout\ & ( \ROM|memROM~3_combout\ & ( (!\ROM|memROM~28_combout\ & (!\ROM|memROM~22_combout\ & (\ROM|memROM~20_combout\ & !\ROM|memROM~7_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~28_combout\,
	datab => \ROM|ALT_INV_memROM~22_combout\,
	datac => \ROM|ALT_INV_memROM~20_combout\,
	datad => \ROM|ALT_INV_memROM~7_combout\,
	datae => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \ROM|ALT_INV_memROM~3_combout\,
	combout => \RAM64|ram~713_combout\);

-- Location: LABCELL_X17_Y2_N36
\RAM64|ram~714\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~714_combout\ = ( \RAM64|ram~713_combout\ & ( \RAM64|process_0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM64|ALT_INV_process_0~1_combout\,
	dataf => \RAM64|ALT_INV_ram~713_combout\,
	combout => \RAM64|ram~714_combout\);

-- Location: FF_X17_Y2_N7
\RAM64|ram~403\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM64|ram~714_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~403_q\);

-- Location: LABCELL_X14_Y7_N33
\RAM64|ram~721\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~721_combout\ = ( \ROM|memROM~3_combout\ & ( \ROM|memROM~20_combout\ & ( (!\ROM|memROM~28_combout\ & (!\ROM|memROM~7_combout\ & (!\ROM|memROM~22_combout\ & \ROM|memROM~9_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~28_combout\,
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \ROM|ALT_INV_memROM~22_combout\,
	datad => \ROM|ALT_INV_memROM~9_combout\,
	datae => \ROM|ALT_INV_memROM~3_combout\,
	dataf => \ROM|ALT_INV_memROM~20_combout\,
	combout => \RAM64|ram~721_combout\);

-- Location: LABCELL_X14_Y7_N12
\RAM64|ram~722\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~722_combout\ = ( \RAM64|process_0~1_combout\ & ( \RAM64|ram~721_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM64|ALT_INV_ram~721_combout\,
	dataf => \RAM64|ALT_INV_process_0~1_combout\,
	combout => \RAM64|ram~722_combout\);

-- Location: FF_X18_Y5_N8
\RAM64|ram~411\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM64|ram~722_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~411_q\);

-- Location: MLABCELL_X18_Y5_N6
\RAM64|ram~616\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~616_combout\ = ( \RAM64|ram~411_q\ & ( \ROM|memROM~9_combout\ & ( (\ROM|memROM~20_combout\) # (\RAM64|ram~283_q\) ) ) ) # ( !\RAM64|ram~411_q\ & ( \ROM|memROM~9_combout\ & ( (\RAM64|ram~283_q\ & !\ROM|memROM~20_combout\) ) ) ) # ( 
-- \RAM64|ram~411_q\ & ( !\ROM|memROM~9_combout\ & ( (!\ROM|memROM~20_combout\ & (\RAM64|ram~275_q\)) # (\ROM|memROM~20_combout\ & ((\RAM64|ram~403_q\))) ) ) ) # ( !\RAM64|ram~411_q\ & ( !\ROM|memROM~9_combout\ & ( (!\ROM|memROM~20_combout\ & 
-- (\RAM64|ram~275_q\)) # (\ROM|memROM~20_combout\ & ((\RAM64|ram~403_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111101010101000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~283_q\,
	datab => \RAM64|ALT_INV_ram~275_q\,
	datac => \RAM64|ALT_INV_ram~403_q\,
	datad => \ROM|ALT_INV_memROM~20_combout\,
	datae => \RAM64|ALT_INV_ram~411_q\,
	dataf => \ROM|ALT_INV_memROM~9_combout\,
	combout => \RAM64|ram~616_combout\);

-- Location: LABCELL_X10_Y5_N30
\RAM64|ram~620\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~620_combout\ = ( \RAM64|ram~618_combout\ & ( \RAM64|ram~616_combout\ & ( (!\ROM|memROM~28_combout\) # ((!\ROM|memROM~22_combout\ & (\RAM64|ram~617_combout\)) # (\ROM|memROM~22_combout\ & ((\RAM64|ram~619_combout\)))) ) ) ) # ( 
-- !\RAM64|ram~618_combout\ & ( \RAM64|ram~616_combout\ & ( (!\ROM|memROM~28_combout\ & (!\ROM|memROM~22_combout\)) # (\ROM|memROM~28_combout\ & ((!\ROM|memROM~22_combout\ & (\RAM64|ram~617_combout\)) # (\ROM|memROM~22_combout\ & 
-- ((\RAM64|ram~619_combout\))))) ) ) ) # ( \RAM64|ram~618_combout\ & ( !\RAM64|ram~616_combout\ & ( (!\ROM|memROM~28_combout\ & (\ROM|memROM~22_combout\)) # (\ROM|memROM~28_combout\ & ((!\ROM|memROM~22_combout\ & (\RAM64|ram~617_combout\)) # 
-- (\ROM|memROM~22_combout\ & ((\RAM64|ram~619_combout\))))) ) ) ) # ( !\RAM64|ram~618_combout\ & ( !\RAM64|ram~616_combout\ & ( (\ROM|memROM~28_combout\ & ((!\ROM|memROM~22_combout\ & (\RAM64|ram~617_combout\)) # (\ROM|memROM~22_combout\ & 
-- ((\RAM64|ram~619_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101001001100011011110001100100111011010111010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~28_combout\,
	datab => \ROM|ALT_INV_memROM~22_combout\,
	datac => \RAM64|ALT_INV_ram~617_combout\,
	datad => \RAM64|ALT_INV_ram~619_combout\,
	datae => \RAM64|ALT_INV_ram~618_combout\,
	dataf => \RAM64|ALT_INV_ram~616_combout\,
	combout => \RAM64|ram~620_combout\);

-- Location: LABCELL_X10_Y5_N48
\RAM64|ram~631\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~631_combout\ = ( \RAM64|ram~625_combout\ & ( \RAM64|ram~620_combout\ & ( (!\ROM|memROM~7_combout\ & (((\ROM|memROM~3_combout\)) # (\RAM64|ram~615_combout\))) # (\ROM|memROM~7_combout\ & (((!\ROM|memROM~3_combout\) # (\RAM64|ram~630_combout\)))) 
-- ) ) ) # ( !\RAM64|ram~625_combout\ & ( \RAM64|ram~620_combout\ & ( (!\ROM|memROM~7_combout\ & (((\ROM|memROM~3_combout\)) # (\RAM64|ram~615_combout\))) # (\ROM|memROM~7_combout\ & (((\RAM64|ram~630_combout\ & \ROM|memROM~3_combout\)))) ) ) ) # ( 
-- \RAM64|ram~625_combout\ & ( !\RAM64|ram~620_combout\ & ( (!\ROM|memROM~7_combout\ & (\RAM64|ram~615_combout\ & ((!\ROM|memROM~3_combout\)))) # (\ROM|memROM~7_combout\ & (((!\ROM|memROM~3_combout\) # (\RAM64|ram~630_combout\)))) ) ) ) # ( 
-- !\RAM64|ram~625_combout\ & ( !\RAM64|ram~620_combout\ & ( (!\ROM|memROM~7_combout\ & (\RAM64|ram~615_combout\ & ((!\ROM|memROM~3_combout\)))) # (\ROM|memROM~7_combout\ & (((\RAM64|ram~630_combout\ & \ROM|memROM~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000000011011101110000001101000100110011110111011111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~615_combout\,
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \RAM64|ALT_INV_ram~630_combout\,
	datad => \ROM|ALT_INV_memROM~3_combout\,
	datae => \RAM64|ALT_INV_ram~625_combout\,
	dataf => \RAM64|ALT_INV_ram~620_combout\,
	combout => \RAM64|ram~631_combout\);

-- Location: LABCELL_X10_Y3_N48
\DATA_IN[4]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATA_IN[4]~9_combout\ = ( \RAM64|ram~631_combout\ & ( ((\AND_SW0_7|saida~3_combout\ & \SW[4]~input_o\)) # (\RAM64|dado_out~0_combout\) ) ) # ( !\RAM64|ram~631_combout\ & ( (\AND_SW0_7|saida~3_combout\ & \SW[4]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011111111110000001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \AND_SW0_7|ALT_INV_saida~3_combout\,
	datac => \ALT_INV_SW[4]~input_o\,
	datad => \RAM64|ALT_INV_dado_out~0_combout\,
	dataf => \RAM64|ALT_INV_ram~631_combout\,
	combout => \DATA_IN[4]~9_combout\);

-- Location: IOIBUF_X34_Y0_N18
\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: LABCELL_X14_Y5_N57
\ROM|memROM~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~33_combout\ = ( \ROM|memROM~27_combout\ & ( !\CPU|PC|DOUT[2]~DUPLICATE_q\ & ( \ROM|memROM~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datae => \ROM|ALT_INV_memROM~27_combout\,
	dataf => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	combout => \ROM|memROM~33_combout\);

-- Location: LABCELL_X16_Y6_N48
\ROM|memROM~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~32_combout\ = ( \ROM|memROM~0_combout\ & ( (\ROM|memROM~21_combout\ & !\CPU|PC|DOUT\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~21_combout\,
	datad => \CPU|PC|ALT_INV_DOUT\(1),
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \ROM|memROM~32_combout\);

-- Location: IOIBUF_X34_Y0_N1
\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: FF_X19_Y3_N38
\RAM64|ram~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM64|ram~708_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~41_q\);

-- Location: FF_X12_Y3_N47
\RAM64|ram~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM64|ram~764_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~65_q\);

-- Location: FF_X16_Y1_N55
\RAM64|ram~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM64|ram~700_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~33_q\);

-- Location: FF_X12_Y3_N2
\RAM64|ram~73\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM64|ram~772_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~73_q\);

-- Location: LABCELL_X12_Y3_N0
\RAM64|ram~571\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~571_combout\ = ( \RAM64|ram~73_q\ & ( \ROM|memROM~9_combout\ & ( (\ROM|memROM~22_combout\) # (\RAM64|ram~41_q\) ) ) ) # ( !\RAM64|ram~73_q\ & ( \ROM|memROM~9_combout\ & ( (\RAM64|ram~41_q\ & !\ROM|memROM~22_combout\) ) ) ) # ( \RAM64|ram~73_q\ 
-- & ( !\ROM|memROM~9_combout\ & ( (!\ROM|memROM~22_combout\ & ((\RAM64|ram~33_q\))) # (\ROM|memROM~22_combout\ & (\RAM64|ram~65_q\)) ) ) ) # ( !\RAM64|ram~73_q\ & ( !\ROM|memROM~9_combout\ & ( (!\ROM|memROM~22_combout\ & ((\RAM64|ram~33_q\))) # 
-- (\ROM|memROM~22_combout\ & (\RAM64|ram~65_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~41_q\,
	datab => \RAM64|ALT_INV_ram~65_q\,
	datac => \ROM|ALT_INV_memROM~22_combout\,
	datad => \RAM64|ALT_INV_ram~33_q\,
	datae => \RAM64|ALT_INV_ram~73_q\,
	dataf => \ROM|ALT_INV_memROM~9_combout\,
	combout => \RAM64|ram~571_combout\);

-- Location: FF_X19_Y6_N35
\RAM64|ram~121\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM64|ram~800_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~121_q\);

-- Location: LABCELL_X19_Y7_N42
\RAM64|ram~89feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~89feeder_combout\ = ( \CPU|REGA|DOUT\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REGA|ALT_INV_DOUT\(2),
	combout => \RAM64|ram~89feeder_combout\);

-- Location: FF_X19_Y7_N43
\RAM64|ram~89\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM64|ram~89feeder_combout\,
	ena => \RAM64|ram~732_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~89_q\);

-- Location: FF_X16_Y5_N17
\RAM64|ram~81\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM64|ram~728_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~81_q\);

-- Location: FF_X19_Y7_N26
\RAM64|ram~113\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM64|ram~792_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~113_q\);

-- Location: LABCELL_X12_Y6_N15
\RAM64|ram~570\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~570_combout\ = ( \ROM|memROM~22_combout\ & ( \ROM|memROM~9_combout\ & ( \RAM64|ram~121_q\ ) ) ) # ( !\ROM|memROM~22_combout\ & ( \ROM|memROM~9_combout\ & ( \RAM64|ram~89_q\ ) ) ) # ( \ROM|memROM~22_combout\ & ( !\ROM|memROM~9_combout\ & ( 
-- \RAM64|ram~113_q\ ) ) ) # ( !\ROM|memROM~22_combout\ & ( !\ROM|memROM~9_combout\ & ( \RAM64|ram~81_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~121_q\,
	datab => \RAM64|ALT_INV_ram~89_q\,
	datac => \RAM64|ALT_INV_ram~81_q\,
	datad => \RAM64|ALT_INV_ram~113_q\,
	datae => \ROM|ALT_INV_memROM~22_combout\,
	dataf => \ROM|ALT_INV_memROM~9_combout\,
	combout => \RAM64|ram~570_combout\);

-- Location: FF_X18_Y3_N14
\RAM64|ram~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM64|ram~696_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~17_q\);

-- Location: LABCELL_X20_Y2_N24
\RAM64|ram~49feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~49feeder_combout\ = ( \CPU|REGA|DOUT\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REGA|ALT_INV_DOUT\(2),
	combout => \RAM64|ram~49feeder_combout\);

-- Location: FF_X20_Y2_N25
\RAM64|ram~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM64|ram~49feeder_combout\,
	ena => \RAM64|ram~760_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~49_q\);

-- Location: FF_X19_Y3_N34
\RAM64|ram~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM64|ram~704_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~25_q\);

-- Location: FF_X12_Y3_N29
\RAM64|ram~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM64|ram~768_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~57_q\);

-- Location: LABCELL_X12_Y3_N27
\RAM64|ram~569\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~569_combout\ = ( \RAM64|ram~57_q\ & ( \ROM|memROM~9_combout\ & ( (\ROM|memROM~22_combout\) # (\RAM64|ram~25_q\) ) ) ) # ( !\RAM64|ram~57_q\ & ( \ROM|memROM~9_combout\ & ( (\RAM64|ram~25_q\ & !\ROM|memROM~22_combout\) ) ) ) # ( \RAM64|ram~57_q\ 
-- & ( !\ROM|memROM~9_combout\ & ( (!\ROM|memROM~22_combout\ & (\RAM64|ram~17_q\)) # (\ROM|memROM~22_combout\ & ((\RAM64|ram~49_q\))) ) ) ) # ( !\RAM64|ram~57_q\ & ( !\ROM|memROM~9_combout\ & ( (!\ROM|memROM~22_combout\ & (\RAM64|ram~17_q\)) # 
-- (\ROM|memROM~22_combout\ & ((\RAM64|ram~49_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010011001100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~17_q\,
	datab => \RAM64|ALT_INV_ram~49_q\,
	datac => \RAM64|ALT_INV_ram~25_q\,
	datad => \ROM|ALT_INV_memROM~22_combout\,
	datae => \RAM64|ALT_INV_ram~57_q\,
	dataf => \ROM|ALT_INV_memROM~9_combout\,
	combout => \RAM64|ram~569_combout\);

-- Location: FF_X13_Y5_N26
\RAM64|ram~105\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM64|ram~740_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~105_q\);

-- Location: LABCELL_X16_Y7_N6
\RAM64|ram~97feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~97feeder_combout\ = ( \CPU|REGA|DOUT\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REGA|ALT_INV_DOUT\(2),
	combout => \RAM64|ram~97feeder_combout\);

-- Location: FF_X16_Y7_N7
\RAM64|ram~97\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM64|ram~97feeder_combout\,
	ena => \RAM64|ram~736_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~97_q\);

-- Location: FF_X12_Y5_N52
\RAM64|ram~129\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM64|ram~796_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~129_q\);

-- Location: FF_X12_Y5_N20
\RAM64|ram~137\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM64|ram~804_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~137_q\);

-- Location: LABCELL_X12_Y5_N18
\RAM64|ram~572\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~572_combout\ = ( \RAM64|ram~137_q\ & ( \ROM|memROM~22_combout\ & ( (\RAM64|ram~129_q\) # (\ROM|memROM~9_combout\) ) ) ) # ( !\RAM64|ram~137_q\ & ( \ROM|memROM~22_combout\ & ( (!\ROM|memROM~9_combout\ & \RAM64|ram~129_q\) ) ) ) # ( 
-- \RAM64|ram~137_q\ & ( !\ROM|memROM~22_combout\ & ( (!\ROM|memROM~9_combout\ & ((\RAM64|ram~97_q\))) # (\ROM|memROM~9_combout\ & (\RAM64|ram~105_q\)) ) ) ) # ( !\RAM64|ram~137_q\ & ( !\ROM|memROM~22_combout\ & ( (!\ROM|memROM~9_combout\ & 
-- ((\RAM64|ram~97_q\))) # (\ROM|memROM~9_combout\ & (\RAM64|ram~105_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001101010011010100000000111100000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~105_q\,
	datab => \RAM64|ALT_INV_ram~97_q\,
	datac => \ROM|ALT_INV_memROM~9_combout\,
	datad => \RAM64|ALT_INV_ram~129_q\,
	datae => \RAM64|ALT_INV_ram~137_q\,
	dataf => \ROM|ALT_INV_memROM~22_combout\,
	combout => \RAM64|ram~572_combout\);

-- Location: LABCELL_X12_Y3_N57
\RAM64|ram~573\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~573_combout\ = ( \RAM64|ram~569_combout\ & ( \RAM64|ram~572_combout\ & ( (!\ROM|memROM~28_combout\ & (((!\ROM|memROM~7_combout\)) # (\RAM64|ram~571_combout\))) # (\ROM|memROM~28_combout\ & (((\RAM64|ram~570_combout\) # 
-- (\ROM|memROM~7_combout\)))) ) ) ) # ( !\RAM64|ram~569_combout\ & ( \RAM64|ram~572_combout\ & ( (!\ROM|memROM~28_combout\ & (\RAM64|ram~571_combout\ & (\ROM|memROM~7_combout\))) # (\ROM|memROM~28_combout\ & (((\RAM64|ram~570_combout\) # 
-- (\ROM|memROM~7_combout\)))) ) ) ) # ( \RAM64|ram~569_combout\ & ( !\RAM64|ram~572_combout\ & ( (!\ROM|memROM~28_combout\ & (((!\ROM|memROM~7_combout\)) # (\RAM64|ram~571_combout\))) # (\ROM|memROM~28_combout\ & (((!\ROM|memROM~7_combout\ & 
-- \RAM64|ram~570_combout\)))) ) ) ) # ( !\RAM64|ram~569_combout\ & ( !\RAM64|ram~572_combout\ & ( (!\ROM|memROM~28_combout\ & (\RAM64|ram~571_combout\ & (\ROM|memROM~7_combout\))) # (\ROM|memROM~28_combout\ & (((!\ROM|memROM~7_combout\ & 
-- \RAM64|ram~570_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000110100110001001111010000000111001101111100011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~571_combout\,
	datab => \ROM|ALT_INV_memROM~28_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \RAM64|ALT_INV_ram~570_combout\,
	datae => \RAM64|ALT_INV_ram~569_combout\,
	dataf => \RAM64|ALT_INV_ram~572_combout\,
	combout => \RAM64|ram~573_combout\);

-- Location: FF_X18_Y6_N46
\RAM64|ram~409\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM64|ram~722_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~409_q\);

-- Location: FF_X17_Y2_N11
\RAM64|ram~401\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM64|ram~714_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~401_q\);

-- Location: FF_X12_Y6_N44
\RAM64|ram~441\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM64|ram~786_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~441_q\);

-- Location: FF_X16_Y2_N13
\RAM64|ram~433\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM64|ram~778_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~433_q\);

-- Location: LABCELL_X12_Y6_N45
\RAM64|ram~584\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~584_combout\ = ( \ROM|memROM~22_combout\ & ( \ROM|memROM~9_combout\ & ( \RAM64|ram~441_q\ ) ) ) # ( !\ROM|memROM~22_combout\ & ( \ROM|memROM~9_combout\ & ( \RAM64|ram~409_q\ ) ) ) # ( \ROM|memROM~22_combout\ & ( !\ROM|memROM~9_combout\ & ( 
-- \RAM64|ram~433_q\ ) ) ) # ( !\ROM|memROM~22_combout\ & ( !\ROM|memROM~9_combout\ & ( \RAM64|ram~401_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000001111111101010101010101010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~409_q\,
	datab => \RAM64|ALT_INV_ram~401_q\,
	datac => \RAM64|ALT_INV_ram~441_q\,
	datad => \RAM64|ALT_INV_ram~433_q\,
	datae => \ROM|ALT_INV_memROM~22_combout\,
	dataf => \ROM|ALT_INV_memROM~9_combout\,
	combout => \RAM64|ram~584_combout\);

-- Location: LABCELL_X20_Y5_N15
\RAM64|ram~489feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~489feeder_combout\ = ( \CPU|REGA|DOUT\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REGA|ALT_INV_DOUT\(2),
	combout => \RAM64|ram~489feeder_combout\);

-- Location: FF_X20_Y5_N16
\RAM64|ram~489\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM64|ram~489feeder_combout\,
	ena => \RAM64|ram~758_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~489_q\);

-- Location: MLABCELL_X13_Y4_N27
\RAM64|ram~513feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~513feeder_combout\ = ( \CPU|REGA|DOUT\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REGA|ALT_INV_DOUT\(2),
	combout => \RAM64|ram~513feeder_combout\);

-- Location: FF_X13_Y4_N28
\RAM64|ram~513\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM64|ram~513feeder_combout\,
	ena => \RAM64|ram~814_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~513_q\);

-- Location: FF_X18_Y6_N5
\RAM64|ram~481\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM64|ram~754_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~481_q\);

-- Location: FF_X17_Y5_N20
\RAM64|ram~521\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM64|ram~822_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~521_q\);

-- Location: LABCELL_X17_Y5_N21
\RAM64|ram~587\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~587_combout\ = ( \ROM|memROM~22_combout\ & ( \ROM|memROM~9_combout\ & ( \RAM64|ram~521_q\ ) ) ) # ( !\ROM|memROM~22_combout\ & ( \ROM|memROM~9_combout\ & ( \RAM64|ram~489_q\ ) ) ) # ( \ROM|memROM~22_combout\ & ( !\ROM|memROM~9_combout\ & ( 
-- \RAM64|ram~513_q\ ) ) ) # ( !\ROM|memROM~22_combout\ & ( !\ROM|memROM~9_combout\ & ( \RAM64|ram~481_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001100110011001101010101010101010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~489_q\,
	datab => \RAM64|ALT_INV_ram~513_q\,
	datac => \RAM64|ALT_INV_ram~481_q\,
	datad => \RAM64|ALT_INV_ram~521_q\,
	datae => \ROM|ALT_INV_memROM~22_combout\,
	dataf => \ROM|ALT_INV_memROM~9_combout\,
	combout => \RAM64|ram~587_combout\);

-- Location: FF_X13_Y5_N38
\RAM64|ram~505\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM64|ram~818_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~505_q\);

-- Location: FF_X13_Y5_N8
\RAM64|ram~497\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM64|ram~810_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~497_q\);

-- Location: FF_X14_Y7_N46
\RAM64|ram~465\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM64|ram~746_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~465_q\);

-- Location: LABCELL_X20_Y5_N45
\RAM64|ram~473feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~473feeder_combout\ = ( \CPU|REGA|DOUT\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REGA|ALT_INV_DOUT\(2),
	combout => \RAM64|ram~473feeder_combout\);

-- Location: FF_X20_Y5_N47
\RAM64|ram~473\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM64|ram~473feeder_combout\,
	ena => \RAM64|ram~750_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~473_q\);

-- Location: MLABCELL_X13_Y5_N39
\RAM64|ram~585\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~585_combout\ = ( \ROM|memROM~22_combout\ & ( \ROM|memROM~9_combout\ & ( \RAM64|ram~505_q\ ) ) ) # ( !\ROM|memROM~22_combout\ & ( \ROM|memROM~9_combout\ & ( \RAM64|ram~473_q\ ) ) ) # ( \ROM|memROM~22_combout\ & ( !\ROM|memROM~9_combout\ & ( 
-- \RAM64|ram~497_q\ ) ) ) # ( !\ROM|memROM~22_combout\ & ( !\ROM|memROM~9_combout\ & ( \RAM64|ram~465_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001100110011001100000000111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~505_q\,
	datab => \RAM64|ALT_INV_ram~497_q\,
	datac => \RAM64|ALT_INV_ram~465_q\,
	datad => \RAM64|ALT_INV_ram~473_q\,
	datae => \ROM|ALT_INV_memROM~22_combout\,
	dataf => \ROM|ALT_INV_memROM~9_combout\,
	combout => \RAM64|ram~585_combout\);

-- Location: FF_X13_Y7_N56
\RAM64|ram~457\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM64|ram~790_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~457_q\);

-- Location: FF_X16_Y4_N17
\RAM64|ram~449\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM64|ram~782_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~449_q\);

-- Location: LABCELL_X14_Y2_N33
\RAM64|ram~417feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~417feeder_combout\ = ( \CPU|REGA|DOUT\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REGA|ALT_INV_DOUT\(2),
	combout => \RAM64|ram~417feeder_combout\);

-- Location: FF_X14_Y2_N34
\RAM64|ram~417\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM64|ram~417feeder_combout\,
	ena => \RAM64|ram~718_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~417_q\);

-- Location: FF_X12_Y7_N28
\RAM64|ram~425\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM64|ram~726_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~425_q\);

-- Location: MLABCELL_X13_Y7_N57
\RAM64|ram~586\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~586_combout\ = ( \ROM|memROM~22_combout\ & ( \ROM|memROM~9_combout\ & ( \RAM64|ram~457_q\ ) ) ) # ( !\ROM|memROM~22_combout\ & ( \ROM|memROM~9_combout\ & ( \RAM64|ram~425_q\ ) ) ) # ( \ROM|memROM~22_combout\ & ( !\ROM|memROM~9_combout\ & ( 
-- \RAM64|ram~449_q\ ) ) ) # ( !\ROM|memROM~22_combout\ & ( !\ROM|memROM~9_combout\ & ( \RAM64|ram~417_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001100110011001100000000111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~457_q\,
	datab => \RAM64|ALT_INV_ram~449_q\,
	datac => \RAM64|ALT_INV_ram~417_q\,
	datad => \RAM64|ALT_INV_ram~425_q\,
	datae => \ROM|ALT_INV_memROM~22_combout\,
	dataf => \ROM|ALT_INV_memROM~9_combout\,
	combout => \RAM64|ram~586_combout\);

-- Location: LABCELL_X12_Y3_N12
\RAM64|ram~588\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~588_combout\ = ( \RAM64|ram~585_combout\ & ( \RAM64|ram~586_combout\ & ( (!\ROM|memROM~28_combout\ & (((\ROM|memROM~7_combout\)) # (\RAM64|ram~584_combout\))) # (\ROM|memROM~28_combout\ & (((!\ROM|memROM~7_combout\) # 
-- (\RAM64|ram~587_combout\)))) ) ) ) # ( !\RAM64|ram~585_combout\ & ( \RAM64|ram~586_combout\ & ( (!\ROM|memROM~28_combout\ & (((\ROM|memROM~7_combout\)) # (\RAM64|ram~584_combout\))) # (\ROM|memROM~28_combout\ & (((\RAM64|ram~587_combout\ & 
-- \ROM|memROM~7_combout\)))) ) ) ) # ( \RAM64|ram~585_combout\ & ( !\RAM64|ram~586_combout\ & ( (!\ROM|memROM~28_combout\ & (\RAM64|ram~584_combout\ & ((!\ROM|memROM~7_combout\)))) # (\ROM|memROM~28_combout\ & (((!\ROM|memROM~7_combout\) # 
-- (\RAM64|ram~587_combout\)))) ) ) ) # ( !\RAM64|ram~585_combout\ & ( !\RAM64|ram~586_combout\ & ( (!\ROM|memROM~28_combout\ & (\RAM64|ram~584_combout\ & ((!\ROM|memROM~7_combout\)))) # (\ROM|memROM~28_combout\ & (((\RAM64|ram~587_combout\ & 
-- \ROM|memROM~7_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000000011011101110000001101000100110011110111011111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~584_combout\,
	datab => \ROM|ALT_INV_memROM~28_combout\,
	datac => \RAM64|ALT_INV_ram~587_combout\,
	datad => \ROM|ALT_INV_memROM~7_combout\,
	datae => \RAM64|ALT_INV_ram~585_combout\,
	dataf => \RAM64|ALT_INV_ram~586_combout\,
	combout => \RAM64|ram~588_combout\);

-- Location: LABCELL_X10_Y7_N48
\RAM64|ram~297feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~297feeder_combout\ = ( \CPU|REGA|DOUT\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REGA|ALT_INV_DOUT\(2),
	combout => \RAM64|ram~297feeder_combout\);

-- Location: FF_X10_Y7_N49
\RAM64|ram~297\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM64|ram~297feeder_combout\,
	ena => \RAM64|ram~710_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~297_q\);

-- Location: LABCELL_X14_Y6_N39
\RAM64|ram~361feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~361feeder_combout\ = ( \CPU|REGA|DOUT\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REGA|ALT_INV_DOUT\(2),
	combout => \RAM64|ram~361feeder_combout\);

-- Location: FF_X14_Y6_N41
\RAM64|ram~361\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM64|ram~361feeder_combout\,
	ena => \RAM64|ram~742_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~361_q\);

-- Location: FF_X17_Y7_N53
\RAM64|ram~393\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM64|ram~806_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~393_q\);

-- Location: FF_X17_Y7_N16
\RAM64|ram~329\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM64|ram~774_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~329_q\);

-- Location: MLABCELL_X13_Y5_N3
\RAM64|ram~577\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~577_combout\ = ( \ROM|memROM~22_combout\ & ( \ROM|memROM~28_combout\ & ( \RAM64|ram~393_q\ ) ) ) # ( !\ROM|memROM~22_combout\ & ( \ROM|memROM~28_combout\ & ( \RAM64|ram~361_q\ ) ) ) # ( \ROM|memROM~22_combout\ & ( !\ROM|memROM~28_combout\ & ( 
-- \RAM64|ram~329_q\ ) ) ) # ( !\ROM|memROM~22_combout\ & ( !\ROM|memROM~28_combout\ & ( \RAM64|ram~297_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000001111111100110011001100110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~297_q\,
	datab => \RAM64|ALT_INV_ram~361_q\,
	datac => \RAM64|ALT_INV_ram~393_q\,
	datad => \RAM64|ALT_INV_ram~329_q\,
	datae => \ROM|ALT_INV_memROM~22_combout\,
	dataf => \ROM|ALT_INV_memROM~28_combout\,
	combout => \RAM64|ram~577_combout\);

-- Location: FF_X17_Y2_N22
\RAM64|ram~273\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM64|ram~698_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~273_q\);

-- Location: FF_X16_Y2_N2
\RAM64|ram~305\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM64|ram~762_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~305_q\);

-- Location: FF_X18_Y7_N1
\RAM64|ram~337\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM64|ram~730_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~337_q\);

-- Location: FF_X17_Y4_N2
\RAM64|ram~369\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM64|ram~794_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~369_q\);

-- Location: LABCELL_X17_Y4_N0
\RAM64|ram~574\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~574_combout\ = ( \RAM64|ram~369_q\ & ( \ROM|memROM~28_combout\ & ( (\ROM|memROM~22_combout\) # (\RAM64|ram~337_q\) ) ) ) # ( !\RAM64|ram~369_q\ & ( \ROM|memROM~28_combout\ & ( (\RAM64|ram~337_q\ & !\ROM|memROM~22_combout\) ) ) ) # ( 
-- \RAM64|ram~369_q\ & ( !\ROM|memROM~28_combout\ & ( (!\ROM|memROM~22_combout\ & (\RAM64|ram~273_q\)) # (\ROM|memROM~22_combout\ & ((\RAM64|ram~305_q\))) ) ) ) # ( !\RAM64|ram~369_q\ & ( !\ROM|memROM~28_combout\ & ( (!\ROM|memROM~22_combout\ & 
-- (\RAM64|ram~273_q\)) # (\ROM|memROM~22_combout\ & ((\RAM64|ram~305_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010011001100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~273_q\,
	datab => \RAM64|ALT_INV_ram~305_q\,
	datac => \RAM64|ALT_INV_ram~337_q\,
	datad => \ROM|ALT_INV_memROM~22_combout\,
	datae => \RAM64|ALT_INV_ram~369_q\,
	dataf => \ROM|ALT_INV_memROM~28_combout\,
	combout => \RAM64|ram~574_combout\);

-- Location: FF_X17_Y4_N23
\RAM64|ram~321\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM64|ram~766_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~321_q\);

-- Location: LABCELL_X17_Y4_N54
\RAM64|ram~385feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~385feeder_combout\ = ( \CPU|REGA|DOUT\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REGA|ALT_INV_DOUT\(2),
	combout => \RAM64|ram~385feeder_combout\);

-- Location: FF_X17_Y4_N55
\RAM64|ram~385\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM64|ram~385feeder_combout\,
	ena => \RAM64|ram~798_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~385_q\);

-- Location: LABCELL_X16_Y7_N3
\RAM64|ram~353feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~353feeder_combout\ = ( \CPU|REGA|DOUT\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REGA|ALT_INV_DOUT\(2),
	combout => \RAM64|ram~353feeder_combout\);

-- Location: FF_X16_Y7_N4
\RAM64|ram~353\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM64|ram~353feeder_combout\,
	ena => \RAM64|ram~738_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~353_q\);

-- Location: LABCELL_X14_Y2_N3
\RAM64|ram~289feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~289feeder_combout\ = ( \CPU|REGA|DOUT\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REGA|ALT_INV_DOUT\(2),
	combout => \RAM64|ram~289feeder_combout\);

-- Location: FF_X14_Y2_N4
\RAM64|ram~289\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM64|ram~289feeder_combout\,
	ena => \RAM64|ram~702_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~289_q\);

-- Location: LABCELL_X17_Y4_N51
\RAM64|ram~576\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~576_combout\ = ( \ROM|memROM~22_combout\ & ( \ROM|memROM~28_combout\ & ( \RAM64|ram~385_q\ ) ) ) # ( !\ROM|memROM~22_combout\ & ( \ROM|memROM~28_combout\ & ( \RAM64|ram~353_q\ ) ) ) # ( \ROM|memROM~22_combout\ & ( !\ROM|memROM~28_combout\ & ( 
-- \RAM64|ram~321_q\ ) ) ) # ( !\ROM|memROM~22_combout\ & ( !\ROM|memROM~28_combout\ & ( \RAM64|ram~289_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111010101010101010100001111000011110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~321_q\,
	datab => \RAM64|ALT_INV_ram~385_q\,
	datac => \RAM64|ALT_INV_ram~353_q\,
	datad => \RAM64|ALT_INV_ram~289_q\,
	datae => \ROM|ALT_INV_memROM~22_combout\,
	dataf => \ROM|ALT_INV_memROM~28_combout\,
	combout => \RAM64|ram~576_combout\);

-- Location: FF_X18_Y4_N16
\RAM64|ram~345\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM64|ram~734_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~345_q\);

-- Location: FF_X12_Y4_N32
\RAM64|ram~377\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM64|ram~802_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~377_q\);

-- Location: FF_X12_Y6_N50
\RAM64|ram~313\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM64|ram~770_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~313_q\);

-- Location: FF_X18_Y4_N44
\RAM64|ram~281\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM64|ram~706_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~281_q\);

-- Location: LABCELL_X12_Y4_N33
\RAM64|ram~575\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~575_combout\ = ( \ROM|memROM~22_combout\ & ( \ROM|memROM~28_combout\ & ( \RAM64|ram~377_q\ ) ) ) # ( !\ROM|memROM~22_combout\ & ( \ROM|memROM~28_combout\ & ( \RAM64|ram~345_q\ ) ) ) # ( \ROM|memROM~22_combout\ & ( !\ROM|memROM~28_combout\ & ( 
-- \RAM64|ram~313_q\ ) ) ) # ( !\ROM|memROM~22_combout\ & ( !\ROM|memROM~28_combout\ & ( \RAM64|ram~281_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~345_q\,
	datab => \RAM64|ALT_INV_ram~377_q\,
	datac => \RAM64|ALT_INV_ram~313_q\,
	datad => \RAM64|ALT_INV_ram~281_q\,
	datae => \ROM|ALT_INV_memROM~22_combout\,
	dataf => \ROM|ALT_INV_memROM~28_combout\,
	combout => \RAM64|ram~575_combout\);

-- Location: LABCELL_X12_Y3_N36
\RAM64|ram~578\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~578_combout\ = ( \RAM64|ram~576_combout\ & ( \RAM64|ram~575_combout\ & ( (!\ROM|memROM~9_combout\ & (((\ROM|memROM~7_combout\) # (\RAM64|ram~574_combout\)))) # (\ROM|memROM~9_combout\ & (((!\ROM|memROM~7_combout\)) # (\RAM64|ram~577_combout\))) 
-- ) ) ) # ( !\RAM64|ram~576_combout\ & ( \RAM64|ram~575_combout\ & ( (!\ROM|memROM~9_combout\ & (((\RAM64|ram~574_combout\ & !\ROM|memROM~7_combout\)))) # (\ROM|memROM~9_combout\ & (((!\ROM|memROM~7_combout\)) # (\RAM64|ram~577_combout\))) ) ) ) # ( 
-- \RAM64|ram~576_combout\ & ( !\RAM64|ram~575_combout\ & ( (!\ROM|memROM~9_combout\ & (((\ROM|memROM~7_combout\) # (\RAM64|ram~574_combout\)))) # (\ROM|memROM~9_combout\ & (\RAM64|ram~577_combout\ & ((\ROM|memROM~7_combout\)))) ) ) ) # ( 
-- !\RAM64|ram~576_combout\ & ( !\RAM64|ram~575_combout\ & ( (!\ROM|memROM~9_combout\ & (((\RAM64|ram~574_combout\ & !\ROM|memROM~7_combout\)))) # (\ROM|memROM~9_combout\ & (\RAM64|ram~577_combout\ & ((\ROM|memROM~7_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000010001000011001101110100111111000100010011111111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~577_combout\,
	datab => \ROM|ALT_INV_memROM~9_combout\,
	datac => \RAM64|ALT_INV_ram~574_combout\,
	datad => \ROM|ALT_INV_memROM~7_combout\,
	datae => \RAM64|ALT_INV_ram~576_combout\,
	dataf => \RAM64|ALT_INV_ram~575_combout\,
	combout => \RAM64|ram~578_combout\);

-- Location: FF_X16_Y2_N11
\RAM64|ram~177\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM64|ram~776_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~177_q\);

-- Location: FF_X13_Y6_N19
\RAM64|ram~161\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM64|ram~716_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~161_q\);

-- Location: FF_X17_Y2_N47
\RAM64|ram~145\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM64|ram~712_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~145_q\);

-- Location: FF_X16_Y4_N41
\RAM64|ram~193\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM64|ram~780_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~193_q\);

-- Location: LABCELL_X16_Y4_N39
\RAM64|ram~579\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~579_combout\ = ( \RAM64|ram~193_q\ & ( \ROM|memROM~7_combout\ & ( (\ROM|memROM~22_combout\) # (\RAM64|ram~161_q\) ) ) ) # ( !\RAM64|ram~193_q\ & ( \ROM|memROM~7_combout\ & ( (\RAM64|ram~161_q\ & !\ROM|memROM~22_combout\) ) ) ) # ( 
-- \RAM64|ram~193_q\ & ( !\ROM|memROM~7_combout\ & ( (!\ROM|memROM~22_combout\ & ((\RAM64|ram~145_q\))) # (\ROM|memROM~22_combout\ & (\RAM64|ram~177_q\)) ) ) ) # ( !\RAM64|ram~193_q\ & ( !\ROM|memROM~7_combout\ & ( (!\ROM|memROM~22_combout\ & 
-- ((\RAM64|ram~145_q\))) # (\ROM|memROM~22_combout\ & (\RAM64|ram~177_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~177_q\,
	datab => \RAM64|ALT_INV_ram~161_q\,
	datac => \ROM|ALT_INV_memROM~22_combout\,
	datad => \RAM64|ALT_INV_ram~145_q\,
	datae => \RAM64|ALT_INV_ram~193_q\,
	dataf => \ROM|ALT_INV_memROM~7_combout\,
	combout => \RAM64|ram~579_combout\);

-- Location: FF_X20_Y6_N26
\RAM64|ram~169\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM64|ram~724_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~169_q\);

-- Location: FF_X20_Y6_N44
\RAM64|ram~185\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM64|ram~784_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~185_q\);

-- Location: FF_X18_Y5_N52
\RAM64|ram~153\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM64|ram~720_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~153_q\);

-- Location: FF_X20_Y6_N38
\RAM64|ram~201\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM64|ram~788_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~201_q\);

-- Location: LABCELL_X20_Y6_N36
\RAM64|ram~581\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~581_combout\ = ( \RAM64|ram~201_q\ & ( \ROM|memROM~7_combout\ & ( (\ROM|memROM~22_combout\) # (\RAM64|ram~169_q\) ) ) ) # ( !\RAM64|ram~201_q\ & ( \ROM|memROM~7_combout\ & ( (\RAM64|ram~169_q\ & !\ROM|memROM~22_combout\) ) ) ) # ( 
-- \RAM64|ram~201_q\ & ( !\ROM|memROM~7_combout\ & ( (!\ROM|memROM~22_combout\ & ((\RAM64|ram~153_q\))) # (\ROM|memROM~22_combout\ & (\RAM64|ram~185_q\)) ) ) ) # ( !\RAM64|ram~201_q\ & ( !\ROM|memROM~7_combout\ & ( (!\ROM|memROM~22_combout\ & 
-- ((\RAM64|ram~153_q\))) # (\ROM|memROM~22_combout\ & (\RAM64|ram~185_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001101010101000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~169_q\,
	datab => \RAM64|ALT_INV_ram~185_q\,
	datac => \RAM64|ALT_INV_ram~153_q\,
	datad => \ROM|ALT_INV_memROM~22_combout\,
	datae => \RAM64|ALT_INV_ram~201_q\,
	dataf => \ROM|ALT_INV_memROM~7_combout\,
	combout => \RAM64|ram~581_combout\);

-- Location: FF_X18_Y2_N2
\RAM64|ram~249\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM64|ram~816_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~249_q\);

-- Location: FF_X20_Y4_N46
\RAM64|ram~217\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM64|ram~748_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~217_q\);

-- Location: MLABCELL_X18_Y1_N0
\RAM64|ram~233feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~233feeder_combout\ = ( \CPU|REGA|DOUT\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REGA|ALT_INV_DOUT\(2),
	combout => \RAM64|ram~233feeder_combout\);

-- Location: FF_X18_Y1_N1
\RAM64|ram~233\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM64|ram~233feeder_combout\,
	ena => \RAM64|ram~756_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~233_q\);

-- Location: FF_X18_Y2_N56
\RAM64|ram~265\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM64|ram~820_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~265_q\);

-- Location: MLABCELL_X18_Y2_N54
\RAM64|ram~582\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~582_combout\ = ( \RAM64|ram~265_q\ & ( \ROM|memROM~7_combout\ & ( (\ROM|memROM~22_combout\) # (\RAM64|ram~233_q\) ) ) ) # ( !\RAM64|ram~265_q\ & ( \ROM|memROM~7_combout\ & ( (\RAM64|ram~233_q\ & !\ROM|memROM~22_combout\) ) ) ) # ( 
-- \RAM64|ram~265_q\ & ( !\ROM|memROM~7_combout\ & ( (!\ROM|memROM~22_combout\ & ((\RAM64|ram~217_q\))) # (\ROM|memROM~22_combout\ & (\RAM64|ram~249_q\)) ) ) ) # ( !\RAM64|ram~265_q\ & ( !\ROM|memROM~7_combout\ & ( (!\ROM|memROM~22_combout\ & 
-- ((\RAM64|ram~217_q\))) # (\ROM|memROM~22_combout\ & (\RAM64|ram~249_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101001100110101010100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~249_q\,
	datab => \RAM64|ALT_INV_ram~217_q\,
	datac => \RAM64|ALT_INV_ram~233_q\,
	datad => \ROM|ALT_INV_memROM~22_combout\,
	datae => \RAM64|ALT_INV_ram~265_q\,
	dataf => \ROM|ALT_INV_memROM~7_combout\,
	combout => \RAM64|ram~582_combout\);

-- Location: LABCELL_X14_Y4_N0
\RAM64|ram~225feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~225feeder_combout\ = ( \CPU|REGA|DOUT\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REGA|ALT_INV_DOUT\(2),
	combout => \RAM64|ram~225feeder_combout\);

-- Location: FF_X14_Y4_N1
\RAM64|ram~225\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM64|ram~225feeder_combout\,
	ena => \RAM64|ram~752_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~225_q\);

-- Location: FF_X18_Y2_N29
\RAM64|ram~241\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM64|ram~808_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~241_q\);

-- Location: FF_X14_Y7_N28
\RAM64|ram~209\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM64|ram~744_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~209_q\);

-- Location: FF_X18_Y4_N2
\RAM64|ram~257\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM64|ram~812_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~257_q\);

-- Location: MLABCELL_X18_Y4_N0
\RAM64|ram~580\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~580_combout\ = ( \RAM64|ram~257_q\ & ( \ROM|memROM~22_combout\ & ( (\ROM|memROM~7_combout\) # (\RAM64|ram~241_q\) ) ) ) # ( !\RAM64|ram~257_q\ & ( \ROM|memROM~22_combout\ & ( (\RAM64|ram~241_q\ & !\ROM|memROM~7_combout\) ) ) ) # ( 
-- \RAM64|ram~257_q\ & ( !\ROM|memROM~22_combout\ & ( (!\ROM|memROM~7_combout\ & ((\RAM64|ram~209_q\))) # (\ROM|memROM~7_combout\ & (\RAM64|ram~225_q\)) ) ) ) # ( !\RAM64|ram~257_q\ & ( !\ROM|memROM~22_combout\ & ( (!\ROM|memROM~7_combout\ & 
-- ((\RAM64|ram~209_q\))) # (\ROM|memROM~7_combout\ & (\RAM64|ram~225_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~225_q\,
	datab => \RAM64|ALT_INV_ram~241_q\,
	datac => \RAM64|ALT_INV_ram~209_q\,
	datad => \ROM|ALT_INV_memROM~7_combout\,
	datae => \RAM64|ALT_INV_ram~257_q\,
	dataf => \ROM|ALT_INV_memROM~22_combout\,
	combout => \RAM64|ram~580_combout\);

-- Location: LABCELL_X12_Y3_N30
\RAM64|ram~583\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~583_combout\ = ( \RAM64|ram~582_combout\ & ( \RAM64|ram~580_combout\ & ( ((!\ROM|memROM~9_combout\ & (\RAM64|ram~579_combout\)) # (\ROM|memROM~9_combout\ & ((\RAM64|ram~581_combout\)))) # (\ROM|memROM~28_combout\) ) ) ) # ( 
-- !\RAM64|ram~582_combout\ & ( \RAM64|ram~580_combout\ & ( (!\ROM|memROM~9_combout\ & (((\ROM|memROM~28_combout\)) # (\RAM64|ram~579_combout\))) # (\ROM|memROM~9_combout\ & (((!\ROM|memROM~28_combout\ & \RAM64|ram~581_combout\)))) ) ) ) # ( 
-- \RAM64|ram~582_combout\ & ( !\RAM64|ram~580_combout\ & ( (!\ROM|memROM~9_combout\ & (\RAM64|ram~579_combout\ & (!\ROM|memROM~28_combout\))) # (\ROM|memROM~9_combout\ & (((\RAM64|ram~581_combout\) # (\ROM|memROM~28_combout\)))) ) ) ) # ( 
-- !\RAM64|ram~582_combout\ & ( !\RAM64|ram~580_combout\ & ( (!\ROM|memROM~28_combout\ & ((!\ROM|memROM~9_combout\ & (\RAM64|ram~579_combout\)) # (\ROM|memROM~9_combout\ & ((\RAM64|ram~581_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000001110000001001010111010100101010011110100010111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~9_combout\,
	datab => \RAM64|ALT_INV_ram~579_combout\,
	datac => \ROM|ALT_INV_memROM~28_combout\,
	datad => \RAM64|ALT_INV_ram~581_combout\,
	datae => \RAM64|ALT_INV_ram~582_combout\,
	dataf => \RAM64|ALT_INV_ram~580_combout\,
	combout => \RAM64|ram~583_combout\);

-- Location: LABCELL_X12_Y3_N42
\RAM64|ram~589\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~589_combout\ = ( \RAM64|ram~578_combout\ & ( \RAM64|ram~583_combout\ & ( (!\ROM|memROM~20_combout\ & (((\ROM|memROM~3_combout\)) # (\RAM64|ram~573_combout\))) # (\ROM|memROM~20_combout\ & (((!\ROM|memROM~3_combout\) # 
-- (\RAM64|ram~588_combout\)))) ) ) ) # ( !\RAM64|ram~578_combout\ & ( \RAM64|ram~583_combout\ & ( (!\ROM|memROM~20_combout\ & (\RAM64|ram~573_combout\ & (!\ROM|memROM~3_combout\))) # (\ROM|memROM~20_combout\ & (((!\ROM|memROM~3_combout\) # 
-- (\RAM64|ram~588_combout\)))) ) ) ) # ( \RAM64|ram~578_combout\ & ( !\RAM64|ram~583_combout\ & ( (!\ROM|memROM~20_combout\ & (((\ROM|memROM~3_combout\)) # (\RAM64|ram~573_combout\))) # (\ROM|memROM~20_combout\ & (((\ROM|memROM~3_combout\ & 
-- \RAM64|ram~588_combout\)))) ) ) ) # ( !\RAM64|ram~578_combout\ & ( !\RAM64|ram~583_combout\ & ( (!\ROM|memROM~20_combout\ & (\RAM64|ram~573_combout\ & (!\ROM|memROM~3_combout\))) # (\ROM|memROM~20_combout\ & (((\ROM|memROM~3_combout\ & 
-- \RAM64|ram~588_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100101001010100010111101110000011101010111101001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~20_combout\,
	datab => \RAM64|ALT_INV_ram~573_combout\,
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datad => \RAM64|ALT_INV_ram~588_combout\,
	datae => \RAM64|ALT_INV_ram~578_combout\,
	dataf => \RAM64|ALT_INV_ram~583_combout\,
	combout => \RAM64|ram~589_combout\);

-- Location: LABCELL_X12_Y3_N48
\DATA_IN[2]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATA_IN[2]~7_combout\ = ( \AND_SW0_7|saida~3_combout\ & ( \RAM64|ram~589_combout\ & ( (\RAM64|dado_out~0_combout\) # (\SW[2]~input_o\) ) ) ) # ( !\AND_SW0_7|saida~3_combout\ & ( \RAM64|ram~589_combout\ & ( \RAM64|dado_out~0_combout\ ) ) ) # ( 
-- \AND_SW0_7|saida~3_combout\ & ( !\RAM64|ram~589_combout\ & ( \SW[2]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100001111000011110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[2]~input_o\,
	datac => \RAM64|ALT_INV_dado_out~0_combout\,
	datae => \AND_SW0_7|ALT_INV_saida~3_combout\,
	dataf => \RAM64|ALT_INV_ram~589_combout\,
	combout => \DATA_IN[2]~7_combout\);

-- Location: LABCELL_X17_Y6_N9
\ROM|memROM~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~31_combout\ = ( \ROM|memROM~4_combout\ & ( ((\ROM|memROM~0_combout\ & (!\CPU|PC|DOUT\(1) & \ROM|memROM~6_combout\))) # (\ROM|memROM~5_combout\) ) ) # ( !\ROM|memROM~4_combout\ & ( (\ROM|memROM~0_combout\ & (!\CPU|PC|DOUT\(1) & 
-- \ROM|memROM~6_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100000000000100010000001111010011110000111101001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \ROM|ALT_INV_memROM~5_combout\,
	datad => \ROM|ALT_INV_memROM~6_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \ROM|memROM~31_combout\);

-- Location: IOIBUF_X33_Y0_N58
\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: FF_X14_Y6_N29
\RAM64|ram~232\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM64|ram~756_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~232_q\);

-- Location: FF_X14_Y6_N47
\RAM64|ram~360\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM64|ram~742_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~360_q\);

-- Location: FF_X13_Y5_N19
\RAM64|ram~104\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM64|ram~740_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~104_q\);

-- Location: FF_X14_Y6_N50
\RAM64|ram~488\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM64|ram~758_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~488_q\);

-- Location: LABCELL_X14_Y6_N51
\RAM64|ram~564\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~564_combout\ = ( \ROM|memROM~20_combout\ & ( \ROM|memROM~3_combout\ & ( \RAM64|ram~488_q\ ) ) ) # ( !\ROM|memROM~20_combout\ & ( \ROM|memROM~3_combout\ & ( \RAM64|ram~360_q\ ) ) ) # ( \ROM|memROM~20_combout\ & ( !\ROM|memROM~3_combout\ & ( 
-- \RAM64|ram~232_q\ ) ) ) # ( !\ROM|memROM~20_combout\ & ( !\ROM|memROM~3_combout\ & ( \RAM64|ram~104_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010101010101010100110011001100110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~232_q\,
	datab => \RAM64|ALT_INV_ram~360_q\,
	datac => \RAM64|ALT_INV_ram~104_q\,
	datad => \RAM64|ALT_INV_ram~488_q\,
	datae => \ROM|ALT_INV_memROM~20_combout\,
	dataf => \ROM|ALT_INV_memROM~3_combout\,
	combout => \RAM64|ram~564_combout\);

-- Location: FF_X13_Y3_N10
\RAM64|ram~200\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM64|ram~788_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~200_q\);

-- Location: FF_X17_Y7_N10
\RAM64|ram~328\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM64|ram~774_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~328_q\);

-- Location: FF_X16_Y8_N1
\RAM64|ram~72\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM64|ram~772_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~72_q\);

-- Location: FF_X14_Y3_N14
\RAM64|ram~456\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM64|ram~790_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~456_q\);

-- Location: LABCELL_X14_Y3_N12
\RAM64|ram~565\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~565_combout\ = ( \RAM64|ram~456_q\ & ( \ROM|memROM~3_combout\ & ( (\ROM|memROM~20_combout\) # (\RAM64|ram~328_q\) ) ) ) # ( !\RAM64|ram~456_q\ & ( \ROM|memROM~3_combout\ & ( (\RAM64|ram~328_q\ & !\ROM|memROM~20_combout\) ) ) ) # ( 
-- \RAM64|ram~456_q\ & ( !\ROM|memROM~3_combout\ & ( (!\ROM|memROM~20_combout\ & ((\RAM64|ram~72_q\))) # (\ROM|memROM~20_combout\ & (\RAM64|ram~200_q\)) ) ) ) # ( !\RAM64|ram~456_q\ & ( !\ROM|memROM~3_combout\ & ( (!\ROM|memROM~20_combout\ & 
-- ((\RAM64|ram~72_q\))) # (\ROM|memROM~20_combout\ & (\RAM64|ram~200_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~200_q\,
	datab => \RAM64|ALT_INV_ram~328_q\,
	datac => \ROM|ALT_INV_memROM~20_combout\,
	datad => \RAM64|ALT_INV_ram~72_q\,
	datae => \RAM64|ALT_INV_ram~456_q\,
	dataf => \ROM|ALT_INV_memROM~3_combout\,
	combout => \RAM64|ram~565_combout\);

-- Location: FF_X13_Y3_N19
\RAM64|ram~264\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM64|ram~820_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~264_q\);

-- Location: FF_X12_Y5_N37
\RAM64|ram~136\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM64|ram~804_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~136_q\);

-- Location: FF_X17_Y3_N29
\RAM64|ram~392\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM64|ram~806_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~392_q\);

-- Location: FF_X14_Y3_N2
\RAM64|ram~520\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM64|ram~822_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~520_q\);

-- Location: LABCELL_X14_Y3_N0
\RAM64|ram~566\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~566_combout\ = ( \RAM64|ram~520_q\ & ( \ROM|memROM~20_combout\ & ( (\ROM|memROM~3_combout\) # (\RAM64|ram~264_q\) ) ) ) # ( !\RAM64|ram~520_q\ & ( \ROM|memROM~20_combout\ & ( (\RAM64|ram~264_q\ & !\ROM|memROM~3_combout\) ) ) ) # ( 
-- \RAM64|ram~520_q\ & ( !\ROM|memROM~20_combout\ & ( (!\ROM|memROM~3_combout\ & (\RAM64|ram~136_q\)) # (\ROM|memROM~3_combout\ & ((\RAM64|ram~392_q\))) ) ) ) # ( !\RAM64|ram~520_q\ & ( !\ROM|memROM~20_combout\ & ( (!\ROM|memROM~3_combout\ & 
-- (\RAM64|ram~136_q\)) # (\ROM|memROM~3_combout\ & ((\RAM64|ram~392_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~264_q\,
	datab => \RAM64|ALT_INV_ram~136_q\,
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datad => \RAM64|ALT_INV_ram~392_q\,
	datae => \RAM64|ALT_INV_ram~520_q\,
	dataf => \ROM|ALT_INV_memROM~20_combout\,
	combout => \RAM64|ram~566_combout\);

-- Location: FF_X14_Y5_N20
\RAM64|ram~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM64|ram~708_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~40_q\);

-- Location: FF_X14_Y5_N25
\RAM64|ram~168\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM64|ram~724_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~168_q\);

-- Location: FF_X17_Y7_N47
\RAM64|ram~296\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM64|ram~710_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~296_q\);

-- Location: FF_X14_Y5_N32
\RAM64|ram~424\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM64|ram~726_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~424_q\);

-- Location: LABCELL_X14_Y5_N30
\RAM64|ram~563\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~563_combout\ = ( \RAM64|ram~424_q\ & ( \ROM|memROM~3_combout\ & ( (\RAM64|ram~296_q\) # (\ROM|memROM~20_combout\) ) ) ) # ( !\RAM64|ram~424_q\ & ( \ROM|memROM~3_combout\ & ( (!\ROM|memROM~20_combout\ & \RAM64|ram~296_q\) ) ) ) # ( 
-- \RAM64|ram~424_q\ & ( !\ROM|memROM~3_combout\ & ( (!\ROM|memROM~20_combout\ & (\RAM64|ram~40_q\)) # (\ROM|memROM~20_combout\ & ((\RAM64|ram~168_q\))) ) ) ) # ( !\RAM64|ram~424_q\ & ( !\ROM|memROM~3_combout\ & ( (!\ROM|memROM~20_combout\ & 
-- (\RAM64|ram~40_q\)) # (\ROM|memROM~20_combout\ & ((\RAM64|ram~168_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001100000000111100000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~40_q\,
	datab => \RAM64|ALT_INV_ram~168_q\,
	datac => \ROM|ALT_INV_memROM~20_combout\,
	datad => \RAM64|ALT_INV_ram~296_q\,
	datae => \RAM64|ALT_INV_ram~424_q\,
	dataf => \ROM|ALT_INV_memROM~3_combout\,
	combout => \RAM64|ram~563_combout\);

-- Location: LABCELL_X14_Y3_N6
\RAM64|ram~567\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~567_combout\ = ( \RAM64|ram~566_combout\ & ( \RAM64|ram~563_combout\ & ( (!\ROM|memROM~28_combout\ & (((!\ROM|memROM~22_combout\) # (\RAM64|ram~565_combout\)))) # (\ROM|memROM~28_combout\ & (((\ROM|memROM~22_combout\)) # 
-- (\RAM64|ram~564_combout\))) ) ) ) # ( !\RAM64|ram~566_combout\ & ( \RAM64|ram~563_combout\ & ( (!\ROM|memROM~28_combout\ & (((!\ROM|memROM~22_combout\) # (\RAM64|ram~565_combout\)))) # (\ROM|memROM~28_combout\ & (\RAM64|ram~564_combout\ & 
-- (!\ROM|memROM~22_combout\))) ) ) ) # ( \RAM64|ram~566_combout\ & ( !\RAM64|ram~563_combout\ & ( (!\ROM|memROM~28_combout\ & (((\ROM|memROM~22_combout\ & \RAM64|ram~565_combout\)))) # (\ROM|memROM~28_combout\ & (((\ROM|memROM~22_combout\)) # 
-- (\RAM64|ram~564_combout\))) ) ) ) # ( !\RAM64|ram~566_combout\ & ( !\RAM64|ram~563_combout\ & ( (!\ROM|memROM~28_combout\ & (((\ROM|memROM~22_combout\ & \RAM64|ram~565_combout\)))) # (\ROM|memROM~28_combout\ & (\RAM64|ram~564_combout\ & 
-- (!\ROM|memROM~22_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011010000101010001111110110000101110101011010110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~28_combout\,
	datab => \RAM64|ALT_INV_ram~564_combout\,
	datac => \ROM|ALT_INV_memROM~22_combout\,
	datad => \RAM64|ALT_INV_ram~565_combout\,
	datae => \RAM64|ALT_INV_ram~566_combout\,
	dataf => \RAM64|ALT_INV_ram~563_combout\,
	combout => \RAM64|ram~567_combout\);

-- Location: FF_X18_Y4_N52
\RAM64|ram~256\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM64|ram~812_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~256_q\);

-- Location: LABCELL_X12_Y5_N9
\RAM64|ram~128feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~128feeder_combout\ = ( \CPU|REGA|DOUT\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REGA|ALT_INV_DOUT\(1),
	combout => \RAM64|ram~128feeder_combout\);

-- Location: FF_X12_Y5_N10
\RAM64|ram~128\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM64|ram~128feeder_combout\,
	ena => \RAM64|ram~796_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~128_q\);

-- Location: LABCELL_X17_Y4_N57
\RAM64|ram~384feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~384feeder_combout\ = ( \CPU|REGA|DOUT\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REGA|ALT_INV_DOUT\(1),
	combout => \RAM64|ram~384feeder_combout\);

-- Location: FF_X17_Y4_N58
\RAM64|ram~384\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM64|ram~384feeder_combout\,
	ena => \RAM64|ram~798_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~384_q\);

-- Location: FF_X17_Y3_N56
\RAM64|ram~512\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM64|ram~814_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~512_q\);

-- Location: LABCELL_X17_Y3_N57
\RAM64|ram~556\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~556_combout\ = ( \ROM|memROM~20_combout\ & ( \ROM|memROM~3_combout\ & ( \RAM64|ram~512_q\ ) ) ) # ( !\ROM|memROM~20_combout\ & ( \ROM|memROM~3_combout\ & ( \RAM64|ram~384_q\ ) ) ) # ( \ROM|memROM~20_combout\ & ( !\ROM|memROM~3_combout\ & ( 
-- \RAM64|ram~256_q\ ) ) ) # ( !\ROM|memROM~20_combout\ & ( !\ROM|memROM~3_combout\ & ( \RAM64|ram~128_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~256_q\,
	datab => \RAM64|ALT_INV_ram~128_q\,
	datac => \RAM64|ALT_INV_ram~384_q\,
	datad => \RAM64|ALT_INV_ram~512_q\,
	datae => \ROM|ALT_INV_memROM~20_combout\,
	dataf => \ROM|ALT_INV_memROM~3_combout\,
	combout => \RAM64|ram~556_combout\);

-- Location: FF_X14_Y4_N50
\RAM64|ram~96\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM64|ram~736_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~96_q\);

-- Location: FF_X14_Y4_N32
\RAM64|ram~224\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM64|ram~752_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~224_q\);

-- Location: FF_X14_Y1_N44
\RAM64|ram~352\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM64|ram~738_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~352_q\);

-- Location: FF_X14_Y4_N7
\RAM64|ram~480\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM64|ram~754_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~480_q\);

-- Location: LABCELL_X14_Y4_N9
\RAM64|ram~554\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~554_combout\ = ( \RAM64|ram~480_q\ & ( \ROM|memROM~3_combout\ & ( (\RAM64|ram~352_q\) # (\ROM|memROM~20_combout\) ) ) ) # ( !\RAM64|ram~480_q\ & ( \ROM|memROM~3_combout\ & ( (!\ROM|memROM~20_combout\ & \RAM64|ram~352_q\) ) ) ) # ( 
-- \RAM64|ram~480_q\ & ( !\ROM|memROM~3_combout\ & ( (!\ROM|memROM~20_combout\ & (\RAM64|ram~96_q\)) # (\ROM|memROM~20_combout\ & ((\RAM64|ram~224_q\))) ) ) ) # ( !\RAM64|ram~480_q\ & ( !\ROM|memROM~3_combout\ & ( (!\ROM|memROM~20_combout\ & 
-- (\RAM64|ram~96_q\)) # (\ROM|memROM~20_combout\ & ((\RAM64|ram~224_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001100000000111100000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~96_q\,
	datab => \RAM64|ALT_INV_ram~224_q\,
	datac => \ROM|ALT_INV_memROM~20_combout\,
	datad => \RAM64|ALT_INV_ram~352_q\,
	datae => \RAM64|ALT_INV_ram~480_q\,
	dataf => \ROM|ALT_INV_memROM~3_combout\,
	combout => \RAM64|ram~554_combout\);

-- Location: LABCELL_X14_Y2_N54
\RAM64|ram~160feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~160feeder_combout\ = ( \CPU|REGA|DOUT\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REGA|ALT_INV_DOUT\(1),
	combout => \RAM64|ram~160feeder_combout\);

-- Location: FF_X14_Y2_N56
\RAM64|ram~160\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM64|ram~160feeder_combout\,
	ena => \RAM64|ram~716_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~160_q\);

-- Location: FF_X14_Y1_N4
\RAM64|ram~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM64|ram~700_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~32_q\);

-- Location: FF_X14_Y2_N20
\RAM64|ram~288\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM64|ram~702_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~288_q\);

-- Location: FF_X14_Y2_N26
\RAM64|ram~416\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM64|ram~718_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~416_q\);

-- Location: LABCELL_X14_Y2_N24
\RAM64|ram~553\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~553_combout\ = ( \RAM64|ram~416_q\ & ( \ROM|memROM~3_combout\ & ( (\ROM|memROM~20_combout\) # (\RAM64|ram~288_q\) ) ) ) # ( !\RAM64|ram~416_q\ & ( \ROM|memROM~3_combout\ & ( (\RAM64|ram~288_q\ & !\ROM|memROM~20_combout\) ) ) ) # ( 
-- \RAM64|ram~416_q\ & ( !\ROM|memROM~3_combout\ & ( (!\ROM|memROM~20_combout\ & ((\RAM64|ram~32_q\))) # (\ROM|memROM~20_combout\ & (\RAM64|ram~160_q\)) ) ) ) # ( !\RAM64|ram~416_q\ & ( !\ROM|memROM~3_combout\ & ( (!\ROM|memROM~20_combout\ & 
-- ((\RAM64|ram~32_q\))) # (\ROM|memROM~20_combout\ & (\RAM64|ram~160_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101001100110101010100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~160_q\,
	datab => \RAM64|ALT_INV_ram~32_q\,
	datac => \RAM64|ALT_INV_ram~288_q\,
	datad => \ROM|ALT_INV_memROM~20_combout\,
	datae => \RAM64|ALT_INV_ram~416_q\,
	dataf => \ROM|ALT_INV_memROM~3_combout\,
	combout => \RAM64|ram~553_combout\);

-- Location: FF_X19_Y6_N47
\RAM64|ram~320\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM64|ram~766_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~320_q\);

-- Location: FF_X16_Y4_N8
\RAM64|ram~192\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM64|ram~780_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~192_q\);

-- Location: FF_X16_Y4_N20
\RAM64|ram~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM64|ram~764_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~64_q\);

-- Location: FF_X16_Y4_N44
\RAM64|ram~448\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM64|ram~782_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~448_q\);

-- Location: LABCELL_X16_Y4_N42
\RAM64|ram~555\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~555_combout\ = ( \RAM64|ram~448_q\ & ( \ROM|memROM~3_combout\ & ( (\ROM|memROM~20_combout\) # (\RAM64|ram~320_q\) ) ) ) # ( !\RAM64|ram~448_q\ & ( \ROM|memROM~3_combout\ & ( (\RAM64|ram~320_q\ & !\ROM|memROM~20_combout\) ) ) ) # ( 
-- \RAM64|ram~448_q\ & ( !\ROM|memROM~3_combout\ & ( (!\ROM|memROM~20_combout\ & ((\RAM64|ram~64_q\))) # (\ROM|memROM~20_combout\ & (\RAM64|ram~192_q\)) ) ) ) # ( !\RAM64|ram~448_q\ & ( !\ROM|memROM~3_combout\ & ( (!\ROM|memROM~20_combout\ & 
-- ((\RAM64|ram~64_q\))) # (\ROM|memROM~20_combout\ & (\RAM64|ram~192_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001101010101000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~320_q\,
	datab => \RAM64|ALT_INV_ram~192_q\,
	datac => \RAM64|ALT_INV_ram~64_q\,
	datad => \ROM|ALT_INV_memROM~20_combout\,
	datae => \RAM64|ALT_INV_ram~448_q\,
	dataf => \ROM|ALT_INV_memROM~3_combout\,
	combout => \RAM64|ram~555_combout\);

-- Location: LABCELL_X14_Y3_N54
\RAM64|ram~557\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~557_combout\ = ( \RAM64|ram~553_combout\ & ( \RAM64|ram~555_combout\ & ( (!\ROM|memROM~28_combout\) # ((!\ROM|memROM~22_combout\ & ((\RAM64|ram~554_combout\))) # (\ROM|memROM~22_combout\ & (\RAM64|ram~556_combout\))) ) ) ) # ( 
-- !\RAM64|ram~553_combout\ & ( \RAM64|ram~555_combout\ & ( (!\ROM|memROM~28_combout\ & (\ROM|memROM~22_combout\)) # (\ROM|memROM~28_combout\ & ((!\ROM|memROM~22_combout\ & ((\RAM64|ram~554_combout\))) # (\ROM|memROM~22_combout\ & 
-- (\RAM64|ram~556_combout\)))) ) ) ) # ( \RAM64|ram~553_combout\ & ( !\RAM64|ram~555_combout\ & ( (!\ROM|memROM~28_combout\ & (!\ROM|memROM~22_combout\)) # (\ROM|memROM~28_combout\ & ((!\ROM|memROM~22_combout\ & ((\RAM64|ram~554_combout\))) # 
-- (\ROM|memROM~22_combout\ & (\RAM64|ram~556_combout\)))) ) ) ) # ( !\RAM64|ram~553_combout\ & ( !\RAM64|ram~555_combout\ & ( (\ROM|memROM~28_combout\ & ((!\ROM|memROM~22_combout\ & ((\RAM64|ram~554_combout\))) # (\ROM|memROM~22_combout\ & 
-- (\RAM64|ram~556_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101100010011100110100100011011001111010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~28_combout\,
	datab => \ROM|ALT_INV_memROM~22_combout\,
	datac => \RAM64|ALT_INV_ram~556_combout\,
	datad => \RAM64|ALT_INV_ram~554_combout\,
	datae => \RAM64|ALT_INV_ram~553_combout\,
	dataf => \RAM64|ALT_INV_ram~555_combout\,
	combout => \RAM64|ram~557_combout\);

-- Location: LABCELL_X19_Y7_N39
\RAM64|ram~112feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~112feeder_combout\ = ( \CPU|REGA|DOUT\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REGA|ALT_INV_DOUT\(1),
	combout => \RAM64|ram~112feeder_combout\);

-- Location: FF_X19_Y7_N41
\RAM64|ram~112\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM64|ram~112feeder_combout\,
	ena => \RAM64|ram~792_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~112_q\);

-- Location: FF_X18_Y2_N7
\RAM64|ram~240\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM64|ram~808_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~240_q\);

-- Location: LABCELL_X17_Y4_N33
\RAM64|ram~368feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~368feeder_combout\ = ( \CPU|REGA|DOUT\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REGA|ALT_INV_DOUT\(1),
	combout => \RAM64|ram~368feeder_combout\);

-- Location: FF_X17_Y4_N34
\RAM64|ram~368\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM64|ram~368feeder_combout\,
	ena => \RAM64|ram~794_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~368_q\);

-- Location: FF_X17_Y3_N47
\RAM64|ram~496\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM64|ram~810_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~496_q\);

-- Location: LABCELL_X17_Y3_N45
\RAM64|ram~551\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~551_combout\ = ( \RAM64|ram~496_q\ & ( \ROM|memROM~3_combout\ & ( (\RAM64|ram~368_q\) # (\ROM|memROM~20_combout\) ) ) ) # ( !\RAM64|ram~496_q\ & ( \ROM|memROM~3_combout\ & ( (!\ROM|memROM~20_combout\ & \RAM64|ram~368_q\) ) ) ) # ( 
-- \RAM64|ram~496_q\ & ( !\ROM|memROM~3_combout\ & ( (!\ROM|memROM~20_combout\ & (\RAM64|ram~112_q\)) # (\ROM|memROM~20_combout\ & ((\RAM64|ram~240_q\))) ) ) ) # ( !\RAM64|ram~496_q\ & ( !\ROM|memROM~3_combout\ & ( (!\ROM|memROM~20_combout\ & 
-- (\RAM64|ram~112_q\)) # (\ROM|memROM~20_combout\ & ((\RAM64|ram~240_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001100000000111100000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~112_q\,
	datab => \RAM64|ALT_INV_ram~240_q\,
	datac => \ROM|ALT_INV_memROM~20_combout\,
	datad => \RAM64|ALT_INV_ram~368_q\,
	datae => \RAM64|ALT_INV_ram~496_q\,
	dataf => \ROM|ALT_INV_memROM~3_combout\,
	combout => \RAM64|ram~551_combout\);

-- Location: FF_X18_Y3_N31
\RAM64|ram~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM64|ram~696_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~16_q\);

-- Location: LABCELL_X17_Y2_N24
\RAM64|ram~144feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~144feeder_combout\ = ( \CPU|REGA|DOUT\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REGA|ALT_INV_DOUT\(1),
	combout => \RAM64|ram~144feeder_combout\);

-- Location: FF_X17_Y2_N25
\RAM64|ram~144\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM64|ram~144feeder_combout\,
	ena => \RAM64|ram~712_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~144_q\);

-- Location: FF_X17_Y2_N20
\RAM64|ram~272\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM64|ram~698_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~272_q\);

-- Location: FF_X17_Y2_N2
\RAM64|ram~400\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM64|ram~714_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~400_q\);

-- Location: LABCELL_X17_Y2_N0
\RAM64|ram~548\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~548_combout\ = ( \RAM64|ram~400_q\ & ( \ROM|memROM~20_combout\ & ( (\ROM|memROM~3_combout\) # (\RAM64|ram~144_q\) ) ) ) # ( !\RAM64|ram~400_q\ & ( \ROM|memROM~20_combout\ & ( (\RAM64|ram~144_q\ & !\ROM|memROM~3_combout\) ) ) ) # ( 
-- \RAM64|ram~400_q\ & ( !\ROM|memROM~20_combout\ & ( (!\ROM|memROM~3_combout\ & (\RAM64|ram~16_q\)) # (\ROM|memROM~3_combout\ & ((\RAM64|ram~272_q\))) ) ) ) # ( !\RAM64|ram~400_q\ & ( !\ROM|memROM~20_combout\ & ( (!\ROM|memROM~3_combout\ & 
-- (\RAM64|ram~16_q\)) # (\ROM|memROM~3_combout\ & ((\RAM64|ram~272_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000111100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~16_q\,
	datab => \RAM64|ALT_INV_ram~144_q\,
	datac => \RAM64|ALT_INV_ram~272_q\,
	datad => \ROM|ALT_INV_memROM~3_combout\,
	datae => \RAM64|ALT_INV_ram~400_q\,
	dataf => \ROM|ALT_INV_memROM~20_combout\,
	combout => \RAM64|ram~548_combout\);

-- Location: FF_X16_Y2_N25
\RAM64|ram~304\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM64|ram~762_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~304_q\);

-- Location: FF_X16_Y2_N20
\RAM64|ram~176\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM64|ram~776_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~176_q\);

-- Location: FF_X16_Y2_N49
\RAM64|ram~432\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM64|ram~778_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~432_q\);

-- Location: LABCELL_X19_Y2_N39
\RAM64|ram~48feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~48feeder_combout\ = ( \CPU|REGA|DOUT\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REGA|ALT_INV_DOUT\(1),
	combout => \RAM64|ram~48feeder_combout\);

-- Location: FF_X19_Y2_N40
\RAM64|ram~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM64|ram~48feeder_combout\,
	ena => \RAM64|ram~760_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~48_q\);

-- Location: LABCELL_X14_Y2_N45
\RAM64|ram~550\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~550_combout\ = ( \ROM|memROM~20_combout\ & ( \ROM|memROM~3_combout\ & ( \RAM64|ram~432_q\ ) ) ) # ( !\ROM|memROM~20_combout\ & ( \ROM|memROM~3_combout\ & ( \RAM64|ram~304_q\ ) ) ) # ( \ROM|memROM~20_combout\ & ( !\ROM|memROM~3_combout\ & ( 
-- \RAM64|ram~176_q\ ) ) ) # ( !\ROM|memROM~20_combout\ & ( !\ROM|memROM~3_combout\ & ( \RAM64|ram~48_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111001100110011001101010101010101010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~304_q\,
	datab => \RAM64|ALT_INV_ram~176_q\,
	datac => \RAM64|ALT_INV_ram~432_q\,
	datad => \RAM64|ALT_INV_ram~48_q\,
	datae => \ROM|ALT_INV_memROM~20_combout\,
	dataf => \ROM|ALT_INV_memROM~3_combout\,
	combout => \RAM64|ram~550_combout\);

-- Location: FF_X14_Y7_N19
\RAM64|ram~208\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM64|ram~744_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~208_q\);

-- Location: MLABCELL_X18_Y7_N57
\RAM64|ram~336feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~336feeder_combout\ = ( \CPU|REGA|DOUT\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REGA|ALT_INV_DOUT\(1),
	combout => \RAM64|ram~336feeder_combout\);

-- Location: FF_X18_Y7_N59
\RAM64|ram~336\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM64|ram~336feeder_combout\,
	ena => \RAM64|ram~730_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~336_q\);

-- Location: FF_X14_Y7_N17
\RAM64|ram~80\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM64|ram~728_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~80_q\);

-- Location: FF_X14_Y7_N2
\RAM64|ram~464\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM64|ram~746_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~464_q\);

-- Location: LABCELL_X14_Y7_N3
\RAM64|ram~549\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~549_combout\ = ( \ROM|memROM~3_combout\ & ( \ROM|memROM~20_combout\ & ( \RAM64|ram~464_q\ ) ) ) # ( !\ROM|memROM~3_combout\ & ( \ROM|memROM~20_combout\ & ( \RAM64|ram~208_q\ ) ) ) # ( \ROM|memROM~3_combout\ & ( !\ROM|memROM~20_combout\ & ( 
-- \RAM64|ram~336_q\ ) ) ) # ( !\ROM|memROM~3_combout\ & ( !\ROM|memROM~20_combout\ & ( \RAM64|ram~80_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001100110011001101010101010101010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~208_q\,
	datab => \RAM64|ALT_INV_ram~336_q\,
	datac => \RAM64|ALT_INV_ram~80_q\,
	datad => \RAM64|ALT_INV_ram~464_q\,
	datae => \ROM|ALT_INV_memROM~3_combout\,
	dataf => \ROM|ALT_INV_memROM~20_combout\,
	combout => \RAM64|ram~549_combout\);

-- Location: LABCELL_X14_Y3_N36
\RAM64|ram~552\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~552_combout\ = ( \RAM64|ram~550_combout\ & ( \RAM64|ram~549_combout\ & ( (!\ROM|memROM~22_combout\ & (((\ROM|memROM~28_combout\) # (\RAM64|ram~548_combout\)))) # (\ROM|memROM~22_combout\ & (((!\ROM|memROM~28_combout\)) # 
-- (\RAM64|ram~551_combout\))) ) ) ) # ( !\RAM64|ram~550_combout\ & ( \RAM64|ram~549_combout\ & ( (!\ROM|memROM~22_combout\ & (((\ROM|memROM~28_combout\) # (\RAM64|ram~548_combout\)))) # (\ROM|memROM~22_combout\ & (\RAM64|ram~551_combout\ & 
-- ((\ROM|memROM~28_combout\)))) ) ) ) # ( \RAM64|ram~550_combout\ & ( !\RAM64|ram~549_combout\ & ( (!\ROM|memROM~22_combout\ & (((\RAM64|ram~548_combout\ & !\ROM|memROM~28_combout\)))) # (\ROM|memROM~22_combout\ & (((!\ROM|memROM~28_combout\)) # 
-- (\RAM64|ram~551_combout\))) ) ) ) # ( !\RAM64|ram~550_combout\ & ( !\RAM64|ram~549_combout\ & ( (!\ROM|memROM~22_combout\ & (((\RAM64|ram~548_combout\ & !\ROM|memROM~28_combout\)))) # (\ROM|memROM~22_combout\ & (\RAM64|ram~551_combout\ & 
-- ((\ROM|memROM~28_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000010001001111110001000100001100110111010011111111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~551_combout\,
	datab => \ROM|ALT_INV_memROM~22_combout\,
	datac => \RAM64|ALT_INV_ram~548_combout\,
	datad => \ROM|ALT_INV_memROM~28_combout\,
	datae => \RAM64|ALT_INV_ram~550_combout\,
	dataf => \RAM64|ALT_INV_ram~549_combout\,
	combout => \RAM64|ram~552_combout\);

-- Location: FF_X19_Y5_N17
\RAM64|ram~184\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM64|ram~784_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~184_q\);

-- Location: FF_X12_Y6_N13
\RAM64|ram~312\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM64|ram~770_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~312_q\);

-- Location: FF_X19_Y5_N43
\RAM64|ram~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM64|ram~768_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~56_q\);

-- Location: FF_X14_Y3_N50
\RAM64|ram~440\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM64|ram~786_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~440_q\);

-- Location: LABCELL_X14_Y3_N48
\RAM64|ram~560\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~560_combout\ = ( \RAM64|ram~440_q\ & ( \ROM|memROM~20_combout\ & ( (\ROM|memROM~3_combout\) # (\RAM64|ram~184_q\) ) ) ) # ( !\RAM64|ram~440_q\ & ( \ROM|memROM~20_combout\ & ( (\RAM64|ram~184_q\ & !\ROM|memROM~3_combout\) ) ) ) # ( 
-- \RAM64|ram~440_q\ & ( !\ROM|memROM~20_combout\ & ( (!\ROM|memROM~3_combout\ & ((\RAM64|ram~56_q\))) # (\ROM|memROM~3_combout\ & (\RAM64|ram~312_q\)) ) ) ) # ( !\RAM64|ram~440_q\ & ( !\ROM|memROM~20_combout\ & ( (!\ROM|memROM~3_combout\ & 
-- ((\RAM64|ram~56_q\))) # (\ROM|memROM~3_combout\ & (\RAM64|ram~312_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~184_q\,
	datab => \RAM64|ALT_INV_ram~312_q\,
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datad => \RAM64|ALT_INV_ram~56_q\,
	datae => \RAM64|ALT_INV_ram~440_q\,
	dataf => \ROM|ALT_INV_memROM~20_combout\,
	combout => \RAM64|ram~560_combout\);

-- Location: FF_X18_Y3_N50
\RAM64|ram~344\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM64|ram~734_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~344_q\);

-- Location: FF_X16_Y5_N10
\RAM64|ram~216\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM64|ram~748_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~216_q\);

-- Location: LABCELL_X19_Y7_N57
\RAM64|ram~88feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~88feeder_combout\ = ( \CPU|REGA|DOUT\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REGA|ALT_INV_DOUT\(1),
	combout => \RAM64|ram~88feeder_combout\);

-- Location: FF_X19_Y7_N58
\RAM64|ram~88\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM64|ram~88feeder_combout\,
	ena => \RAM64|ram~732_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~88_q\);

-- Location: FF_X18_Y3_N44
\RAM64|ram~472\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM64|ram~750_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~472_q\);

-- Location: MLABCELL_X18_Y3_N42
\RAM64|ram~559\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~559_combout\ = ( \RAM64|ram~472_q\ & ( \ROM|memROM~3_combout\ & ( (\ROM|memROM~20_combout\) # (\RAM64|ram~344_q\) ) ) ) # ( !\RAM64|ram~472_q\ & ( \ROM|memROM~3_combout\ & ( (\RAM64|ram~344_q\ & !\ROM|memROM~20_combout\) ) ) ) # ( 
-- \RAM64|ram~472_q\ & ( !\ROM|memROM~3_combout\ & ( (!\ROM|memROM~20_combout\ & ((\RAM64|ram~88_q\))) # (\ROM|memROM~20_combout\ & (\RAM64|ram~216_q\)) ) ) ) # ( !\RAM64|ram~472_q\ & ( !\ROM|memROM~3_combout\ & ( (!\ROM|memROM~20_combout\ & 
-- ((\RAM64|ram~88_q\))) # (\ROM|memROM~20_combout\ & (\RAM64|ram~216_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001101010101000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~344_q\,
	datab => \RAM64|ALT_INV_ram~216_q\,
	datac => \RAM64|ALT_INV_ram~88_q\,
	datad => \ROM|ALT_INV_memROM~20_combout\,
	datae => \RAM64|ALT_INV_ram~472_q\,
	dataf => \ROM|ALT_INV_memROM~3_combout\,
	combout => \RAM64|ram~559_combout\);

-- Location: FF_X19_Y6_N4
\RAM64|ram~120\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM64|ram~800_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~120_q\);

-- Location: FF_X19_Y4_N56
\RAM64|ram~376\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM64|ram~802_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~376_q\);

-- Location: FF_X18_Y2_N43
\RAM64|ram~248\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM64|ram~816_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~248_q\);

-- Location: FF_X13_Y2_N47
\RAM64|ram~504\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM64|ram~818_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~504_q\);

-- Location: MLABCELL_X13_Y2_N45
\RAM64|ram~561\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~561_combout\ = ( \RAM64|ram~504_q\ & ( \ROM|memROM~3_combout\ & ( (\ROM|memROM~20_combout\) # (\RAM64|ram~376_q\) ) ) ) # ( !\RAM64|ram~504_q\ & ( \ROM|memROM~3_combout\ & ( (\RAM64|ram~376_q\ & !\ROM|memROM~20_combout\) ) ) ) # ( 
-- \RAM64|ram~504_q\ & ( !\ROM|memROM~3_combout\ & ( (!\ROM|memROM~20_combout\ & (\RAM64|ram~120_q\)) # (\ROM|memROM~20_combout\ & ((\RAM64|ram~248_q\))) ) ) ) # ( !\RAM64|ram~504_q\ & ( !\ROM|memROM~3_combout\ & ( (!\ROM|memROM~20_combout\ & 
-- (\RAM64|ram~120_q\)) # (\ROM|memROM~20_combout\ & ((\RAM64|ram~248_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000111100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~120_q\,
	datab => \RAM64|ALT_INV_ram~376_q\,
	datac => \RAM64|ALT_INV_ram~248_q\,
	datad => \ROM|ALT_INV_memROM~20_combout\,
	datae => \RAM64|ALT_INV_ram~504_q\,
	dataf => \ROM|ALT_INV_memROM~3_combout\,
	combout => \RAM64|ram~561_combout\);

-- Location: MLABCELL_X18_Y5_N30
\RAM64|ram~152feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~152feeder_combout\ = ( \CPU|REGA|DOUT\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REGA|ALT_INV_DOUT\(1),
	combout => \RAM64|ram~152feeder_combout\);

-- Location: FF_X18_Y5_N31
\RAM64|ram~152\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM64|ram~152feeder_combout\,
	ena => \RAM64|ram~720_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~152_q\);

-- Location: FF_X19_Y5_N20
\RAM64|ram~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM64|ram~704_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~24_q\);

-- Location: FF_X18_Y5_N38
\RAM64|ram~280\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM64|ram~706_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~280_q\);

-- Location: FF_X18_Y5_N44
\RAM64|ram~408\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM64|ram~722_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~408_q\);

-- Location: MLABCELL_X18_Y5_N42
\RAM64|ram~558\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~558_combout\ = ( \RAM64|ram~408_q\ & ( \ROM|memROM~3_combout\ & ( (\ROM|memROM~20_combout\) # (\RAM64|ram~280_q\) ) ) ) # ( !\RAM64|ram~408_q\ & ( \ROM|memROM~3_combout\ & ( (\RAM64|ram~280_q\ & !\ROM|memROM~20_combout\) ) ) ) # ( 
-- \RAM64|ram~408_q\ & ( !\ROM|memROM~3_combout\ & ( (!\ROM|memROM~20_combout\ & ((\RAM64|ram~24_q\))) # (\ROM|memROM~20_combout\ & (\RAM64|ram~152_q\)) ) ) ) # ( !\RAM64|ram~408_q\ & ( !\ROM|memROM~3_combout\ & ( (!\ROM|memROM~20_combout\ & 
-- ((\RAM64|ram~24_q\))) # (\ROM|memROM~20_combout\ & (\RAM64|ram~152_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101001100110101010100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~152_q\,
	datab => \RAM64|ALT_INV_ram~24_q\,
	datac => \RAM64|ALT_INV_ram~280_q\,
	datad => \ROM|ALT_INV_memROM~20_combout\,
	datae => \RAM64|ALT_INV_ram~408_q\,
	dataf => \ROM|ALT_INV_memROM~3_combout\,
	combout => \RAM64|ram~558_combout\);

-- Location: LABCELL_X14_Y3_N24
\RAM64|ram~562\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~562_combout\ = ( \RAM64|ram~561_combout\ & ( \RAM64|ram~558_combout\ & ( (!\ROM|memROM~22_combout\ & (((!\ROM|memROM~28_combout\) # (\RAM64|ram~559_combout\)))) # (\ROM|memROM~22_combout\ & (((\ROM|memROM~28_combout\)) # 
-- (\RAM64|ram~560_combout\))) ) ) ) # ( !\RAM64|ram~561_combout\ & ( \RAM64|ram~558_combout\ & ( (!\ROM|memROM~22_combout\ & (((!\ROM|memROM~28_combout\) # (\RAM64|ram~559_combout\)))) # (\ROM|memROM~22_combout\ & (\RAM64|ram~560_combout\ & 
-- ((!\ROM|memROM~28_combout\)))) ) ) ) # ( \RAM64|ram~561_combout\ & ( !\RAM64|ram~558_combout\ & ( (!\ROM|memROM~22_combout\ & (((\RAM64|ram~559_combout\ & \ROM|memROM~28_combout\)))) # (\ROM|memROM~22_combout\ & (((\ROM|memROM~28_combout\)) # 
-- (\RAM64|ram~560_combout\))) ) ) ) # ( !\RAM64|ram~561_combout\ & ( !\RAM64|ram~558_combout\ & ( (!\ROM|memROM~22_combout\ & (((\RAM64|ram~559_combout\ & \ROM|memROM~28_combout\)))) # (\ROM|memROM~22_combout\ & (\RAM64|ram~560_combout\ & 
-- ((!\ROM|memROM~28_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100001100000100010011111111011101000011001101110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~560_combout\,
	datab => \ROM|ALT_INV_memROM~22_combout\,
	datac => \RAM64|ALT_INV_ram~559_combout\,
	datad => \ROM|ALT_INV_memROM~28_combout\,
	datae => \RAM64|ALT_INV_ram~561_combout\,
	dataf => \RAM64|ALT_INV_ram~558_combout\,
	combout => \RAM64|ram~562_combout\);

-- Location: LABCELL_X14_Y3_N45
\RAM64|ram~568\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~568_combout\ = ( \RAM64|ram~552_combout\ & ( \RAM64|ram~562_combout\ & ( (!\ROM|memROM~7_combout\) # ((!\ROM|memROM~9_combout\ & ((\RAM64|ram~557_combout\))) # (\ROM|memROM~9_combout\ & (\RAM64|ram~567_combout\))) ) ) ) # ( 
-- !\RAM64|ram~552_combout\ & ( \RAM64|ram~562_combout\ & ( (!\ROM|memROM~9_combout\ & (\ROM|memROM~7_combout\ & ((\RAM64|ram~557_combout\)))) # (\ROM|memROM~9_combout\ & ((!\ROM|memROM~7_combout\) # ((\RAM64|ram~567_combout\)))) ) ) ) # ( 
-- \RAM64|ram~552_combout\ & ( !\RAM64|ram~562_combout\ & ( (!\ROM|memROM~9_combout\ & ((!\ROM|memROM~7_combout\) # ((\RAM64|ram~557_combout\)))) # (\ROM|memROM~9_combout\ & (\ROM|memROM~7_combout\ & (\RAM64|ram~567_combout\))) ) ) ) # ( 
-- !\RAM64|ram~552_combout\ & ( !\RAM64|ram~562_combout\ & ( (\ROM|memROM~7_combout\ & ((!\ROM|memROM~9_combout\ & ((\RAM64|ram~557_combout\))) # (\ROM|memROM~9_combout\ & (\RAM64|ram~567_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011100010011010101101000101011001111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~9_combout\,
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \RAM64|ALT_INV_ram~567_combout\,
	datad => \RAM64|ALT_INV_ram~557_combout\,
	datae => \RAM64|ALT_INV_ram~552_combout\,
	dataf => \RAM64|ALT_INV_ram~562_combout\,
	combout => \RAM64|ram~568_combout\);

-- Location: LABCELL_X10_Y3_N45
\DATA_IN[1]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATA_IN[1]~6_combout\ = ( \RAM64|ram~568_combout\ & ( ((\SW[1]~input_o\ & \AND_SW0_7|saida~3_combout\)) # (\RAM64|dado_out~0_combout\) ) ) # ( !\RAM64|ram~568_combout\ & ( (\SW[1]~input_o\ & \AND_SW0_7|saida~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011111111110000001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[1]~input_o\,
	datac => \AND_SW0_7|ALT_INV_saida~3_combout\,
	datad => \RAM64|ALT_INV_dado_out~0_combout\,
	dataf => \RAM64|ALT_INV_ram~568_combout\,
	combout => \DATA_IN[1]~6_combout\);

-- Location: MLABCELL_X9_Y3_N30
\CPU|ULA1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~1_sumout\ = SUM(( \CPU|REGA|DOUT\(0) ) + ( \CPU|MUX1|saida_MUX[0]~0_combout\ ) + ( !VCC ))
-- \CPU|ULA1|Add0~2\ = CARRY(( \CPU|REGA|DOUT\(0) ) + ( \CPU|MUX1|saida_MUX[0]~0_combout\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|MUX1|ALT_INV_saida_MUX[0]~0_combout\,
	datad => \CPU|REGA|ALT_INV_DOUT\(0),
	cin => GND,
	sumout => \CPU|ULA1|Add0~1_sumout\,
	cout => \CPU|ULA1|Add0~2\);

-- Location: MLABCELL_X9_Y3_N33
\CPU|ULA1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~5_sumout\ = SUM(( \CPU|REGA|DOUT\(1) ) + ( (!\CPU|DECODER1|saida[6]~7_combout\ & (\ROM|memROM~31_combout\ & (!\CPU|PC|DOUT[8]~DUPLICATE_q\))) # (\CPU|DECODER1|saida[6]~7_combout\ & (((\DATA_IN[1]~6_combout\)))) ) + ( \CPU|ULA1|Add0~2\ ))
-- \CPU|ULA1|Add0~6\ = CARRY(( \CPU|REGA|DOUT\(1) ) + ( (!\CPU|DECODER1|saida[6]~7_combout\ & (\ROM|memROM~31_combout\ & (!\CPU|PC|DOUT[8]~DUPLICATE_q\))) # (\CPU|DECODER1|saida[6]~7_combout\ & (((\DATA_IN[1]~6_combout\)))) ) + ( \CPU|ULA1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101111111011000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~31_combout\,
	datab => \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datac => \CPU|DECODER1|ALT_INV_saida[6]~7_combout\,
	datad => \CPU|REGA|ALT_INV_DOUT\(1),
	dataf => \ALT_INV_DATA_IN[1]~6_combout\,
	cin => \CPU|ULA1|Add0~2\,
	sumout => \CPU|ULA1|Add0~5_sumout\,
	cout => \CPU|ULA1|Add0~6\);

-- Location: LABCELL_X12_Y6_N33
\CPU|DECODER1|saida[4]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER1|saida[4]~3_combout\ = ( !\ROM|memROM~11_combout\ & ( \ROM|memROM~13_combout\ & ( (!\ROM|memROM~17_combout\ & !\ROM|memROM~15_combout\) ) ) ) # ( !\ROM|memROM~11_combout\ & ( !\ROM|memROM~13_combout\ & ( (!\ROM|memROM~17_combout\ & 
-- \ROM|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010000000000000000010001000100010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~17_combout\,
	datab => \ROM|ALT_INV_memROM~15_combout\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \CPU|DECODER1|saida[4]~3_combout\);

-- Location: IOIBUF_X33_Y0_N41
\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: LABCELL_X17_Y3_N6
\DATA_IN[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATA_IN[0]~0_combout\ = ( \AND_SW0_7|saida~2_combout\ & ( \AND_SW0_7|saida~1_combout\ & ( \SW[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SW[0]~input_o\,
	datae => \AND_SW0_7|ALT_INV_saida~2_combout\,
	dataf => \AND_SW0_7|ALT_INV_saida~1_combout\,
	combout => \DATA_IN[0]~0_combout\);

-- Location: IOIBUF_X14_Y0_N1
\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: IOIBUF_X33_Y0_N75
\SW[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: LABCELL_X17_Y3_N30
\DATA_IN[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATA_IN[0]~3_combout\ = ( \ROM|memROM~7_combout\ & ( \ROM|memROM~3_combout\ & ( (\KEY[2]~input_o\ & ((!\ROM|memROM~8_combout\) # (\CPU|PC|DOUT[8]~DUPLICATE_q\))) ) ) ) # ( \ROM|memROM~7_combout\ & ( !\ROM|memROM~3_combout\ & ( (\SW[9]~input_o\ & 
-- ((!\ROM|memROM~8_combout\) # (\CPU|PC|DOUT[8]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000001100000000000000000101010100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[2]~input_o\,
	datab => \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datac => \ALT_INV_SW[9]~input_o\,
	datad => \ROM|ALT_INV_memROM~8_combout\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~3_combout\,
	combout => \DATA_IN[0]~3_combout\);

-- Location: IOIBUF_X14_Y0_N18
\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: IOIBUF_X33_Y0_N92
\SW[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: LABCELL_X16_Y5_N48
\DATA_IN[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATA_IN[0]~1_combout\ = ( \ROM|memROM~7_combout\ & ( \ROM|memROM~3_combout\ & ( (!\CPU|PC|DOUT[8]~DUPLICATE_q\ & (\KEY[3]~input_o\ & \ROM|memROM~8_combout\)) ) ) ) # ( !\ROM|memROM~7_combout\ & ( !\ROM|memROM~3_combout\ & ( (!\CPU|PC|DOUT[8]~DUPLICATE_q\ 
-- & (\ROM|memROM~8_combout\ & \SW[8]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000000000000000000000000000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datab => \ALT_INV_KEY[3]~input_o\,
	datac => \ROM|ALT_INV_memROM~8_combout\,
	datad => \ALT_INV_SW[8]~input_o\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~3_combout\,
	combout => \DATA_IN[0]~1_combout\);

-- Location: IOIBUF_X54_Y16_N55
\FPGA_RESET_N~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FPGA_RESET_N,
	o => \FPGA_RESET_N~input_o\);

-- Location: LABCELL_X16_Y5_N27
\DATA_IN[0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATA_IN[0]~4_combout\ = ( !\ROM|memROM~7_combout\ & ( \ROM|memROM~22_combout\ & ( (\FPGA_RESET_N~input_o\ & (\ROM|memROM~3_combout\ & ((!\ROM|memROM~8_combout\) # (\CPU|PC|DOUT[8]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000010000000110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~8_combout\,
	datab => \ALT_INV_FPGA_RESET_N~input_o\,
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datad => \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~22_combout\,
	combout => \DATA_IN[0]~4_combout\);

-- Location: LABCELL_X16_Y3_N48
\AND_HEX5|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AND_HEX5|saida~0_combout\ = ( \ROM|memROM~3_combout\ & ( !\ROM|memROM~7_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~3_combout\,
	combout => \AND_HEX5|saida~0_combout\);

-- Location: IOIBUF_X11_Y0_N35
\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: LABCELL_X12_Y2_N24
\detectorSubDebounceKey1|edgeDetector|saidaQ~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \detectorSubDebounceKey1|edgeDetector|saidaQ~0_combout\ = ( !\KEY[1]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_KEY[1]~input_o\,
	combout => \detectorSubDebounceKey1|edgeDetector|saidaQ~0_combout\);

-- Location: FF_X12_Y2_N26
\detectorSubDebounceKey1|edgeDetector|saidaQ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \detectorSubDebounceKey1|edgeDetector|saidaQ~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \detectorSubDebounceKey1|edgeDetector|saidaQ~q\);

-- Location: LABCELL_X12_Y2_N51
\detectorSubDebounceKey1|edgeDetector|saida\ : cyclonev_lcell_comb
-- Equation(s):
-- \detectorSubDebounceKey1|edgeDetector|saida~combout\ = LCELL(( !\detectorSubDebounceKey1|edgeDetector|saidaQ~q\ & ( !\KEY[1]~input_o\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_KEY[1]~input_o\,
	dataf => \detectorSubDebounceKey1|edgeDetector|ALT_INV_saidaQ~q\,
	combout => \detectorSubDebounceKey1|edgeDetector|saida~combout\);

-- Location: LABCELL_X16_Y3_N51
\detectorSubDebounceKey1|FFP|DOUT~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \detectorSubDebounceKey1|FFP|DOUT~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \detectorSubDebounceKey1|FFP|DOUT~feeder_combout\);

-- Location: LABCELL_X17_Y6_N15
\ROM|memROM~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~24_combout\ = ( !\CPU|PC|DOUT[8]~DUPLICATE_q\ & ( (\ROM|memROM~23_combout\ & \ROM|memROM~18_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~23_combout\,
	datac => \ROM|ALT_INV_memROM~18_combout\,
	dataf => \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	combout => \ROM|memROM~24_combout\);

-- Location: MLABCELL_X18_Y6_N24
\ROM|memROM~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~26_combout\ = ( \ROM|memROM~18_combout\ & ( (!\CPU|PC|DOUT[8]~DUPLICATE_q\ & \ROM|memROM~25_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datad => \ROM|ALT_INV_memROM~25_combout\,
	dataf => \ROM|ALT_INV_memROM~18_combout\,
	combout => \ROM|memROM~26_combout\);

-- Location: LABCELL_X17_Y6_N30
\detectorSubDebounceKey0|limpa_leitura~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \detectorSubDebounceKey0|limpa_leitura~0_combout\ = ( \ROM|memROM~26_combout\ & ( (\ROM|memROM~3_combout\ & (\ROM|memROM~24_combout\ & (\ROM|memROM~20_combout\ & \ROM|memROM~31_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~3_combout\,
	datab => \ROM|ALT_INV_memROM~24_combout\,
	datac => \ROM|ALT_INV_memROM~20_combout\,
	datad => \ROM|ALT_INV_memROM~31_combout\,
	dataf => \ROM|ALT_INV_memROM~26_combout\,
	combout => \detectorSubDebounceKey0|limpa_leitura~0_combout\);

-- Location: LABCELL_X17_Y6_N57
\CPU|DECODER1|Equal5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER1|Equal5~0_combout\ = ( !\ROM|memROM~17_combout\ & ( (!\ROM|memROM~11_combout\ & (\ROM|memROM~13_combout\ & \ROM|memROM~15_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~11_combout\,
	datac => \ROM|ALT_INV_memROM~13_combout\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	dataf => \ROM|ALT_INV_memROM~17_combout\,
	combout => \CPU|DECODER1|Equal5~0_combout\);

-- Location: LABCELL_X17_Y6_N42
\detectorSubDebounceKey0|limpa_leitura\ : cyclonev_lcell_comb
-- Equation(s):
-- \detectorSubDebounceKey0|limpa_leitura~combout\ = ( \ROM|memROM~28_combout\ & ( (\ROM|memROM~9_combout\ & (\detectorSubDebounceKey0|limpa_leitura~0_combout\ & (\ROM|memROM~22_combout\ & \CPU|DECODER1|Equal5~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~9_combout\,
	datab => \detectorSubDebounceKey0|ALT_INV_limpa_leitura~0_combout\,
	datac => \ROM|ALT_INV_memROM~22_combout\,
	datad => \CPU|DECODER1|ALT_INV_Equal5~0_combout\,
	dataf => \ROM|ALT_INV_memROM~28_combout\,
	combout => \detectorSubDebounceKey0|limpa_leitura~combout\);

-- Location: FF_X16_Y3_N53
\detectorSubDebounceKey1|FFP|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSubDebounceKey1|edgeDetector|saida~combout\,
	d => \detectorSubDebounceKey1|FFP|DOUT~feeder_combout\,
	clrn => \detectorSubDebounceKey0|ALT_INV_limpa_leitura~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \detectorSubDebounceKey1|FFP|DOUT~q\);

-- Location: IOIBUF_X10_Y0_N92
\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: LABCELL_X10_Y2_N51
\detectorSubDebounceKey0|edgeDetector|saidaQ~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \detectorSubDebounceKey0|edgeDetector|saidaQ~0_combout\ = ( !\KEY[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_KEY[0]~input_o\,
	combout => \detectorSubDebounceKey0|edgeDetector|saidaQ~0_combout\);

-- Location: FF_X10_Y2_N53
\detectorSubDebounceKey0|edgeDetector|saidaQ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \detectorSubDebounceKey0|edgeDetector|saidaQ~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \detectorSubDebounceKey0|edgeDetector|saidaQ~q\);

-- Location: LABCELL_X10_Y2_N12
\detectorSubDebounceKey0|edgeDetector|saida\ : cyclonev_lcell_comb
-- Equation(s):
-- \detectorSubDebounceKey0|edgeDetector|saida~combout\ = LCELL(( !\KEY[0]~input_o\ & ( !\detectorSubDebounceKey0|edgeDetector|saidaQ~q\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_KEY[0]~input_o\,
	dataf => \detectorSubDebounceKey0|edgeDetector|ALT_INV_saidaQ~q\,
	combout => \detectorSubDebounceKey0|edgeDetector|saida~combout\);

-- Location: LABCELL_X17_Y6_N45
\detectorSubDebounceKey0|FFP|DOUT~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \detectorSubDebounceKey0|FFP|DOUT~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \detectorSubDebounceKey0|FFP|DOUT~feeder_combout\);

-- Location: FF_X17_Y6_N47
\detectorSubDebounceKey0|FFP|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \detectorSubDebounceKey0|edgeDetector|saida~combout\,
	d => \detectorSubDebounceKey0|FFP|DOUT~feeder_combout\,
	clrn => \detectorSubDebounceKey0|ALT_INV_limpa_leitura~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \detectorSubDebounceKey0|FFP|DOUT~q\);

-- Location: LABCELL_X16_Y3_N24
\DATA_IN[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATA_IN[0]~2_combout\ = ( \KEY[1]~input_o\ & ( \detectorSubDebounceKey0|FFP|DOUT~q\ & ( \AND_HEX5|saida~0_combout\ ) ) ) # ( !\KEY[1]~input_o\ & ( \detectorSubDebounceKey0|FFP|DOUT~q\ & ( (\AND_HEX5|saida~0_combout\ & ((!\ROM|memROM~9_combout\) # 
-- (\detectorSubDebounceKey1|FFP|DOUT~q\))) ) ) ) # ( \KEY[1]~input_o\ & ( !\detectorSubDebounceKey0|FFP|DOUT~q\ & ( (\AND_HEX5|saida~0_combout\ & ((\KEY[0]~input_o\) # (\ROM|memROM~9_combout\))) ) ) ) # ( !\KEY[1]~input_o\ & ( 
-- !\detectorSubDebounceKey0|FFP|DOUT~q\ & ( (\AND_HEX5|saida~0_combout\ & ((!\ROM|memROM~9_combout\ & ((\KEY[0]~input_o\))) # (\ROM|memROM~9_combout\ & (\detectorSubDebounceKey1|FFP|DOUT~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101000100010101010101000101010001010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \AND_HEX5|ALT_INV_saida~0_combout\,
	datab => \ROM|ALT_INV_memROM~9_combout\,
	datac => \detectorSubDebounceKey1|FFP|ALT_INV_DOUT~q\,
	datad => \ALT_INV_KEY[0]~input_o\,
	datae => \ALT_INV_KEY[1]~input_o\,
	dataf => \detectorSubDebounceKey0|FFP|ALT_INV_DOUT~q\,
	combout => \DATA_IN[0]~2_combout\);

-- Location: LABCELL_X16_Y3_N42
\DATA_IN[0]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATA_IN[0]~5_combout\ = ( \AND_SW0_7|saida~1_combout\ & ( \DATA_IN[0]~2_combout\ & ( (!\ROM|memROM~22_combout\) # (\DATA_IN[0]~4_combout\) ) ) ) # ( \AND_SW0_7|saida~1_combout\ & ( !\DATA_IN[0]~2_combout\ & ( ((!\ROM|memROM~22_combout\ & 
-- ((\DATA_IN[0]~1_combout\) # (\DATA_IN[0]~3_combout\)))) # (\DATA_IN[0]~4_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010011001111111100000000000000001100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DATA_IN[0]~3_combout\,
	datab => \ROM|ALT_INV_memROM~22_combout\,
	datac => \ALT_INV_DATA_IN[0]~1_combout\,
	datad => \ALT_INV_DATA_IN[0]~4_combout\,
	datae => \AND_SW0_7|ALT_INV_saida~1_combout\,
	dataf => \ALT_INV_DATA_IN[0]~2_combout\,
	combout => \DATA_IN[0]~5_combout\);

-- Location: FF_X16_Y4_N10
\RAM64|ram~191\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM64|ram~780_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~191_q\);

-- Location: FF_X16_Y4_N47
\RAM64|ram~447\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM64|ram~782_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~447_q\);

-- Location: LABCELL_X16_Y2_N21
\RAM64|ram~175feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~175feeder_combout\ = ( \CPU|REGA|DOUT\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REGA|ALT_INV_DOUT\(0),
	combout => \RAM64|ram~175feeder_combout\);

-- Location: FF_X16_Y2_N22
\RAM64|ram~175\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM64|ram~175feeder_combout\,
	ena => \RAM64|ram~776_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~175_q\);

-- Location: FF_X16_Y2_N31
\RAM64|ram~431\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM64|ram~778_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~431_q\);

-- Location: LABCELL_X16_Y4_N0
\RAM64|ram~539\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~539_combout\ = ( \ROM|memROM~7_combout\ & ( \ROM|memROM~3_combout\ & ( \RAM64|ram~447_q\ ) ) ) # ( !\ROM|memROM~7_combout\ & ( \ROM|memROM~3_combout\ & ( \RAM64|ram~431_q\ ) ) ) # ( \ROM|memROM~7_combout\ & ( !\ROM|memROM~3_combout\ & ( 
-- \RAM64|ram~191_q\ ) ) ) # ( !\ROM|memROM~7_combout\ & ( !\ROM|memROM~3_combout\ & ( \RAM64|ram~175_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010101010101010100000000111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~191_q\,
	datab => \RAM64|ALT_INV_ram~447_q\,
	datac => \RAM64|ALT_INV_ram~175_q\,
	datad => \RAM64|ALT_INV_ram~431_q\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~3_combout\,
	combout => \RAM64|ram~539_combout\);

-- Location: FF_X19_Y2_N19
\RAM64|ram~319\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM64|ram~766_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~319_q\);

-- Location: FF_X13_Y2_N49
\RAM64|ram~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM64|ram~764_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~63_q\);

-- Location: FF_X19_Y2_N49
\RAM64|ram~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM64|ram~760_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~47_q\);

-- Location: FF_X16_Y2_N59
\RAM64|ram~303\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM64|ram~762_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~303_q\);

-- Location: LABCELL_X16_Y2_N48
\RAM64|ram~537\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~537_combout\ = ( \ROM|memROM~3_combout\ & ( \ROM|memROM~7_combout\ & ( \RAM64|ram~319_q\ ) ) ) # ( !\ROM|memROM~3_combout\ & ( \ROM|memROM~7_combout\ & ( \RAM64|ram~63_q\ ) ) ) # ( \ROM|memROM~3_combout\ & ( !\ROM|memROM~7_combout\ & ( 
-- \RAM64|ram~303_q\ ) ) ) # ( !\ROM|memROM~3_combout\ & ( !\ROM|memROM~7_combout\ & ( \RAM64|ram~47_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~319_q\,
	datab => \RAM64|ALT_INV_ram~63_q\,
	datac => \RAM64|ALT_INV_ram~47_q\,
	datad => \RAM64|ALT_INV_ram~303_q\,
	datae => \ROM|ALT_INV_memROM~3_combout\,
	dataf => \ROM|ALT_INV_memROM~7_combout\,
	combout => \RAM64|ram~537_combout\);

-- Location: LABCELL_X17_Y7_N57
\RAM64|ram~327feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~327feeder_combout\ = ( \CPU|REGA|DOUT\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REGA|ALT_INV_DOUT\(0),
	combout => \RAM64|ram~327feeder_combout\);

-- Location: FF_X17_Y7_N58
\RAM64|ram~327\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM64|ram~327feeder_combout\,
	ena => \RAM64|ram~774_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~327_q\);

-- Location: FF_X16_Y6_N17
\RAM64|ram~71\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM64|ram~772_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~71_q\);

-- Location: LABCELL_X12_Y7_N9
\RAM64|ram~311feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~311feeder_combout\ = ( \CPU|REGA|DOUT\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REGA|ALT_INV_DOUT\(0),
	combout => \RAM64|ram~311feeder_combout\);

-- Location: FF_X12_Y7_N10
\RAM64|ram~311\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM64|ram~311feeder_combout\,
	ena => \RAM64|ram~770_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~311_q\);

-- Location: LABCELL_X20_Y7_N51
\RAM64|ram~55feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~55feeder_combout\ = ( \CPU|REGA|DOUT\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REGA|ALT_INV_DOUT\(0),
	combout => \RAM64|ram~55feeder_combout\);

-- Location: FF_X20_Y7_N52
\RAM64|ram~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM64|ram~55feeder_combout\,
	ena => \RAM64|ram~768_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~55_q\);

-- Location: LABCELL_X16_Y5_N0
\RAM64|ram~538\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~538_combout\ = ( \ROM|memROM~7_combout\ & ( \ROM|memROM~3_combout\ & ( \RAM64|ram~327_q\ ) ) ) # ( !\ROM|memROM~7_combout\ & ( \ROM|memROM~3_combout\ & ( \RAM64|ram~311_q\ ) ) ) # ( \ROM|memROM~7_combout\ & ( !\ROM|memROM~3_combout\ & ( 
-- \RAM64|ram~71_q\ ) ) ) # ( !\ROM|memROM~7_combout\ & ( !\ROM|memROM~3_combout\ & ( \RAM64|ram~55_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111001100110011001100001111000011110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~327_q\,
	datab => \RAM64|ALT_INV_ram~71_q\,
	datac => \RAM64|ALT_INV_ram~311_q\,
	datad => \RAM64|ALT_INV_ram~55_q\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~3_combout\,
	combout => \RAM64|ram~538_combout\);

-- Location: LABCELL_X19_Y6_N21
\RAM64|ram~455feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~455feeder_combout\ = ( \CPU|REGA|DOUT\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REGA|ALT_INV_DOUT\(0),
	combout => \RAM64|ram~455feeder_combout\);

-- Location: FF_X19_Y6_N23
\RAM64|ram~455\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM64|ram~455feeder_combout\,
	ena => \RAM64|ram~790_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~455_q\);

-- Location: FF_X19_Y5_N35
\RAM64|ram~183\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM64|ram~784_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~183_q\);

-- Location: LABCELL_X20_Y6_N18
\RAM64|ram~199feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~199feeder_combout\ = ( \CPU|REGA|DOUT\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REGA|ALT_INV_DOUT\(0),
	combout => \RAM64|ram~199feeder_combout\);

-- Location: FF_X20_Y6_N20
\RAM64|ram~199\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM64|ram~199feeder_combout\,
	ena => \RAM64|ram~788_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~199_q\);

-- Location: FF_X14_Y3_N34
\RAM64|ram~439\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM64|ram~786_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~439_q\);

-- Location: LABCELL_X19_Y6_N57
\RAM64|ram~540\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~540_combout\ = ( \ROM|memROM~7_combout\ & ( \ROM|memROM~3_combout\ & ( \RAM64|ram~455_q\ ) ) ) # ( !\ROM|memROM~7_combout\ & ( \ROM|memROM~3_combout\ & ( \RAM64|ram~439_q\ ) ) ) # ( \ROM|memROM~7_combout\ & ( !\ROM|memROM~3_combout\ & ( 
-- \RAM64|ram~199_q\ ) ) ) # ( !\ROM|memROM~7_combout\ & ( !\ROM|memROM~3_combout\ & ( \RAM64|ram~183_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000011110000111100000000111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~455_q\,
	datab => \RAM64|ALT_INV_ram~183_q\,
	datac => \RAM64|ALT_INV_ram~199_q\,
	datad => \RAM64|ALT_INV_ram~439_q\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~3_combout\,
	combout => \RAM64|ram~540_combout\);

-- Location: LABCELL_X16_Y3_N54
\RAM64|ram~541\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~541_combout\ = ( \RAM64|ram~538_combout\ & ( \RAM64|ram~540_combout\ & ( ((!\ROM|memROM~20_combout\ & ((\RAM64|ram~537_combout\))) # (\ROM|memROM~20_combout\ & (\RAM64|ram~539_combout\))) # (\ROM|memROM~9_combout\) ) ) ) # ( 
-- !\RAM64|ram~538_combout\ & ( \RAM64|ram~540_combout\ & ( (!\ROM|memROM~20_combout\ & (!\ROM|memROM~9_combout\ & ((\RAM64|ram~537_combout\)))) # (\ROM|memROM~20_combout\ & (((\RAM64|ram~539_combout\)) # (\ROM|memROM~9_combout\))) ) ) ) # ( 
-- \RAM64|ram~538_combout\ & ( !\RAM64|ram~540_combout\ & ( (!\ROM|memROM~20_combout\ & (((\RAM64|ram~537_combout\)) # (\ROM|memROM~9_combout\))) # (\ROM|memROM~20_combout\ & (!\ROM|memROM~9_combout\ & (\RAM64|ram~539_combout\))) ) ) ) # ( 
-- !\RAM64|ram~538_combout\ & ( !\RAM64|ram~540_combout\ & ( (!\ROM|memROM~9_combout\ & ((!\ROM|memROM~20_combout\ & ((\RAM64|ram~537_combout\))) # (\ROM|memROM~20_combout\ & (\RAM64|ram~539_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001001101010111000010101100111010011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~20_combout\,
	datab => \ROM|ALT_INV_memROM~9_combout\,
	datac => \RAM64|ALT_INV_ram~539_combout\,
	datad => \RAM64|ALT_INV_ram~537_combout\,
	datae => \RAM64|ALT_INV_ram~538_combout\,
	dataf => \RAM64|ALT_INV_ram~540_combout\,
	combout => \RAM64|ram~541_combout\);

-- Location: LABCELL_X19_Y6_N51
\RAM64|ram~119feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~119feeder_combout\ = ( \CPU|REGA|DOUT\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REGA|ALT_INV_DOUT\(0),
	combout => \RAM64|ram~119feeder_combout\);

-- Location: FF_X19_Y6_N52
\RAM64|ram~119\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM64|ram~119feeder_combout\,
	ena => \RAM64|ram~800_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~119_q\);

-- Location: FF_X13_Y3_N49
\RAM64|ram~135\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM64|ram~804_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~135_q\);

-- Location: FF_X12_Y4_N28
\RAM64|ram~375\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM64|ram~802_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~375_q\);

-- Location: FF_X17_Y3_N20
\RAM64|ram~391\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM64|ram~806_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~391_q\);

-- Location: LABCELL_X17_Y3_N21
\RAM64|ram~543\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~543_combout\ = ( \ROM|memROM~7_combout\ & ( \ROM|memROM~3_combout\ & ( \RAM64|ram~391_q\ ) ) ) # ( !\ROM|memROM~7_combout\ & ( \ROM|memROM~3_combout\ & ( \RAM64|ram~375_q\ ) ) ) # ( \ROM|memROM~7_combout\ & ( !\ROM|memROM~3_combout\ & ( 
-- \RAM64|ram~135_q\ ) ) ) # ( !\ROM|memROM~7_combout\ & ( !\ROM|memROM~3_combout\ & ( \RAM64|ram~119_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~119_q\,
	datab => \RAM64|ALT_INV_ram~135_q\,
	datac => \RAM64|ALT_INV_ram~375_q\,
	datad => \RAM64|ALT_INV_ram~391_q\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~3_combout\,
	combout => \RAM64|ram~543_combout\);

-- Location: FF_X18_Y2_N37
\RAM64|ram~239\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM64|ram~808_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~239_q\);

-- Location: FF_X17_Y3_N14
\RAM64|ram~511\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM64|ram~814_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~511_q\);

-- Location: LABCELL_X17_Y3_N51
\RAM64|ram~495feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~495feeder_combout\ = ( \CPU|REGA|DOUT\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REGA|ALT_INV_DOUT\(0),
	combout => \RAM64|ram~495feeder_combout\);

-- Location: FF_X17_Y3_N53
\RAM64|ram~495\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM64|ram~495feeder_combout\,
	ena => \RAM64|ram~810_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~495_q\);

-- Location: FF_X18_Y4_N22
\RAM64|ram~255\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM64|ram~812_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~255_q\);

-- Location: LABCELL_X17_Y3_N36
\RAM64|ram~544\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~544_combout\ = ( \ROM|memROM~7_combout\ & ( \ROM|memROM~3_combout\ & ( \RAM64|ram~511_q\ ) ) ) # ( !\ROM|memROM~7_combout\ & ( \ROM|memROM~3_combout\ & ( \RAM64|ram~495_q\ ) ) ) # ( \ROM|memROM~7_combout\ & ( !\ROM|memROM~3_combout\ & ( 
-- \RAM64|ram~255_q\ ) ) ) # ( !\ROM|memROM~7_combout\ & ( !\ROM|memROM~3_combout\ & ( \RAM64|ram~239_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000001111111100001111000011110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~239_q\,
	datab => \RAM64|ALT_INV_ram~511_q\,
	datac => \RAM64|ALT_INV_ram~495_q\,
	datad => \RAM64|ALT_INV_ram~255_q\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~3_combout\,
	combout => \RAM64|ram~544_combout\);

-- Location: FF_X17_Y4_N44
\RAM64|ram~367\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM64|ram~794_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~367_q\);

-- Location: FF_X17_Y4_N8
\RAM64|ram~383\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM64|ram~798_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~383_q\);

-- Location: FF_X16_Y3_N10
\RAM64|ram~111\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM64|ram~792_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~111_q\);

-- Location: FF_X20_Y4_N16
\RAM64|ram~127\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM64|ram~796_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~127_q\);

-- Location: LABCELL_X17_Y4_N45
\RAM64|ram~542\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~542_combout\ = ( \ROM|memROM~7_combout\ & ( \ROM|memROM~3_combout\ & ( \RAM64|ram~383_q\ ) ) ) # ( !\ROM|memROM~7_combout\ & ( \ROM|memROM~3_combout\ & ( \RAM64|ram~367_q\ ) ) ) # ( \ROM|memROM~7_combout\ & ( !\ROM|memROM~3_combout\ & ( 
-- \RAM64|ram~127_q\ ) ) ) # ( !\ROM|memROM~7_combout\ & ( !\ROM|memROM~3_combout\ & ( \RAM64|ram~111_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~367_q\,
	datab => \RAM64|ALT_INV_ram~383_q\,
	datac => \RAM64|ALT_INV_ram~111_q\,
	datad => \RAM64|ALT_INV_ram~127_q\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~3_combout\,
	combout => \RAM64|ram~542_combout\);

-- Location: FF_X17_Y5_N26
\RAM64|ram~519\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM64|ram~822_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~519_q\);

-- Location: FF_X17_Y5_N59
\RAM64|ram~263\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM64|ram~820_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~263_q\);

-- Location: FF_X13_Y5_N31
\RAM64|ram~503\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM64|ram~818_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~503_q\);

-- Location: FF_X18_Y2_N34
\RAM64|ram~247\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM64|ram~816_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~247_q\);

-- Location: LABCELL_X17_Y5_N48
\RAM64|ram~545\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~545_combout\ = ( \ROM|memROM~7_combout\ & ( \ROM|memROM~3_combout\ & ( \RAM64|ram~519_q\ ) ) ) # ( !\ROM|memROM~7_combout\ & ( \ROM|memROM~3_combout\ & ( \RAM64|ram~503_q\ ) ) ) # ( \ROM|memROM~7_combout\ & ( !\ROM|memROM~3_combout\ & ( 
-- \RAM64|ram~263_q\ ) ) ) # ( !\ROM|memROM~7_combout\ & ( !\ROM|memROM~3_combout\ & ( \RAM64|ram~247_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111001100110011001100001111000011110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~519_q\,
	datab => \RAM64|ALT_INV_ram~263_q\,
	datac => \RAM64|ALT_INV_ram~503_q\,
	datad => \RAM64|ALT_INV_ram~247_q\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~3_combout\,
	combout => \RAM64|ram~545_combout\);

-- Location: LABCELL_X16_Y3_N36
\RAM64|ram~546\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~546_combout\ = ( \RAM64|ram~542_combout\ & ( \RAM64|ram~545_combout\ & ( (!\ROM|memROM~20_combout\ & ((!\ROM|memROM~9_combout\) # ((\RAM64|ram~543_combout\)))) # (\ROM|memROM~20_combout\ & (((\RAM64|ram~544_combout\)) # 
-- (\ROM|memROM~9_combout\))) ) ) ) # ( !\RAM64|ram~542_combout\ & ( \RAM64|ram~545_combout\ & ( (!\ROM|memROM~20_combout\ & (\ROM|memROM~9_combout\ & (\RAM64|ram~543_combout\))) # (\ROM|memROM~20_combout\ & (((\RAM64|ram~544_combout\)) # 
-- (\ROM|memROM~9_combout\))) ) ) ) # ( \RAM64|ram~542_combout\ & ( !\RAM64|ram~545_combout\ & ( (!\ROM|memROM~20_combout\ & ((!\ROM|memROM~9_combout\) # ((\RAM64|ram~543_combout\)))) # (\ROM|memROM~20_combout\ & (!\ROM|memROM~9_combout\ & 
-- ((\RAM64|ram~544_combout\)))) ) ) ) # ( !\RAM64|ram~542_combout\ & ( !\RAM64|ram~545_combout\ & ( (!\ROM|memROM~20_combout\ & (\ROM|memROM~9_combout\ & (\RAM64|ram~543_combout\))) # (\ROM|memROM~20_combout\ & (!\ROM|memROM~9_combout\ & 
-- ((\RAM64|ram~544_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110100010101100111000010011010101111001101111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~20_combout\,
	datab => \ROM|ALT_INV_memROM~9_combout\,
	datac => \RAM64|ALT_INV_ram~543_combout\,
	datad => \RAM64|ALT_INV_ram~544_combout\,
	datae => \RAM64|ALT_INV_ram~542_combout\,
	dataf => \RAM64|ALT_INV_ram~545_combout\,
	combout => \RAM64|ram~546_combout\);

-- Location: FF_X19_Y3_N41
\RAM64|ram~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM64|ram~708_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~39_q\);

-- Location: FF_X19_Y3_N32
\RAM64|ram~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM64|ram~704_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~23_q\);

-- Location: MLABCELL_X9_Y4_N57
\RAM64|ram~295feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~295feeder_combout\ = ( \CPU|REGA|DOUT\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REGA|ALT_INV_DOUT\(0),
	combout => \RAM64|ram~295feeder_combout\);

-- Location: FF_X9_Y4_N59
\RAM64|ram~295\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM64|ram~295feeder_combout\,
	ena => \RAM64|ram~710_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~295_q\);

-- Location: FF_X19_Y3_N50
\RAM64|ram~279\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM64|ram~706_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~279_q\);

-- Location: LABCELL_X19_Y3_N51
\RAM64|ram~528\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~528_combout\ = ( \ROM|memROM~7_combout\ & ( \ROM|memROM~3_combout\ & ( \RAM64|ram~295_q\ ) ) ) # ( !\ROM|memROM~7_combout\ & ( \ROM|memROM~3_combout\ & ( \RAM64|ram~279_q\ ) ) ) # ( \ROM|memROM~7_combout\ & ( !\ROM|memROM~3_combout\ & ( 
-- \RAM64|ram~39_q\ ) ) ) # ( !\ROM|memROM~7_combout\ & ( !\ROM|memROM~3_combout\ & ( \RAM64|ram~23_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~39_q\,
	datab => \RAM64|ALT_INV_ram~23_q\,
	datac => \RAM64|ALT_INV_ram~295_q\,
	datad => \RAM64|ALT_INV_ram~279_q\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~3_combout\,
	combout => \RAM64|ram~528_combout\);

-- Location: FF_X18_Y5_N2
\RAM64|ram~407\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM64|ram~722_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~407_q\);

-- Location: FF_X14_Y5_N52
\RAM64|ram~423\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM64|ram~726_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~423_q\);

-- Location: FF_X18_Y5_N35
\RAM64|ram~151\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM64|ram~720_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~151_q\);

-- Location: FF_X14_Y5_N28
\RAM64|ram~167\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM64|ram~724_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~167_q\);

-- Location: LABCELL_X17_Y5_N30
\RAM64|ram~530\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~530_combout\ = ( \ROM|memROM~7_combout\ & ( \ROM|memROM~3_combout\ & ( \RAM64|ram~423_q\ ) ) ) # ( !\ROM|memROM~7_combout\ & ( \ROM|memROM~3_combout\ & ( \RAM64|ram~407_q\ ) ) ) # ( \ROM|memROM~7_combout\ & ( !\ROM|memROM~3_combout\ & ( 
-- \RAM64|ram~167_q\ ) ) ) # ( !\ROM|memROM~7_combout\ & ( !\ROM|memROM~3_combout\ & ( \RAM64|ram~151_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~407_q\,
	datab => \RAM64|ALT_INV_ram~423_q\,
	datac => \RAM64|ALT_INV_ram~151_q\,
	datad => \RAM64|ALT_INV_ram~167_q\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~3_combout\,
	combout => \RAM64|ram~530_combout\);

-- Location: FF_X14_Y2_N52
\RAM64|ram~287\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM64|ram~702_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~287_q\);

-- Location: LABCELL_X16_Y1_N0
\RAM64|ram~31feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~31feeder_combout\ = ( \CPU|REGA|DOUT\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REGA|ALT_INV_DOUT\(0),
	combout => \RAM64|ram~31feeder_combout\);

-- Location: FF_X16_Y1_N1
\RAM64|ram~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM64|ram~31feeder_combout\,
	ena => \RAM64|ram~700_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~31_q\);

-- Location: FF_X17_Y2_N56
\RAM64|ram~271\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM64|ram~698_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~271_q\);

-- Location: FF_X18_Y3_N10
\RAM64|ram~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM64|ram~696_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~15_q\);

-- Location: LABCELL_X17_Y2_N18
\RAM64|ram~527\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~527_combout\ = ( \ROM|memROM~7_combout\ & ( \ROM|memROM~3_combout\ & ( \RAM64|ram~287_q\ ) ) ) # ( !\ROM|memROM~7_combout\ & ( \ROM|memROM~3_combout\ & ( \RAM64|ram~271_q\ ) ) ) # ( \ROM|memROM~7_combout\ & ( !\ROM|memROM~3_combout\ & ( 
-- \RAM64|ram~31_q\ ) ) ) # ( !\ROM|memROM~7_combout\ & ( !\ROM|memROM~3_combout\ & ( \RAM64|ram~15_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111001100110011001100001111000011110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~287_q\,
	datab => \RAM64|ALT_INV_ram~31_q\,
	datac => \RAM64|ALT_INV_ram~271_q\,
	datad => \RAM64|ALT_INV_ram~15_q\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~3_combout\,
	combout => \RAM64|ram~527_combout\);

-- Location: FF_X17_Y2_N29
\RAM64|ram~143\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM64|ram~712_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~143_q\);

-- Location: FF_X17_Y2_N32
\RAM64|ram~399\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM64|ram~714_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~399_q\);

-- Location: FF_X14_Y2_N17
\RAM64|ram~415\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM64|ram~718_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~415_q\);

-- Location: FF_X14_Y2_N58
\RAM64|ram~159\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM64|ram~716_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~159_q\);

-- Location: LABCELL_X17_Y2_N57
\RAM64|ram~529\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~529_combout\ = ( \ROM|memROM~7_combout\ & ( \ROM|memROM~3_combout\ & ( \RAM64|ram~415_q\ ) ) ) # ( !\ROM|memROM~7_combout\ & ( \ROM|memROM~3_combout\ & ( \RAM64|ram~399_q\ ) ) ) # ( \ROM|memROM~7_combout\ & ( !\ROM|memROM~3_combout\ & ( 
-- \RAM64|ram~159_q\ ) ) ) # ( !\ROM|memROM~7_combout\ & ( !\ROM|memROM~3_combout\ & ( \RAM64|ram~143_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000001111111100110011001100110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~143_q\,
	datab => \RAM64|ALT_INV_ram~399_q\,
	datac => \RAM64|ALT_INV_ram~415_q\,
	datad => \RAM64|ALT_INV_ram~159_q\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~3_combout\,
	combout => \RAM64|ram~529_combout\);

-- Location: LABCELL_X16_Y3_N0
\RAM64|ram~531\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~531_combout\ = ( \RAM64|ram~527_combout\ & ( \RAM64|ram~529_combout\ & ( (!\ROM|memROM~9_combout\) # ((!\ROM|memROM~20_combout\ & (\RAM64|ram~528_combout\)) # (\ROM|memROM~20_combout\ & ((\RAM64|ram~530_combout\)))) ) ) ) # ( 
-- !\RAM64|ram~527_combout\ & ( \RAM64|ram~529_combout\ & ( (!\ROM|memROM~20_combout\ & (\ROM|memROM~9_combout\ & (\RAM64|ram~528_combout\))) # (\ROM|memROM~20_combout\ & ((!\ROM|memROM~9_combout\) # ((\RAM64|ram~530_combout\)))) ) ) ) # ( 
-- \RAM64|ram~527_combout\ & ( !\RAM64|ram~529_combout\ & ( (!\ROM|memROM~20_combout\ & ((!\ROM|memROM~9_combout\) # ((\RAM64|ram~528_combout\)))) # (\ROM|memROM~20_combout\ & (\ROM|memROM~9_combout\ & ((\RAM64|ram~530_combout\)))) ) ) ) # ( 
-- !\RAM64|ram~527_combout\ & ( !\RAM64|ram~529_combout\ & ( (\ROM|memROM~9_combout\ & ((!\ROM|memROM~20_combout\ & (\RAM64|ram~528_combout\)) # (\ROM|memROM~20_combout\ & ((\RAM64|ram~530_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011100010101001101101000110010101111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~20_combout\,
	datab => \ROM|ALT_INV_memROM~9_combout\,
	datac => \RAM64|ALT_INV_ram~528_combout\,
	datad => \RAM64|ALT_INV_ram~530_combout\,
	datae => \RAM64|ALT_INV_ram~527_combout\,
	dataf => \RAM64|ALT_INV_ram~529_combout\,
	combout => \RAM64|ram~531_combout\);

-- Location: FF_X20_Y5_N1
\RAM64|ram~463\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM64|ram~746_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~463_q\);

-- Location: FF_X14_Y7_N22
\RAM64|ram~207\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM64|ram~744_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~207_q\);

-- Location: FF_X20_Y4_N7
\RAM64|ram~471\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM64|ram~750_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~471_q\);

-- Location: FF_X20_Y4_N37
\RAM64|ram~215\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM64|ram~748_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~215_q\);

-- Location: MLABCELL_X18_Y3_N27
\RAM64|ram~534\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~534_combout\ = ( \ROM|memROM~9_combout\ & ( \ROM|memROM~3_combout\ & ( \RAM64|ram~471_q\ ) ) ) # ( !\ROM|memROM~9_combout\ & ( \ROM|memROM~3_combout\ & ( \RAM64|ram~463_q\ ) ) ) # ( \ROM|memROM~9_combout\ & ( !\ROM|memROM~3_combout\ & ( 
-- \RAM64|ram~215_q\ ) ) ) # ( !\ROM|memROM~9_combout\ & ( !\ROM|memROM~3_combout\ & ( \RAM64|ram~207_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000001111111101010101010101010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~463_q\,
	datab => \RAM64|ALT_INV_ram~207_q\,
	datac => \RAM64|ALT_INV_ram~471_q\,
	datad => \RAM64|ALT_INV_ram~215_q\,
	datae => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \ROM|ALT_INV_memROM~3_combout\,
	combout => \RAM64|ram~534_combout\);

-- Location: FF_X13_Y5_N28
\RAM64|ram~103\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM64|ram~740_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~103_q\);

-- Location: FF_X16_Y7_N44
\RAM64|ram~95\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM64|ram~736_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~95_q\);

-- Location: FF_X16_Y7_N14
\RAM64|ram~359\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM64|ram~742_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~359_q\);

-- Location: FF_X16_Y7_N26
\RAM64|ram~351\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM64|ram~738_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~351_q\);

-- Location: LABCELL_X16_Y7_N27
\RAM64|ram~533\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~533_combout\ = ( \ROM|memROM~9_combout\ & ( \ROM|memROM~3_combout\ & ( \RAM64|ram~359_q\ ) ) ) # ( !\ROM|memROM~9_combout\ & ( \ROM|memROM~3_combout\ & ( \RAM64|ram~351_q\ ) ) ) # ( \ROM|memROM~9_combout\ & ( !\ROM|memROM~3_combout\ & ( 
-- \RAM64|ram~103_q\ ) ) ) # ( !\ROM|memROM~9_combout\ & ( !\ROM|memROM~3_combout\ & ( \RAM64|ram~95_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~103_q\,
	datab => \RAM64|ALT_INV_ram~95_q\,
	datac => \RAM64|ALT_INV_ram~359_q\,
	datad => \RAM64|ALT_INV_ram~351_q\,
	datae => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \ROM|ALT_INV_memROM~3_combout\,
	combout => \RAM64|ram~533_combout\);

-- Location: LABCELL_X20_Y3_N54
\RAM64|ram~487feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~487feeder_combout\ = ( \CPU|REGA|DOUT\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REGA|ALT_INV_DOUT\(0),
	combout => \RAM64|ram~487feeder_combout\);

-- Location: FF_X20_Y3_N56
\RAM64|ram~487\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM64|ram~487feeder_combout\,
	ena => \RAM64|ram~758_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~487_q\);

-- Location: FF_X14_Y4_N55
\RAM64|ram~223\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM64|ram~752_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~223_q\);

-- Location: LABCELL_X20_Y3_N6
\RAM64|ram~479feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~479feeder_combout\ = ( \CPU|REGA|DOUT\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REGA|ALT_INV_DOUT\(0),
	combout => \RAM64|ram~479feeder_combout\);

-- Location: FF_X20_Y3_N8
\RAM64|ram~479\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM64|ram~479feeder_combout\,
	ena => \RAM64|ram~754_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~479_q\);

-- Location: LABCELL_X20_Y3_N0
\RAM64|ram~231feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~231feeder_combout\ = ( \CPU|REGA|DOUT\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REGA|ALT_INV_DOUT\(0),
	combout => \RAM64|ram~231feeder_combout\);

-- Location: FF_X20_Y3_N2
\RAM64|ram~231\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM64|ram~231feeder_combout\,
	ena => \RAM64|ram~756_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~231_q\);

-- Location: LABCELL_X20_Y3_N27
\RAM64|ram~535\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~535_combout\ = ( \ROM|memROM~3_combout\ & ( \ROM|memROM~9_combout\ & ( \RAM64|ram~487_q\ ) ) ) # ( !\ROM|memROM~3_combout\ & ( \ROM|memROM~9_combout\ & ( \RAM64|ram~231_q\ ) ) ) # ( \ROM|memROM~3_combout\ & ( !\ROM|memROM~9_combout\ & ( 
-- \RAM64|ram~479_q\ ) ) ) # ( !\ROM|memROM~3_combout\ & ( !\ROM|memROM~9_combout\ & ( \RAM64|ram~223_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000011110000111100000000111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~487_q\,
	datab => \RAM64|ALT_INV_ram~223_q\,
	datac => \RAM64|ALT_INV_ram~479_q\,
	datad => \RAM64|ALT_INV_ram~231_q\,
	datae => \ROM|ALT_INV_memROM~3_combout\,
	dataf => \ROM|ALT_INV_memROM~9_combout\,
	combout => \RAM64|ram~535_combout\);

-- Location: FF_X14_Y7_N59
\RAM64|ram~79\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM64|ram~728_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~79_q\);

-- Location: FF_X18_Y7_N41
\RAM64|ram~87\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM64|ram~732_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~87_q\);

-- Location: FF_X18_Y7_N14
\RAM64|ram~343\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM64|ram~734_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~343_q\);

-- Location: FF_X18_Y7_N26
\RAM64|ram~335\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM64|ram~730_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~335_q\);

-- Location: MLABCELL_X18_Y7_N27
\RAM64|ram~532\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~532_combout\ = ( \ROM|memROM~9_combout\ & ( \ROM|memROM~3_combout\ & ( \RAM64|ram~343_q\ ) ) ) # ( !\ROM|memROM~9_combout\ & ( \ROM|memROM~3_combout\ & ( \RAM64|ram~335_q\ ) ) ) # ( \ROM|memROM~9_combout\ & ( !\ROM|memROM~3_combout\ & ( 
-- \RAM64|ram~87_q\ ) ) ) # ( !\ROM|memROM~9_combout\ & ( !\ROM|memROM~3_combout\ & ( \RAM64|ram~79_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~79_q\,
	datab => \RAM64|ALT_INV_ram~87_q\,
	datac => \RAM64|ALT_INV_ram~343_q\,
	datad => \RAM64|ALT_INV_ram~335_q\,
	datae => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \ROM|ALT_INV_memROM~3_combout\,
	combout => \RAM64|ram~532_combout\);

-- Location: LABCELL_X16_Y3_N18
\RAM64|ram~536\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~536_combout\ = ( \RAM64|ram~535_combout\ & ( \RAM64|ram~532_combout\ & ( (!\ROM|memROM~7_combout\ & ((!\ROM|memROM~20_combout\) # ((\RAM64|ram~534_combout\)))) # (\ROM|memROM~7_combout\ & (((\RAM64|ram~533_combout\)) # 
-- (\ROM|memROM~20_combout\))) ) ) ) # ( !\RAM64|ram~535_combout\ & ( \RAM64|ram~532_combout\ & ( (!\ROM|memROM~7_combout\ & ((!\ROM|memROM~20_combout\) # ((\RAM64|ram~534_combout\)))) # (\ROM|memROM~7_combout\ & (!\ROM|memROM~20_combout\ & 
-- ((\RAM64|ram~533_combout\)))) ) ) ) # ( \RAM64|ram~535_combout\ & ( !\RAM64|ram~532_combout\ & ( (!\ROM|memROM~7_combout\ & (\ROM|memROM~20_combout\ & (\RAM64|ram~534_combout\))) # (\ROM|memROM~7_combout\ & (((\RAM64|ram~533_combout\)) # 
-- (\ROM|memROM~20_combout\))) ) ) ) # ( !\RAM64|ram~535_combout\ & ( !\RAM64|ram~532_combout\ & ( (!\ROM|memROM~7_combout\ & (\ROM|memROM~20_combout\ & (\RAM64|ram~534_combout\))) # (\ROM|memROM~7_combout\ & (!\ROM|memROM~20_combout\ & 
-- ((\RAM64|ram~533_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110000100110101011110001010110011101001101111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datab => \ROM|ALT_INV_memROM~20_combout\,
	datac => \RAM64|ALT_INV_ram~534_combout\,
	datad => \RAM64|ALT_INV_ram~533_combout\,
	datae => \RAM64|ALT_INV_ram~535_combout\,
	dataf => \RAM64|ALT_INV_ram~532_combout\,
	combout => \RAM64|ram~536_combout\);

-- Location: LABCELL_X16_Y3_N12
\RAM64|ram~547\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~547_combout\ = ( \RAM64|ram~531_combout\ & ( \RAM64|ram~536_combout\ & ( (!\ROM|memROM~22_combout\) # ((!\ROM|memROM~28_combout\ & (\RAM64|ram~541_combout\)) # (\ROM|memROM~28_combout\ & ((\RAM64|ram~546_combout\)))) ) ) ) # ( 
-- !\RAM64|ram~531_combout\ & ( \RAM64|ram~536_combout\ & ( (!\ROM|memROM~28_combout\ & (\RAM64|ram~541_combout\ & ((\ROM|memROM~22_combout\)))) # (\ROM|memROM~28_combout\ & (((!\ROM|memROM~22_combout\) # (\RAM64|ram~546_combout\)))) ) ) ) # ( 
-- \RAM64|ram~531_combout\ & ( !\RAM64|ram~536_combout\ & ( (!\ROM|memROM~28_combout\ & (((!\ROM|memROM~22_combout\)) # (\RAM64|ram~541_combout\))) # (\ROM|memROM~28_combout\ & (((\RAM64|ram~546_combout\ & \ROM|memROM~22_combout\)))) ) ) ) # ( 
-- !\RAM64|ram~531_combout\ & ( !\RAM64|ram~536_combout\ & ( (\ROM|memROM~22_combout\ & ((!\ROM|memROM~28_combout\ & (\RAM64|ram~541_combout\)) # (\ROM|memROM~28_combout\ & ((\RAM64|ram~546_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000111110011000100011100110011010001111111111101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~541_combout\,
	datab => \ROM|ALT_INV_memROM~28_combout\,
	datac => \RAM64|ALT_INV_ram~546_combout\,
	datad => \ROM|ALT_INV_memROM~22_combout\,
	datae => \RAM64|ALT_INV_ram~531_combout\,
	dataf => \RAM64|ALT_INV_ram~536_combout\,
	combout => \RAM64|ram~547_combout\);

-- Location: LABCELL_X16_Y3_N33
\DATA_IN[0]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATA_IN[0]~15_combout\ = ( \DATA_IN[0]~5_combout\ & ( \RAM64|ram~547_combout\ ) ) # ( !\DATA_IN[0]~5_combout\ & ( \RAM64|ram~547_combout\ & ( (\DATA_IN[0]~0_combout\) # (\RAM64|dado_out~0_combout\) ) ) ) # ( \DATA_IN[0]~5_combout\ & ( 
-- !\RAM64|ram~547_combout\ ) ) # ( !\DATA_IN[0]~5_combout\ & ( !\RAM64|ram~547_combout\ & ( \DATA_IN[0]~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111111111111111111100001111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM64|ALT_INV_dado_out~0_combout\,
	datad => \ALT_INV_DATA_IN[0]~0_combout\,
	datae => \ALT_INV_DATA_IN[0]~5_combout\,
	dataf => \RAM64|ALT_INV_ram~547_combout\,
	combout => \DATA_IN[0]~15_combout\);

-- Location: LABCELL_X10_Y3_N12
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

-- Location: LABCELL_X10_Y3_N15
\CPU|ULA1|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~21_sumout\ = SUM(( \CPU|REGA|DOUT\(0) ) + ( (!\CPU|DECODER1|saida[5]~2_combout\ & (((!\DATA_IN[0]~15_combout\)))) # (\CPU|DECODER1|saida[5]~2_combout\ & (((!\ROM|memROM~8_combout\)) # (\CPU|PC|DOUT[8]~DUPLICATE_q\))) ) + ( 
-- \CPU|ULA1|Add1~34_cout\ ))
-- \CPU|ULA1|Add1~22\ = CARRY(( \CPU|REGA|DOUT\(0) ) + ( (!\CPU|DECODER1|saida[5]~2_combout\ & (((!\DATA_IN[0]~15_combout\)))) # (\CPU|DECODER1|saida[5]~2_combout\ & (((!\ROM|memROM~8_combout\)) # (\CPU|PC|DOUT[8]~DUPLICATE_q\))) ) + ( 
-- \CPU|ULA1|Add1~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110010001000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datab => \ROM|ALT_INV_memROM~8_combout\,
	datac => \ALT_INV_DATA_IN[0]~15_combout\,
	datad => \CPU|REGA|ALT_INV_DOUT\(0),
	dataf => \CPU|DECODER1|ALT_INV_saida[5]~2_combout\,
	cin => \CPU|ULA1|Add1~34_cout\,
	sumout => \CPU|ULA1|Add1~21_sumout\,
	cout => \CPU|ULA1|Add1~22\);

-- Location: LABCELL_X10_Y3_N18
\CPU|ULA1|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~25_sumout\ = SUM(( (!\CPU|DECODER1|saida[6]~7_combout\ & (((!\ROM|memROM~31_combout\)) # (\CPU|PC|DOUT[8]~DUPLICATE_q\))) # (\CPU|DECODER1|saida[6]~7_combout\ & (((!\DATA_IN[1]~6_combout\)))) ) + ( \CPU|REGA|DOUT\(1) ) + ( 
-- \CPU|ULA1|Add1~22\ ))
-- \CPU|ULA1|Add1~26\ = CARRY(( (!\CPU|DECODER1|saida[6]~7_combout\ & (((!\ROM|memROM~31_combout\)) # (\CPU|PC|DOUT[8]~DUPLICATE_q\))) # (\CPU|DECODER1|saida[6]~7_combout\ & (((!\DATA_IN[1]~6_combout\)))) ) + ( \CPU|REGA|DOUT\(1) ) + ( \CPU|ULA1|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111011111000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datab => \CPU|DECODER1|ALT_INV_saida[6]~7_combout\,
	datac => \ROM|ALT_INV_memROM~31_combout\,
	datad => \ALT_INV_DATA_IN[1]~6_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(1),
	cin => \CPU|ULA1|Add1~22\,
	sumout => \CPU|ULA1|Add1~25_sumout\,
	cout => \CPU|ULA1|Add1~26\);

-- Location: MLABCELL_X9_Y3_N3
\CPU|ULA1|saida[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[1]~1_combout\ = ( \CPU|ULA1|Add1~25_sumout\ & ( (!\CPU|DECODER1|saida[4]~3_combout\) # ((!\CPU|DECODER1|saida[6]~7_combout\ & (\ROM|memROM~7_combout\)) # (\CPU|DECODER1|saida[6]~7_combout\ & ((\DATA_IN[1]~6_combout\)))) ) ) # ( 
-- !\CPU|ULA1|Add1~25_sumout\ & ( (\CPU|DECODER1|saida[4]~3_combout\ & ((!\CPU|DECODER1|saida[6]~7_combout\ & (\ROM|memROM~7_combout\)) # (\CPU|DECODER1|saida[6]~7_combout\ & ((\DATA_IN[1]~6_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101000001000001010110101110101111111010111010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER1|ALT_INV_saida[4]~3_combout\,
	datab => \CPU|DECODER1|ALT_INV_saida[6]~7_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \ALT_INV_DATA_IN[1]~6_combout\,
	dataf => \CPU|ULA1|ALT_INV_Add1~25_sumout\,
	combout => \CPU|ULA1|saida[1]~1_combout\);

-- Location: LABCELL_X14_Y5_N48
\CPU|DECODER1|saida[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER1|saida[3]~4_combout\ = ( \ROM|memROM~13_combout\ & ( \ROM|memROM~15_combout\ ) ) # ( !\ROM|memROM~13_combout\ & ( \ROM|memROM~15_combout\ ) ) # ( \ROM|memROM~13_combout\ & ( !\ROM|memROM~15_combout\ ) ) # ( !\ROM|memROM~13_combout\ & ( 
-- !\ROM|memROM~15_combout\ & ( (!\ROM|memROM~11_combout\) # (\ROM|memROM~17_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111111001111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~11_combout\,
	datac => \ROM|ALT_INV_memROM~17_combout\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~15_combout\,
	combout => \CPU|DECODER1|saida[3]~4_combout\);

-- Location: LABCELL_X14_Y5_N3
\CPU|DECODER1|saida[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER1|saida[5]~5_combout\ = ( \ROM|memROM~13_combout\ & ( \ROM|memROM~15_combout\ & ( !\CPU|DECODER1|saida[2]~1_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( \ROM|memROM~15_combout\ & ( (!\CPU|DECODER1|saida[2]~1_combout\) # 
-- ((!\ROM|memROM~11_combout\ & !\ROM|memROM~17_combout\)) ) ) ) # ( \ROM|memROM~13_combout\ & ( !\ROM|memROM~15_combout\ & ( !\CPU|DECODER1|saida[2]~1_combout\ ) ) ) # ( !\ROM|memROM~13_combout\ & ( !\ROM|memROM~15_combout\ & ( 
-- (!\CPU|DECODER1|saida[2]~1_combout\ & ((\ROM|memROM~17_combout\) # (\ROM|memROM~11_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101010101010101010101010101011111010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER1|ALT_INV_saida[2]~1_combout\,
	datac => \ROM|ALT_INV_memROM~11_combout\,
	datad => \ROM|ALT_INV_memROM~17_combout\,
	datae => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~15_combout\,
	combout => \CPU|DECODER1|saida[5]~5_combout\);

-- Location: FF_X9_Y3_N35
\CPU|REGA|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|ULA1|Add0~5_sumout\,
	asdata => \CPU|ULA1|saida[1]~1_combout\,
	sload => \CPU|DECODER1|saida[3]~4_combout\,
	ena => \CPU|DECODER1|saida[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(1));

-- Location: MLABCELL_X9_Y3_N36
\CPU|ULA1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~9_sumout\ = SUM(( \CPU|REGA|DOUT\(2) ) + ( (!\CPU|DECODER1|saida[6]~7_combout\ & (!\CPU|PC|DOUT[8]~DUPLICATE_q\ & (\ROM|memROM~32_combout\))) # (\CPU|DECODER1|saida[6]~7_combout\ & (((\DATA_IN[2]~7_combout\)))) ) + ( \CPU|ULA1|Add0~6\ ))
-- \CPU|ULA1|Add0~10\ = CARRY(( \CPU|REGA|DOUT\(2) ) + ( (!\CPU|DECODER1|saida[6]~7_combout\ & (!\CPU|PC|DOUT[8]~DUPLICATE_q\ & (\ROM|memROM~32_combout\))) # (\CPU|DECODER1|saida[6]~7_combout\ & (((\DATA_IN[2]~7_combout\)))) ) + ( \CPU|ULA1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101111100010000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datab => \CPU|DECODER1|ALT_INV_saida[6]~7_combout\,
	datac => \ROM|ALT_INV_memROM~32_combout\,
	datad => \CPU|REGA|ALT_INV_DOUT\(2),
	dataf => \ALT_INV_DATA_IN[2]~7_combout\,
	cin => \CPU|ULA1|Add0~6\,
	sumout => \CPU|ULA1|Add0~9_sumout\,
	cout => \CPU|ULA1|Add0~10\);

-- Location: LABCELL_X10_Y3_N21
\CPU|ULA1|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~29_sumout\ = SUM(( (!\CPU|DECODER1|saida[6]~7_combout\ & (((!\ROM|memROM~32_combout\)) # (\CPU|PC|DOUT[8]~DUPLICATE_q\))) # (\CPU|DECODER1|saida[6]~7_combout\ & (((!\DATA_IN[2]~7_combout\)))) ) + ( \CPU|REGA|DOUT\(2) ) + ( 
-- \CPU|ULA1|Add1~26\ ))
-- \CPU|ULA1|Add1~30\ = CARRY(( (!\CPU|DECODER1|saida[6]~7_combout\ & (((!\ROM|memROM~32_combout\)) # (\CPU|PC|DOUT[8]~DUPLICATE_q\))) # (\CPU|DECODER1|saida[6]~7_combout\ & (((!\DATA_IN[2]~7_combout\)))) ) + ( \CPU|REGA|DOUT\(2) ) + ( \CPU|ULA1|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111011111000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datab => \CPU|DECODER1|ALT_INV_saida[6]~7_combout\,
	datac => \ROM|ALT_INV_memROM~32_combout\,
	datad => \ALT_INV_DATA_IN[2]~7_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(2),
	cin => \CPU|ULA1|Add1~26\,
	sumout => \CPU|ULA1|Add1~29_sumout\,
	cout => \CPU|ULA1|Add1~30\);

-- Location: MLABCELL_X9_Y3_N18
\CPU|ULA1|saida[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[2]~2_combout\ = ( \CPU|ULA1|Add1~29_sumout\ & ( (!\CPU|DECODER1|saida[4]~3_combout\) # ((!\CPU|DECODER1|saida[6]~7_combout\ & ((\ROM|memROM~22_combout\))) # (\CPU|DECODER1|saida[6]~7_combout\ & (\DATA_IN[2]~7_combout\))) ) ) # ( 
-- !\CPU|ULA1|Add1~29_sumout\ & ( (\CPU|DECODER1|saida[4]~3_combout\ & ((!\CPU|DECODER1|saida[6]~7_combout\ & ((\ROM|memROM~22_combout\))) # (\CPU|DECODER1|saida[6]~7_combout\ & (\DATA_IN[2]~7_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101000000010100010110101011111011111010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER1|ALT_INV_saida[4]~3_combout\,
	datab => \CPU|DECODER1|ALT_INV_saida[6]~7_combout\,
	datac => \ALT_INV_DATA_IN[2]~7_combout\,
	datad => \ROM|ALT_INV_memROM~22_combout\,
	dataf => \CPU|ULA1|ALT_INV_Add1~29_sumout\,
	combout => \CPU|ULA1|saida[2]~2_combout\);

-- Location: FF_X9_Y3_N38
\CPU|REGA|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|ULA1|Add0~9_sumout\,
	asdata => \CPU|ULA1|saida[2]~2_combout\,
	sload => \CPU|DECODER1|saida[3]~4_combout\,
	ena => \CPU|DECODER1|saida[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(2));

-- Location: MLABCELL_X9_Y3_N39
\CPU|ULA1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~13_sumout\ = SUM(( \CPU|REGA|DOUT\(3) ) + ( (!\CPU|DECODER1|saida[6]~7_combout\ & (!\CPU|PC|DOUT[8]~DUPLICATE_q\ & ((\ROM|memROM~33_combout\)))) # (\CPU|DECODER1|saida[6]~7_combout\ & (((\DATA_IN[3]~8_combout\)))) ) + ( \CPU|ULA1|Add0~10\ 
-- ))
-- \CPU|ULA1|Add0~14\ = CARRY(( \CPU|REGA|DOUT\(3) ) + ( (!\CPU|DECODER1|saida[6]~7_combout\ & (!\CPU|PC|DOUT[8]~DUPLICATE_q\ & ((\ROM|memROM~33_combout\)))) # (\CPU|DECODER1|saida[6]~7_combout\ & (((\DATA_IN[3]~8_combout\)))) ) + ( \CPU|ULA1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000111010000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datab => \CPU|DECODER1|ALT_INV_saida[6]~7_combout\,
	datac => \ALT_INV_DATA_IN[3]~8_combout\,
	datad => \CPU|REGA|ALT_INV_DOUT\(3),
	dataf => \ROM|ALT_INV_memROM~33_combout\,
	cin => \CPU|ULA1|Add0~10\,
	sumout => \CPU|ULA1|Add0~13_sumout\,
	cout => \CPU|ULA1|Add0~14\);

-- Location: LABCELL_X10_Y3_N24
\CPU|ULA1|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~1_sumout\ = SUM(( (!\CPU|DECODER1|saida[5]~2_combout\ & (((!\DATA_IN[3]~8_combout\)))) # (\CPU|DECODER1|saida[5]~2_combout\ & ((!\CPU|DECODER1|saida[6]~6_combout\ & (!\ROM|memROM~28_combout\)) # (\CPU|DECODER1|saida[6]~6_combout\ & 
-- ((!\DATA_IN[3]~8_combout\))))) ) + ( \CPU|REGA|DOUT\(3) ) + ( \CPU|ULA1|Add1~30\ ))
-- \CPU|ULA1|Add1~2\ = CARRY(( (!\CPU|DECODER1|saida[5]~2_combout\ & (((!\DATA_IN[3]~8_combout\)))) # (\CPU|DECODER1|saida[5]~2_combout\ & ((!\CPU|DECODER1|saida[6]~6_combout\ & (!\ROM|memROM~28_combout\)) # (\CPU|DECODER1|saida[6]~6_combout\ & 
-- ((!\DATA_IN[3]~8_combout\))))) ) + ( \CPU|REGA|DOUT\(3) ) + ( \CPU|ULA1|Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111101101000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER1|ALT_INV_saida[5]~2_combout\,
	datab => \CPU|DECODER1|ALT_INV_saida[6]~6_combout\,
	datac => \ROM|ALT_INV_memROM~28_combout\,
	datad => \ALT_INV_DATA_IN[3]~8_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(3),
	cin => \CPU|ULA1|Add1~30\,
	sumout => \CPU|ULA1|Add1~1_sumout\,
	cout => \CPU|ULA1|Add1~2\);

-- Location: MLABCELL_X9_Y3_N54
\CPU|ULA1|saida[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[3]~3_combout\ = ( \CPU|ULA1|Add1~1_sumout\ & ( (!\CPU|DECODER1|saida[4]~3_combout\) # ((!\CPU|DECODER1|saida[6]~7_combout\ & ((\ROM|memROM~28_combout\))) # (\CPU|DECODER1|saida[6]~7_combout\ & (\DATA_IN[3]~8_combout\))) ) ) # ( 
-- !\CPU|ULA1|Add1~1_sumout\ & ( (\CPU|DECODER1|saida[4]~3_combout\ & ((!\CPU|DECODER1|saida[6]~7_combout\ & ((\ROM|memROM~28_combout\))) # (\CPU|DECODER1|saida[6]~7_combout\ & (\DATA_IN[3]~8_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100010001000001010001000110101111101110111010111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER1|ALT_INV_saida[4]~3_combout\,
	datab => \ALT_INV_DATA_IN[3]~8_combout\,
	datac => \ROM|ALT_INV_memROM~28_combout\,
	datad => \CPU|DECODER1|ALT_INV_saida[6]~7_combout\,
	dataf => \CPU|ULA1|ALT_INV_Add1~1_sumout\,
	combout => \CPU|ULA1|saida[3]~3_combout\);

-- Location: FF_X9_Y3_N41
\CPU|REGA|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|ULA1|Add0~13_sumout\,
	asdata => \CPU|ULA1|saida[3]~3_combout\,
	sload => \CPU|DECODER1|saida[3]~4_combout\,
	ena => \CPU|DECODER1|saida[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(3));

-- Location: FF_X14_Y1_N10
\RAM64|ram~354\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM64|ram~738_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~354_q\);

-- Location: FF_X18_Y7_N49
\RAM64|ram~338\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM64|ram~730_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~338_q\);

-- Location: FF_X20_Y5_N7
\RAM64|ram~466\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM64|ram~746_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~466_q\);

-- Location: FF_X14_Y4_N38
\RAM64|ram~482\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM64|ram~754_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~482_q\);

-- Location: LABCELL_X14_Y4_N36
\RAM64|ram~596\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~596_combout\ = ( \RAM64|ram~482_q\ & ( \ROM|memROM~7_combout\ & ( (\ROM|memROM~20_combout\) # (\RAM64|ram~354_q\) ) ) ) # ( !\RAM64|ram~482_q\ & ( \ROM|memROM~7_combout\ & ( (\RAM64|ram~354_q\ & !\ROM|memROM~20_combout\) ) ) ) # ( 
-- \RAM64|ram~482_q\ & ( !\ROM|memROM~7_combout\ & ( (!\ROM|memROM~20_combout\ & (\RAM64|ram~338_q\)) # (\ROM|memROM~20_combout\ & ((\RAM64|ram~466_q\))) ) ) ) # ( !\RAM64|ram~482_q\ & ( !\ROM|memROM~7_combout\ & ( (!\ROM|memROM~20_combout\ & 
-- (\RAM64|ram~338_q\)) # (\ROM|memROM~20_combout\ & ((\RAM64|ram~466_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111101010101000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~354_q\,
	datab => \RAM64|ALT_INV_ram~338_q\,
	datac => \RAM64|ALT_INV_ram~466_q\,
	datad => \ROM|ALT_INV_memROM~20_combout\,
	datae => \RAM64|ALT_INV_ram~482_q\,
	dataf => \ROM|ALT_INV_memROM~7_combout\,
	combout => \RAM64|ram~596_combout\);

-- Location: FF_X18_Y5_N46
\RAM64|ram~410\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM64|ram~722_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~410_q\);

-- Location: FF_X18_Y5_N22
\RAM64|ram~282\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM64|ram~706_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~282_q\);

-- Location: FF_X9_Y5_N40
\RAM64|ram~298\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM64|ram~710_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~298_q\);

-- Location: FF_X14_Y5_N8
\RAM64|ram~426\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM64|ram~726_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~426_q\);

-- Location: LABCELL_X14_Y5_N6
\RAM64|ram~597\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~597_combout\ = ( \RAM64|ram~426_q\ & ( \ROM|memROM~7_combout\ & ( (\RAM64|ram~298_q\) # (\ROM|memROM~20_combout\) ) ) ) # ( !\RAM64|ram~426_q\ & ( \ROM|memROM~7_combout\ & ( (!\ROM|memROM~20_combout\ & \RAM64|ram~298_q\) ) ) ) # ( 
-- \RAM64|ram~426_q\ & ( !\ROM|memROM~7_combout\ & ( (!\ROM|memROM~20_combout\ & ((\RAM64|ram~282_q\))) # (\ROM|memROM~20_combout\ & (\RAM64|ram~410_q\)) ) ) ) # ( !\RAM64|ram~426_q\ & ( !\ROM|memROM~7_combout\ & ( (!\ROM|memROM~20_combout\ & 
-- ((\RAM64|ram~282_q\))) # (\ROM|memROM~20_combout\ & (\RAM64|ram~410_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001101010011010100000000111100000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~410_q\,
	datab => \RAM64|ALT_INV_ram~282_q\,
	datac => \ROM|ALT_INV_memROM~20_combout\,
	datad => \RAM64|ALT_INV_ram~298_q\,
	datae => \RAM64|ALT_INV_ram~426_q\,
	dataf => \ROM|ALT_INV_memROM~7_combout\,
	combout => \RAM64|ram~597_combout\);

-- Location: FF_X17_Y2_N4
\RAM64|ram~402\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM64|ram~714_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~402_q\);

-- Location: FF_X14_Y2_N32
\RAM64|ram~418\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM64|ram~718_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~418_q\);

-- Location: FF_X17_Y2_N58
\RAM64|ram~274\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM64|ram~698_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~274_q\);

-- Location: FF_X14_Y2_N22
\RAM64|ram~290\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM64|ram~702_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~290_q\);

-- Location: LABCELL_X14_Y2_N18
\RAM64|ram~595\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~595_combout\ = ( \ROM|memROM~7_combout\ & ( \ROM|memROM~20_combout\ & ( \RAM64|ram~418_q\ ) ) ) # ( !\ROM|memROM~7_combout\ & ( \ROM|memROM~20_combout\ & ( \RAM64|ram~402_q\ ) ) ) # ( \ROM|memROM~7_combout\ & ( !\ROM|memROM~20_combout\ & ( 
-- \RAM64|ram~290_q\ ) ) ) # ( !\ROM|memROM~7_combout\ & ( !\ROM|memROM~20_combout\ & ( \RAM64|ram~274_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~402_q\,
	datab => \RAM64|ALT_INV_ram~418_q\,
	datac => \RAM64|ALT_INV_ram~274_q\,
	datad => \RAM64|ALT_INV_ram~290_q\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~20_combout\,
	combout => \RAM64|ram~595_combout\);

-- Location: FF_X20_Y5_N52
\RAM64|ram~474\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM64|ram~750_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~474_q\);

-- Location: FF_X18_Y4_N13
\RAM64|ram~346\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM64|ram~734_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~346_q\);

-- Location: FF_X14_Y6_N37
\RAM64|ram~362\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM64|ram~742_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~362_q\);

-- Location: FF_X14_Y6_N56
\RAM64|ram~490\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM64|ram~758_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~490_q\);

-- Location: LABCELL_X14_Y6_N54
\RAM64|ram~598\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~598_combout\ = ( \RAM64|ram~490_q\ & ( \ROM|memROM~20_combout\ & ( (\ROM|memROM~7_combout\) # (\RAM64|ram~474_q\) ) ) ) # ( !\RAM64|ram~490_q\ & ( \ROM|memROM~20_combout\ & ( (\RAM64|ram~474_q\ & !\ROM|memROM~7_combout\) ) ) ) # ( 
-- \RAM64|ram~490_q\ & ( !\ROM|memROM~20_combout\ & ( (!\ROM|memROM~7_combout\ & (\RAM64|ram~346_q\)) # (\ROM|memROM~7_combout\ & ((\RAM64|ram~362_q\))) ) ) ) # ( !\RAM64|ram~490_q\ & ( !\ROM|memROM~20_combout\ & ( (!\ROM|memROM~7_combout\ & 
-- (\RAM64|ram~346_q\)) # (\ROM|memROM~7_combout\ & ((\RAM64|ram~362_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~474_q\,
	datab => \RAM64|ALT_INV_ram~346_q\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \RAM64|ALT_INV_ram~362_q\,
	datae => \RAM64|ALT_INV_ram~490_q\,
	dataf => \ROM|ALT_INV_memROM~20_combout\,
	combout => \RAM64|ram~598_combout\);

-- Location: MLABCELL_X13_Y3_N27
\RAM64|ram~599\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~599_combout\ = ( \RAM64|ram~595_combout\ & ( \RAM64|ram~598_combout\ & ( (!\ROM|memROM~28_combout\ & ((!\ROM|memROM~9_combout\) # ((\RAM64|ram~597_combout\)))) # (\ROM|memROM~28_combout\ & (((\RAM64|ram~596_combout\)) # 
-- (\ROM|memROM~9_combout\))) ) ) ) # ( !\RAM64|ram~595_combout\ & ( \RAM64|ram~598_combout\ & ( (!\ROM|memROM~28_combout\ & (\ROM|memROM~9_combout\ & ((\RAM64|ram~597_combout\)))) # (\ROM|memROM~28_combout\ & (((\RAM64|ram~596_combout\)) # 
-- (\ROM|memROM~9_combout\))) ) ) ) # ( \RAM64|ram~595_combout\ & ( !\RAM64|ram~598_combout\ & ( (!\ROM|memROM~28_combout\ & ((!\ROM|memROM~9_combout\) # ((\RAM64|ram~597_combout\)))) # (\ROM|memROM~28_combout\ & (!\ROM|memROM~9_combout\ & 
-- (\RAM64|ram~596_combout\))) ) ) ) # ( !\RAM64|ram~595_combout\ & ( !\RAM64|ram~598_combout\ & ( (!\ROM|memROM~28_combout\ & (\ROM|memROM~9_combout\ & ((\RAM64|ram~597_combout\)))) # (\ROM|memROM~28_combout\ & (!\ROM|memROM~9_combout\ & 
-- (\RAM64|ram~596_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100110100011001010111000010101001101111001110110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~28_combout\,
	datab => \ROM|ALT_INV_memROM~9_combout\,
	datac => \RAM64|ALT_INV_ram~596_combout\,
	datad => \RAM64|ALT_INV_ram~597_combout\,
	datae => \RAM64|ALT_INV_ram~595_combout\,
	dataf => \RAM64|ALT_INV_ram~598_combout\,
	combout => \RAM64|ram~599_combout\);

-- Location: FF_X19_Y5_N14
\RAM64|ram~186\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM64|ram~784_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~186_q\);

-- Location: LABCELL_X16_Y8_N30
\RAM64|ram~178feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~178feeder_combout\ = ( \CPU|REGA|DOUT\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REGA|ALT_INV_DOUT\(3),
	combout => \RAM64|ram~178feeder_combout\);

-- Location: FF_X16_Y8_N32
\RAM64|ram~178\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM64|ram~178feeder_combout\,
	ena => \RAM64|ram~776_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~178_q\);

-- Location: FF_X16_Y4_N37
\RAM64|ram~194\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM64|ram~780_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~194_q\);

-- Location: FF_X13_Y3_N2
\RAM64|ram~202\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM64|ram~788_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~202_q\);

-- Location: MLABCELL_X13_Y3_N0
\RAM64|ram~602\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~602_combout\ = ( \RAM64|ram~202_q\ & ( \ROM|memROM~9_combout\ & ( (\ROM|memROM~7_combout\) # (\RAM64|ram~186_q\) ) ) ) # ( !\RAM64|ram~202_q\ & ( \ROM|memROM~9_combout\ & ( (\RAM64|ram~186_q\ & !\ROM|memROM~7_combout\) ) ) ) # ( 
-- \RAM64|ram~202_q\ & ( !\ROM|memROM~9_combout\ & ( (!\ROM|memROM~7_combout\ & (\RAM64|ram~178_q\)) # (\ROM|memROM~7_combout\ & ((\RAM64|ram~194_q\))) ) ) ) # ( !\RAM64|ram~202_q\ & ( !\ROM|memROM~9_combout\ & ( (!\ROM|memROM~7_combout\ & 
-- (\RAM64|ram~178_q\)) # (\ROM|memROM~7_combout\ & ((\RAM64|ram~194_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111101010101000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~186_q\,
	datab => \RAM64|ALT_INV_ram~178_q\,
	datac => \RAM64|ALT_INV_ram~194_q\,
	datad => \ROM|ALT_INV_memROM~7_combout\,
	datae => \RAM64|ALT_INV_ram~202_q\,
	dataf => \ROM|ALT_INV_memROM~9_combout\,
	combout => \RAM64|ram~602_combout\);

-- Location: FF_X16_Y3_N41
\RAM64|ram~114\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM64|ram~792_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~114_q\);

-- Location: FF_X10_Y5_N46
\RAM64|ram~122\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM64|ram~800_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~122_q\);

-- Location: FF_X12_Y5_N25
\RAM64|ram~130\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM64|ram~796_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~130_q\);

-- Location: FF_X13_Y3_N38
\RAM64|ram~138\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM64|ram~804_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~138_q\);

-- Location: MLABCELL_X13_Y3_N36
\RAM64|ram~601\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~601_combout\ = ( \RAM64|ram~138_q\ & ( \ROM|memROM~9_combout\ & ( (\ROM|memROM~7_combout\) # (\RAM64|ram~122_q\) ) ) ) # ( !\RAM64|ram~138_q\ & ( \ROM|memROM~9_combout\ & ( (\RAM64|ram~122_q\ & !\ROM|memROM~7_combout\) ) ) ) # ( 
-- \RAM64|ram~138_q\ & ( !\ROM|memROM~9_combout\ & ( (!\ROM|memROM~7_combout\ & (\RAM64|ram~114_q\)) # (\ROM|memROM~7_combout\ & ((\RAM64|ram~130_q\))) ) ) ) # ( !\RAM64|ram~138_q\ & ( !\ROM|memROM~9_combout\ & ( (!\ROM|memROM~7_combout\ & 
-- (\RAM64|ram~114_q\)) # (\ROM|memROM~7_combout\ & ((\RAM64|ram~130_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000111100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~114_q\,
	datab => \RAM64|ALT_INV_ram~122_q\,
	datac => \RAM64|ALT_INV_ram~130_q\,
	datad => \ROM|ALT_INV_memROM~7_combout\,
	datae => \RAM64|ALT_INV_ram~138_q\,
	dataf => \ROM|ALT_INV_memROM~9_combout\,
	combout => \RAM64|ram~601_combout\);

-- Location: FF_X18_Y4_N4
\RAM64|ram~258\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM64|ram~812_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~258_q\);

-- Location: FF_X10_Y5_N53
\RAM64|ram~250\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM64|ram~816_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~250_q\);

-- Location: FF_X13_Y4_N52
\RAM64|ram~266\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM64|ram~820_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~266_q\);

-- Location: FF_X18_Y2_N16
\RAM64|ram~242\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM64|ram~808_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~242_q\);

-- Location: MLABCELL_X13_Y3_N21
\RAM64|ram~603\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~603_combout\ = ( \ROM|memROM~7_combout\ & ( \ROM|memROM~9_combout\ & ( \RAM64|ram~266_q\ ) ) ) # ( !\ROM|memROM~7_combout\ & ( \ROM|memROM~9_combout\ & ( \RAM64|ram~250_q\ ) ) ) # ( \ROM|memROM~7_combout\ & ( !\ROM|memROM~9_combout\ & ( 
-- \RAM64|ram~258_q\ ) ) ) # ( !\ROM|memROM~7_combout\ & ( !\ROM|memROM~9_combout\ & ( \RAM64|ram~242_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111010101010101010100110011001100110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~258_q\,
	datab => \RAM64|ALT_INV_ram~250_q\,
	datac => \RAM64|ALT_INV_ram~266_q\,
	datad => \RAM64|ALT_INV_ram~242_q\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~9_combout\,
	combout => \RAM64|ram~603_combout\);

-- Location: FF_X12_Y3_N26
\RAM64|ram~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM64|ram~768_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~58_q\);

-- Location: FF_X12_Y3_N55
\RAM64|ram~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM64|ram~764_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~66_q\);

-- Location: FF_X16_Y6_N35
\RAM64|ram~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM64|ram~760_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~50_q\);

-- Location: FF_X12_Y3_N20
\RAM64|ram~74\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM64|ram~772_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~74_q\);

-- Location: LABCELL_X12_Y3_N18
\RAM64|ram~600\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~600_combout\ = ( \RAM64|ram~74_q\ & ( \ROM|memROM~9_combout\ & ( (\ROM|memROM~7_combout\) # (\RAM64|ram~58_q\) ) ) ) # ( !\RAM64|ram~74_q\ & ( \ROM|memROM~9_combout\ & ( (\RAM64|ram~58_q\ & !\ROM|memROM~7_combout\) ) ) ) # ( \RAM64|ram~74_q\ & 
-- ( !\ROM|memROM~9_combout\ & ( (!\ROM|memROM~7_combout\ & ((\RAM64|ram~50_q\))) # (\ROM|memROM~7_combout\ & (\RAM64|ram~66_q\)) ) ) ) # ( !\RAM64|ram~74_q\ & ( !\ROM|memROM~9_combout\ & ( (!\ROM|memROM~7_combout\ & ((\RAM64|ram~50_q\))) # 
-- (\ROM|memROM~7_combout\ & (\RAM64|ram~66_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001101010101000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~58_q\,
	datab => \RAM64|ALT_INV_ram~66_q\,
	datac => \RAM64|ALT_INV_ram~50_q\,
	datad => \ROM|ALT_INV_memROM~7_combout\,
	datae => \RAM64|ALT_INV_ram~74_q\,
	dataf => \ROM|ALT_INV_memROM~9_combout\,
	combout => \RAM64|ram~600_combout\);

-- Location: MLABCELL_X13_Y3_N30
\RAM64|ram~604\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~604_combout\ = ( \RAM64|ram~603_combout\ & ( \RAM64|ram~600_combout\ & ( (!\ROM|memROM~28_combout\ & (((!\ROM|memROM~20_combout\)) # (\RAM64|ram~602_combout\))) # (\ROM|memROM~28_combout\ & (((\ROM|memROM~20_combout\) # 
-- (\RAM64|ram~601_combout\)))) ) ) ) # ( !\RAM64|ram~603_combout\ & ( \RAM64|ram~600_combout\ & ( (!\ROM|memROM~28_combout\ & (((!\ROM|memROM~20_combout\)) # (\RAM64|ram~602_combout\))) # (\ROM|memROM~28_combout\ & (((\RAM64|ram~601_combout\ & 
-- !\ROM|memROM~20_combout\)))) ) ) ) # ( \RAM64|ram~603_combout\ & ( !\RAM64|ram~600_combout\ & ( (!\ROM|memROM~28_combout\ & (\RAM64|ram~602_combout\ & ((\ROM|memROM~20_combout\)))) # (\ROM|memROM~28_combout\ & (((\ROM|memROM~20_combout\) # 
-- (\RAM64|ram~601_combout\)))) ) ) ) # ( !\RAM64|ram~603_combout\ & ( !\RAM64|ram~600_combout\ & ( (!\ROM|memROM~28_combout\ & (\RAM64|ram~602_combout\ & ((\ROM|memROM~20_combout\)))) # (\ROM|memROM~28_combout\ & (((\RAM64|ram~601_combout\ & 
-- !\ROM|memROM~20_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000100000000110111011111001111010001001100111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~602_combout\,
	datab => \ROM|ALT_INV_memROM~28_combout\,
	datac => \RAM64|ALT_INV_ram~601_combout\,
	datad => \ROM|ALT_INV_memROM~20_combout\,
	datae => \RAM64|ALT_INV_ram~603_combout\,
	dataf => \RAM64|ALT_INV_ram~600_combout\,
	combout => \RAM64|ram~604_combout\);

-- Location: FF_X16_Y5_N26
\RAM64|ram~218\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM64|ram~748_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~218_q\);

-- Location: FF_X18_Y5_N55
\RAM64|ram~154\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM64|ram~720_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~154_q\);

-- Location: FF_X16_Y5_N35
\RAM64|ram~234\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM64|ram~756_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~234_q\);

-- Location: FF_X14_Y5_N56
\RAM64|ram~170\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM64|ram~724_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~170_q\);

-- Location: LABCELL_X16_Y5_N42
\RAM64|ram~593\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~593_combout\ = ( \ROM|memROM~7_combout\ & ( \ROM|memROM~28_combout\ & ( \RAM64|ram~234_q\ ) ) ) # ( !\ROM|memROM~7_combout\ & ( \ROM|memROM~28_combout\ & ( \RAM64|ram~218_q\ ) ) ) # ( \ROM|memROM~7_combout\ & ( !\ROM|memROM~28_combout\ & ( 
-- \RAM64|ram~170_q\ ) ) ) # ( !\ROM|memROM~7_combout\ & ( !\ROM|memROM~28_combout\ & ( \RAM64|ram~154_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000001111111101010101010101010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~218_q\,
	datab => \RAM64|ALT_INV_ram~154_q\,
	datac => \RAM64|ALT_INV_ram~234_q\,
	datad => \RAM64|ALT_INV_ram~170_q\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~28_combout\,
	combout => \RAM64|ram~593_combout\);

-- Location: FF_X17_Y2_N50
\RAM64|ram~146\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM64|ram~712_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~146_q\);

-- Location: FF_X14_Y7_N53
\RAM64|ram~210\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM64|ram~744_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~210_q\);

-- Location: FF_X13_Y6_N22
\RAM64|ram~162\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM64|ram~716_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~162_q\);

-- Location: FF_X14_Y4_N35
\RAM64|ram~226\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM64|ram~752_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~226_q\);

-- Location: LABCELL_X14_Y4_N33
\RAM64|ram~592\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~592_combout\ = ( \RAM64|ram~226_q\ & ( \ROM|memROM~28_combout\ & ( (\ROM|memROM~7_combout\) # (\RAM64|ram~210_q\) ) ) ) # ( !\RAM64|ram~226_q\ & ( \ROM|memROM~28_combout\ & ( (\RAM64|ram~210_q\ & !\ROM|memROM~7_combout\) ) ) ) # ( 
-- \RAM64|ram~226_q\ & ( !\ROM|memROM~28_combout\ & ( (!\ROM|memROM~7_combout\ & (\RAM64|ram~146_q\)) # (\ROM|memROM~7_combout\ & ((\RAM64|ram~162_q\))) ) ) ) # ( !\RAM64|ram~226_q\ & ( !\ROM|memROM~28_combout\ & ( (!\ROM|memROM~7_combout\ & 
-- (\RAM64|ram~146_q\)) # (\ROM|memROM~7_combout\ & ((\RAM64|ram~162_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000111100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~146_q\,
	datab => \RAM64|ALT_INV_ram~210_q\,
	datac => \RAM64|ALT_INV_ram~162_q\,
	datad => \ROM|ALT_INV_memROM~7_combout\,
	datae => \RAM64|ALT_INV_ram~226_q\,
	dataf => \ROM|ALT_INV_memROM~28_combout\,
	combout => \RAM64|ram~592_combout\);

-- Location: MLABCELL_X18_Y3_N33
\RAM64|ram~18feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~18feeder_combout\ = ( \CPU|REGA|DOUT\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REGA|ALT_INV_DOUT\(3),
	combout => \RAM64|ram~18feeder_combout\);

-- Location: FF_X18_Y3_N35
\RAM64|ram~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM64|ram~18feeder_combout\,
	ena => \RAM64|ram~696_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~18_q\);

-- Location: FF_X14_Y7_N13
\RAM64|ram~82\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM64|ram~728_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~82_q\);

-- Location: FF_X14_Y4_N29
\RAM64|ram~98\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM64|ram~736_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~98_q\);

-- Location: FF_X14_Y1_N52
\RAM64|ram~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM64|ram~700_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~34_q\);

-- Location: LABCELL_X14_Y4_N24
\RAM64|ram~590\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~590_combout\ = ( \ROM|memROM~7_combout\ & ( \ROM|memROM~28_combout\ & ( \RAM64|ram~98_q\ ) ) ) # ( !\ROM|memROM~7_combout\ & ( \ROM|memROM~28_combout\ & ( \RAM64|ram~82_q\ ) ) ) # ( \ROM|memROM~7_combout\ & ( !\ROM|memROM~28_combout\ & ( 
-- \RAM64|ram~34_q\ ) ) ) # ( !\ROM|memROM~7_combout\ & ( !\ROM|memROM~28_combout\ & ( \RAM64|ram~18_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000001111111100110011001100110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~18_q\,
	datab => \RAM64|ALT_INV_ram~82_q\,
	datac => \RAM64|ALT_INV_ram~98_q\,
	datad => \RAM64|ALT_INV_ram~34_q\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~28_combout\,
	combout => \RAM64|ram~590_combout\);

-- Location: FF_X19_Y3_N58
\RAM64|ram~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM64|ram~704_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~26_q\);

-- Location: FF_X13_Y2_N32
\RAM64|ram~106\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM64|ram~740_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~106_q\);

-- Location: LABCELL_X19_Y8_N3
\RAM64|ram~90feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~90feeder_combout\ = ( \CPU|REGA|DOUT\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REGA|ALT_INV_DOUT\(3),
	combout => \RAM64|ram~90feeder_combout\);

-- Location: FF_X19_Y8_N5
\RAM64|ram~90\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM64|ram~90feeder_combout\,
	ena => \RAM64|ram~732_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~90_q\);

-- Location: FF_X19_Y3_N43
\RAM64|ram~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM64|ram~708_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~42_q\);

-- Location: MLABCELL_X13_Y2_N57
\RAM64|ram~591\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~591_combout\ = ( \ROM|memROM~7_combout\ & ( \ROM|memROM~28_combout\ & ( \RAM64|ram~106_q\ ) ) ) # ( !\ROM|memROM~7_combout\ & ( \ROM|memROM~28_combout\ & ( \RAM64|ram~90_q\ ) ) ) # ( \ROM|memROM~7_combout\ & ( !\ROM|memROM~28_combout\ & ( 
-- \RAM64|ram~42_q\ ) ) ) # ( !\ROM|memROM~7_combout\ & ( !\ROM|memROM~28_combout\ & ( \RAM64|ram~26_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000001111111100001111000011110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~26_q\,
	datab => \RAM64|ALT_INV_ram~106_q\,
	datac => \RAM64|ALT_INV_ram~90_q\,
	datad => \RAM64|ALT_INV_ram~42_q\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~28_combout\,
	combout => \RAM64|ram~591_combout\);

-- Location: MLABCELL_X13_Y3_N54
\RAM64|ram~594\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~594_combout\ = ( \RAM64|ram~590_combout\ & ( \RAM64|ram~591_combout\ & ( (!\ROM|memROM~20_combout\) # ((!\ROM|memROM~9_combout\ & ((\RAM64|ram~592_combout\))) # (\ROM|memROM~9_combout\ & (\RAM64|ram~593_combout\))) ) ) ) # ( 
-- !\RAM64|ram~590_combout\ & ( \RAM64|ram~591_combout\ & ( (!\ROM|memROM~20_combout\ & (((\ROM|memROM~9_combout\)))) # (\ROM|memROM~20_combout\ & ((!\ROM|memROM~9_combout\ & ((\RAM64|ram~592_combout\))) # (\ROM|memROM~9_combout\ & 
-- (\RAM64|ram~593_combout\)))) ) ) ) # ( \RAM64|ram~590_combout\ & ( !\RAM64|ram~591_combout\ & ( (!\ROM|memROM~20_combout\ & (((!\ROM|memROM~9_combout\)))) # (\ROM|memROM~20_combout\ & ((!\ROM|memROM~9_combout\ & ((\RAM64|ram~592_combout\))) # 
-- (\ROM|memROM~9_combout\ & (\RAM64|ram~593_combout\)))) ) ) ) # ( !\RAM64|ram~590_combout\ & ( !\RAM64|ram~591_combout\ & ( (\ROM|memROM~20_combout\ & ((!\ROM|memROM~9_combout\ & ((\RAM64|ram~592_combout\))) # (\ROM|memROM~9_combout\ & 
-- (\RAM64|ram~593_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100010001110011110001000100000011110111011100111111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~593_combout\,
	datab => \ROM|ALT_INV_memROM~20_combout\,
	datac => \RAM64|ALT_INV_ram~592_combout\,
	datad => \ROM|ALT_INV_memROM~9_combout\,
	datae => \RAM64|ALT_INV_ram~590_combout\,
	dataf => \RAM64|ALT_INV_ram~591_combout\,
	combout => \RAM64|ram~594_combout\);

-- Location: FF_X16_Y4_N2
\RAM64|ram~450\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM64|ram~782_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~450_q\);

-- Location: FF_X17_Y3_N50
\RAM64|ram~498\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM64|ram~810_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~498_q\);

-- Location: FF_X16_Y2_N53
\RAM64|ram~434\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM64|ram~778_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~434_q\);

-- Location: FF_X17_Y3_N40
\RAM64|ram~514\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM64|ram~814_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~514_q\);

-- Location: LABCELL_X16_Y4_N33
\RAM64|ram~607\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~607_combout\ = ( \ROM|memROM~7_combout\ & ( \ROM|memROM~28_combout\ & ( \RAM64|ram~514_q\ ) ) ) # ( !\ROM|memROM~7_combout\ & ( \ROM|memROM~28_combout\ & ( \RAM64|ram~498_q\ ) ) ) # ( \ROM|memROM~7_combout\ & ( !\ROM|memROM~28_combout\ & ( 
-- \RAM64|ram~450_q\ ) ) ) # ( !\ROM|memROM~7_combout\ & ( !\ROM|memROM~28_combout\ & ( \RAM64|ram~434_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010101010101010100110011001100110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~450_q\,
	datab => \RAM64|ALT_INV_ram~498_q\,
	datac => \RAM64|ALT_INV_ram~434_q\,
	datad => \RAM64|ALT_INV_ram~514_q\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~28_combout\,
	combout => \RAM64|ram~607_combout\);

-- Location: FF_X17_Y4_N5
\RAM64|ram~370\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM64|ram~794_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~370_q\);

-- Location: FF_X17_Y4_N14
\RAM64|ram~322\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM64|ram~766_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~322_q\);

-- Location: FF_X16_Y2_N29
\RAM64|ram~306\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM64|ram~762_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~306_q\);

-- Location: FF_X17_Y4_N26
\RAM64|ram~386\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM64|ram~798_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~386_q\);

-- Location: LABCELL_X17_Y4_N24
\RAM64|ram~605\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~605_combout\ = ( \RAM64|ram~386_q\ & ( \ROM|memROM~28_combout\ & ( (\ROM|memROM~7_combout\) # (\RAM64|ram~370_q\) ) ) ) # ( !\RAM64|ram~386_q\ & ( \ROM|memROM~28_combout\ & ( (\RAM64|ram~370_q\ & !\ROM|memROM~7_combout\) ) ) ) # ( 
-- \RAM64|ram~386_q\ & ( !\ROM|memROM~28_combout\ & ( (!\ROM|memROM~7_combout\ & ((\RAM64|ram~306_q\))) # (\ROM|memROM~7_combout\ & (\RAM64|ram~322_q\)) ) ) ) # ( !\RAM64|ram~386_q\ & ( !\ROM|memROM~28_combout\ & ( (!\ROM|memROM~7_combout\ & 
-- ((\RAM64|ram~306_q\))) # (\ROM|memROM~7_combout\ & (\RAM64|ram~322_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001101010101000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~370_q\,
	datab => \RAM64|ALT_INV_ram~322_q\,
	datac => \RAM64|ALT_INV_ram~306_q\,
	datad => \ROM|ALT_INV_memROM~7_combout\,
	datae => \RAM64|ALT_INV_ram~386_q\,
	dataf => \ROM|ALT_INV_memROM~28_combout\,
	combout => \RAM64|ram~605_combout\);

-- Location: LABCELL_X17_Y7_N54
\RAM64|ram~330feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~330feeder_combout\ = ( \CPU|REGA|DOUT\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REGA|ALT_INV_DOUT\(3),
	combout => \RAM64|ram~330feeder_combout\);

-- Location: FF_X17_Y7_N56
\RAM64|ram~330\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM64|ram~330feeder_combout\,
	ena => \RAM64|ram~774_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~330_q\);

-- Location: FF_X12_Y4_N37
\RAM64|ram~378\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM64|ram~802_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~378_q\);

-- Location: FF_X12_Y6_N31
\RAM64|ram~314\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM64|ram~770_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~314_q\);

-- Location: FF_X17_Y3_N2
\RAM64|ram~394\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM64|ram~806_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~394_q\);

-- Location: LABCELL_X17_Y3_N0
\RAM64|ram~606\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~606_combout\ = ( \RAM64|ram~394_q\ & ( \ROM|memROM~7_combout\ & ( (\ROM|memROM~28_combout\) # (\RAM64|ram~330_q\) ) ) ) # ( !\RAM64|ram~394_q\ & ( \ROM|memROM~7_combout\ & ( (\RAM64|ram~330_q\ & !\ROM|memROM~28_combout\) ) ) ) # ( 
-- \RAM64|ram~394_q\ & ( !\ROM|memROM~7_combout\ & ( (!\ROM|memROM~28_combout\ & ((\RAM64|ram~314_q\))) # (\ROM|memROM~28_combout\ & (\RAM64|ram~378_q\)) ) ) ) # ( !\RAM64|ram~394_q\ & ( !\ROM|memROM~7_combout\ & ( (!\ROM|memROM~28_combout\ & 
-- ((\RAM64|ram~314_q\))) # (\ROM|memROM~28_combout\ & (\RAM64|ram~378_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111101000100010001000111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~330_q\,
	datab => \ROM|ALT_INV_memROM~28_combout\,
	datac => \RAM64|ALT_INV_ram~378_q\,
	datad => \RAM64|ALT_INV_ram~314_q\,
	datae => \RAM64|ALT_INV_ram~394_q\,
	dataf => \ROM|ALT_INV_memROM~7_combout\,
	combout => \RAM64|ram~606_combout\);

-- Location: LABCELL_X12_Y2_N0
\RAM64|ram~458feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~458feeder_combout\ = ( \CPU|REGA|DOUT\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REGA|ALT_INV_DOUT\(3),
	combout => \RAM64|ram~458feeder_combout\);

-- Location: FF_X12_Y2_N1
\RAM64|ram~458\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM64|ram~458feeder_combout\,
	ena => \RAM64|ram~790_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~458_q\);

-- Location: LABCELL_X12_Y2_N15
\RAM64|ram~522feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~522feeder_combout\ = ( \CPU|REGA|DOUT\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REGA|ALT_INV_DOUT\(3),
	combout => \RAM64|ram~522feeder_combout\);

-- Location: FF_X12_Y2_N16
\RAM64|ram~522\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM64|ram~522feeder_combout\,
	ena => \RAM64|ram~822_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~522_q\);

-- Location: FF_X14_Y3_N10
\RAM64|ram~442\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM64|ram~786_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~442_q\);

-- Location: FF_X13_Y2_N5
\RAM64|ram~506\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM64|ram~818_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~506_q\);

-- Location: MLABCELL_X13_Y2_N3
\RAM64|ram~608\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~608_combout\ = ( \RAM64|ram~506_q\ & ( \ROM|memROM~28_combout\ & ( (!\ROM|memROM~7_combout\) # (\RAM64|ram~522_q\) ) ) ) # ( !\RAM64|ram~506_q\ & ( \ROM|memROM~28_combout\ & ( (\RAM64|ram~522_q\ & \ROM|memROM~7_combout\) ) ) ) # ( 
-- \RAM64|ram~506_q\ & ( !\ROM|memROM~28_combout\ & ( (!\ROM|memROM~7_combout\ & ((\RAM64|ram~442_q\))) # (\ROM|memROM~7_combout\ & (\RAM64|ram~458_q\)) ) ) ) # ( !\RAM64|ram~506_q\ & ( !\ROM|memROM~28_combout\ & ( (!\ROM|memROM~7_combout\ & 
-- ((\RAM64|ram~442_q\))) # (\ROM|memROM~7_combout\ & (\RAM64|ram~458_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100000011000000111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~458_q\,
	datab => \RAM64|ALT_INV_ram~522_q\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \RAM64|ALT_INV_ram~442_q\,
	datae => \RAM64|ALT_INV_ram~506_q\,
	dataf => \ROM|ALT_INV_memROM~28_combout\,
	combout => \RAM64|ram~608_combout\);

-- Location: MLABCELL_X13_Y3_N42
\RAM64|ram~609\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~609_combout\ = ( \RAM64|ram~606_combout\ & ( \RAM64|ram~608_combout\ & ( ((!\ROM|memROM~20_combout\ & ((\RAM64|ram~605_combout\))) # (\ROM|memROM~20_combout\ & (\RAM64|ram~607_combout\))) # (\ROM|memROM~9_combout\) ) ) ) # ( 
-- !\RAM64|ram~606_combout\ & ( \RAM64|ram~608_combout\ & ( (!\ROM|memROM~9_combout\ & ((!\ROM|memROM~20_combout\ & ((\RAM64|ram~605_combout\))) # (\ROM|memROM~20_combout\ & (\RAM64|ram~607_combout\)))) # (\ROM|memROM~9_combout\ & 
-- (((\ROM|memROM~20_combout\)))) ) ) ) # ( \RAM64|ram~606_combout\ & ( !\RAM64|ram~608_combout\ & ( (!\ROM|memROM~9_combout\ & ((!\ROM|memROM~20_combout\ & ((\RAM64|ram~605_combout\))) # (\ROM|memROM~20_combout\ & (\RAM64|ram~607_combout\)))) # 
-- (\ROM|memROM~9_combout\ & (((!\ROM|memROM~20_combout\)))) ) ) ) # ( !\RAM64|ram~606_combout\ & ( !\RAM64|ram~608_combout\ & ( (!\ROM|memROM~9_combout\ & ((!\ROM|memROM~20_combout\ & ((\RAM64|ram~605_combout\))) # (\ROM|memROM~20_combout\ & 
-- (\RAM64|ram~607_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110001000100001111110100010000001100011101110011111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~607_combout\,
	datab => \ROM|ALT_INV_memROM~9_combout\,
	datac => \RAM64|ALT_INV_ram~605_combout\,
	datad => \ROM|ALT_INV_memROM~20_combout\,
	datae => \RAM64|ALT_INV_ram~606_combout\,
	dataf => \RAM64|ALT_INV_ram~608_combout\,
	combout => \RAM64|ram~609_combout\);

-- Location: MLABCELL_X13_Y3_N12
\RAM64|ram~610\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~610_combout\ = ( \RAM64|ram~594_combout\ & ( \RAM64|ram~609_combout\ & ( (!\ROM|memROM~3_combout\ & ((!\ROM|memROM~22_combout\) # ((\RAM64|ram~604_combout\)))) # (\ROM|memROM~3_combout\ & (((\RAM64|ram~599_combout\)) # 
-- (\ROM|memROM~22_combout\))) ) ) ) # ( !\RAM64|ram~594_combout\ & ( \RAM64|ram~609_combout\ & ( (!\ROM|memROM~3_combout\ & (\ROM|memROM~22_combout\ & ((\RAM64|ram~604_combout\)))) # (\ROM|memROM~3_combout\ & (((\RAM64|ram~599_combout\)) # 
-- (\ROM|memROM~22_combout\))) ) ) ) # ( \RAM64|ram~594_combout\ & ( !\RAM64|ram~609_combout\ & ( (!\ROM|memROM~3_combout\ & ((!\ROM|memROM~22_combout\) # ((\RAM64|ram~604_combout\)))) # (\ROM|memROM~3_combout\ & (!\ROM|memROM~22_combout\ & 
-- (\RAM64|ram~599_combout\))) ) ) ) # ( !\RAM64|ram~594_combout\ & ( !\RAM64|ram~609_combout\ & ( (!\ROM|memROM~3_combout\ & (\ROM|memROM~22_combout\ & ((\RAM64|ram~604_combout\)))) # (\ROM|memROM~3_combout\ & (!\ROM|memROM~22_combout\ & 
-- (\RAM64|ram~599_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100110100011001010111000010101001101111001110110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~3_combout\,
	datab => \ROM|ALT_INV_memROM~22_combout\,
	datac => \RAM64|ALT_INV_ram~599_combout\,
	datad => \RAM64|ALT_INV_ram~604_combout\,
	datae => \RAM64|ALT_INV_ram~594_combout\,
	dataf => \RAM64|ALT_INV_ram~609_combout\,
	combout => \RAM64|ram~610_combout\);

-- Location: LABCELL_X10_Y3_N54
\DATA_IN[3]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATA_IN[3]~8_combout\ = ( \RAM64|ram~610_combout\ & ( ((\SW[3]~input_o\ & \AND_SW0_7|saida~3_combout\)) # (\RAM64|dado_out~0_combout\) ) ) # ( !\RAM64|ram~610_combout\ & ( (\SW[3]~input_o\ & \AND_SW0_7|saida~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111101010101010111110101010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_dado_out~0_combout\,
	datac => \ALT_INV_SW[3]~input_o\,
	datad => \AND_SW0_7|ALT_INV_saida~3_combout\,
	dataf => \RAM64|ALT_INV_ram~610_combout\,
	combout => \DATA_IN[3]~8_combout\);

-- Location: MLABCELL_X9_Y3_N42
\CPU|ULA1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~17_sumout\ = SUM(( \CPU|REGA|DOUT\(4) ) + ( (!\CPU|DECODER1|saida[5]~2_combout\ & (((\DATA_IN[4]~9_combout\)))) # (\CPU|DECODER1|saida[5]~2_combout\ & ((!\CPU|DECODER1|saida[6]~6_combout\ & (\ROM|memROM~20_combout\)) # 
-- (\CPU|DECODER1|saida[6]~6_combout\ & ((\DATA_IN[4]~9_combout\))))) ) + ( \CPU|ULA1|Add0~14\ ))
-- \CPU|ULA1|Add0~18\ = CARRY(( \CPU|REGA|DOUT\(4) ) + ( (!\CPU|DECODER1|saida[5]~2_combout\ & (((\DATA_IN[4]~9_combout\)))) # (\CPU|DECODER1|saida[5]~2_combout\ & ((!\CPU|DECODER1|saida[6]~6_combout\ & (\ROM|memROM~20_combout\)) # 
-- (\CPU|DECODER1|saida[6]~6_combout\ & ((\DATA_IN[4]~9_combout\))))) ) + ( \CPU|ULA1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110110100000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER1|ALT_INV_saida[5]~2_combout\,
	datab => \CPU|DECODER1|ALT_INV_saida[6]~6_combout\,
	datac => \ROM|ALT_INV_memROM~20_combout\,
	datad => \CPU|REGA|ALT_INV_DOUT\(4),
	dataf => \ALT_INV_DATA_IN[4]~9_combout\,
	cin => \CPU|ULA1|Add0~14\,
	sumout => \CPU|ULA1|Add0~17_sumout\,
	cout => \CPU|ULA1|Add0~18\);

-- Location: LABCELL_X10_Y3_N27
\CPU|ULA1|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~5_sumout\ = SUM(( (!\CPU|DECODER1|saida[5]~2_combout\ & (((!\DATA_IN[4]~9_combout\)))) # (\CPU|DECODER1|saida[5]~2_combout\ & ((!\CPU|DECODER1|saida[6]~6_combout\ & (!\ROM|memROM~20_combout\)) # (\CPU|DECODER1|saida[6]~6_combout\ & 
-- ((!\DATA_IN[4]~9_combout\))))) ) + ( \CPU|REGA|DOUT\(4) ) + ( \CPU|ULA1|Add1~2\ ))
-- \CPU|ULA1|Add1~6\ = CARRY(( (!\CPU|DECODER1|saida[5]~2_combout\ & (((!\DATA_IN[4]~9_combout\)))) # (\CPU|DECODER1|saida[5]~2_combout\ & ((!\CPU|DECODER1|saida[6]~6_combout\ & (!\ROM|memROM~20_combout\)) # (\CPU|DECODER1|saida[6]~6_combout\ & 
-- ((!\DATA_IN[4]~9_combout\))))) ) + ( \CPU|REGA|DOUT\(4) ) + ( \CPU|ULA1|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111101101000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER1|ALT_INV_saida[5]~2_combout\,
	datab => \CPU|DECODER1|ALT_INV_saida[6]~6_combout\,
	datac => \ROM|ALT_INV_memROM~20_combout\,
	datad => \ALT_INV_DATA_IN[4]~9_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(4),
	cin => \CPU|ULA1|Add1~2\,
	sumout => \CPU|ULA1|Add1~5_sumout\,
	cout => \CPU|ULA1|Add1~6\);

-- Location: MLABCELL_X9_Y3_N0
\CPU|ULA1|saida[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[4]~4_combout\ = ( \CPU|ULA1|Add1~5_sumout\ & ( (!\CPU|DECODER1|saida[4]~3_combout\) # ((!\CPU|DECODER1|saida[6]~7_combout\ & ((\ROM|memROM~20_combout\))) # (\CPU|DECODER1|saida[6]~7_combout\ & (\DATA_IN[4]~9_combout\))) ) ) # ( 
-- !\CPU|ULA1|Add1~5_sumout\ & ( (\CPU|DECODER1|saida[4]~3_combout\ & ((!\CPU|DECODER1|saida[6]~7_combout\ & ((\ROM|memROM~20_combout\))) # (\CPU|DECODER1|saida[6]~7_combout\ & (\DATA_IN[4]~9_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101000000010100010110101011111011111010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER1|ALT_INV_saida[4]~3_combout\,
	datab => \CPU|DECODER1|ALT_INV_saida[6]~7_combout\,
	datac => \ALT_INV_DATA_IN[4]~9_combout\,
	datad => \ROM|ALT_INV_memROM~20_combout\,
	dataf => \CPU|ULA1|ALT_INV_Add1~5_sumout\,
	combout => \CPU|ULA1|saida[4]~4_combout\);

-- Location: FF_X9_Y3_N44
\CPU|REGA|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|ULA1|Add0~17_sumout\,
	asdata => \CPU|ULA1|saida[4]~4_combout\,
	sload => \CPU|DECODER1|saida[3]~4_combout\,
	ena => \CPU|DECODER1|saida[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(4));

-- Location: MLABCELL_X9_Y3_N45
\CPU|ULA1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~21_sumout\ = SUM(( \CPU|REGA|DOUT\(5) ) + ( (!\CPU|DECODER1|saida[5]~2_combout\ & (((\DATA_IN[5]~10_combout\)))) # (\CPU|DECODER1|saida[5]~2_combout\ & ((!\CPU|DECODER1|saida[6]~6_combout\ & (\ROM|memROM~3_combout\)) # 
-- (\CPU|DECODER1|saida[6]~6_combout\ & ((\DATA_IN[5]~10_combout\))))) ) + ( \CPU|ULA1|Add0~18\ ))
-- \CPU|ULA1|Add0~22\ = CARRY(( \CPU|REGA|DOUT\(5) ) + ( (!\CPU|DECODER1|saida[5]~2_combout\ & (((\DATA_IN[5]~10_combout\)))) # (\CPU|DECODER1|saida[5]~2_combout\ & ((!\CPU|DECODER1|saida[6]~6_combout\ & (\ROM|memROM~3_combout\)) # 
-- (\CPU|DECODER1|saida[6]~6_combout\ & ((\DATA_IN[5]~10_combout\))))) ) + ( \CPU|ULA1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110110100000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER1|ALT_INV_saida[5]~2_combout\,
	datab => \CPU|DECODER1|ALT_INV_saida[6]~6_combout\,
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datad => \CPU|REGA|ALT_INV_DOUT\(5),
	dataf => \ALT_INV_DATA_IN[5]~10_combout\,
	cin => \CPU|ULA1|Add0~18\,
	sumout => \CPU|ULA1|Add0~21_sumout\,
	cout => \CPU|ULA1|Add0~22\);

-- Location: MLABCELL_X9_Y3_N21
\CPU|ULA1|saida[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[5]~5_combout\ = ( \CPU|ULA1|Add1~9_sumout\ & ( (!\CPU|DECODER1|saida[4]~3_combout\) # ((!\CPU|DECODER1|saida[6]~7_combout\ & ((\ROM|memROM~3_combout\))) # (\CPU|DECODER1|saida[6]~7_combout\ & (\DATA_IN[5]~10_combout\))) ) ) # ( 
-- !\CPU|ULA1|Add1~9_sumout\ & ( (\CPU|DECODER1|saida[4]~3_combout\ & ((!\CPU|DECODER1|saida[6]~7_combout\ & ((\ROM|memROM~3_combout\))) # (\CPU|DECODER1|saida[6]~7_combout\ & (\DATA_IN[5]~10_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101000000010100010110101011111011111010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER1|ALT_INV_saida[4]~3_combout\,
	datab => \CPU|DECODER1|ALT_INV_saida[6]~7_combout\,
	datac => \ALT_INV_DATA_IN[5]~10_combout\,
	datad => \ROM|ALT_INV_memROM~3_combout\,
	dataf => \CPU|ULA1|ALT_INV_Add1~9_sumout\,
	combout => \CPU|ULA1|saida[5]~5_combout\);

-- Location: FF_X9_Y3_N47
\CPU|REGA|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|ULA1|Add0~21_sumout\,
	asdata => \CPU|ULA1|saida[5]~5_combout\,
	sload => \CPU|DECODER1|saida[3]~4_combout\,
	ena => \CPU|DECODER1|saida[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(5));

-- Location: FF_X14_Y1_N32
\RAM64|ram~356\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM64|ram~738_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~356_q\);

-- Location: FF_X18_Y7_N55
\RAM64|ram~340\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM64|ram~730_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~340_q\);

-- Location: FF_X14_Y7_N44
\RAM64|ram~468\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM64|ram~746_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~468_q\);

-- Location: FF_X14_Y4_N44
\RAM64|ram~484\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM64|ram~754_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~484_q\);

-- Location: LABCELL_X14_Y4_N42
\RAM64|ram~638\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~638_combout\ = ( \RAM64|ram~484_q\ & ( \ROM|memROM~20_combout\ & ( (\ROM|memROM~7_combout\) # (\RAM64|ram~468_q\) ) ) ) # ( !\RAM64|ram~484_q\ & ( \ROM|memROM~20_combout\ & ( (\RAM64|ram~468_q\ & !\ROM|memROM~7_combout\) ) ) ) # ( 
-- \RAM64|ram~484_q\ & ( !\ROM|memROM~20_combout\ & ( (!\ROM|memROM~7_combout\ & ((\RAM64|ram~340_q\))) # (\ROM|memROM~7_combout\ & (\RAM64|ram~356_q\)) ) ) ) # ( !\RAM64|ram~484_q\ & ( !\ROM|memROM~20_combout\ & ( (!\ROM|memROM~7_combout\ & 
-- ((\RAM64|ram~340_q\))) # (\ROM|memROM~7_combout\ & (\RAM64|ram~356_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101001100110101010100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~356_q\,
	datab => \RAM64|ALT_INV_ram~340_q\,
	datac => \RAM64|ALT_INV_ram~468_q\,
	datad => \ROM|ALT_INV_memROM~7_combout\,
	datae => \RAM64|ALT_INV_ram~484_q\,
	dataf => \ROM|ALT_INV_memROM~20_combout\,
	combout => \RAM64|ram~638_combout\);

-- Location: FF_X17_Y4_N16
\RAM64|ram~324\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM64|ram~766_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~324_q\);

-- Location: FF_X16_Y2_N56
\RAM64|ram~308\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM64|ram~762_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~308_q\);

-- Location: FF_X16_Y2_N35
\RAM64|ram~436\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM64|ram~778_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~436_q\);

-- Location: FF_X16_Y4_N50
\RAM64|ram~452\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM64|ram~782_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~452_q\);

-- Location: LABCELL_X16_Y4_N48
\RAM64|ram~639\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~639_combout\ = ( \RAM64|ram~452_q\ & ( \ROM|memROM~20_combout\ & ( (\ROM|memROM~7_combout\) # (\RAM64|ram~436_q\) ) ) ) # ( !\RAM64|ram~452_q\ & ( \ROM|memROM~20_combout\ & ( (\RAM64|ram~436_q\ & !\ROM|memROM~7_combout\) ) ) ) # ( 
-- \RAM64|ram~452_q\ & ( !\ROM|memROM~20_combout\ & ( (!\ROM|memROM~7_combout\ & ((\RAM64|ram~308_q\))) # (\ROM|memROM~7_combout\ & (\RAM64|ram~324_q\)) ) ) ) # ( !\RAM64|ram~452_q\ & ( !\ROM|memROM~20_combout\ & ( (!\ROM|memROM~7_combout\ & 
-- ((\RAM64|ram~308_q\))) # (\ROM|memROM~7_combout\ & (\RAM64|ram~324_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101001100110101010100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~324_q\,
	datab => \RAM64|ALT_INV_ram~308_q\,
	datac => \RAM64|ALT_INV_ram~436_q\,
	datad => \ROM|ALT_INV_memROM~7_combout\,
	datae => \RAM64|ALT_INV_ram~452_q\,
	dataf => \ROM|ALT_INV_memROM~20_combout\,
	combout => \RAM64|ram~639_combout\);

-- Location: FF_X17_Y3_N58
\RAM64|ram~516\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM64|ram~814_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~516_q\);

-- Location: FF_X17_Y4_N47
\RAM64|ram~372\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM64|ram~794_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~372_q\);

-- Location: FF_X17_Y4_N41
\RAM64|ram~388\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM64|ram~798_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~388_q\);

-- Location: FF_X17_Y3_N44
\RAM64|ram~500\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM64|ram~810_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~500_q\);

-- Location: LABCELL_X17_Y4_N15
\RAM64|ram~640\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~640_combout\ = ( \ROM|memROM~7_combout\ & ( \ROM|memROM~20_combout\ & ( \RAM64|ram~516_q\ ) ) ) # ( !\ROM|memROM~7_combout\ & ( \ROM|memROM~20_combout\ & ( \RAM64|ram~500_q\ ) ) ) # ( \ROM|memROM~7_combout\ & ( !\ROM|memROM~20_combout\ & ( 
-- \RAM64|ram~388_q\ ) ) ) # ( !\ROM|memROM~7_combout\ & ( !\ROM|memROM~20_combout\ & ( \RAM64|ram~372_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000011110000111100000000111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~516_q\,
	datab => \RAM64|ALT_INV_ram~372_q\,
	datac => \RAM64|ALT_INV_ram~388_q\,
	datad => \RAM64|ALT_INV_ram~500_q\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \ROM|ALT_INV_memROM~20_combout\,
	combout => \RAM64|ram~640_combout\);

-- Location: FF_X10_Y2_N7
\RAM64|ram~276\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM64|ram~698_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~276_q\);

-- Location: FF_X17_Y2_N37
\RAM64|ram~404\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM64|ram~714_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~404_q\);

-- Location: LABCELL_X14_Y2_N0
\RAM64|ram~292feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~292feeder_combout\ = ( \CPU|REGA|DOUT\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REGA|ALT_INV_DOUT\(5),
	combout => \RAM64|ram~292feeder_combout\);

-- Location: FF_X14_Y2_N2
\RAM64|ram~292\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM64|ram~292feeder_combout\,
	ena => \RAM64|ram~702_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~292_q\);

-- Location: FF_X14_Y2_N38
\RAM64|ram~420\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM64|ram~718_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~420_q\);

-- Location: LABCELL_X14_Y2_N36
\RAM64|ram~637\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~637_combout\ = ( \RAM64|ram~420_q\ & ( \ROM|memROM~20_combout\ & ( (\ROM|memROM~7_combout\) # (\RAM64|ram~404_q\) ) ) ) # ( !\RAM64|ram~420_q\ & ( \ROM|memROM~20_combout\ & ( (\RAM64|ram~404_q\ & !\ROM|memROM~7_combout\) ) ) ) # ( 
-- \RAM64|ram~420_q\ & ( !\ROM|memROM~20_combout\ & ( (!\ROM|memROM~7_combout\ & (\RAM64|ram~276_q\)) # (\ROM|memROM~7_combout\ & ((\RAM64|ram~292_q\))) ) ) ) # ( !\RAM64|ram~420_q\ & ( !\ROM|memROM~20_combout\ & ( (!\ROM|memROM~7_combout\ & 
-- (\RAM64|ram~276_q\)) # (\ROM|memROM~7_combout\ & ((\RAM64|ram~292_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000111100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~276_q\,
	datab => \RAM64|ALT_INV_ram~404_q\,
	datac => \RAM64|ALT_INV_ram~292_q\,
	datad => \ROM|ALT_INV_memROM~7_combout\,
	datae => \RAM64|ALT_INV_ram~420_q\,
	dataf => \ROM|ALT_INV_memROM~20_combout\,
	combout => \RAM64|ram~637_combout\);

-- Location: LABCELL_X10_Y4_N54
\RAM64|ram~641\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~641_combout\ = ( \RAM64|ram~640_combout\ & ( \RAM64|ram~637_combout\ & ( (!\ROM|memROM~28_combout\ & ((!\ROM|memROM~22_combout\) # ((\RAM64|ram~639_combout\)))) # (\ROM|memROM~28_combout\ & (((\RAM64|ram~638_combout\)) # 
-- (\ROM|memROM~22_combout\))) ) ) ) # ( !\RAM64|ram~640_combout\ & ( \RAM64|ram~637_combout\ & ( (!\ROM|memROM~28_combout\ & ((!\ROM|memROM~22_combout\) # ((\RAM64|ram~639_combout\)))) # (\ROM|memROM~28_combout\ & (!\ROM|memROM~22_combout\ & 
-- (\RAM64|ram~638_combout\))) ) ) ) # ( \RAM64|ram~640_combout\ & ( !\RAM64|ram~637_combout\ & ( (!\ROM|memROM~28_combout\ & (\ROM|memROM~22_combout\ & ((\RAM64|ram~639_combout\)))) # (\ROM|memROM~28_combout\ & (((\RAM64|ram~638_combout\)) # 
-- (\ROM|memROM~22_combout\))) ) ) ) # ( !\RAM64|ram~640_combout\ & ( !\RAM64|ram~637_combout\ & ( (!\ROM|memROM~28_combout\ & (\ROM|memROM~22_combout\ & ((\RAM64|ram~639_combout\)))) # (\ROM|memROM~28_combout\ & (!\ROM|memROM~22_combout\ & 
-- (\RAM64|ram~638_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100110000101010011011110001100101011101001110110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~28_combout\,
	datab => \ROM|ALT_INV_memROM~22_combout\,
	datac => \RAM64|ALT_INV_ram~638_combout\,
	datad => \RAM64|ALT_INV_ram~639_combout\,
	datae => \RAM64|ALT_INV_ram~640_combout\,
	dataf => \RAM64|ALT_INV_ram~637_combout\,
	combout => \RAM64|ram~641_combout\);

-- Location: FF_X12_Y4_N43
\RAM64|ram~508\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM64|ram~818_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~508_q\);

-- Location: FF_X12_Y4_N49
\RAM64|ram~380\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM64|ram~802_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~380_q\);

-- Location: FF_X12_Y6_N25
\RAM64|ram~316\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM64|ram~770_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~316_q\);

-- Location: FF_X14_Y3_N58
\RAM64|ram~444\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM64|ram~786_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~444_q\);

-- Location: LABCELL_X14_Y4_N51
\RAM64|ram~648\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~648_combout\ = ( \ROM|memROM~28_combout\ & ( \ROM|memROM~20_combout\ & ( \RAM64|ram~508_q\ ) ) ) # ( !\ROM|memROM~28_combout\ & ( \ROM|memROM~20_combout\ & ( \RAM64|ram~444_q\ ) ) ) # ( \ROM|memROM~28_combout\ & ( !\ROM|memROM~20_combout\ & ( 
-- \RAM64|ram~380_q\ ) ) ) # ( !\ROM|memROM~28_combout\ & ( !\ROM|memROM~20_combout\ & ( \RAM64|ram~316_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001100110011001100000000111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~508_q\,
	datab => \RAM64|ALT_INV_ram~380_q\,
	datac => \RAM64|ALT_INV_ram~316_q\,
	datad => \RAM64|ALT_INV_ram~444_q\,
	datae => \ROM|ALT_INV_memROM~28_combout\,
	dataf => \ROM|ALT_INV_memROM~20_combout\,
	combout => \RAM64|ram~648_combout\);

-- Location: FF_X14_Y6_N31
\RAM64|ram~364\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM64|ram~742_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~364_q\);

-- Location: MLABCELL_X9_Y4_N39
\RAM64|ram~300feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~300feeder_combout\ = ( \CPU|REGA|DOUT\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REGA|ALT_INV_DOUT\(5),
	combout => \RAM64|ram~300feeder_combout\);

-- Location: FF_X9_Y4_N41
\RAM64|ram~300\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM64|ram~300feeder_combout\,
	ena => \RAM64|ram~710_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~300_q\);

-- Location: FF_X14_Y5_N10
\RAM64|ram~428\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM64|ram~726_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~428_q\);

-- Location: FF_X9_Y4_N35
\RAM64|ram~492\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM64|ram~758_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~492_q\);

-- Location: MLABCELL_X9_Y4_N33
\RAM64|ram~649\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~649_combout\ = ( \RAM64|ram~492_q\ & ( \ROM|memROM~20_combout\ & ( (\ROM|memROM~28_combout\) # (\RAM64|ram~428_q\) ) ) ) # ( !\RAM64|ram~492_q\ & ( \ROM|memROM~20_combout\ & ( (\RAM64|ram~428_q\ & !\ROM|memROM~28_combout\) ) ) ) # ( 
-- \RAM64|ram~492_q\ & ( !\ROM|memROM~20_combout\ & ( (!\ROM|memROM~28_combout\ & ((\RAM64|ram~300_q\))) # (\ROM|memROM~28_combout\ & (\RAM64|ram~364_q\)) ) ) ) # ( !\RAM64|ram~492_q\ & ( !\ROM|memROM~20_combout\ & ( (!\ROM|memROM~28_combout\ & 
-- ((\RAM64|ram~300_q\))) # (\ROM|memROM~28_combout\ & (\RAM64|ram~364_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101001100110101010100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~364_q\,
	datab => \RAM64|ALT_INV_ram~300_q\,
	datac => \RAM64|ALT_INV_ram~428_q\,
	datad => \ROM|ALT_INV_memROM~28_combout\,
	datae => \RAM64|ALT_INV_ram~492_q\,
	dataf => \ROM|ALT_INV_memROM~20_combout\,
	combout => \RAM64|ram~649_combout\);

-- Location: MLABCELL_X18_Y5_N27
\RAM64|ram~284feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~284feeder_combout\ = ( \CPU|REGA|DOUT\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REGA|ALT_INV_DOUT\(5),
	combout => \RAM64|ram~284feeder_combout\);

-- Location: FF_X18_Y5_N28
\RAM64|ram~284\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM64|ram~284feeder_combout\,
	ena => \RAM64|ram~706_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~284_q\);

-- Location: FF_X12_Y6_N20
\RAM64|ram~476\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM64|ram~750_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~476_q\);

-- Location: FF_X18_Y4_N41
\RAM64|ram~348\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM64|ram~734_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~348_q\);

-- Location: FF_X17_Y6_N17
\RAM64|ram~412\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM64|ram~722_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~412_q\);

-- Location: LABCELL_X10_Y6_N0
\RAM64|ram~647\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~647_combout\ = ( \RAM64|ram~412_q\ & ( \ROM|memROM~28_combout\ & ( (!\ROM|memROM~20_combout\ & ((\RAM64|ram~348_q\))) # (\ROM|memROM~20_combout\ & (\RAM64|ram~476_q\)) ) ) ) # ( !\RAM64|ram~412_q\ & ( \ROM|memROM~28_combout\ & ( 
-- (!\ROM|memROM~20_combout\ & ((\RAM64|ram~348_q\))) # (\ROM|memROM~20_combout\ & (\RAM64|ram~476_q\)) ) ) ) # ( \RAM64|ram~412_q\ & ( !\ROM|memROM~28_combout\ & ( (\ROM|memROM~20_combout\) # (\RAM64|ram~284_q\) ) ) ) # ( !\RAM64|ram~412_q\ & ( 
-- !\ROM|memROM~28_combout\ & ( (\RAM64|ram~284_q\ & !\ROM|memROM~20_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101011111111100001111001100110000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~284_q\,
	datab => \RAM64|ALT_INV_ram~476_q\,
	datac => \RAM64|ALT_INV_ram~348_q\,
	datad => \ROM|ALT_INV_memROM~20_combout\,
	datae => \RAM64|ALT_INV_ram~412_q\,
	dataf => \ROM|ALT_INV_memROM~28_combout\,
	combout => \RAM64|ram~647_combout\);

-- Location: FF_X17_Y7_N50
\RAM64|ram~396\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM64|ram~806_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~396_q\);

-- Location: FF_X10_Y5_N10
\RAM64|ram~460\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM64|ram~790_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~460_q\);

-- Location: FF_X17_Y7_N28
\RAM64|ram~332\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM64|ram~774_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~332_q\);

-- Location: FF_X17_Y5_N38
\RAM64|ram~524\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM64|ram~822_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~524_q\);

-- Location: LABCELL_X17_Y5_N36
\RAM64|ram~650\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~650_combout\ = ( \RAM64|ram~524_q\ & ( \ROM|memROM~20_combout\ & ( (\ROM|memROM~28_combout\) # (\RAM64|ram~460_q\) ) ) ) # ( !\RAM64|ram~524_q\ & ( \ROM|memROM~20_combout\ & ( (\RAM64|ram~460_q\ & !\ROM|memROM~28_combout\) ) ) ) # ( 
-- \RAM64|ram~524_q\ & ( !\ROM|memROM~20_combout\ & ( (!\ROM|memROM~28_combout\ & ((\RAM64|ram~332_q\))) # (\ROM|memROM~28_combout\ & (\RAM64|ram~396_q\)) ) ) ) # ( !\RAM64|ram~524_q\ & ( !\ROM|memROM~20_combout\ & ( (!\ROM|memROM~28_combout\ & 
-- ((\RAM64|ram~332_q\))) # (\ROM|memROM~28_combout\ & (\RAM64|ram~396_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~396_q\,
	datab => \RAM64|ALT_INV_ram~460_q\,
	datac => \ROM|ALT_INV_memROM~28_combout\,
	datad => \RAM64|ALT_INV_ram~332_q\,
	datae => \RAM64|ALT_INV_ram~524_q\,
	dataf => \ROM|ALT_INV_memROM~20_combout\,
	combout => \RAM64|ram~650_combout\);

-- Location: LABCELL_X10_Y4_N0
\RAM64|ram~651\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~651_combout\ = ( \RAM64|ram~647_combout\ & ( \RAM64|ram~650_combout\ & ( (!\ROM|memROM~7_combout\ & ((!\ROM|memROM~22_combout\) # ((\RAM64|ram~648_combout\)))) # (\ROM|memROM~7_combout\ & (((\RAM64|ram~649_combout\)) # 
-- (\ROM|memROM~22_combout\))) ) ) ) # ( !\RAM64|ram~647_combout\ & ( \RAM64|ram~650_combout\ & ( (!\ROM|memROM~7_combout\ & (\ROM|memROM~22_combout\ & (\RAM64|ram~648_combout\))) # (\ROM|memROM~7_combout\ & (((\RAM64|ram~649_combout\)) # 
-- (\ROM|memROM~22_combout\))) ) ) ) # ( \RAM64|ram~647_combout\ & ( !\RAM64|ram~650_combout\ & ( (!\ROM|memROM~7_combout\ & ((!\ROM|memROM~22_combout\) # ((\RAM64|ram~648_combout\)))) # (\ROM|memROM~7_combout\ & (!\ROM|memROM~22_combout\ & 
-- ((\RAM64|ram~649_combout\)))) ) ) ) # ( !\RAM64|ram~647_combout\ & ( !\RAM64|ram~650_combout\ & ( (!\ROM|memROM~7_combout\ & (\ROM|memROM~22_combout\ & (\RAM64|ram~648_combout\))) # (\ROM|memROM~7_combout\ & (!\ROM|memROM~22_combout\ & 
-- ((\RAM64|ram~649_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110100010101100111000010011010101111001101111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datab => \ROM|ALT_INV_memROM~22_combout\,
	datac => \RAM64|ALT_INV_ram~648_combout\,
	datad => \RAM64|ALT_INV_ram~649_combout\,
	datae => \RAM64|ALT_INV_ram~647_combout\,
	dataf => \RAM64|ALT_INV_ram~650_combout\,
	combout => \RAM64|ram~651_combout\);

-- Location: FF_X10_Y4_N11
\RAM64|ram~220\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM64|ram~748_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~220_q\);

-- Location: FF_X10_Y5_N4
\RAM64|ram~124\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM64|ram~800_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~124_q\);

-- Location: FF_X18_Y7_N19
\RAM64|ram~92\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM64|ram~732_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~92_q\);

-- Location: FF_X10_Y4_N44
\RAM64|ram~252\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM64|ram~816_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~252_q\);

-- Location: LABCELL_X10_Y4_N42
\RAM64|ram~643\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~643_combout\ = ( \RAM64|ram~252_q\ & ( \ROM|memROM~22_combout\ & ( (\ROM|memROM~20_combout\) # (\RAM64|ram~124_q\) ) ) ) # ( !\RAM64|ram~252_q\ & ( \ROM|memROM~22_combout\ & ( (\RAM64|ram~124_q\ & !\ROM|memROM~20_combout\) ) ) ) # ( 
-- \RAM64|ram~252_q\ & ( !\ROM|memROM~22_combout\ & ( (!\ROM|memROM~20_combout\ & ((\RAM64|ram~92_q\))) # (\ROM|memROM~20_combout\ & (\RAM64|ram~220_q\)) ) ) ) # ( !\RAM64|ram~252_q\ & ( !\ROM|memROM~22_combout\ & ( (!\ROM|memROM~20_combout\ & 
-- ((\RAM64|ram~92_q\))) # (\ROM|memROM~20_combout\ & (\RAM64|ram~220_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~220_q\,
	datab => \RAM64|ALT_INV_ram~124_q\,
	datac => \ROM|ALT_INV_memROM~20_combout\,
	datad => \RAM64|ALT_INV_ram~92_q\,
	datae => \RAM64|ALT_INV_ram~252_q\,
	dataf => \ROM|ALT_INV_memROM~22_combout\,
	combout => \RAM64|ram~643_combout\);

-- Location: FF_X13_Y6_N55
\RAM64|ram~268\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM64|ram~820_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~268_q\);

-- Location: FF_X12_Y5_N59
\RAM64|ram~140\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM64|ram~804_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~140_q\);

-- Location: FF_X13_Y5_N13
\RAM64|ram~108\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM64|ram~740_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~108_q\);

-- Location: FF_X14_Y6_N10
\RAM64|ram~236\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM64|ram~756_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~236_q\);

-- Location: LABCELL_X12_Y6_N39
\RAM64|ram~645\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~645_combout\ = ( \ROM|memROM~22_combout\ & ( \ROM|memROM~20_combout\ & ( \RAM64|ram~268_q\ ) ) ) # ( !\ROM|memROM~22_combout\ & ( \ROM|memROM~20_combout\ & ( \RAM64|ram~236_q\ ) ) ) # ( \ROM|memROM~22_combout\ & ( !\ROM|memROM~20_combout\ & ( 
-- \RAM64|ram~140_q\ ) ) ) # ( !\ROM|memROM~22_combout\ & ( !\ROM|memROM~20_combout\ & ( \RAM64|ram~108_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001100110011001100000000111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~268_q\,
	datab => \RAM64|ALT_INV_ram~140_q\,
	datac => \RAM64|ALT_INV_ram~108_q\,
	datad => \RAM64|ALT_INV_ram~236_q\,
	datae => \ROM|ALT_INV_memROM~22_combout\,
	dataf => \ROM|ALT_INV_memROM~20_combout\,
	combout => \RAM64|ram~645_combout\);

-- Location: FF_X14_Y5_N13
\RAM64|ram~172\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM64|ram~724_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~172_q\);

-- Location: FF_X13_Y6_N14
\RAM64|ram~204\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM64|ram~788_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~204_q\);

-- Location: FF_X14_Y5_N1
\RAM64|ram~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM64|ram~708_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~44_q\);

-- Location: FF_X16_Y8_N17
\RAM64|ram~76\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM64|ram~772_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~76_q\);

-- Location: MLABCELL_X13_Y6_N15
\RAM64|ram~644\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~644_combout\ = ( \ROM|memROM~20_combout\ & ( \ROM|memROM~22_combout\ & ( \RAM64|ram~204_q\ ) ) ) # ( !\ROM|memROM~20_combout\ & ( \ROM|memROM~22_combout\ & ( \RAM64|ram~76_q\ ) ) ) # ( \ROM|memROM~20_combout\ & ( !\ROM|memROM~22_combout\ & ( 
-- \RAM64|ram~172_q\ ) ) ) # ( !\ROM|memROM~20_combout\ & ( !\ROM|memROM~22_combout\ & ( \RAM64|ram~44_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010101010101010100000000111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~172_q\,
	datab => \RAM64|ALT_INV_ram~204_q\,
	datac => \RAM64|ALT_INV_ram~44_q\,
	datad => \RAM64|ALT_INV_ram~76_q\,
	datae => \ROM|ALT_INV_memROM~20_combout\,
	dataf => \ROM|ALT_INV_memROM~22_combout\,
	combout => \RAM64|ram~644_combout\);

-- Location: FF_X19_Y5_N23
\RAM64|ram~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM64|ram~704_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~28_q\);

-- Location: MLABCELL_X18_Y5_N48
\RAM64|ram~156feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~156feeder_combout\ = ( \CPU|REGA|DOUT\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REGA|ALT_INV_DOUT\(5),
	combout => \RAM64|ram~156feeder_combout\);

-- Location: FF_X18_Y5_N49
\RAM64|ram~156\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM64|ram~156feeder_combout\,
	ena => \RAM64|ram~720_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~156_q\);

-- Location: FF_X19_Y5_N28
\RAM64|ram~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM64|ram~768_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~60_q\);

-- Location: FF_X19_Y5_N56
\RAM64|ram~188\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM64|ram~784_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~188_q\);

-- Location: LABCELL_X19_Y5_N54
\RAM64|ram~642\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~642_combout\ = ( \RAM64|ram~188_q\ & ( \ROM|memROM~22_combout\ & ( (\RAM64|ram~60_q\) # (\ROM|memROM~20_combout\) ) ) ) # ( !\RAM64|ram~188_q\ & ( \ROM|memROM~22_combout\ & ( (!\ROM|memROM~20_combout\ & \RAM64|ram~60_q\) ) ) ) # ( 
-- \RAM64|ram~188_q\ & ( !\ROM|memROM~22_combout\ & ( (!\ROM|memROM~20_combout\ & (\RAM64|ram~28_q\)) # (\ROM|memROM~20_combout\ & ((\RAM64|ram~156_q\))) ) ) ) # ( !\RAM64|ram~188_q\ & ( !\ROM|memROM~22_combout\ & ( (!\ROM|memROM~20_combout\ & 
-- (\RAM64|ram~28_q\)) # (\ROM|memROM~20_combout\ & ((\RAM64|ram~156_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001100000000111100000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~28_q\,
	datab => \RAM64|ALT_INV_ram~156_q\,
	datac => \ROM|ALT_INV_memROM~20_combout\,
	datad => \RAM64|ALT_INV_ram~60_q\,
	datae => \RAM64|ALT_INV_ram~188_q\,
	dataf => \ROM|ALT_INV_memROM~22_combout\,
	combout => \RAM64|ram~642_combout\);

-- Location: LABCELL_X10_Y4_N27
\RAM64|ram~646\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~646_combout\ = ( \RAM64|ram~644_combout\ & ( \RAM64|ram~642_combout\ & ( (!\ROM|memROM~28_combout\) # ((!\ROM|memROM~7_combout\ & (\RAM64|ram~643_combout\)) # (\ROM|memROM~7_combout\ & ((\RAM64|ram~645_combout\)))) ) ) ) # ( 
-- !\RAM64|ram~644_combout\ & ( \RAM64|ram~642_combout\ & ( (!\ROM|memROM~28_combout\ & (!\ROM|memROM~7_combout\)) # (\ROM|memROM~28_combout\ & ((!\ROM|memROM~7_combout\ & (\RAM64|ram~643_combout\)) # (\ROM|memROM~7_combout\ & ((\RAM64|ram~645_combout\))))) 
-- ) ) ) # ( \RAM64|ram~644_combout\ & ( !\RAM64|ram~642_combout\ & ( (!\ROM|memROM~28_combout\ & (\ROM|memROM~7_combout\)) # (\ROM|memROM~28_combout\ & ((!\ROM|memROM~7_combout\ & (\RAM64|ram~643_combout\)) # (\ROM|memROM~7_combout\ & 
-- ((\RAM64|ram~645_combout\))))) ) ) ) # ( !\RAM64|ram~644_combout\ & ( !\RAM64|ram~642_combout\ & ( (\ROM|memROM~28_combout\ & ((!\ROM|memROM~7_combout\ & (\RAM64|ram~643_combout\)) # (\ROM|memROM~7_combout\ & ((\RAM64|ram~645_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101001001100011011110001100100111011010111010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~28_combout\,
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \RAM64|ALT_INV_ram~643_combout\,
	datad => \RAM64|ALT_INV_ram~645_combout\,
	datae => \RAM64|ALT_INV_ram~644_combout\,
	dataf => \RAM64|ALT_INV_ram~642_combout\,
	combout => \RAM64|ram~646_combout\);

-- Location: FF_X16_Y3_N31
\RAM64|ram~116\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM64|ram~792_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~116_q\);

-- Location: FF_X14_Y7_N49
\RAM64|ram~212\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM64|ram~744_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~212_q\);

-- Location: FF_X14_Y7_N55
\RAM64|ram~84\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM64|ram~728_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~84_q\);

-- Location: FF_X10_Y4_N14
\RAM64|ram~244\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM64|ram~808_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~244_q\);

-- Location: LABCELL_X10_Y4_N12
\RAM64|ram~633\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~633_combout\ = ( \RAM64|ram~244_q\ & ( \ROM|memROM~20_combout\ & ( (\ROM|memROM~22_combout\) # (\RAM64|ram~212_q\) ) ) ) # ( !\RAM64|ram~244_q\ & ( \ROM|memROM~20_combout\ & ( (\RAM64|ram~212_q\ & !\ROM|memROM~22_combout\) ) ) ) # ( 
-- \RAM64|ram~244_q\ & ( !\ROM|memROM~20_combout\ & ( (!\ROM|memROM~22_combout\ & ((\RAM64|ram~84_q\))) # (\ROM|memROM~22_combout\ & (\RAM64|ram~116_q\)) ) ) ) # ( !\RAM64|ram~244_q\ & ( !\ROM|memROM~20_combout\ & ( (!\ROM|memROM~22_combout\ & 
-- ((\RAM64|ram~84_q\))) # (\ROM|memROM~22_combout\ & (\RAM64|ram~116_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~116_q\,
	datab => \RAM64|ALT_INV_ram~212_q\,
	datac => \ROM|ALT_INV_memROM~22_combout\,
	datad => \RAM64|ALT_INV_ram~84_q\,
	datae => \RAM64|ALT_INV_ram~244_q\,
	dataf => \ROM|ALT_INV_memROM~20_combout\,
	combout => \RAM64|ram~633_combout\);

-- Location: FF_X18_Y3_N4
\RAM64|ram~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM64|ram~696_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~20_q\);

-- Location: LABCELL_X17_Y2_N42
\RAM64|ram~148feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~148feeder_combout\ = ( \CPU|REGA|DOUT\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REGA|ALT_INV_DOUT\(5),
	combout => \RAM64|ram~148feeder_combout\);

-- Location: FF_X17_Y2_N44
\RAM64|ram~148\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM64|ram~148feeder_combout\,
	ena => \RAM64|ram~712_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~148_q\);

-- Location: FF_X19_Y7_N4
\RAM64|ram~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM64|ram~760_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~52_q\);

-- Location: FF_X16_Y2_N8
\RAM64|ram~180\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM64|ram~776_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~180_q\);

-- Location: LABCELL_X16_Y2_N6
\RAM64|ram~632\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~632_combout\ = ( \RAM64|ram~180_q\ & ( \ROM|memROM~20_combout\ & ( (\ROM|memROM~22_combout\) # (\RAM64|ram~148_q\) ) ) ) # ( !\RAM64|ram~180_q\ & ( \ROM|memROM~20_combout\ & ( (\RAM64|ram~148_q\ & !\ROM|memROM~22_combout\) ) ) ) # ( 
-- \RAM64|ram~180_q\ & ( !\ROM|memROM~20_combout\ & ( (!\ROM|memROM~22_combout\ & (\RAM64|ram~20_q\)) # (\ROM|memROM~22_combout\ & ((\RAM64|ram~52_q\))) ) ) ) # ( !\RAM64|ram~180_q\ & ( !\ROM|memROM~20_combout\ & ( (!\ROM|memROM~22_combout\ & 
-- (\RAM64|ram~20_q\)) # (\ROM|memROM~22_combout\ & ((\RAM64|ram~52_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000111100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~20_q\,
	datab => \RAM64|ALT_INV_ram~148_q\,
	datac => \RAM64|ALT_INV_ram~52_q\,
	datad => \ROM|ALT_INV_memROM~22_combout\,
	datae => \RAM64|ALT_INV_ram~180_q\,
	dataf => \ROM|ALT_INV_memROM~20_combout\,
	combout => \RAM64|ram~632_combout\);

-- Location: LABCELL_X16_Y1_N39
\RAM64|ram~36feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~36feeder_combout\ = ( \CPU|REGA|DOUT\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REGA|ALT_INV_DOUT\(5),
	combout => \RAM64|ram~36feeder_combout\);

-- Location: FF_X16_Y1_N40
\RAM64|ram~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM64|ram~36feeder_combout\,
	ena => \RAM64|ram~700_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~36_q\);

-- Location: FF_X16_Y4_N32
\RAM64|ram~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM64|ram~764_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~68_q\);

-- Location: FF_X13_Y6_N1
\RAM64|ram~164\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM64|ram~716_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~164_q\);

-- Location: FF_X16_Y4_N26
\RAM64|ram~196\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM64|ram~780_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~196_q\);

-- Location: LABCELL_X16_Y4_N24
\RAM64|ram~634\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~634_combout\ = ( \RAM64|ram~196_q\ & ( \ROM|memROM~22_combout\ & ( (\ROM|memROM~20_combout\) # (\RAM64|ram~68_q\) ) ) ) # ( !\RAM64|ram~196_q\ & ( \ROM|memROM~22_combout\ & ( (\RAM64|ram~68_q\ & !\ROM|memROM~20_combout\) ) ) ) # ( 
-- \RAM64|ram~196_q\ & ( !\ROM|memROM~22_combout\ & ( (!\ROM|memROM~20_combout\ & (\RAM64|ram~36_q\)) # (\ROM|memROM~20_combout\ & ((\RAM64|ram~164_q\))) ) ) ) # ( !\RAM64|ram~196_q\ & ( !\ROM|memROM~22_combout\ & ( (!\ROM|memROM~20_combout\ & 
-- (\RAM64|ram~36_q\)) # (\ROM|memROM~20_combout\ & ((\RAM64|ram~164_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~36_q\,
	datab => \RAM64|ALT_INV_ram~68_q\,
	datac => \ROM|ALT_INV_memROM~20_combout\,
	datad => \RAM64|ALT_INV_ram~164_q\,
	datae => \RAM64|ALT_INV_ram~196_q\,
	dataf => \ROM|ALT_INV_memROM~22_combout\,
	combout => \RAM64|ram~634_combout\);

-- Location: FF_X16_Y7_N52
\RAM64|ram~100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM64|ram~736_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~100_q\);

-- Location: FF_X12_Y5_N31
\RAM64|ram~132\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM64|ram~796_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~132_q\);

-- Location: FF_X14_Y4_N13
\RAM64|ram~228\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM64|ram~752_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~228_q\);

-- Location: FF_X18_Y4_N8
\RAM64|ram~260\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM64|ram~812_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~260_q\);

-- Location: MLABCELL_X18_Y4_N6
\RAM64|ram~635\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~635_combout\ = ( \RAM64|ram~260_q\ & ( \ROM|memROM~22_combout\ & ( (\ROM|memROM~20_combout\) # (\RAM64|ram~132_q\) ) ) ) # ( !\RAM64|ram~260_q\ & ( \ROM|memROM~22_combout\ & ( (\RAM64|ram~132_q\ & !\ROM|memROM~20_combout\) ) ) ) # ( 
-- \RAM64|ram~260_q\ & ( !\ROM|memROM~22_combout\ & ( (!\ROM|memROM~20_combout\ & (\RAM64|ram~100_q\)) # (\ROM|memROM~20_combout\ & ((\RAM64|ram~228_q\))) ) ) ) # ( !\RAM64|ram~260_q\ & ( !\ROM|memROM~22_combout\ & ( (!\ROM|memROM~20_combout\ & 
-- (\RAM64|ram~100_q\)) # (\ROM|memROM~20_combout\ & ((\RAM64|ram~228_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000111100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~100_q\,
	datab => \RAM64|ALT_INV_ram~132_q\,
	datac => \RAM64|ALT_INV_ram~228_q\,
	datad => \ROM|ALT_INV_memROM~20_combout\,
	datae => \RAM64|ALT_INV_ram~260_q\,
	dataf => \ROM|ALT_INV_memROM~22_combout\,
	combout => \RAM64|ram~635_combout\);

-- Location: LABCELL_X10_Y4_N30
\RAM64|ram~636\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~636_combout\ = ( \RAM64|ram~634_combout\ & ( \RAM64|ram~635_combout\ & ( ((!\ROM|memROM~28_combout\ & ((\RAM64|ram~632_combout\))) # (\ROM|memROM~28_combout\ & (\RAM64|ram~633_combout\))) # (\ROM|memROM~7_combout\) ) ) ) # ( 
-- !\RAM64|ram~634_combout\ & ( \RAM64|ram~635_combout\ & ( (!\ROM|memROM~7_combout\ & ((!\ROM|memROM~28_combout\ & ((\RAM64|ram~632_combout\))) # (\ROM|memROM~28_combout\ & (\RAM64|ram~633_combout\)))) # (\ROM|memROM~7_combout\ & 
-- (((\ROM|memROM~28_combout\)))) ) ) ) # ( \RAM64|ram~634_combout\ & ( !\RAM64|ram~635_combout\ & ( (!\ROM|memROM~7_combout\ & ((!\ROM|memROM~28_combout\ & ((\RAM64|ram~632_combout\))) # (\ROM|memROM~28_combout\ & (\RAM64|ram~633_combout\)))) # 
-- (\ROM|memROM~7_combout\ & (((!\ROM|memROM~28_combout\)))) ) ) ) # ( !\RAM64|ram~634_combout\ & ( !\RAM64|ram~635_combout\ & ( (!\ROM|memROM~7_combout\ & ((!\ROM|memROM~28_combout\ & ((\RAM64|ram~632_combout\))) # (\ROM|memROM~28_combout\ & 
-- (\RAM64|ram~633_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010100010010100101111001000000111101001110101011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datab => \RAM64|ALT_INV_ram~633_combout\,
	datac => \ROM|ALT_INV_memROM~28_combout\,
	datad => \RAM64|ALT_INV_ram~632_combout\,
	datae => \RAM64|ALT_INV_ram~634_combout\,
	dataf => \RAM64|ALT_INV_ram~635_combout\,
	combout => \RAM64|ram~636_combout\);

-- Location: LABCELL_X10_Y4_N51
\RAM64|ram~652\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~652_combout\ = ( \RAM64|ram~646_combout\ & ( \RAM64|ram~636_combout\ & ( (!\ROM|memROM~3_combout\) # ((!\ROM|memROM~9_combout\ & (\RAM64|ram~641_combout\)) # (\ROM|memROM~9_combout\ & ((\RAM64|ram~651_combout\)))) ) ) ) # ( 
-- !\RAM64|ram~646_combout\ & ( \RAM64|ram~636_combout\ & ( (!\ROM|memROM~9_combout\ & (((!\ROM|memROM~3_combout\)) # (\RAM64|ram~641_combout\))) # (\ROM|memROM~9_combout\ & (((\ROM|memROM~3_combout\ & \RAM64|ram~651_combout\)))) ) ) ) # ( 
-- \RAM64|ram~646_combout\ & ( !\RAM64|ram~636_combout\ & ( (!\ROM|memROM~9_combout\ & (\RAM64|ram~641_combout\ & (\ROM|memROM~3_combout\))) # (\ROM|memROM~9_combout\ & (((!\ROM|memROM~3_combout\) # (\RAM64|ram~651_combout\)))) ) ) ) # ( 
-- !\RAM64|ram~646_combout\ & ( !\RAM64|ram~636_combout\ & ( (\ROM|memROM~3_combout\ & ((!\ROM|memROM~9_combout\ & (\RAM64|ram~641_combout\)) # (\ROM|memROM~9_combout\ & ((\RAM64|ram~651_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000111001101000011011111000100110001111111010011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~641_combout\,
	datab => \ROM|ALT_INV_memROM~9_combout\,
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datad => \RAM64|ALT_INV_ram~651_combout\,
	datae => \RAM64|ALT_INV_ram~646_combout\,
	dataf => \RAM64|ALT_INV_ram~636_combout\,
	combout => \RAM64|ram~652_combout\);

-- Location: LABCELL_X10_Y4_N6
\DATA_IN[5]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATA_IN[5]~10_combout\ = ( \AND_SW0_7|saida~3_combout\ & ( \RAM64|ram~652_combout\ & ( (\RAM64|dado_out~0_combout\) # (\SW[5]~input_o\) ) ) ) # ( !\AND_SW0_7|saida~3_combout\ & ( \RAM64|ram~652_combout\ & ( \RAM64|dado_out~0_combout\ ) ) ) # ( 
-- \AND_SW0_7|saida~3_combout\ & ( !\RAM64|ram~652_combout\ & ( \SW[5]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SW[5]~input_o\,
	datad => \RAM64|ALT_INV_dado_out~0_combout\,
	datae => \AND_SW0_7|ALT_INV_saida~3_combout\,
	dataf => \RAM64|ALT_INV_ram~652_combout\,
	combout => \DATA_IN[5]~10_combout\);

-- Location: LABCELL_X10_Y3_N30
\CPU|ULA1|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~9_sumout\ = SUM(( (!\CPU|DECODER1|saida[6]~7_combout\ & (((!\ROM|memROM~29_combout\)) # (\CPU|PC|DOUT[8]~DUPLICATE_q\))) # (\CPU|DECODER1|saida[6]~7_combout\ & (((!\DATA_IN[5]~10_combout\)))) ) + ( \CPU|REGA|DOUT\(5) ) + ( \CPU|ULA1|Add1~6\ 
-- ))
-- \CPU|ULA1|Add1~10\ = CARRY(( (!\CPU|DECODER1|saida[6]~7_combout\ & (((!\ROM|memROM~29_combout\)) # (\CPU|PC|DOUT[8]~DUPLICATE_q\))) # (\CPU|DECODER1|saida[6]~7_combout\ & (((!\DATA_IN[5]~10_combout\)))) ) + ( \CPU|REGA|DOUT\(5) ) + ( \CPU|ULA1|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111011111000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datab => \CPU|DECODER1|ALT_INV_saida[6]~7_combout\,
	datac => \ROM|ALT_INV_memROM~29_combout\,
	datad => \ALT_INV_DATA_IN[5]~10_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(5),
	cin => \CPU|ULA1|Add1~6\,
	sumout => \CPU|ULA1|Add1~9_sumout\,
	cout => \CPU|ULA1|Add1~10\);

-- Location: MLABCELL_X13_Y5_N45
\CPU|DECODER1|saida~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER1|saida~8_combout\ = ( !\ROM|memROM~11_combout\ & ( (\ROM|memROM~17_combout\ & (!\ROM|memROM~15_combout\ & !\ROM|memROM~13_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~17_combout\,
	datab => \ROM|ALT_INV_memROM~15_combout\,
	datac => \ROM|ALT_INV_memROM~13_combout\,
	dataf => \ROM|ALT_INV_memROM~11_combout\,
	combout => \CPU|DECODER1|saida~8_combout\);

-- Location: IOIBUF_X34_Y0_N35
\SW[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: LABCELL_X10_Y3_N51
\DATA_IN[7]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATA_IN[7]~13_combout\ = ( \AND_SW0_7|saida~3_combout\ & ( \SW[7]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SW[7]~input_o\,
	dataf => \AND_SW0_7|ALT_INV_saida~3_combout\,
	combout => \DATA_IN[7]~13_combout\);

-- Location: LABCELL_X10_Y3_N57
\DATA_IN[7]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATA_IN[7]~12_combout\ = ( \RAM64|ram~694_combout\ & ( ((\AND_SW0_7|saida~3_combout\ & \SW[7]~input_o\)) # (\RAM64|dado_out~0_combout\) ) ) # ( !\RAM64|ram~694_combout\ & ( (\AND_SW0_7|saida~3_combout\ & \SW[7]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001101010111010101110101011101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_dado_out~0_combout\,
	datab => \AND_SW0_7|ALT_INV_saida~3_combout\,
	datac => \ALT_INV_SW[7]~input_o\,
	dataf => \RAM64|ALT_INV_ram~694_combout\,
	combout => \DATA_IN[7]~12_combout\);

-- Location: IOIBUF_X34_Y0_N52
\SW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: FF_X19_Y4_N50
\RAM64|ram~381\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM64|ram~802_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~381_q\);

-- Location: FF_X19_Y4_N32
\RAM64|ram~349\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM64|ram~734_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~349_q\);

-- Location: FF_X16_Y7_N34
\RAM64|ram~365\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM64|ram~742_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~365_q\);

-- Location: FF_X19_Y4_N44
\RAM64|ram~397\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM64|ram~806_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~397_q\);

-- Location: LABCELL_X19_Y4_N42
\RAM64|ram~661\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~661_combout\ = ( \RAM64|ram~397_q\ & ( \ROM|memROM~22_combout\ & ( (\ROM|memROM~7_combout\) # (\RAM64|ram~381_q\) ) ) ) # ( !\RAM64|ram~397_q\ & ( \ROM|memROM~22_combout\ & ( (\RAM64|ram~381_q\ & !\ROM|memROM~7_combout\) ) ) ) # ( 
-- \RAM64|ram~397_q\ & ( !\ROM|memROM~22_combout\ & ( (!\ROM|memROM~7_combout\ & (\RAM64|ram~349_q\)) # (\ROM|memROM~7_combout\ & ((\RAM64|ram~365_q\))) ) ) ) # ( !\RAM64|ram~397_q\ & ( !\ROM|memROM~22_combout\ & ( (!\ROM|memROM~7_combout\ & 
-- (\RAM64|ram~349_q\)) # (\ROM|memROM~7_combout\ & ((\RAM64|ram~365_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~381_q\,
	datab => \RAM64|ALT_INV_ram~349_q\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \RAM64|ALT_INV_ram~365_q\,
	datae => \RAM64|ALT_INV_ram~397_q\,
	dataf => \ROM|ALT_INV_memROM~22_combout\,
	combout => \RAM64|ram~661_combout\);

-- Location: FF_X18_Y4_N58
\RAM64|ram~285\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM64|ram~706_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~285_q\);

-- Location: MLABCELL_X9_Y4_N45
\RAM64|ram~301feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~301feeder_combout\ = ( \CPU|REGA|DOUT\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REGA|ALT_INV_DOUT\(6),
	combout => \RAM64|ram~301feeder_combout\);

-- Location: FF_X9_Y4_N47
\RAM64|ram~301\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM64|ram~301feeder_combout\,
	ena => \RAM64|ram~710_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~301_q\);

-- Location: FF_X12_Y6_N52
\RAM64|ram~317\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM64|ram~770_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~317_q\);

-- Location: FF_X13_Y4_N14
\RAM64|ram~333\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM64|ram~774_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~333_q\);

-- Location: MLABCELL_X13_Y4_N12
\RAM64|ram~660\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~660_combout\ = ( \RAM64|ram~333_q\ & ( \ROM|memROM~22_combout\ & ( (\RAM64|ram~317_q\) # (\ROM|memROM~7_combout\) ) ) ) # ( !\RAM64|ram~333_q\ & ( \ROM|memROM~22_combout\ & ( (!\ROM|memROM~7_combout\ & \RAM64|ram~317_q\) ) ) ) # ( 
-- \RAM64|ram~333_q\ & ( !\ROM|memROM~22_combout\ & ( (!\ROM|memROM~7_combout\ & (\RAM64|ram~285_q\)) # (\ROM|memROM~7_combout\ & ((\RAM64|ram~301_q\))) ) ) ) # ( !\RAM64|ram~333_q\ & ( !\ROM|memROM~22_combout\ & ( (!\ROM|memROM~7_combout\ & 
-- (\RAM64|ram~285_q\)) # (\ROM|memROM~7_combout\ & ((\RAM64|ram~301_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001100000000111100000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~285_q\,
	datab => \RAM64|ALT_INV_ram~301_q\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \RAM64|ALT_INV_ram~317_q\,
	datae => \RAM64|ALT_INV_ram~333_q\,
	dataf => \ROM|ALT_INV_memROM~22_combout\,
	combout => \RAM64|ram~660_combout\);

-- Location: FF_X18_Y7_N46
\RAM64|ram~341\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM64|ram~730_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~341_q\);

-- Location: FF_X16_Y7_N22
\RAM64|ram~357\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM64|ram~738_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~357_q\);

-- Location: LABCELL_X17_Y4_N30
\RAM64|ram~373feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~373feeder_combout\ = ( \CPU|REGA|DOUT\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REGA|ALT_INV_DOUT\(6),
	combout => \RAM64|ram~373feeder_combout\);

-- Location: FF_X17_Y4_N31
\RAM64|ram~373\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM64|ram~373feeder_combout\,
	ena => \RAM64|ram~794_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~373_q\);

-- Location: FF_X17_Y4_N38
\RAM64|ram~389\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM64|ram~798_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~389_q\);

-- Location: LABCELL_X17_Y4_N36
\RAM64|ram~659\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~659_combout\ = ( \RAM64|ram~389_q\ & ( \ROM|memROM~22_combout\ & ( (\ROM|memROM~7_combout\) # (\RAM64|ram~373_q\) ) ) ) # ( !\RAM64|ram~389_q\ & ( \ROM|memROM~22_combout\ & ( (\RAM64|ram~373_q\ & !\ROM|memROM~7_combout\) ) ) ) # ( 
-- \RAM64|ram~389_q\ & ( !\ROM|memROM~22_combout\ & ( (!\ROM|memROM~7_combout\ & (\RAM64|ram~341_q\)) # (\ROM|memROM~7_combout\ & ((\RAM64|ram~357_q\))) ) ) ) # ( !\RAM64|ram~389_q\ & ( !\ROM|memROM~22_combout\ & ( (!\ROM|memROM~7_combout\ & 
-- (\RAM64|ram~341_q\)) # (\ROM|memROM~7_combout\ & ((\RAM64|ram~357_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010011001100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~341_q\,
	datab => \RAM64|ALT_INV_ram~357_q\,
	datac => \RAM64|ALT_INV_ram~373_q\,
	datad => \ROM|ALT_INV_memROM~7_combout\,
	datae => \RAM64|ALT_INV_ram~389_q\,
	dataf => \ROM|ALT_INV_memROM~22_combout\,
	combout => \RAM64|ram~659_combout\);

-- Location: FF_X17_Y2_N13
\RAM64|ram~277\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM64|ram~698_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~277_q\);

-- Location: FF_X16_Y2_N5
\RAM64|ram~309\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM64|ram~762_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~309_q\);

-- Location: FF_X14_Y2_N11
\RAM64|ram~293\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM64|ram~702_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~293_q\);

-- Location: FF_X17_Y4_N20
\RAM64|ram~325\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM64|ram~766_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~325_q\);

-- Location: LABCELL_X17_Y4_N18
\RAM64|ram~658\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~658_combout\ = ( \RAM64|ram~325_q\ & ( \ROM|memROM~22_combout\ & ( (\ROM|memROM~7_combout\) # (\RAM64|ram~309_q\) ) ) ) # ( !\RAM64|ram~325_q\ & ( \ROM|memROM~22_combout\ & ( (\RAM64|ram~309_q\ & !\ROM|memROM~7_combout\) ) ) ) # ( 
-- \RAM64|ram~325_q\ & ( !\ROM|memROM~22_combout\ & ( (!\ROM|memROM~7_combout\ & (\RAM64|ram~277_q\)) # (\ROM|memROM~7_combout\ & ((\RAM64|ram~293_q\))) ) ) ) # ( !\RAM64|ram~325_q\ & ( !\ROM|memROM~22_combout\ & ( (!\ROM|memROM~7_combout\ & 
-- (\RAM64|ram~277_q\)) # (\ROM|memROM~7_combout\ & ((\RAM64|ram~293_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000111100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~277_q\,
	datab => \RAM64|ALT_INV_ram~309_q\,
	datac => \RAM64|ALT_INV_ram~293_q\,
	datad => \ROM|ALT_INV_memROM~7_combout\,
	datae => \RAM64|ALT_INV_ram~325_q\,
	dataf => \ROM|ALT_INV_memROM~22_combout\,
	combout => \RAM64|ram~658_combout\);

-- Location: MLABCELL_X13_Y4_N36
\RAM64|ram~662\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~662_combout\ = ( \RAM64|ram~659_combout\ & ( \RAM64|ram~658_combout\ & ( (!\ROM|memROM~9_combout\) # ((!\ROM|memROM~28_combout\ & ((\RAM64|ram~660_combout\))) # (\ROM|memROM~28_combout\ & (\RAM64|ram~661_combout\))) ) ) ) # ( 
-- !\RAM64|ram~659_combout\ & ( \RAM64|ram~658_combout\ & ( (!\ROM|memROM~28_combout\ & (((!\ROM|memROM~9_combout\) # (\RAM64|ram~660_combout\)))) # (\ROM|memROM~28_combout\ & (\RAM64|ram~661_combout\ & (\ROM|memROM~9_combout\))) ) ) ) # ( 
-- \RAM64|ram~659_combout\ & ( !\RAM64|ram~658_combout\ & ( (!\ROM|memROM~28_combout\ & (((\ROM|memROM~9_combout\ & \RAM64|ram~660_combout\)))) # (\ROM|memROM~28_combout\ & (((!\ROM|memROM~9_combout\)) # (\RAM64|ram~661_combout\))) ) ) ) # ( 
-- !\RAM64|ram~659_combout\ & ( !\RAM64|ram~658_combout\ & ( (\ROM|memROM~9_combout\ & ((!\ROM|memROM~28_combout\ & ((\RAM64|ram~660_combout\))) # (\ROM|memROM~28_combout\ & (\RAM64|ram~661_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001011010100010101101110100001101010111111000111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~28_combout\,
	datab => \RAM64|ALT_INV_ram~661_combout\,
	datac => \ROM|ALT_INV_memROM~9_combout\,
	datad => \RAM64|ALT_INV_ram~660_combout\,
	datae => \RAM64|ALT_INV_ram~659_combout\,
	dataf => \RAM64|ALT_INV_ram~658_combout\,
	combout => \RAM64|ram~662_combout\);

-- Location: FF_X18_Y6_N34
\RAM64|ram~149\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM64|ram~712_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~149_q\);

-- Location: LABCELL_X19_Y5_N30
\RAM64|ram~189feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~189feeder_combout\ = ( \CPU|REGA|DOUT\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REGA|ALT_INV_DOUT\(6),
	combout => \RAM64|ram~189feeder_combout\);

-- Location: FF_X19_Y5_N31
\RAM64|ram~189\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM64|ram~189feeder_combout\,
	ena => \RAM64|ram~784_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~189_q\);

-- Location: FF_X16_Y8_N29
\RAM64|ram~181\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM64|ram~776_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~181_q\);

-- Location: LABCELL_X19_Y2_N54
\RAM64|ram~157feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~157feeder_combout\ = ( \CPU|REGA|DOUT\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REGA|ALT_INV_DOUT\(6),
	combout => \RAM64|ram~157feeder_combout\);

-- Location: FF_X19_Y2_N55
\RAM64|ram~157\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM64|ram~157feeder_combout\,
	ena => \RAM64|ram~720_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~157_q\);

-- Location: LABCELL_X16_Y4_N21
\RAM64|ram~663\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~663_combout\ = ( \ROM|memROM~22_combout\ & ( \ROM|memROM~9_combout\ & ( \RAM64|ram~189_q\ ) ) ) # ( !\ROM|memROM~22_combout\ & ( \ROM|memROM~9_combout\ & ( \RAM64|ram~157_q\ ) ) ) # ( \ROM|memROM~22_combout\ & ( !\ROM|memROM~9_combout\ & ( 
-- \RAM64|ram~181_q\ ) ) ) # ( !\ROM|memROM~22_combout\ & ( !\ROM|memROM~9_combout\ & ( \RAM64|ram~149_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000011110000111100000000111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~149_q\,
	datab => \RAM64|ALT_INV_ram~189_q\,
	datac => \RAM64|ALT_INV_ram~181_q\,
	datad => \RAM64|ALT_INV_ram~157_q\,
	datae => \ROM|ALT_INV_memROM~22_combout\,
	dataf => \ROM|ALT_INV_memROM~9_combout\,
	combout => \RAM64|ram~663_combout\);

-- Location: LABCELL_X14_Y4_N3
\RAM64|ram~229feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~229feeder_combout\ = ( \CPU|REGA|DOUT\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REGA|ALT_INV_DOUT\(6),
	combout => \RAM64|ram~229feeder_combout\);

-- Location: FF_X14_Y4_N5
\RAM64|ram~229\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM64|ram~229feeder_combout\,
	ena => \RAM64|ram~752_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~229_q\);

-- Location: FF_X16_Y5_N47
\RAM64|ram~237\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM64|ram~756_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~237_q\);

-- Location: MLABCELL_X18_Y4_N33
\RAM64|ram~261feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~261feeder_combout\ = ( \CPU|REGA|DOUT\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REGA|ALT_INV_DOUT\(6),
	combout => \RAM64|ram~261feeder_combout\);

-- Location: FF_X18_Y4_N34
\RAM64|ram~261\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM64|ram~261feeder_combout\,
	ena => \RAM64|ram~812_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~261_q\);

-- Location: FF_X13_Y4_N32
\RAM64|ram~269\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM64|ram~820_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~269_q\);

-- Location: MLABCELL_X13_Y4_N30
\RAM64|ram~666\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~666_combout\ = ( \RAM64|ram~269_q\ & ( \ROM|memROM~22_combout\ & ( (\RAM64|ram~261_q\) # (\ROM|memROM~9_combout\) ) ) ) # ( !\RAM64|ram~269_q\ & ( \ROM|memROM~22_combout\ & ( (!\ROM|memROM~9_combout\ & \RAM64|ram~261_q\) ) ) ) # ( 
-- \RAM64|ram~269_q\ & ( !\ROM|memROM~22_combout\ & ( (!\ROM|memROM~9_combout\ & (\RAM64|ram~229_q\)) # (\ROM|memROM~9_combout\ & ((\RAM64|ram~237_q\))) ) ) ) # ( !\RAM64|ram~269_q\ & ( !\ROM|memROM~22_combout\ & ( (!\ROM|memROM~9_combout\ & 
-- (\RAM64|ram~229_q\)) # (\ROM|memROM~9_combout\ & ((\RAM64|ram~237_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001100000000111100000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~229_q\,
	datab => \RAM64|ALT_INV_ram~237_q\,
	datac => \ROM|ALT_INV_memROM~9_combout\,
	datad => \RAM64|ALT_INV_ram~261_q\,
	datae => \RAM64|ALT_INV_ram~269_q\,
	dataf => \ROM|ALT_INV_memROM~22_combout\,
	combout => \RAM64|ram~666_combout\);

-- Location: MLABCELL_X13_Y6_N18
\RAM64|ram~165feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~165feeder_combout\ = \CPU|REGA|DOUT\(6)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|REGA|ALT_INV_DOUT\(6),
	combout => \RAM64|ram~165feeder_combout\);

-- Location: FF_X13_Y6_N20
\RAM64|ram~165\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM64|ram~165feeder_combout\,
	ena => \RAM64|ram~716_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~165_q\);

-- Location: FF_X14_Y5_N40
\RAM64|ram~173\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM64|ram~724_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~173_q\);

-- Location: FF_X16_Y4_N59
\RAM64|ram~197\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM64|ram~780_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~197_q\);

-- Location: FF_X13_Y6_N44
\RAM64|ram~205\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM64|ram~788_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~205_q\);

-- Location: MLABCELL_X13_Y6_N42
\RAM64|ram~665\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~665_combout\ = ( \RAM64|ram~205_q\ & ( \ROM|memROM~9_combout\ & ( (\ROM|memROM~22_combout\) # (\RAM64|ram~173_q\) ) ) ) # ( !\RAM64|ram~205_q\ & ( \ROM|memROM~9_combout\ & ( (\RAM64|ram~173_q\ & !\ROM|memROM~22_combout\) ) ) ) # ( 
-- \RAM64|ram~205_q\ & ( !\ROM|memROM~9_combout\ & ( (!\ROM|memROM~22_combout\ & (\RAM64|ram~165_q\)) # (\ROM|memROM~22_combout\ & ((\RAM64|ram~197_q\))) ) ) ) # ( !\RAM64|ram~205_q\ & ( !\ROM|memROM~9_combout\ & ( (!\ROM|memROM~22_combout\ & 
-- (\RAM64|ram~165_q\)) # (\ROM|memROM~22_combout\ & ((\RAM64|ram~197_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~165_q\,
	datab => \RAM64|ALT_INV_ram~173_q\,
	datac => \ROM|ALT_INV_memROM~22_combout\,
	datad => \RAM64|ALT_INV_ram~197_q\,
	datae => \RAM64|ALT_INV_ram~205_q\,
	dataf => \ROM|ALT_INV_memROM~9_combout\,
	combout => \RAM64|ram~665_combout\);

-- Location: FF_X10_Y4_N25
\RAM64|ram~245\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM64|ram~808_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~245_q\);

-- Location: FF_X14_Y7_N40
\RAM64|ram~213\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM64|ram~744_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~213_q\);

-- Location: FF_X10_Y4_N19
\RAM64|ram~253\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM64|ram~816_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~253_q\);

-- Location: FF_X10_Y4_N49
\RAM64|ram~221\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM64|ram~748_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~221_q\);

-- Location: LABCELL_X12_Y4_N51
\RAM64|ram~664\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~664_combout\ = ( \ROM|memROM~22_combout\ & ( \ROM|memROM~9_combout\ & ( \RAM64|ram~253_q\ ) ) ) # ( !\ROM|memROM~22_combout\ & ( \ROM|memROM~9_combout\ & ( \RAM64|ram~221_q\ ) ) ) # ( \ROM|memROM~22_combout\ & ( !\ROM|memROM~9_combout\ & ( 
-- \RAM64|ram~245_q\ ) ) ) # ( !\ROM|memROM~22_combout\ & ( !\ROM|memROM~9_combout\ & ( \RAM64|ram~213_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~245_q\,
	datab => \RAM64|ALT_INV_ram~213_q\,
	datac => \RAM64|ALT_INV_ram~253_q\,
	datad => \RAM64|ALT_INV_ram~221_q\,
	datae => \ROM|ALT_INV_memROM~22_combout\,
	dataf => \ROM|ALT_INV_memROM~9_combout\,
	combout => \RAM64|ram~664_combout\);

-- Location: MLABCELL_X13_Y4_N6
\RAM64|ram~667\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~667_combout\ = ( \RAM64|ram~665_combout\ & ( \RAM64|ram~664_combout\ & ( (!\ROM|memROM~7_combout\ & (((\RAM64|ram~663_combout\)) # (\ROM|memROM~28_combout\))) # (\ROM|memROM~7_combout\ & ((!\ROM|memROM~28_combout\) # 
-- ((\RAM64|ram~666_combout\)))) ) ) ) # ( !\RAM64|ram~665_combout\ & ( \RAM64|ram~664_combout\ & ( (!\ROM|memROM~7_combout\ & (((\RAM64|ram~663_combout\)) # (\ROM|memROM~28_combout\))) # (\ROM|memROM~7_combout\ & (\ROM|memROM~28_combout\ & 
-- ((\RAM64|ram~666_combout\)))) ) ) ) # ( \RAM64|ram~665_combout\ & ( !\RAM64|ram~664_combout\ & ( (!\ROM|memROM~7_combout\ & (!\ROM|memROM~28_combout\ & (\RAM64|ram~663_combout\))) # (\ROM|memROM~7_combout\ & ((!\ROM|memROM~28_combout\) # 
-- ((\RAM64|ram~666_combout\)))) ) ) ) # ( !\RAM64|ram~665_combout\ & ( !\RAM64|ram~664_combout\ & ( (!\ROM|memROM~7_combout\ & (!\ROM|memROM~28_combout\ & (\RAM64|ram~663_combout\))) # (\ROM|memROM~7_combout\ & (\ROM|memROM~28_combout\ & 
-- ((\RAM64|ram~666_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000011001010011000101110100101010001110110110111001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datab => \ROM|ALT_INV_memROM~28_combout\,
	datac => \RAM64|ALT_INV_ram~663_combout\,
	datad => \RAM64|ALT_INV_ram~666_combout\,
	datae => \RAM64|ALT_INV_ram~665_combout\,
	dataf => \RAM64|ALT_INV_ram~664_combout\,
	combout => \RAM64|ram~667_combout\);

-- Location: FF_X18_Y3_N22
\RAM64|ram~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM64|ram~696_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~21_q\);

-- Location: FF_X19_Y7_N20
\RAM64|ram~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM64|ram~760_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~53_q\);

-- Location: FF_X19_Y7_N49
\RAM64|ram~117\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM64|ram~792_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~117_q\);

-- Location: FF_X16_Y5_N59
\RAM64|ram~85\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM64|ram~728_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~85_q\);

-- Location: MLABCELL_X13_Y4_N18
\RAM64|ram~653\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~653_combout\ = ( \ROM|memROM~28_combout\ & ( \ROM|memROM~22_combout\ & ( \RAM64|ram~117_q\ ) ) ) # ( !\ROM|memROM~28_combout\ & ( \ROM|memROM~22_combout\ & ( \RAM64|ram~53_q\ ) ) ) # ( \ROM|memROM~28_combout\ & ( !\ROM|memROM~22_combout\ & ( 
-- \RAM64|ram~85_q\ ) ) ) # ( !\ROM|memROM~28_combout\ & ( !\ROM|memROM~22_combout\ & ( \RAM64|ram~21_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000001111111100110011001100110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~21_q\,
	datab => \RAM64|ALT_INV_ram~53_q\,
	datac => \RAM64|ALT_INV_ram~117_q\,
	datad => \RAM64|ALT_INV_ram~85_q\,
	datae => \ROM|ALT_INV_memROM~28_combout\,
	dataf => \ROM|ALT_INV_memROM~22_combout\,
	combout => \RAM64|ram~653_combout\);

-- Location: FF_X12_Y5_N2
\RAM64|ram~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM64|ram~708_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~45_q\);

-- Location: FF_X13_Y5_N4
\RAM64|ram~109\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM64|ram~740_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~109_q\);

-- Location: FF_X12_Y3_N52
\RAM64|ram~77\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM64|ram~772_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~77_q\);

-- Location: FF_X12_Y5_N14
\RAM64|ram~141\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM64|ram~804_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~141_q\);

-- Location: LABCELL_X12_Y5_N12
\RAM64|ram~656\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~656_combout\ = ( \RAM64|ram~141_q\ & ( \ROM|memROM~22_combout\ & ( (\ROM|memROM~28_combout\) # (\RAM64|ram~77_q\) ) ) ) # ( !\RAM64|ram~141_q\ & ( \ROM|memROM~22_combout\ & ( (\RAM64|ram~77_q\ & !\ROM|memROM~28_combout\) ) ) ) # ( 
-- \RAM64|ram~141_q\ & ( !\ROM|memROM~22_combout\ & ( (!\ROM|memROM~28_combout\ & (\RAM64|ram~45_q\)) # (\ROM|memROM~28_combout\ & ((\RAM64|ram~109_q\))) ) ) ) # ( !\RAM64|ram~141_q\ & ( !\ROM|memROM~22_combout\ & ( (!\ROM|memROM~28_combout\ & 
-- (\RAM64|ram~45_q\)) # (\ROM|memROM~28_combout\ & ((\RAM64|ram~109_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010011001100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~45_q\,
	datab => \RAM64|ALT_INV_ram~109_q\,
	datac => \RAM64|ALT_INV_ram~77_q\,
	datad => \ROM|ALT_INV_memROM~28_combout\,
	datae => \RAM64|ALT_INV_ram~141_q\,
	dataf => \ROM|ALT_INV_memROM~22_combout\,
	combout => \RAM64|ram~656_combout\);

-- Location: FF_X20_Y7_N47
\RAM64|ram~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM64|ram~768_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~61_q\);

-- Location: FF_X18_Y7_N37
\RAM64|ram~93\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM64|ram~732_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~93_q\);

-- Location: LABCELL_X19_Y5_N3
\RAM64|ram~29feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~29feeder_combout\ = ( \CPU|REGA|DOUT\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REGA|ALT_INV_DOUT\(6),
	combout => \RAM64|ram~29feeder_combout\);

-- Location: FF_X19_Y5_N5
\RAM64|ram~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM64|ram~29feeder_combout\,
	ena => \RAM64|ram~704_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~29_q\);

-- Location: FF_X13_Y7_N26
\RAM64|ram~125\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM64|ram~800_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~125_q\);

-- Location: MLABCELL_X13_Y7_N24
\RAM64|ram~654\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~654_combout\ = ( \RAM64|ram~125_q\ & ( \ROM|memROM~28_combout\ & ( (\ROM|memROM~22_combout\) # (\RAM64|ram~93_q\) ) ) ) # ( !\RAM64|ram~125_q\ & ( \ROM|memROM~28_combout\ & ( (\RAM64|ram~93_q\ & !\ROM|memROM~22_combout\) ) ) ) # ( 
-- \RAM64|ram~125_q\ & ( !\ROM|memROM~28_combout\ & ( (!\ROM|memROM~22_combout\ & ((\RAM64|ram~29_q\))) # (\ROM|memROM~22_combout\ & (\RAM64|ram~61_q\)) ) ) ) # ( !\RAM64|ram~125_q\ & ( !\ROM|memROM~28_combout\ & ( (!\ROM|memROM~22_combout\ & 
-- ((\RAM64|ram~29_q\))) # (\ROM|memROM~22_combout\ & (\RAM64|ram~61_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~61_q\,
	datab => \RAM64|ALT_INV_ram~93_q\,
	datac => \ROM|ALT_INV_memROM~22_combout\,
	datad => \RAM64|ALT_INV_ram~29_q\,
	datae => \RAM64|ALT_INV_ram~125_q\,
	dataf => \ROM|ALT_INV_memROM~28_combout\,
	combout => \RAM64|ram~654_combout\);

-- Location: FF_X12_Y3_N8
\RAM64|ram~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM64|ram~764_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~69_q\);

-- Location: FF_X16_Y8_N23
\RAM64|ram~101\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM64|ram~736_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~101_q\);

-- Location: LABCELL_X14_Y1_N12
\RAM64|ram~37feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~37feeder_combout\ = ( \CPU|REGA|DOUT\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REGA|ALT_INV_DOUT\(6),
	combout => \RAM64|ram~37feeder_combout\);

-- Location: FF_X14_Y1_N13
\RAM64|ram~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM64|ram~37feeder_combout\,
	ena => \RAM64|ram~700_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~37_q\);

-- Location: FF_X12_Y5_N47
\RAM64|ram~133\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM64|ram~796_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~133_q\);

-- Location: LABCELL_X12_Y5_N45
\RAM64|ram~655\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~655_combout\ = ( \RAM64|ram~133_q\ & ( \ROM|memROM~22_combout\ & ( (\ROM|memROM~28_combout\) # (\RAM64|ram~69_q\) ) ) ) # ( !\RAM64|ram~133_q\ & ( \ROM|memROM~22_combout\ & ( (\RAM64|ram~69_q\ & !\ROM|memROM~28_combout\) ) ) ) # ( 
-- \RAM64|ram~133_q\ & ( !\ROM|memROM~22_combout\ & ( (!\ROM|memROM~28_combout\ & ((\RAM64|ram~37_q\))) # (\ROM|memROM~28_combout\ & (\RAM64|ram~101_q\)) ) ) ) # ( !\RAM64|ram~133_q\ & ( !\ROM|memROM~22_combout\ & ( (!\ROM|memROM~28_combout\ & 
-- ((\RAM64|ram~37_q\))) # (\ROM|memROM~28_combout\ & (\RAM64|ram~101_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~69_q\,
	datab => \RAM64|ALT_INV_ram~101_q\,
	datac => \ROM|ALT_INV_memROM~28_combout\,
	datad => \RAM64|ALT_INV_ram~37_q\,
	datae => \RAM64|ALT_INV_ram~133_q\,
	dataf => \ROM|ALT_INV_memROM~22_combout\,
	combout => \RAM64|ram~655_combout\);

-- Location: MLABCELL_X13_Y4_N0
\RAM64|ram~657\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~657_combout\ = ( \RAM64|ram~654_combout\ & ( \RAM64|ram~655_combout\ & ( (!\ROM|memROM~9_combout\ & (((\RAM64|ram~653_combout\)) # (\ROM|memROM~7_combout\))) # (\ROM|memROM~9_combout\ & ((!\ROM|memROM~7_combout\) # ((\RAM64|ram~656_combout\)))) 
-- ) ) ) # ( !\RAM64|ram~654_combout\ & ( \RAM64|ram~655_combout\ & ( (!\ROM|memROM~9_combout\ & (((\RAM64|ram~653_combout\)) # (\ROM|memROM~7_combout\))) # (\ROM|memROM~9_combout\ & (\ROM|memROM~7_combout\ & ((\RAM64|ram~656_combout\)))) ) ) ) # ( 
-- \RAM64|ram~654_combout\ & ( !\RAM64|ram~655_combout\ & ( (!\ROM|memROM~9_combout\ & (!\ROM|memROM~7_combout\ & (\RAM64|ram~653_combout\))) # (\ROM|memROM~9_combout\ & ((!\ROM|memROM~7_combout\) # ((\RAM64|ram~656_combout\)))) ) ) ) # ( 
-- !\RAM64|ram~654_combout\ & ( !\RAM64|ram~655_combout\ & ( (!\ROM|memROM~9_combout\ & (!\ROM|memROM~7_combout\ & (\RAM64|ram~653_combout\))) # (\ROM|memROM~9_combout\ & (\ROM|memROM~7_combout\ & ((\RAM64|ram~656_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000011001010011000101110100101010001110110110111001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~9_combout\,
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \RAM64|ALT_INV_ram~653_combout\,
	datad => \RAM64|ALT_INV_ram~656_combout\,
	datae => \RAM64|ALT_INV_ram~654_combout\,
	dataf => \RAM64|ALT_INV_ram~655_combout\,
	combout => \RAM64|ram~657_combout\);

-- Location: FF_X17_Y5_N34
\RAM64|ram~485\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM64|ram~754_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~485_q\);

-- Location: FF_X16_Y4_N14
\RAM64|ram~453\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM64|ram~782_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~453_q\);

-- Location: FF_X14_Y2_N28
\RAM64|ram~421\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM64|ram~718_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~421_q\);

-- Location: FF_X13_Y4_N56
\RAM64|ram~517\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM64|ram~814_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~517_q\);

-- Location: MLABCELL_X13_Y4_N54
\RAM64|ram~670\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~670_combout\ = ( \RAM64|ram~517_q\ & ( \ROM|memROM~22_combout\ & ( (\ROM|memROM~28_combout\) # (\RAM64|ram~453_q\) ) ) ) # ( !\RAM64|ram~517_q\ & ( \ROM|memROM~22_combout\ & ( (\RAM64|ram~453_q\ & !\ROM|memROM~28_combout\) ) ) ) # ( 
-- \RAM64|ram~517_q\ & ( !\ROM|memROM~22_combout\ & ( (!\ROM|memROM~28_combout\ & ((\RAM64|ram~421_q\))) # (\ROM|memROM~28_combout\ & (\RAM64|ram~485_q\)) ) ) ) # ( !\RAM64|ram~517_q\ & ( !\ROM|memROM~22_combout\ & ( (!\ROM|memROM~28_combout\ & 
-- ((\RAM64|ram~421_q\))) # (\ROM|memROM~28_combout\ & (\RAM64|ram~485_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~485_q\,
	datab => \RAM64|ALT_INV_ram~453_q\,
	datac => \RAM64|ALT_INV_ram~421_q\,
	datad => \ROM|ALT_INV_memROM~28_combout\,
	datae => \RAM64|ALT_INV_ram~517_q\,
	dataf => \ROM|ALT_INV_memROM~22_combout\,
	combout => \RAM64|ram~670_combout\);

-- Location: FF_X16_Y2_N17
\RAM64|ram~437\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM64|ram~778_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~437_q\);

-- Location: FF_X17_Y2_N40
\RAM64|ram~405\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM64|ram~714_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~405_q\);

-- Location: FF_X14_Y7_N31
\RAM64|ram~469\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM64|ram~746_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~469_q\);

-- Location: FF_X13_Y5_N59
\RAM64|ram~501\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM64|ram~810_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~501_q\);

-- Location: MLABCELL_X13_Y5_N57
\RAM64|ram~668\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~668_combout\ = ( \RAM64|ram~501_q\ & ( \ROM|memROM~22_combout\ & ( (\ROM|memROM~28_combout\) # (\RAM64|ram~437_q\) ) ) ) # ( !\RAM64|ram~501_q\ & ( \ROM|memROM~22_combout\ & ( (\RAM64|ram~437_q\ & !\ROM|memROM~28_combout\) ) ) ) # ( 
-- \RAM64|ram~501_q\ & ( !\ROM|memROM~22_combout\ & ( (!\ROM|memROM~28_combout\ & (\RAM64|ram~405_q\)) # (\ROM|memROM~28_combout\ & ((\RAM64|ram~469_q\))) ) ) ) # ( !\RAM64|ram~501_q\ & ( !\ROM|memROM~22_combout\ & ( (!\ROM|memROM~28_combout\ & 
-- (\RAM64|ram~405_q\)) # (\ROM|memROM~28_combout\ & ((\RAM64|ram~469_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~437_q\,
	datab => \RAM64|ALT_INV_ram~405_q\,
	datac => \ROM|ALT_INV_memROM~28_combout\,
	datad => \RAM64|ALT_INV_ram~469_q\,
	datae => \RAM64|ALT_INV_ram~501_q\,
	dataf => \ROM|ALT_INV_memROM~22_combout\,
	combout => \RAM64|ram~668_combout\);

-- Location: FF_X12_Y6_N4
\RAM64|ram~445\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM64|ram~786_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~445_q\);

-- Location: FF_X17_Y6_N50
\RAM64|ram~413\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM64|ram~722_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~413_q\);

-- Location: FF_X10_Y7_N1
\RAM64|ram~477\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM64|ram~750_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~477_q\);

-- Location: FF_X12_Y4_N14
\RAM64|ram~509\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM64|ram~818_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~509_q\);

-- Location: LABCELL_X12_Y4_N12
\RAM64|ram~669\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~669_combout\ = ( \RAM64|ram~509_q\ & ( \ROM|memROM~28_combout\ & ( (\ROM|memROM~22_combout\) # (\RAM64|ram~477_q\) ) ) ) # ( !\RAM64|ram~509_q\ & ( \ROM|memROM~28_combout\ & ( (\RAM64|ram~477_q\ & !\ROM|memROM~22_combout\) ) ) ) # ( 
-- \RAM64|ram~509_q\ & ( !\ROM|memROM~28_combout\ & ( (!\ROM|memROM~22_combout\ & ((\RAM64|ram~413_q\))) # (\ROM|memROM~22_combout\ & (\RAM64|ram~445_q\)) ) ) ) # ( !\RAM64|ram~509_q\ & ( !\ROM|memROM~28_combout\ & ( (!\ROM|memROM~22_combout\ & 
-- ((\RAM64|ram~413_q\))) # (\ROM|memROM~22_combout\ & (\RAM64|ram~445_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101001100110101010100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~445_q\,
	datab => \RAM64|ALT_INV_ram~413_q\,
	datac => \RAM64|ALT_INV_ram~477_q\,
	datad => \ROM|ALT_INV_memROM~22_combout\,
	datae => \RAM64|ALT_INV_ram~509_q\,
	dataf => \ROM|ALT_INV_memROM~28_combout\,
	combout => \RAM64|ram~669_combout\);

-- Location: FF_X9_Y4_N20
\RAM64|ram~493\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM64|ram~758_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~493_q\);

-- Location: FF_X14_Y5_N47
\RAM64|ram~429\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM64|ram~726_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~429_q\);

-- Location: FF_X10_Y5_N40
\RAM64|ram~461\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM64|ram~790_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~461_q\);

-- Location: FF_X9_Y4_N14
\RAM64|ram~525\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM64|ram~822_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~525_q\);

-- Location: MLABCELL_X9_Y4_N12
\RAM64|ram~671\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~671_combout\ = ( \RAM64|ram~525_q\ & ( \ROM|memROM~28_combout\ & ( (\ROM|memROM~22_combout\) # (\RAM64|ram~493_q\) ) ) ) # ( !\RAM64|ram~525_q\ & ( \ROM|memROM~28_combout\ & ( (\RAM64|ram~493_q\ & !\ROM|memROM~22_combout\) ) ) ) # ( 
-- \RAM64|ram~525_q\ & ( !\ROM|memROM~28_combout\ & ( (!\ROM|memROM~22_combout\ & (\RAM64|ram~429_q\)) # (\ROM|memROM~22_combout\ & ((\RAM64|ram~461_q\))) ) ) ) # ( !\RAM64|ram~525_q\ & ( !\ROM|memROM~28_combout\ & ( (!\ROM|memROM~22_combout\ & 
-- (\RAM64|ram~429_q\)) # (\ROM|memROM~22_combout\ & ((\RAM64|ram~461_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~493_q\,
	datab => \RAM64|ALT_INV_ram~429_q\,
	datac => \ROM|ALT_INV_memROM~22_combout\,
	datad => \RAM64|ALT_INV_ram~461_q\,
	datae => \RAM64|ALT_INV_ram~525_q\,
	dataf => \ROM|ALT_INV_memROM~28_combout\,
	combout => \RAM64|ram~671_combout\);

-- Location: MLABCELL_X13_Y4_N42
\RAM64|ram~672\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~672_combout\ = ( \RAM64|ram~669_combout\ & ( \RAM64|ram~671_combout\ & ( ((!\ROM|memROM~7_combout\ & ((\RAM64|ram~668_combout\))) # (\ROM|memROM~7_combout\ & (\RAM64|ram~670_combout\))) # (\ROM|memROM~9_combout\) ) ) ) # ( 
-- !\RAM64|ram~669_combout\ & ( \RAM64|ram~671_combout\ & ( (!\ROM|memROM~9_combout\ & ((!\ROM|memROM~7_combout\ & ((\RAM64|ram~668_combout\))) # (\ROM|memROM~7_combout\ & (\RAM64|ram~670_combout\)))) # (\ROM|memROM~9_combout\ & (\ROM|memROM~7_combout\)) ) ) 
-- ) # ( \RAM64|ram~669_combout\ & ( !\RAM64|ram~671_combout\ & ( (!\ROM|memROM~9_combout\ & ((!\ROM|memROM~7_combout\ & ((\RAM64|ram~668_combout\))) # (\ROM|memROM~7_combout\ & (\RAM64|ram~670_combout\)))) # (\ROM|memROM~9_combout\ & 
-- (!\ROM|memROM~7_combout\)) ) ) ) # ( !\RAM64|ram~669_combout\ & ( !\RAM64|ram~671_combout\ & ( (!\ROM|memROM~9_combout\ & ((!\ROM|memROM~7_combout\ & ((\RAM64|ram~668_combout\))) # (\ROM|memROM~7_combout\ & (\RAM64|ram~670_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010010001101100111000010011100110110101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~9_combout\,
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \RAM64|ALT_INV_ram~670_combout\,
	datad => \RAM64|ALT_INV_ram~668_combout\,
	datae => \RAM64|ALT_INV_ram~669_combout\,
	dataf => \RAM64|ALT_INV_ram~671_combout\,
	combout => \RAM64|ram~672_combout\);

-- Location: MLABCELL_X13_Y4_N48
\RAM64|ram~673\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~673_combout\ = ( \RAM64|ram~657_combout\ & ( \RAM64|ram~672_combout\ & ( (!\ROM|memROM~3_combout\ & ((!\ROM|memROM~20_combout\) # ((\RAM64|ram~667_combout\)))) # (\ROM|memROM~3_combout\ & (((\RAM64|ram~662_combout\)) # 
-- (\ROM|memROM~20_combout\))) ) ) ) # ( !\RAM64|ram~657_combout\ & ( \RAM64|ram~672_combout\ & ( (!\ROM|memROM~3_combout\ & (\ROM|memROM~20_combout\ & ((\RAM64|ram~667_combout\)))) # (\ROM|memROM~3_combout\ & (((\RAM64|ram~662_combout\)) # 
-- (\ROM|memROM~20_combout\))) ) ) ) # ( \RAM64|ram~657_combout\ & ( !\RAM64|ram~672_combout\ & ( (!\ROM|memROM~3_combout\ & ((!\ROM|memROM~20_combout\) # ((\RAM64|ram~667_combout\)))) # (\ROM|memROM~3_combout\ & (!\ROM|memROM~20_combout\ & 
-- (\RAM64|ram~662_combout\))) ) ) ) # ( !\RAM64|ram~657_combout\ & ( !\RAM64|ram~672_combout\ & ( (!\ROM|memROM~3_combout\ & (\ROM|memROM~20_combout\ & ((\RAM64|ram~667_combout\)))) # (\ROM|memROM~3_combout\ & (!\ROM|memROM~20_combout\ & 
-- (\RAM64|ram~662_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100110100011001010111000010101001101111001110110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~3_combout\,
	datab => \ROM|ALT_INV_memROM~20_combout\,
	datac => \RAM64|ALT_INV_ram~662_combout\,
	datad => \RAM64|ALT_INV_ram~667_combout\,
	datae => \RAM64|ALT_INV_ram~657_combout\,
	dataf => \RAM64|ALT_INV_ram~672_combout\,
	combout => \RAM64|ram~673_combout\);

-- Location: LABCELL_X10_Y3_N3
\DATA_IN[6]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATA_IN[6]~11_combout\ = ( \RAM64|ram~673_combout\ & ( ((\SW[6]~input_o\ & \AND_SW0_7|saida~3_combout\)) # (\RAM64|dado_out~0_combout\) ) ) # ( !\RAM64|ram~673_combout\ & ( (\SW[6]~input_o\ & \AND_SW0_7|saida~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111101010101010111110101010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_dado_out~0_combout\,
	datac => \ALT_INV_SW[6]~input_o\,
	datad => \AND_SW0_7|ALT_INV_saida~3_combout\,
	dataf => \RAM64|ALT_INV_ram~673_combout\,
	combout => \DATA_IN[6]~11_combout\);

-- Location: MLABCELL_X9_Y3_N48
\CPU|ULA1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~25_sumout\ = SUM(( \CPU|REGA|DOUT\(6) ) + ( (!\CPU|DECODER1|saida[5]~2_combout\ & (((\DATA_IN[6]~11_combout\)))) # (\CPU|DECODER1|saida[5]~2_combout\ & ((!\CPU|DECODER1|saida[6]~6_combout\ & (\ROM|memROM~24_combout\)) # 
-- (\CPU|DECODER1|saida[6]~6_combout\ & ((\DATA_IN[6]~11_combout\))))) ) + ( \CPU|ULA1|Add0~22\ ))
-- \CPU|ULA1|Add0~26\ = CARRY(( \CPU|REGA|DOUT\(6) ) + ( (!\CPU|DECODER1|saida[5]~2_combout\ & (((\DATA_IN[6]~11_combout\)))) # (\CPU|DECODER1|saida[5]~2_combout\ & ((!\CPU|DECODER1|saida[6]~6_combout\ & (\ROM|memROM~24_combout\)) # 
-- (\CPU|DECODER1|saida[6]~6_combout\ & ((\DATA_IN[6]~11_combout\))))) ) + ( \CPU|ULA1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110110100000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER1|ALT_INV_saida[5]~2_combout\,
	datab => \CPU|DECODER1|ALT_INV_saida[6]~6_combout\,
	datac => \ROM|ALT_INV_memROM~24_combout\,
	datad => \CPU|REGA|ALT_INV_DOUT\(6),
	dataf => \ALT_INV_DATA_IN[6]~11_combout\,
	cin => \CPU|ULA1|Add0~22\,
	sumout => \CPU|ULA1|Add0~25_sumout\,
	cout => \CPU|ULA1|Add0~26\);

-- Location: LABCELL_X19_Y6_N24
\ROM|memROM~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~30_combout\ = ( \ROM|memROM~18_combout\ & ( \ROM|memROM~23_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~23_combout\,
	dataf => \ROM|ALT_INV_memROM~18_combout\,
	combout => \ROM|memROM~30_combout\);

-- Location: LABCELL_X10_Y3_N33
\CPU|ULA1|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~13_sumout\ = SUM(( (!\CPU|DECODER1|saida[6]~7_combout\ & (((!\ROM|memROM~30_combout\)) # (\CPU|PC|DOUT[8]~DUPLICATE_q\))) # (\CPU|DECODER1|saida[6]~7_combout\ & (((!\DATA_IN[6]~11_combout\)))) ) + ( \CPU|REGA|DOUT\(6) ) + ( 
-- \CPU|ULA1|Add1~10\ ))
-- \CPU|ULA1|Add1~14\ = CARRY(( (!\CPU|DECODER1|saida[6]~7_combout\ & (((!\ROM|memROM~30_combout\)) # (\CPU|PC|DOUT[8]~DUPLICATE_q\))) # (\CPU|DECODER1|saida[6]~7_combout\ & (((!\DATA_IN[6]~11_combout\)))) ) + ( \CPU|REGA|DOUT\(6) ) + ( \CPU|ULA1|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111011111000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datab => \CPU|DECODER1|ALT_INV_saida[6]~7_combout\,
	datac => \ROM|ALT_INV_memROM~30_combout\,
	datad => \ALT_INV_DATA_IN[6]~11_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(6),
	cin => \CPU|ULA1|Add1~10\,
	sumout => \CPU|ULA1|Add1~13_sumout\,
	cout => \CPU|ULA1|Add1~14\);

-- Location: MLABCELL_X9_Y3_N15
\CPU|ULA1|saida[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[6]~6_combout\ = ( \CPU|ULA1|Add1~13_sumout\ & ( (!\CPU|DECODER1|saida[4]~3_combout\) # ((!\CPU|DECODER1|saida[6]~7_combout\ & ((\ROM|memROM~24_combout\))) # (\CPU|DECODER1|saida[6]~7_combout\ & (\DATA_IN[6]~11_combout\))) ) ) # ( 
-- !\CPU|ULA1|Add1~13_sumout\ & ( (\CPU|DECODER1|saida[4]~3_combout\ & ((!\CPU|DECODER1|saida[6]~7_combout\ & ((\ROM|memROM~24_combout\))) # (\CPU|DECODER1|saida[6]~7_combout\ & (\DATA_IN[6]~11_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101000000010100010110101011111011111010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER1|ALT_INV_saida[4]~3_combout\,
	datab => \CPU|DECODER1|ALT_INV_saida[6]~7_combout\,
	datac => \ALT_INV_DATA_IN[6]~11_combout\,
	datad => \ROM|ALT_INV_memROM~24_combout\,
	dataf => \CPU|ULA1|ALT_INV_Add1~13_sumout\,
	combout => \CPU|ULA1|saida[6]~6_combout\);

-- Location: FF_X9_Y3_N50
\CPU|REGA|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|ULA1|Add0~25_sumout\,
	asdata => \CPU|ULA1|saida[6]~6_combout\,
	sload => \CPU|DECODER1|saida[3]~4_combout\,
	ena => \CPU|DECODER1|saida[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(6));

-- Location: MLABCELL_X9_Y3_N51
\CPU|ULA1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~29_sumout\ = SUM(( \CPU|REGA|DOUT\(7) ) + ( (!\CPU|DECODER1|saida[5]~2_combout\ & (((\DATA_IN[7]~12_combout\)))) # (\CPU|DECODER1|saida[5]~2_combout\ & ((!\CPU|DECODER1|saida[6]~6_combout\ & (\ROM|memROM~20_combout\)) # 
-- (\CPU|DECODER1|saida[6]~6_combout\ & ((\DATA_IN[7]~12_combout\))))) ) + ( \CPU|ULA1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110110100000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER1|ALT_INV_saida[5]~2_combout\,
	datab => \CPU|DECODER1|ALT_INV_saida[6]~6_combout\,
	datac => \ROM|ALT_INV_memROM~20_combout\,
	datad => \CPU|REGA|ALT_INV_DOUT\(7),
	dataf => \ALT_INV_DATA_IN[7]~12_combout\,
	cin => \CPU|ULA1|Add0~26\,
	sumout => \CPU|ULA1|Add0~29_sumout\);

-- Location: MLABCELL_X9_Y3_N12
\CPU|ULA1|saida[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[7]~7_combout\ = ( \CPU|ULA1|Add1~17_sumout\ & ( (!\CPU|DECODER1|saida[4]~3_combout\) # ((!\CPU|DECODER1|saida[6]~7_combout\ & (\ROM|memROM~20_combout\)) # (\CPU|DECODER1|saida[6]~7_combout\ & ((\DATA_IN[7]~12_combout\)))) ) ) # ( 
-- !\CPU|ULA1|Add1~17_sumout\ & ( (\CPU|DECODER1|saida[4]~3_combout\ & ((!\CPU|DECODER1|saida[6]~7_combout\ & (\ROM|memROM~20_combout\)) # (\CPU|DECODER1|saida[6]~7_combout\ & ((\DATA_IN[7]~12_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101000001000001010110101110101111111010111010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER1|ALT_INV_saida[4]~3_combout\,
	datab => \CPU|DECODER1|ALT_INV_saida[6]~7_combout\,
	datac => \ROM|ALT_INV_memROM~20_combout\,
	datad => \ALT_INV_DATA_IN[7]~12_combout\,
	dataf => \CPU|ULA1|ALT_INV_Add1~17_sumout\,
	combout => \CPU|ULA1|saida[7]~7_combout\);

-- Location: FF_X9_Y3_N53
\CPU|REGA|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|ULA1|Add0~29_sumout\,
	asdata => \CPU|ULA1|saida[7]~7_combout\,
	sload => \CPU|DECODER1|saida[3]~4_combout\,
	ena => \CPU|DECODER1|saida[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(7));

-- Location: FF_X17_Y7_N38
\RAM64|ram~398\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM64|ram~806_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~398_q\);

-- Location: FF_X17_Y3_N34
\RAM64|ram~518\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM64|ram~814_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~518_q\);

-- Location: FF_X17_Y5_N13
\RAM64|ram~526\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM64|ram~822_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~526_q\);

-- Location: FF_X17_Y4_N29
\RAM64|ram~390\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM64|ram~798_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~390_q\);

-- Location: LABCELL_X17_Y7_N39
\RAM64|ram~692\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~692_combout\ = ( \ROM|memROM~9_combout\ & ( \ROM|memROM~20_combout\ & ( \RAM64|ram~526_q\ ) ) ) # ( !\ROM|memROM~9_combout\ & ( \ROM|memROM~20_combout\ & ( \RAM64|ram~518_q\ ) ) ) # ( \ROM|memROM~9_combout\ & ( !\ROM|memROM~20_combout\ & ( 
-- \RAM64|ram~398_q\ ) ) ) # ( !\ROM|memROM~9_combout\ & ( !\ROM|memROM~20_combout\ & ( \RAM64|ram~390_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111010101010101010100110011001100110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~398_q\,
	datab => \RAM64|ALT_INV_ram~518_q\,
	datac => \RAM64|ALT_INV_ram~526_q\,
	datad => \RAM64|ALT_INV_ram~390_q\,
	datae => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \ROM|ALT_INV_memROM~20_combout\,
	combout => \RAM64|ram~692_combout\);

-- Location: FF_X16_Y4_N5
\RAM64|ram~454\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM64|ram~782_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~454_q\);

-- Location: FF_X17_Y7_N32
\RAM64|ram~334\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM64|ram~774_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~334_q\);

-- Location: MLABCELL_X13_Y7_N0
\RAM64|ram~326feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~326feeder_combout\ = ( \CPU|REGA|DOUT\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REGA|ALT_INV_DOUT\(7),
	combout => \RAM64|ram~326feeder_combout\);

-- Location: FF_X13_Y7_N1
\RAM64|ram~326\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM64|ram~326feeder_combout\,
	ena => \RAM64|ram~766_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~326_q\);

-- Location: MLABCELL_X13_Y7_N12
\RAM64|ram~462feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~462feeder_combout\ = ( \CPU|REGA|DOUT\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REGA|ALT_INV_DOUT\(7),
	combout => \RAM64|ram~462feeder_combout\);

-- Location: FF_X13_Y7_N13
\RAM64|ram~462\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM64|ram~462feeder_combout\,
	ena => \RAM64|ram~790_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~462_q\);

-- Location: LABCELL_X17_Y7_N21
\RAM64|ram~691\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~691_combout\ = ( \ROM|memROM~9_combout\ & ( \ROM|memROM~20_combout\ & ( \RAM64|ram~462_q\ ) ) ) # ( !\ROM|memROM~9_combout\ & ( \ROM|memROM~20_combout\ & ( \RAM64|ram~454_q\ ) ) ) # ( \ROM|memROM~9_combout\ & ( !\ROM|memROM~20_combout\ & ( 
-- \RAM64|ram~334_q\ ) ) ) # ( !\ROM|memROM~9_combout\ & ( !\ROM|memROM~20_combout\ & ( \RAM64|ram~326_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001100110011001101010101010101010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~454_q\,
	datab => \RAM64|ALT_INV_ram~334_q\,
	datac => \RAM64|ALT_INV_ram~326_q\,
	datad => \RAM64|ALT_INV_ram~462_q\,
	datae => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \ROM|ALT_INV_memROM~20_combout\,
	combout => \RAM64|ram~691_combout\);

-- Location: FF_X13_Y5_N34
\RAM64|ram~510\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM64|ram~818_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~510_q\);

-- Location: FF_X17_Y4_N52
\RAM64|ram~374\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM64|ram~794_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~374_q\);

-- Location: LABCELL_X12_Y4_N39
\RAM64|ram~382feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~382feeder_combout\ = ( \CPU|REGA|DOUT\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REGA|ALT_INV_DOUT\(7),
	combout => \RAM64|ram~382feeder_combout\);

-- Location: FF_X12_Y4_N41
\RAM64|ram~382\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM64|ram~382feeder_combout\,
	ena => \RAM64|ram~802_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~382_q\);

-- Location: LABCELL_X12_Y4_N9
\RAM64|ram~502feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~502feeder_combout\ = ( \CPU|REGA|DOUT\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REGA|ALT_INV_DOUT\(7),
	combout => \RAM64|ram~502feeder_combout\);

-- Location: FF_X12_Y4_N11
\RAM64|ram~502\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM64|ram~502feeder_combout\,
	ena => \RAM64|ram~810_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~502_q\);

-- Location: LABCELL_X14_Y7_N36
\RAM64|ram~690\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~690_combout\ = ( \ROM|memROM~20_combout\ & ( \ROM|memROM~9_combout\ & ( \RAM64|ram~510_q\ ) ) ) # ( !\ROM|memROM~20_combout\ & ( \ROM|memROM~9_combout\ & ( \RAM64|ram~382_q\ ) ) ) # ( \ROM|memROM~20_combout\ & ( !\ROM|memROM~9_combout\ & ( 
-- \RAM64|ram~502_q\ ) ) ) # ( !\ROM|memROM~20_combout\ & ( !\ROM|memROM~9_combout\ & ( \RAM64|ram~374_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000001111111100001111000011110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~510_q\,
	datab => \RAM64|ALT_INV_ram~374_q\,
	datac => \RAM64|ALT_INV_ram~382_q\,
	datad => \RAM64|ALT_INV_ram~502_q\,
	datae => \ROM|ALT_INV_memROM~20_combout\,
	dataf => \ROM|ALT_INV_memROM~9_combout\,
	combout => \RAM64|ram~690_combout\);

-- Location: LABCELL_X16_Y2_N45
\RAM64|ram~310feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~310feeder_combout\ = ( \CPU|REGA|DOUT\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REGA|ALT_INV_DOUT\(7),
	combout => \RAM64|ram~310feeder_combout\);

-- Location: FF_X16_Y2_N46
\RAM64|ram~310\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM64|ram~310feeder_combout\,
	ena => \RAM64|ram~762_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~310_q\);

-- Location: FF_X12_Y6_N35
\RAM64|ram~318\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM64|ram~770_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~318_q\);

-- Location: LABCELL_X16_Y2_N39
\RAM64|ram~438feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~438feeder_combout\ = ( \CPU|REGA|DOUT\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REGA|ALT_INV_DOUT\(7),
	combout => \RAM64|ram~438feeder_combout\);

-- Location: FF_X16_Y2_N40
\RAM64|ram~438\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM64|ram~438feeder_combout\,
	ena => \RAM64|ram~778_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~438_q\);

-- Location: FF_X12_Y6_N56
\RAM64|ram~446\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM64|ram~786_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~446_q\);

-- Location: LABCELL_X12_Y6_N54
\RAM64|ram~689\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~689_combout\ = ( \RAM64|ram~446_q\ & ( \ROM|memROM~9_combout\ & ( (\ROM|memROM~20_combout\) # (\RAM64|ram~318_q\) ) ) ) # ( !\RAM64|ram~446_q\ & ( \ROM|memROM~9_combout\ & ( (\RAM64|ram~318_q\ & !\ROM|memROM~20_combout\) ) ) ) # ( 
-- \RAM64|ram~446_q\ & ( !\ROM|memROM~9_combout\ & ( (!\ROM|memROM~20_combout\ & (\RAM64|ram~310_q\)) # (\ROM|memROM~20_combout\ & ((\RAM64|ram~438_q\))) ) ) ) # ( !\RAM64|ram~446_q\ & ( !\ROM|memROM~9_combout\ & ( (!\ROM|memROM~20_combout\ & 
-- (\RAM64|ram~310_q\)) # (\ROM|memROM~20_combout\ & ((\RAM64|ram~438_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~310_q\,
	datab => \RAM64|ALT_INV_ram~318_q\,
	datac => \ROM|ALT_INV_memROM~20_combout\,
	datad => \RAM64|ALT_INV_ram~438_q\,
	datae => \RAM64|ALT_INV_ram~446_q\,
	dataf => \ROM|ALT_INV_memROM~9_combout\,
	combout => \RAM64|ram~689_combout\);

-- Location: LABCELL_X16_Y7_N48
\RAM64|ram~693\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~693_combout\ = ( \RAM64|ram~690_combout\ & ( \RAM64|ram~689_combout\ & ( (!\ROM|memROM~7_combout\) # ((!\ROM|memROM~28_combout\ & ((\RAM64|ram~691_combout\))) # (\ROM|memROM~28_combout\ & (\RAM64|ram~692_combout\))) ) ) ) # ( 
-- !\RAM64|ram~690_combout\ & ( \RAM64|ram~689_combout\ & ( (!\ROM|memROM~28_combout\ & (((!\ROM|memROM~7_combout\) # (\RAM64|ram~691_combout\)))) # (\ROM|memROM~28_combout\ & (\RAM64|ram~692_combout\ & ((\ROM|memROM~7_combout\)))) ) ) ) # ( 
-- \RAM64|ram~690_combout\ & ( !\RAM64|ram~689_combout\ & ( (!\ROM|memROM~28_combout\ & (((\RAM64|ram~691_combout\ & \ROM|memROM~7_combout\)))) # (\ROM|memROM~28_combout\ & (((!\ROM|memROM~7_combout\)) # (\RAM64|ram~692_combout\))) ) ) ) # ( 
-- !\RAM64|ram~690_combout\ & ( !\RAM64|ram~689_combout\ & ( (\ROM|memROM~7_combout\ & ((!\ROM|memROM~28_combout\ & ((\RAM64|ram~691_combout\))) # (\ROM|memROM~28_combout\ & (\RAM64|ram~692_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011101001100110001110111001100000111011111111100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~692_combout\,
	datab => \ROM|ALT_INV_memROM~28_combout\,
	datac => \RAM64|ALT_INV_ram~691_combout\,
	datad => \ROM|ALT_INV_memROM~7_combout\,
	datae => \RAM64|ALT_INV_ram~690_combout\,
	dataf => \RAM64|ALT_INV_ram~689_combout\,
	combout => \RAM64|ram~693_combout\);

-- Location: LABCELL_X16_Y8_N48
\RAM64|ram~78feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~78feeder_combout\ = ( \CPU|REGA|DOUT\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REGA|ALT_INV_DOUT\(7),
	combout => \RAM64|ram~78feeder_combout\);

-- Location: FF_X16_Y8_N50
\RAM64|ram~78\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM64|ram~78feeder_combout\,
	ena => \RAM64|ram~772_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~78_q\);

-- Location: FF_X13_Y6_N49
\RAM64|ram~206\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM64|ram~788_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~206_q\);

-- Location: FF_X12_Y3_N11
\RAM64|ram~70\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM64|ram~764_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~70_q\);

-- Location: FF_X16_Y4_N29
\RAM64|ram~198\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM64|ram~780_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~198_q\);

-- Location: MLABCELL_X13_Y6_N51
\RAM64|ram~681\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~681_combout\ = ( \RAM64|ram~198_q\ & ( \ROM|memROM~20_combout\ & ( (!\ROM|memROM~9_combout\) # (\RAM64|ram~206_q\) ) ) ) # ( !\RAM64|ram~198_q\ & ( \ROM|memROM~20_combout\ & ( (\RAM64|ram~206_q\ & \ROM|memROM~9_combout\) ) ) ) # ( 
-- \RAM64|ram~198_q\ & ( !\ROM|memROM~20_combout\ & ( (!\ROM|memROM~9_combout\ & ((\RAM64|ram~70_q\))) # (\ROM|memROM~9_combout\ & (\RAM64|ram~78_q\)) ) ) ) # ( !\RAM64|ram~198_q\ & ( !\ROM|memROM~20_combout\ & ( (!\ROM|memROM~9_combout\ & 
-- ((\RAM64|ram~70_q\))) # (\ROM|memROM~9_combout\ & (\RAM64|ram~78_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100000000001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~78_q\,
	datab => \RAM64|ALT_INV_ram~206_q\,
	datac => \RAM64|ALT_INV_ram~70_q\,
	datad => \ROM|ALT_INV_memROM~9_combout\,
	datae => \RAM64|ALT_INV_ram~198_q\,
	dataf => \ROM|ALT_INV_memROM~20_combout\,
	combout => \RAM64|ram~681_combout\);

-- Location: LABCELL_X19_Y7_N9
\RAM64|ram~118feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~118feeder_combout\ = ( \CPU|REGA|DOUT\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REGA|ALT_INV_DOUT\(7),
	combout => \RAM64|ram~118feeder_combout\);

-- Location: FF_X19_Y7_N10
\RAM64|ram~118\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM64|ram~118feeder_combout\,
	ena => \RAM64|ram~792_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~118_q\);

-- Location: FF_X18_Y2_N13
\RAM64|ram~246\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM64|ram~808_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~246_q\);

-- Location: FF_X10_Y5_N22
\RAM64|ram~254\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM64|ram~816_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~254_q\);

-- Location: FF_X13_Y7_N38
\RAM64|ram~126\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM64|ram~800_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~126_q\);

-- Location: MLABCELL_X13_Y7_N36
\RAM64|ram~680\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~680_combout\ = ( \RAM64|ram~126_q\ & ( \ROM|memROM~9_combout\ & ( (!\ROM|memROM~20_combout\) # (\RAM64|ram~254_q\) ) ) ) # ( !\RAM64|ram~126_q\ & ( \ROM|memROM~9_combout\ & ( (\ROM|memROM~20_combout\ & \RAM64|ram~254_q\) ) ) ) # ( 
-- \RAM64|ram~126_q\ & ( !\ROM|memROM~9_combout\ & ( (!\ROM|memROM~20_combout\ & (\RAM64|ram~118_q\)) # (\ROM|memROM~20_combout\ & ((\RAM64|ram~246_q\))) ) ) ) # ( !\RAM64|ram~126_q\ & ( !\ROM|memROM~9_combout\ & ( (!\ROM|memROM~20_combout\ & 
-- (\RAM64|ram~118_q\)) # (\ROM|memROM~20_combout\ & ((\RAM64|ram~246_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001100000000000011111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~118_q\,
	datab => \RAM64|ALT_INV_ram~246_q\,
	datac => \ROM|ALT_INV_memROM~20_combout\,
	datad => \RAM64|ALT_INV_ram~254_q\,
	datae => \RAM64|ALT_INV_ram~126_q\,
	dataf => \ROM|ALT_INV_memROM~9_combout\,
	combout => \RAM64|ram~680_combout\);

-- Location: FF_X12_Y5_N50
\RAM64|ram~134\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM64|ram~796_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~134_q\);

-- Location: FF_X13_Y6_N32
\RAM64|ram~270\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM64|ram~820_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~270_q\);

-- Location: FF_X18_Y4_N25
\RAM64|ram~262\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM64|ram~812_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~262_q\);

-- Location: FF_X12_Y5_N16
\RAM64|ram~142\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM64|ram~804_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~142_q\);

-- Location: MLABCELL_X13_Y6_N33
\RAM64|ram~682\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~682_combout\ = ( \RAM64|ram~142_q\ & ( \ROM|memROM~20_combout\ & ( (!\ROM|memROM~9_combout\ & ((\RAM64|ram~262_q\))) # (\ROM|memROM~9_combout\ & (\RAM64|ram~270_q\)) ) ) ) # ( !\RAM64|ram~142_q\ & ( \ROM|memROM~20_combout\ & ( 
-- (!\ROM|memROM~9_combout\ & ((\RAM64|ram~262_q\))) # (\ROM|memROM~9_combout\ & (\RAM64|ram~270_q\)) ) ) ) # ( \RAM64|ram~142_q\ & ( !\ROM|memROM~20_combout\ & ( (\ROM|memROM~9_combout\) # (\RAM64|ram~134_q\) ) ) ) # ( !\RAM64|ram~142_q\ & ( 
-- !\ROM|memROM~20_combout\ & ( (\RAM64|ram~134_q\ & !\ROM|memROM~9_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101011111111100001111001100110000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~134_q\,
	datab => \RAM64|ALT_INV_ram~270_q\,
	datac => \RAM64|ALT_INV_ram~262_q\,
	datad => \ROM|ALT_INV_memROM~9_combout\,
	datae => \RAM64|ALT_INV_ram~142_q\,
	dataf => \ROM|ALT_INV_memROM~20_combout\,
	combout => \RAM64|ram~682_combout\);

-- Location: FF_X10_Y6_N13
\RAM64|ram~182\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM64|ram~776_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~182_q\);

-- Location: LABCELL_X19_Y7_N0
\RAM64|ram~54feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~54feeder_combout\ = ( \CPU|REGA|DOUT\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REGA|ALT_INV_DOUT\(7),
	combout => \RAM64|ram~54feeder_combout\);

-- Location: FF_X19_Y7_N2
\RAM64|ram~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM64|ram~54feeder_combout\,
	ena => \RAM64|ram~760_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~54_q\);

-- Location: FF_X19_Y5_N59
\RAM64|ram~190\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM64|ram~784_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~190_q\);

-- Location: FF_X19_Y5_N26
\RAM64|ram~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM64|ram~768_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~62_q\);

-- Location: LABCELL_X19_Y5_N24
\RAM64|ram~679\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~679_combout\ = ( \RAM64|ram~62_q\ & ( \ROM|memROM~9_combout\ & ( (!\ROM|memROM~20_combout\) # (\RAM64|ram~190_q\) ) ) ) # ( !\RAM64|ram~62_q\ & ( \ROM|memROM~9_combout\ & ( (\ROM|memROM~20_combout\ & \RAM64|ram~190_q\) ) ) ) # ( 
-- \RAM64|ram~62_q\ & ( !\ROM|memROM~9_combout\ & ( (!\ROM|memROM~20_combout\ & ((\RAM64|ram~54_q\))) # (\ROM|memROM~20_combout\ & (\RAM64|ram~182_q\)) ) ) ) # ( !\RAM64|ram~62_q\ & ( !\ROM|memROM~9_combout\ & ( (!\ROM|memROM~20_combout\ & 
-- ((\RAM64|ram~54_q\))) # (\ROM|memROM~20_combout\ & (\RAM64|ram~182_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001101010011010100000000000011111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~182_q\,
	datab => \RAM64|ALT_INV_ram~54_q\,
	datac => \ROM|ALT_INV_memROM~20_combout\,
	datad => \RAM64|ALT_INV_ram~190_q\,
	datae => \RAM64|ALT_INV_ram~62_q\,
	dataf => \ROM|ALT_INV_memROM~9_combout\,
	combout => \RAM64|ram~679_combout\);

-- Location: LABCELL_X16_Y7_N30
\RAM64|ram~683\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~683_combout\ = ( \RAM64|ram~682_combout\ & ( \RAM64|ram~679_combout\ & ( (!\ROM|memROM~28_combout\ & ((!\ROM|memROM~7_combout\) # ((\RAM64|ram~681_combout\)))) # (\ROM|memROM~28_combout\ & (((\RAM64|ram~680_combout\)) # 
-- (\ROM|memROM~7_combout\))) ) ) ) # ( !\RAM64|ram~682_combout\ & ( \RAM64|ram~679_combout\ & ( (!\ROM|memROM~28_combout\ & ((!\ROM|memROM~7_combout\) # ((\RAM64|ram~681_combout\)))) # (\ROM|memROM~28_combout\ & (!\ROM|memROM~7_combout\ & 
-- ((\RAM64|ram~680_combout\)))) ) ) ) # ( \RAM64|ram~682_combout\ & ( !\RAM64|ram~679_combout\ & ( (!\ROM|memROM~28_combout\ & (\ROM|memROM~7_combout\ & (\RAM64|ram~681_combout\))) # (\ROM|memROM~28_combout\ & (((\RAM64|ram~680_combout\)) # 
-- (\ROM|memROM~7_combout\))) ) ) ) # ( !\RAM64|ram~682_combout\ & ( !\RAM64|ram~679_combout\ & ( (!\ROM|memROM~28_combout\ & (\ROM|memROM~7_combout\ & (\RAM64|ram~681_combout\))) # (\ROM|memROM~28_combout\ & (!\ROM|memROM~7_combout\ & 
-- ((\RAM64|ram~680_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110000100110101011110001010110011101001101111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~28_combout\,
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \RAM64|ALT_INV_ram~681_combout\,
	datad => \RAM64|ALT_INV_ram~680_combout\,
	datae => \RAM64|ALT_INV_ram~682_combout\,
	dataf => \RAM64|ALT_INV_ram~679_combout\,
	combout => \RAM64|ram~683_combout\);

-- Location: FF_X18_Y5_N16
\RAM64|ram~286\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM64|ram~706_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~286_q\);

-- Location: FF_X18_Y4_N37
\RAM64|ram~350\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM64|ram~734_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~350_q\);

-- Location: LABCELL_X10_Y7_N51
\RAM64|ram~302feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~302feeder_combout\ = ( \CPU|REGA|DOUT\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REGA|ALT_INV_DOUT\(7),
	combout => \RAM64|ram~302feeder_combout\);

-- Location: FF_X10_Y7_N52
\RAM64|ram~302\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM64|ram~302feeder_combout\,
	ena => \RAM64|ram~710_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~302_q\);

-- Location: FF_X16_Y7_N59
\RAM64|ram~366\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM64|ram~742_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~366_q\);

-- Location: LABCELL_X16_Y7_N18
\RAM64|ram~685\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~685_combout\ = ( \RAM64|ram~366_q\ & ( \ROM|memROM~7_combout\ & ( (\RAM64|ram~302_q\) # (\ROM|memROM~28_combout\) ) ) ) # ( !\RAM64|ram~366_q\ & ( \ROM|memROM~7_combout\ & ( (!\ROM|memROM~28_combout\ & \RAM64|ram~302_q\) ) ) ) # ( 
-- \RAM64|ram~366_q\ & ( !\ROM|memROM~7_combout\ & ( (!\ROM|memROM~28_combout\ & (\RAM64|ram~286_q\)) # (\ROM|memROM~28_combout\ & ((\RAM64|ram~350_q\))) ) ) ) # ( !\RAM64|ram~366_q\ & ( !\ROM|memROM~7_combout\ & ( (!\ROM|memROM~28_combout\ & 
-- (\RAM64|ram~286_q\)) # (\ROM|memROM~28_combout\ & ((\RAM64|ram~350_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001100000000111100000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~286_q\,
	datab => \RAM64|ALT_INV_ram~350_q\,
	datac => \ROM|ALT_INV_memROM~28_combout\,
	datad => \RAM64|ALT_INV_ram~302_q\,
	datae => \RAM64|ALT_INV_ram~366_q\,
	dataf => \ROM|ALT_INV_memROM~7_combout\,
	combout => \RAM64|ram~685_combout\);

-- Location: FF_X18_Y7_N7
\RAM64|ram~342\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM64|ram~730_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~342_q\);

-- Location: FF_X16_Y7_N19
\RAM64|ram~358\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM64|ram~738_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~358_q\);

-- Location: FF_X10_Y3_N43
\RAM64|ram~278\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM64|ram~698_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~278_q\);

-- Location: FF_X14_Y2_N7
\RAM64|ram~294\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM64|ram~702_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~294_q\);

-- Location: LABCELL_X17_Y7_N42
\RAM64|ram~684\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~684_combout\ = ( \ROM|memROM~28_combout\ & ( \ROM|memROM~7_combout\ & ( \RAM64|ram~358_q\ ) ) ) # ( !\ROM|memROM~28_combout\ & ( \ROM|memROM~7_combout\ & ( \RAM64|ram~294_q\ ) ) ) # ( \ROM|memROM~28_combout\ & ( !\ROM|memROM~7_combout\ & ( 
-- \RAM64|ram~342_q\ ) ) ) # ( !\ROM|memROM~28_combout\ & ( !\ROM|memROM~7_combout\ & ( \RAM64|ram~278_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010101010101010100000000111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~342_q\,
	datab => \RAM64|ALT_INV_ram~358_q\,
	datac => \RAM64|ALT_INV_ram~278_q\,
	datad => \RAM64|ALT_INV_ram~294_q\,
	datae => \ROM|ALT_INV_memROM~28_combout\,
	dataf => \ROM|ALT_INV_memROM~7_combout\,
	combout => \RAM64|ram~684_combout\);

-- Location: FF_X14_Y7_N7
\RAM64|ram~470\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM64|ram~746_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~470_q\);

-- Location: FF_X17_Y2_N34
\RAM64|ram~406\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM64|ram~714_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~406_q\);

-- Location: FF_X14_Y2_N41
\RAM64|ram~422\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM64|ram~718_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~422_q\);

-- Location: FF_X17_Y8_N2
\RAM64|ram~486\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM64|ram~754_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~486_q\);

-- Location: LABCELL_X17_Y7_N3
\RAM64|ram~686\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~686_combout\ = ( \ROM|memROM~28_combout\ & ( \ROM|memROM~7_combout\ & ( \RAM64|ram~486_q\ ) ) ) # ( !\ROM|memROM~28_combout\ & ( \ROM|memROM~7_combout\ & ( \RAM64|ram~422_q\ ) ) ) # ( \ROM|memROM~28_combout\ & ( !\ROM|memROM~7_combout\ & ( 
-- \RAM64|ram~470_q\ ) ) ) # ( !\ROM|memROM~28_combout\ & ( !\ROM|memROM~7_combout\ & ( \RAM64|ram~406_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~470_q\,
	datab => \RAM64|ALT_INV_ram~406_q\,
	datac => \RAM64|ALT_INV_ram~422_q\,
	datad => \RAM64|ALT_INV_ram~486_q\,
	datae => \ROM|ALT_INV_memROM~28_combout\,
	dataf => \ROM|ALT_INV_memROM~7_combout\,
	combout => \RAM64|ram~686_combout\);

-- Location: FF_X17_Y8_N53
\RAM64|ram~430\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM64|ram~726_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~430_q\);

-- Location: FF_X12_Y6_N37
\RAM64|ram~478\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM64|ram~750_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~478_q\);

-- Location: FF_X17_Y6_N14
\RAM64|ram~414\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM64|ram~722_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~414_q\);

-- Location: FF_X17_Y8_N44
\RAM64|ram~494\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM64|ram~758_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~494_q\);

-- Location: LABCELL_X17_Y8_N42
\RAM64|ram~687\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~687_combout\ = ( \RAM64|ram~494_q\ & ( \ROM|memROM~28_combout\ & ( (\ROM|memROM~7_combout\) # (\RAM64|ram~478_q\) ) ) ) # ( !\RAM64|ram~494_q\ & ( \ROM|memROM~28_combout\ & ( (\RAM64|ram~478_q\ & !\ROM|memROM~7_combout\) ) ) ) # ( 
-- \RAM64|ram~494_q\ & ( !\ROM|memROM~28_combout\ & ( (!\ROM|memROM~7_combout\ & ((\RAM64|ram~414_q\))) # (\ROM|memROM~7_combout\ & (\RAM64|ram~430_q\)) ) ) ) # ( !\RAM64|ram~494_q\ & ( !\ROM|memROM~28_combout\ & ( (!\ROM|memROM~7_combout\ & 
-- ((\RAM64|ram~414_q\))) # (\ROM|memROM~7_combout\ & (\RAM64|ram~430_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~430_q\,
	datab => \RAM64|ALT_INV_ram~478_q\,
	datac => \RAM64|ALT_INV_ram~414_q\,
	datad => \ROM|ALT_INV_memROM~7_combout\,
	datae => \RAM64|ALT_INV_ram~494_q\,
	dataf => \ROM|ALT_INV_memROM~28_combout\,
	combout => \RAM64|ram~687_combout\);

-- Location: LABCELL_X16_Y7_N45
\RAM64|ram~688\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~688_combout\ = ( \RAM64|ram~686_combout\ & ( \RAM64|ram~687_combout\ & ( ((!\ROM|memROM~9_combout\ & ((\RAM64|ram~684_combout\))) # (\ROM|memROM~9_combout\ & (\RAM64|ram~685_combout\))) # (\ROM|memROM~20_combout\) ) ) ) # ( 
-- !\RAM64|ram~686_combout\ & ( \RAM64|ram~687_combout\ & ( (!\ROM|memROM~20_combout\ & ((!\ROM|memROM~9_combout\ & ((\RAM64|ram~684_combout\))) # (\ROM|memROM~9_combout\ & (\RAM64|ram~685_combout\)))) # (\ROM|memROM~20_combout\ & 
-- (((\ROM|memROM~9_combout\)))) ) ) ) # ( \RAM64|ram~686_combout\ & ( !\RAM64|ram~687_combout\ & ( (!\ROM|memROM~20_combout\ & ((!\ROM|memROM~9_combout\ & ((\RAM64|ram~684_combout\))) # (\ROM|memROM~9_combout\ & (\RAM64|ram~685_combout\)))) # 
-- (\ROM|memROM~20_combout\ & (((!\ROM|memROM~9_combout\)))) ) ) ) # ( !\RAM64|ram~686_combout\ & ( !\RAM64|ram~687_combout\ & ( (!\ROM|memROM~20_combout\ & ((!\ROM|memROM~9_combout\ & ((\RAM64|ram~684_combout\))) # (\ROM|memROM~9_combout\ & 
-- (\RAM64|ram~685_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110001000100001111110100010000001100011101110011111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~685_combout\,
	datab => \ROM|ALT_INV_memROM~20_combout\,
	datac => \RAM64|ALT_INV_ram~684_combout\,
	datad => \ROM|ALT_INV_memROM~9_combout\,
	datae => \RAM64|ALT_INV_ram~686_combout\,
	dataf => \RAM64|ALT_INV_ram~687_combout\,
	combout => \RAM64|ram~688_combout\);

-- Location: FF_X13_Y5_N22
\RAM64|ram~110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM64|ram~740_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~110_q\);

-- Location: LABCELL_X19_Y5_N9
\RAM64|ram~30feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~30feeder_combout\ = ( \CPU|REGA|DOUT\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REGA|ALT_INV_DOUT\(7),
	combout => \RAM64|ram~30feeder_combout\);

-- Location: FF_X19_Y5_N10
\RAM64|ram~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM64|ram~30feeder_combout\,
	ena => \RAM64|ram~704_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~30_q\);

-- Location: LABCELL_X19_Y3_N15
\RAM64|ram~46feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~46feeder_combout\ = ( \CPU|REGA|DOUT\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REGA|ALT_INV_DOUT\(7),
	combout => \RAM64|ram~46feeder_combout\);

-- Location: FF_X19_Y3_N16
\RAM64|ram~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM64|ram~46feeder_combout\,
	ena => \RAM64|ram~708_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~46_q\);

-- Location: LABCELL_X19_Y7_N30
\RAM64|ram~94feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~94feeder_combout\ = ( \CPU|REGA|DOUT\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REGA|ALT_INV_DOUT\(7),
	combout => \RAM64|ram~94feeder_combout\);

-- Location: FF_X19_Y7_N31
\RAM64|ram~94\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM64|ram~94feeder_combout\,
	ena => \RAM64|ram~732_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~94_q\);

-- Location: LABCELL_X17_Y7_N33
\RAM64|ram~675\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~675_combout\ = ( \ROM|memROM~28_combout\ & ( \ROM|memROM~7_combout\ & ( \RAM64|ram~110_q\ ) ) ) # ( !\ROM|memROM~28_combout\ & ( \ROM|memROM~7_combout\ & ( \RAM64|ram~46_q\ ) ) ) # ( \ROM|memROM~28_combout\ & ( !\ROM|memROM~7_combout\ & ( 
-- \RAM64|ram~94_q\ ) ) ) # ( !\ROM|memROM~28_combout\ & ( !\ROM|memROM~7_combout\ & ( \RAM64|ram~30_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000001111111100001111000011110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~110_q\,
	datab => \RAM64|ALT_INV_ram~30_q\,
	datac => \RAM64|ALT_INV_ram~46_q\,
	datad => \RAM64|ALT_INV_ram~94_q\,
	datae => \ROM|ALT_INV_memROM~28_combout\,
	dataf => \ROM|ALT_INV_memROM~7_combout\,
	combout => \RAM64|ram~675_combout\);

-- Location: LABCELL_X16_Y1_N42
\RAM64|ram~38feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~38feeder_combout\ = ( \CPU|REGA|DOUT\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REGA|ALT_INV_DOUT\(7),
	combout => \RAM64|ram~38feeder_combout\);

-- Location: FF_X16_Y1_N44
\RAM64|ram~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM64|ram~38feeder_combout\,
	ena => \RAM64|ram~700_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~38_q\);

-- Location: LABCELL_X16_Y8_N54
\RAM64|ram~102feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~102feeder_combout\ = ( \CPU|REGA|DOUT\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REGA|ALT_INV_DOUT\(7),
	combout => \RAM64|ram~102feeder_combout\);

-- Location: FF_X16_Y8_N56
\RAM64|ram~102\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM64|ram~102feeder_combout\,
	ena => \RAM64|ram~736_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~102_q\);

-- Location: FF_X16_Y5_N56
\RAM64|ram~86\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM64|ram~728_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~86_q\);

-- Location: FF_X18_Y3_N20
\RAM64|ram~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM64|ram~696_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~22_q\);

-- Location: LABCELL_X16_Y5_N54
\RAM64|ram~674\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~674_combout\ = ( \RAM64|ram~86_q\ & ( \RAM64|ram~22_q\ & ( (!\ROM|memROM~7_combout\) # ((!\ROM|memROM~28_combout\ & (\RAM64|ram~38_q\)) # (\ROM|memROM~28_combout\ & ((\RAM64|ram~102_q\)))) ) ) ) # ( !\RAM64|ram~86_q\ & ( \RAM64|ram~22_q\ & ( 
-- (!\ROM|memROM~28_combout\ & (((!\ROM|memROM~7_combout\)) # (\RAM64|ram~38_q\))) # (\ROM|memROM~28_combout\ & (((\ROM|memROM~7_combout\ & \RAM64|ram~102_q\)))) ) ) ) # ( \RAM64|ram~86_q\ & ( !\RAM64|ram~22_q\ & ( (!\ROM|memROM~28_combout\ & 
-- (\RAM64|ram~38_q\ & (\ROM|memROM~7_combout\))) # (\ROM|memROM~28_combout\ & (((!\ROM|memROM~7_combout\) # (\RAM64|ram~102_q\)))) ) ) ) # ( !\RAM64|ram~86_q\ & ( !\RAM64|ram~22_q\ & ( (\ROM|memROM~7_combout\ & ((!\ROM|memROM~28_combout\ & 
-- (\RAM64|ram~38_q\)) # (\ROM|memROM~28_combout\ & ((\RAM64|ram~102_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000111001101000011011111000100110001111111010011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~38_q\,
	datab => \ROM|ALT_INV_memROM~28_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \RAM64|ALT_INV_ram~102_q\,
	datae => \RAM64|ALT_INV_ram~86_q\,
	dataf => \RAM64|ALT_INV_ram~22_q\,
	combout => \RAM64|ram~674_combout\);

-- Location: LABCELL_X14_Y5_N15
\RAM64|ram~174feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~174feeder_combout\ = ( \CPU|REGA|DOUT\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REGA|ALT_INV_DOUT\(7),
	combout => \RAM64|ram~174feeder_combout\);

-- Location: FF_X14_Y5_N16
\RAM64|ram~174\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM64|ram~174feeder_combout\,
	ena => \RAM64|ram~724_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~174_q\);

-- Location: FF_X16_Y5_N41
\RAM64|ram~222\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM64|ram~748_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~222_q\);

-- Location: LABCELL_X19_Y2_N15
\RAM64|ram~158feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~158feeder_combout\ = ( \CPU|REGA|DOUT\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REGA|ALT_INV_DOUT\(7),
	combout => \RAM64|ram~158feeder_combout\);

-- Location: FF_X19_Y2_N17
\RAM64|ram~158\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM64|ram~158feeder_combout\,
	ena => \RAM64|ram~720_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~158_q\);

-- Location: FF_X16_Y5_N20
\RAM64|ram~238\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM64|ram~756_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~238_q\);

-- Location: LABCELL_X16_Y5_N18
\RAM64|ram~677\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~677_combout\ = ( \RAM64|ram~238_q\ & ( \ROM|memROM~28_combout\ & ( (\ROM|memROM~7_combout\) # (\RAM64|ram~222_q\) ) ) ) # ( !\RAM64|ram~238_q\ & ( \ROM|memROM~28_combout\ & ( (\RAM64|ram~222_q\ & !\ROM|memROM~7_combout\) ) ) ) # ( 
-- \RAM64|ram~238_q\ & ( !\ROM|memROM~28_combout\ & ( (!\ROM|memROM~7_combout\ & ((\RAM64|ram~158_q\))) # (\ROM|memROM~7_combout\ & (\RAM64|ram~174_q\)) ) ) ) # ( !\RAM64|ram~238_q\ & ( !\ROM|memROM~28_combout\ & ( (!\ROM|memROM~7_combout\ & 
-- ((\RAM64|ram~158_q\))) # (\ROM|memROM~7_combout\ & (\RAM64|ram~174_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~174_q\,
	datab => \RAM64|ALT_INV_ram~222_q\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \RAM64|ALT_INV_ram~158_q\,
	datae => \RAM64|ALT_INV_ram~238_q\,
	dataf => \ROM|ALT_INV_memROM~28_combout\,
	combout => \RAM64|ram~677_combout\);

-- Location: FF_X13_Y6_N40
\RAM64|ram~166\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM64|ram~716_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~166_q\);

-- Location: FF_X14_Y7_N26
\RAM64|ram~214\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM64|ram~744_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~214_q\);

-- Location: FF_X17_Y2_N26
\RAM64|ram~150\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM64|ram~712_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~150_q\);

-- Location: FF_X14_Y4_N17
\RAM64|ram~230\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM64|ram~752_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~230_q\);

-- Location: LABCELL_X14_Y4_N15
\RAM64|ram~676\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~676_combout\ = ( \RAM64|ram~230_q\ & ( \ROM|memROM~28_combout\ & ( (\ROM|memROM~7_combout\) # (\RAM64|ram~214_q\) ) ) ) # ( !\RAM64|ram~230_q\ & ( \ROM|memROM~28_combout\ & ( (\RAM64|ram~214_q\ & !\ROM|memROM~7_combout\) ) ) ) # ( 
-- \RAM64|ram~230_q\ & ( !\ROM|memROM~28_combout\ & ( (!\ROM|memROM~7_combout\ & ((\RAM64|ram~150_q\))) # (\ROM|memROM~7_combout\ & (\RAM64|ram~166_q\)) ) ) ) # ( !\RAM64|ram~230_q\ & ( !\ROM|memROM~28_combout\ & ( (!\ROM|memROM~7_combout\ & 
-- ((\RAM64|ram~150_q\))) # (\ROM|memROM~7_combout\ & (\RAM64|ram~166_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~166_q\,
	datab => \RAM64|ALT_INV_ram~214_q\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \RAM64|ALT_INV_ram~150_q\,
	datae => \RAM64|ALT_INV_ram~230_q\,
	dataf => \ROM|ALT_INV_memROM~28_combout\,
	combout => \RAM64|ram~676_combout\);

-- Location: LABCELL_X16_Y7_N15
\RAM64|ram~678\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~678_combout\ = ( \RAM64|ram~677_combout\ & ( \RAM64|ram~676_combout\ & ( ((!\ROM|memROM~9_combout\ & ((\RAM64|ram~674_combout\))) # (\ROM|memROM~9_combout\ & (\RAM64|ram~675_combout\))) # (\ROM|memROM~20_combout\) ) ) ) # ( 
-- !\RAM64|ram~677_combout\ & ( \RAM64|ram~676_combout\ & ( (!\ROM|memROM~20_combout\ & ((!\ROM|memROM~9_combout\ & ((\RAM64|ram~674_combout\))) # (\ROM|memROM~9_combout\ & (\RAM64|ram~675_combout\)))) # (\ROM|memROM~20_combout\ & 
-- (((!\ROM|memROM~9_combout\)))) ) ) ) # ( \RAM64|ram~677_combout\ & ( !\RAM64|ram~676_combout\ & ( (!\ROM|memROM~20_combout\ & ((!\ROM|memROM~9_combout\ & ((\RAM64|ram~674_combout\))) # (\ROM|memROM~9_combout\ & (\RAM64|ram~675_combout\)))) # 
-- (\ROM|memROM~20_combout\ & (((\ROM|memROM~9_combout\)))) ) ) ) # ( !\RAM64|ram~677_combout\ & ( !\RAM64|ram~676_combout\ & ( (!\ROM|memROM~20_combout\ & ((!\ROM|memROM~9_combout\ & ((\RAM64|ram~674_combout\))) # (\ROM|memROM~9_combout\ & 
-- (\RAM64|ram~675_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110001000100000011000111011100111111010001000011111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~675_combout\,
	datab => \ROM|ALT_INV_memROM~20_combout\,
	datac => \RAM64|ALT_INV_ram~674_combout\,
	datad => \ROM|ALT_INV_memROM~9_combout\,
	datae => \RAM64|ALT_INV_ram~677_combout\,
	dataf => \RAM64|ALT_INV_ram~676_combout\,
	combout => \RAM64|ram~678_combout\);

-- Location: LABCELL_X16_Y7_N54
\RAM64|ram~694\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~694_combout\ = ( \RAM64|ram~688_combout\ & ( \RAM64|ram~678_combout\ & ( (!\ROM|memROM~22_combout\) # ((!\ROM|memROM~3_combout\ & ((\RAM64|ram~683_combout\))) # (\ROM|memROM~3_combout\ & (\RAM64|ram~693_combout\))) ) ) ) # ( 
-- !\RAM64|ram~688_combout\ & ( \RAM64|ram~678_combout\ & ( (!\ROM|memROM~3_combout\ & ((!\ROM|memROM~22_combout\) # ((\RAM64|ram~683_combout\)))) # (\ROM|memROM~3_combout\ & (\ROM|memROM~22_combout\ & (\RAM64|ram~693_combout\))) ) ) ) # ( 
-- \RAM64|ram~688_combout\ & ( !\RAM64|ram~678_combout\ & ( (!\ROM|memROM~3_combout\ & (\ROM|memROM~22_combout\ & ((\RAM64|ram~683_combout\)))) # (\ROM|memROM~3_combout\ & ((!\ROM|memROM~22_combout\) # ((\RAM64|ram~693_combout\)))) ) ) ) # ( 
-- !\RAM64|ram~688_combout\ & ( !\RAM64|ram~678_combout\ & ( (\ROM|memROM~22_combout\ & ((!\ROM|memROM~3_combout\ & ((\RAM64|ram~683_combout\))) # (\ROM|memROM~3_combout\ & (\RAM64|ram~693_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011010001010110011110001001101010111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~3_combout\,
	datab => \ROM|ALT_INV_memROM~22_combout\,
	datac => \RAM64|ALT_INV_ram~693_combout\,
	datad => \RAM64|ALT_INV_ram~683_combout\,
	datae => \RAM64|ALT_INV_ram~688_combout\,
	dataf => \RAM64|ALT_INV_ram~678_combout\,
	combout => \RAM64|ram~694_combout\);

-- Location: LABCELL_X10_Y3_N0
\DATA_IN[7]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \DATA_IN[7]~14_combout\ = ( \RAM64|ram~694_combout\ & ( \RAM64|dado_out~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM64|ALT_INV_dado_out~0_combout\,
	dataf => \RAM64|ALT_INV_ram~694_combout\,
	combout => \DATA_IN[7]~14_combout\);

-- Location: LABCELL_X10_Y3_N36
\CPU|ULA1|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~17_sumout\ = SUM(( (!\CPU|DECODER1|saida[6]~7_combout\ & (!\ROM|memROM~20_combout\)) # (\CPU|DECODER1|saida[6]~7_combout\ & (((!\DATA_IN[7]~13_combout\ & !\DATA_IN[7]~14_combout\)))) ) + ( \CPU|REGA|DOUT\(7) ) + ( \CPU|ULA1|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001011100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~20_combout\,
	datab => \CPU|DECODER1|ALT_INV_saida[6]~7_combout\,
	datac => \ALT_INV_DATA_IN[7]~13_combout\,
	datad => \ALT_INV_DATA_IN[7]~14_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(7),
	cin => \CPU|ULA1|Add1~14\,
	sumout => \CPU|ULA1|Add1~17_sumout\);

-- Location: MLABCELL_X9_Y3_N24
\CPU|ULA1|Equal2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Equal2~2_combout\ = ( !\CPU|ULA1|Add1~25_sumout\ & ( (!\CPU|ULA1|Add1~21_sumout\ & (!\CPU|ULA1|Add1~1_sumout\ & (!\CPU|ULA1|Add1~29_sumout\ & !\CPU|ULA1|Add1~5_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA1|ALT_INV_Add1~21_sumout\,
	datab => \CPU|ULA1|ALT_INV_Add1~1_sumout\,
	datac => \CPU|ULA1|ALT_INV_Add1~29_sumout\,
	datad => \CPU|ULA1|ALT_INV_Add1~5_sumout\,
	dataf => \CPU|ULA1|ALT_INV_Add1~25_sumout\,
	combout => \CPU|ULA1|Equal2~2_combout\);

-- Location: LABCELL_X10_Y3_N6
\CPU|FLIPFLOP1|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FLIPFLOP1|DOUT~0_combout\ = ( \CPU|FLIPFLOP1|DOUT~q\ & ( \CPU|ULA1|Add1~13_sumout\ & ( !\CPU|DECODER1|saida~8_combout\ ) ) ) # ( \CPU|FLIPFLOP1|DOUT~q\ & ( !\CPU|ULA1|Add1~13_sumout\ & ( (!\CPU|DECODER1|saida~8_combout\) # ((!\CPU|ULA1|Add1~9_sumout\ 
-- & (!\CPU|ULA1|Add1~17_sumout\ & \CPU|ULA1|Equal2~2_combout\))) ) ) ) # ( !\CPU|FLIPFLOP1|DOUT~q\ & ( !\CPU|ULA1|Add1~13_sumout\ & ( (!\CPU|ULA1|Add1~9_sumout\ & (\CPU|DECODER1|saida~8_combout\ & (!\CPU|ULA1|Add1~17_sumout\ & \CPU|ULA1|Equal2~2_combout\))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000110011001110110000000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA1|ALT_INV_Add1~9_sumout\,
	datab => \CPU|DECODER1|ALT_INV_saida~8_combout\,
	datac => \CPU|ULA1|ALT_INV_Add1~17_sumout\,
	datad => \CPU|ULA1|ALT_INV_Equal2~2_combout\,
	datae => \CPU|FLIPFLOP1|ALT_INV_DOUT~q\,
	dataf => \CPU|ULA1|ALT_INV_Add1~13_sumout\,
	combout => \CPU|FLIPFLOP1|DOUT~0_combout\);

-- Location: FF_X10_Y3_N8
\CPU|FLIPFLOP1|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|FLIPFLOP1|DOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|FLIPFLOP1|DOUT~q\);

-- Location: LABCELL_X12_Y7_N3
\CPU|MUXproxPC|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUXproxPC|Equal1~0_combout\ = ( \ROM|memROM~15_combout\ & ( \ROM|memROM~13_combout\ & ( (\ROM|memROM~11_combout\ & (\CPU|FLIPFLOP1|DOUT~q\ & !\ROM|memROM~17_combout\)) ) ) ) # ( !\ROM|memROM~15_combout\ & ( \ROM|memROM~13_combout\ & ( 
-- (!\ROM|memROM~11_combout\ & \ROM|memROM~17_combout\) ) ) ) # ( \ROM|memROM~15_combout\ & ( !\ROM|memROM~13_combout\ & ( (\ROM|memROM~11_combout\ & !\ROM|memROM~17_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000101000000001010000010100001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~11_combout\,
	datab => \CPU|FLIPFLOP1|ALT_INV_DOUT~q\,
	datac => \ROM|ALT_INV_memROM~17_combout\,
	datae => \ROM|ALT_INV_memROM~15_combout\,
	dataf => \ROM|ALT_INV_memROM~13_combout\,
	combout => \CPU|MUXproxPC|Equal1~0_combout\);

-- Location: LABCELL_X14_Y8_N30
\CPU|incrementaPC|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~1_sumout\ = SUM(( \CPU|PC|DOUT[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))
-- \CPU|incrementaPC|Add0~2\ = CARRY(( \CPU|PC|DOUT[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	cin => GND,
	sumout => \CPU|incrementaPC|Add0~1_sumout\,
	cout => \CPU|incrementaPC|Add0~2\);

-- Location: FF_X14_Y8_N32
\CPU|END_RETORNO|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|incrementaPC|Add0~1_sumout\,
	ena => \CPU|DECODER1|saida~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|END_RETORNO|DOUT\(0));

-- Location: LABCELL_X16_Y6_N18
\CPU|MUXproxPC|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUXproxPC|saida_MUX[0]~0_combout\ = ( \ROM|memROM~9_combout\ & ( (!\CPU|MUXproxPC|Equal2~0_combout\ & (((\CPU|incrementaPC|Add0~1_sumout\)))) # (\CPU|MUXproxPC|Equal2~0_combout\ & (((\CPU|END_RETORNO|DOUT\(0))) # (\CPU|MUXproxPC|Equal1~0_combout\))) 
-- ) ) # ( !\ROM|memROM~9_combout\ & ( (!\CPU|MUXproxPC|Equal2~0_combout\ & (((\CPU|incrementaPC|Add0~1_sumout\)))) # (\CPU|MUXproxPC|Equal2~0_combout\ & (!\CPU|MUXproxPC|Equal1~0_combout\ & (\CPU|END_RETORNO|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010101110000001001010111000010101101111110001010110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUXproxPC|ALT_INV_Equal2~0_combout\,
	datab => \CPU|MUXproxPC|ALT_INV_Equal1~0_combout\,
	datac => \CPU|END_RETORNO|ALT_INV_DOUT\(0),
	datad => \CPU|incrementaPC|ALT_INV_Add0~1_sumout\,
	dataf => \ROM|ALT_INV_memROM~9_combout\,
	combout => \CPU|MUXproxPC|saida_MUX[0]~0_combout\);

-- Location: FF_X16_Y6_N19
\CPU|PC|DOUT[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|MUXproxPC|saida_MUX[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[0]~DUPLICATE_q\);

-- Location: FF_X14_Y8_N34
\CPU|END_RETORNO|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|incrementaPC|Add0~5_sumout\,
	ena => \CPU|DECODER1|saida~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|END_RETORNO|DOUT\(1));

-- Location: LABCELL_X14_Y6_N24
\CPU|MUXproxPC|saida_MUX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUXproxPC|saida_MUX[1]~1_combout\ = ( \CPU|MUXproxPC|Equal2~0_combout\ & ( \CPU|incrementaPC|Add0~5_sumout\ & ( (!\CPU|MUXproxPC|Equal1~0_combout\ & (\CPU|END_RETORNO|DOUT\(1))) # (\CPU|MUXproxPC|Equal1~0_combout\ & ((\ROM|memROM~7_combout\))) ) ) ) 
-- # ( !\CPU|MUXproxPC|Equal2~0_combout\ & ( \CPU|incrementaPC|Add0~5_sumout\ ) ) # ( \CPU|MUXproxPC|Equal2~0_combout\ & ( !\CPU|incrementaPC|Add0~5_sumout\ & ( (!\CPU|MUXproxPC|Equal1~0_combout\ & (\CPU|END_RETORNO|DOUT\(1))) # 
-- (\CPU|MUXproxPC|Equal1~0_combout\ & ((\ROM|memROM~7_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010001110100011111111111111111110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|END_RETORNO|ALT_INV_DOUT\(1),
	datab => \CPU|MUXproxPC|ALT_INV_Equal1~0_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datae => \CPU|MUXproxPC|ALT_INV_Equal2~0_combout\,
	dataf => \CPU|incrementaPC|ALT_INV_Add0~5_sumout\,
	combout => \CPU|MUXproxPC|saida_MUX[1]~1_combout\);

-- Location: FF_X16_Y6_N50
\CPU|PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|MUXproxPC|saida_MUX[1]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(1));

-- Location: MLABCELL_X18_Y6_N21
\ROM|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~12_combout\ = ( \CPU|PC|DOUT\(2) & ( (!\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT[5]~DUPLICATE_q\ & ((!\CPU|PC|DOUT\(0)) # (\CPU|PC|DOUT\(1)))) # (\CPU|PC|DOUT[5]~DUPLICATE_q\ & (!\CPU|PC|DOUT\(1))))) ) ) # ( !\CPU|PC|DOUT\(2) & ( 
-- (!\CPU|PC|DOUT[5]~DUPLICATE_q\ & (!\CPU|PC|DOUT\(1) $ ((!\CPU|PC|DOUT\(0))))) # (\CPU|PC|DOUT[5]~DUPLICATE_q\ & (!\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT\(1)) # (\CPU|PC|DOUT\(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110110100101000011011010010100011100110000000001110011000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(0),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	dataf => \CPU|PC|ALT_INV_DOUT\(2),
	combout => \ROM|memROM~12_combout\);

-- Location: MLABCELL_X18_Y6_N57
\ROM|memROM~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~13_combout\ = ( \ROM|memROM~12_combout\ & ( (\ROM|memROM~0_combout\ & !\CPU|PC|DOUT[8]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	dataf => \ROM|ALT_INV_memROM~12_combout\,
	combout => \ROM|memROM~13_combout\);

-- Location: LABCELL_X12_Y7_N30
\CPU|MUXproxPC|Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUXproxPC|Equal2~0_combout\ = ( \ROM|memROM~17_combout\ & ( (!\ROM|memROM~15_combout\ & (!\ROM|memROM~13_combout\ $ (!\ROM|memROM~11_combout\))) ) ) # ( !\ROM|memROM~17_combout\ & ( (\ROM|memROM~11_combout\ & (\ROM|memROM~15_combout\ & 
-- ((!\ROM|memROM~13_combout\) # (\CPU|FLIPFLOP1|DOUT~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000011000000100000001101100000011000000110000001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~13_combout\,
	datab => \ROM|ALT_INV_memROM~11_combout\,
	datac => \ROM|ALT_INV_memROM~15_combout\,
	datad => \CPU|FLIPFLOP1|ALT_INV_DOUT~q\,
	dataf => \ROM|ALT_INV_memROM~17_combout\,
	combout => \CPU|MUXproxPC|Equal2~0_combout\);

-- Location: LABCELL_X14_Y8_N42
\CPU|incrementaPC|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~17_sumout\ = SUM(( \CPU|PC|DOUT[4]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|incrementaPC|Add0~14\ ))
-- \CPU|incrementaPC|Add0~18\ = CARRY(( \CPU|PC|DOUT[4]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|incrementaPC|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	cin => \CPU|incrementaPC|Add0~14\,
	sumout => \CPU|incrementaPC|Add0~17_sumout\,
	cout => \CPU|incrementaPC|Add0~18\);

-- Location: LABCELL_X14_Y8_N45
\CPU|incrementaPC|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~21_sumout\ = SUM(( \CPU|PC|DOUT\(5) ) + ( GND ) + ( \CPU|incrementaPC|Add0~18\ ))
-- \CPU|incrementaPC|Add0~22\ = CARRY(( \CPU|PC|DOUT\(5) ) + ( GND ) + ( \CPU|incrementaPC|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT\(5),
	cin => \CPU|incrementaPC|Add0~18\,
	sumout => \CPU|incrementaPC|Add0~21_sumout\,
	cout => \CPU|incrementaPC|Add0~22\);

-- Location: FF_X14_Y8_N46
\CPU|END_RETORNO|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|incrementaPC|Add0~21_sumout\,
	ena => \CPU|DECODER1|saida~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|END_RETORNO|DOUT\(5));

-- Location: LABCELL_X16_Y6_N39
\CPU|MUXproxPC|saida_MUX[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUXproxPC|saida_MUX[5]~5_combout\ = ( \ROM|memROM~3_combout\ & ( (!\CPU|MUXproxPC|Equal2~0_combout\ & (((\CPU|incrementaPC|Add0~21_sumout\)))) # (\CPU|MUXproxPC|Equal2~0_combout\ & (((\CPU|END_RETORNO|DOUT\(5))) # (\CPU|MUXproxPC|Equal1~0_combout\))) 
-- ) ) # ( !\ROM|memROM~3_combout\ & ( (!\CPU|MUXproxPC|Equal2~0_combout\ & (((\CPU|incrementaPC|Add0~21_sumout\)))) # (\CPU|MUXproxPC|Equal2~0_combout\ & (!\CPU|MUXproxPC|Equal1~0_combout\ & ((\CPU|END_RETORNO|DOUT\(5))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001001110000010100100111000011011010111110001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUXproxPC|ALT_INV_Equal2~0_combout\,
	datab => \CPU|MUXproxPC|ALT_INV_Equal1~0_combout\,
	datac => \CPU|incrementaPC|ALT_INV_Add0~21_sumout\,
	datad => \CPU|END_RETORNO|ALT_INV_DOUT\(5),
	dataf => \ROM|ALT_INV_memROM~3_combout\,
	combout => \CPU|MUXproxPC|saida_MUX[5]~5_combout\);

-- Location: FF_X16_Y6_N41
\CPU|PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|MUXproxPC|saida_MUX[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(5));

-- Location: LABCELL_X14_Y8_N48
\CPU|incrementaPC|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~25_sumout\ = SUM(( \CPU|PC|DOUT[6]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|incrementaPC|Add0~22\ ))
-- \CPU|incrementaPC|Add0~26\ = CARRY(( \CPU|PC|DOUT[6]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|incrementaPC|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	cin => \CPU|incrementaPC|Add0~22\,
	sumout => \CPU|incrementaPC|Add0~25_sumout\,
	cout => \CPU|incrementaPC|Add0~26\);

-- Location: FF_X14_Y8_N50
\CPU|END_RETORNO|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|incrementaPC|Add0~25_sumout\,
	ena => \CPU|DECODER1|saida~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|END_RETORNO|DOUT\(6));

-- Location: MLABCELL_X18_Y6_N6
\CPU|MUXproxPC|saida_MUX[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUXproxPC|saida_MUX[6]~6_combout\ = ( \CPU|MUXproxPC|Equal2~0_combout\ & ( (!\CPU|MUXproxPC|Equal1~0_combout\ & ((\CPU|END_RETORNO|DOUT\(6)))) # (\CPU|MUXproxPC|Equal1~0_combout\ & (\ROM|memROM~24_combout\)) ) ) # ( !\CPU|MUXproxPC|Equal2~0_combout\ 
-- & ( \CPU|incrementaPC|Add0~25_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000011111100110000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|incrementaPC|ALT_INV_Add0~25_sumout\,
	datab => \ROM|ALT_INV_memROM~24_combout\,
	datac => \CPU|MUXproxPC|ALT_INV_Equal1~0_combout\,
	datad => \CPU|END_RETORNO|ALT_INV_DOUT\(6),
	dataf => \CPU|MUXproxPC|ALT_INV_Equal2~0_combout\,
	combout => \CPU|MUXproxPC|saida_MUX[6]~6_combout\);

-- Location: FF_X17_Y6_N28
\CPU|PC|DOUT[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|MUXproxPC|saida_MUX[6]~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[6]~DUPLICATE_q\);

-- Location: LABCELL_X14_Y8_N51
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

-- Location: FF_X14_Y8_N53
\CPU|END_RETORNO|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|incrementaPC|Add0~29_sumout\,
	ena => \CPU|DECODER1|saida~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|END_RETORNO|DOUT\(7));

-- Location: LABCELL_X17_Y6_N18
\CPU|MUXproxPC|saida_MUX[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUXproxPC|saida_MUX[7]~7_combout\ = ( \CPU|END_RETORNO|DOUT\(7) & ( (!\CPU|MUXproxPC|Equal2~0_combout\ & (((\CPU|incrementaPC|Add0~29_sumout\)))) # (\CPU|MUXproxPC|Equal2~0_combout\ & (((!\CPU|MUXproxPC|Equal1~0_combout\)) # 
-- (\ROM|memROM~20_combout\))) ) ) # ( !\CPU|END_RETORNO|DOUT\(7) & ( (!\CPU|MUXproxPC|Equal2~0_combout\ & (((\CPU|incrementaPC|Add0~29_sumout\)))) # (\CPU|MUXproxPC|Equal2~0_combout\ & (\ROM|memROM~20_combout\ & ((\CPU|MUXproxPC|Equal1~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110101001100000011010100111111001101010011111100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~20_combout\,
	datab => \CPU|incrementaPC|ALT_INV_Add0~29_sumout\,
	datac => \CPU|MUXproxPC|ALT_INV_Equal2~0_combout\,
	datad => \CPU|MUXproxPC|ALT_INV_Equal1~0_combout\,
	dataf => \CPU|END_RETORNO|ALT_INV_DOUT\(7),
	combout => \CPU|MUXproxPC|saida_MUX[7]~7_combout\);

-- Location: FF_X17_Y6_N19
\CPU|PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|MUXproxPC|saida_MUX[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(7));

-- Location: LABCELL_X14_Y8_N54
\CPU|incrementaPC|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~33_sumout\ = SUM(( \CPU|PC|DOUT[8]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|incrementaPC|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	cin => \CPU|incrementaPC|Add0~30\,
	sumout => \CPU|incrementaPC|Add0~33_sumout\);

-- Location: FF_X14_Y8_N55
\CPU|END_RETORNO|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|incrementaPC|Add0~33_sumout\,
	ena => \CPU|DECODER1|saida~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|END_RETORNO|DOUT\(8));

-- Location: LABCELL_X14_Y6_N12
\CPU|MUXproxPC|saida_MUX[8]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUXproxPC|saida_MUX[8]~8_combout\ = ( \CPU|MUXproxPC|Equal1~0_combout\ & ( (!\CPU|MUXproxPC|Equal2~0_combout\ & (\CPU|incrementaPC|Add0~33_sumout\)) # (\CPU|MUXproxPC|Equal2~0_combout\ & ((\ROM|memROM~26_combout\))) ) ) # ( 
-- !\CPU|MUXproxPC|Equal1~0_combout\ & ( (!\CPU|MUXproxPC|Equal2~0_combout\ & ((\CPU|incrementaPC|Add0~33_sumout\))) # (\CPU|MUXproxPC|Equal2~0_combout\ & (\CPU|END_RETORNO|DOUT\(8))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001101010011010100110000001111110011000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|END_RETORNO|ALT_INV_DOUT\(8),
	datab => \CPU|incrementaPC|ALT_INV_Add0~33_sumout\,
	datac => \CPU|MUXproxPC|ALT_INV_Equal2~0_combout\,
	datad => \ROM|ALT_INV_memROM~26_combout\,
	dataf => \CPU|MUXproxPC|ALT_INV_Equal1~0_combout\,
	combout => \CPU|MUXproxPC|saida_MUX[8]~8_combout\);

-- Location: FF_X16_Y6_N47
\CPU|PC|DOUT[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|MUXproxPC|saida_MUX[8]~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[8]~DUPLICATE_q\);

-- Location: LABCELL_X16_Y6_N6
\ROM|memROM~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~20_combout\ = ( !\CPU|PC|DOUT\(1) & ( (!\CPU|PC|DOUT[8]~DUPLICATE_q\ & (\ROM|memROM~19_combout\ & \ROM|memROM~18_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datab => \ROM|ALT_INV_memROM~19_combout\,
	datac => \ROM|ALT_INV_memROM~18_combout\,
	dataf => \CPU|PC|ALT_INV_DOUT\(1),
	combout => \ROM|memROM~20_combout\);

-- Location: FF_X14_Y8_N44
\CPU|END_RETORNO|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|incrementaPC|Add0~17_sumout\,
	ena => \CPU|DECODER1|saida~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|END_RETORNO|DOUT\(4));

-- Location: MLABCELL_X18_Y6_N54
\CPU|MUXproxPC|saida_MUX[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUXproxPC|saida_MUX[4]~4_combout\ = ( \CPU|MUXproxPC|Equal2~0_combout\ & ( (!\CPU|MUXproxPC|Equal1~0_combout\ & ((\CPU|END_RETORNO|DOUT\(4)))) # (\CPU|MUXproxPC|Equal1~0_combout\ & (\ROM|memROM~20_combout\)) ) ) # ( !\CPU|MUXproxPC|Equal2~0_combout\ 
-- & ( \CPU|incrementaPC|Add0~17_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110101001101010011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~20_combout\,
	datab => \CPU|END_RETORNO|ALT_INV_DOUT\(4),
	datac => \CPU|MUXproxPC|ALT_INV_Equal1~0_combout\,
	datad => \CPU|incrementaPC|ALT_INV_Add0~17_sumout\,
	dataf => \CPU|MUXproxPC|ALT_INV_Equal2~0_combout\,
	combout => \CPU|MUXproxPC|saida_MUX[4]~4_combout\);

-- Location: FF_X17_Y6_N40
\CPU|PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|MUXproxPC|saida_MUX[4]~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(4));

-- Location: MLABCELL_X18_Y6_N42
\ROM|memROM~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~14_combout\ = ( \CPU|PC|DOUT\(2) & ( \CPU|PC|DOUT\(0) & ( (!\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT[5]~DUPLICATE_q\ $ (!\CPU|PC|DOUT\(1))))) ) ) ) # ( !\CPU|PC|DOUT\(2) & ( \CPU|PC|DOUT\(0) & ( (!\CPU|PC|DOUT\(4) & 
-- ((!\CPU|PC|DOUT\(1) & ((!\CPU|PC|DOUT[5]~DUPLICATE_q\))) # (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(3))))) ) ) ) # ( \CPU|PC|DOUT\(2) & ( !\CPU|PC|DOUT\(0) & ( (!\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(1) & ((!\CPU|PC|DOUT\(3)) # (!\CPU|PC|DOUT[5]~DUPLICATE_q\)))) 
-- ) ) ) # ( !\CPU|PC|DOUT\(2) & ( !\CPU|PC|DOUT\(0) & ( (!\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT[5]~DUPLICATE_q\) # (!\CPU|PC|DOUT\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010000000101010000000000010100000100010000000100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(4),
	datab => \CPU|PC|ALT_INV_DOUT\(3),
	datac => \CPU|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT\(1),
	datae => \CPU|PC|ALT_INV_DOUT\(2),
	dataf => \CPU|PC|ALT_INV_DOUT\(0),
	combout => \ROM|memROM~14_combout\);

-- Location: MLABCELL_X18_Y6_N9
\ROM|memROM~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~15_combout\ = ( \CPU|DECODER1|saida[2]~0_combout\ & ( \ROM|memROM~14_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~14_combout\,
	dataf => \CPU|DECODER1|ALT_INV_saida[2]~0_combout\,
	combout => \ROM|memROM~15_combout\);

-- Location: MLABCELL_X18_Y6_N0
\RAM64|dado_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|dado_out~0_combout\ = ( \CPU|DECODER1|saida[2]~1_combout\ & ( !\RAM64|process_0~0_combout\ & ( (!\ROM|memROM~15_combout\ & (!\ROM|memROM~13_combout\ & (\ROM|memROM~17_combout\ & !\ROM|memROM~11_combout\))) ) ) ) # ( 
-- !\CPU|DECODER1|saida[2]~1_combout\ & ( !\RAM64|process_0~0_combout\ & ( (((\ROM|memROM~11_combout\) # (\ROM|memROM~17_combout\)) # (\ROM|memROM~13_combout\)) # (\ROM|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111111111111000010000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~15_combout\,
	datab => \ROM|ALT_INV_memROM~13_combout\,
	datac => \ROM|ALT_INV_memROM~17_combout\,
	datad => \ROM|ALT_INV_memROM~11_combout\,
	datae => \CPU|DECODER1|ALT_INV_saida[2]~1_combout\,
	dataf => \RAM64|ALT_INV_process_0~0_combout\,
	combout => \RAM64|dado_out~0_combout\);

-- Location: LABCELL_X16_Y3_N6
\CPU|MUX1|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[0]~0_combout\ = ( \CPU|DECODER1|saida[5]~2_combout\ & ( \RAM64|ram~547_combout\ & ( \ROM|memROM~9_combout\ ) ) ) # ( !\CPU|DECODER1|saida[5]~2_combout\ & ( \RAM64|ram~547_combout\ & ( ((\DATA_IN[0]~0_combout\) # 
-- (\DATA_IN[0]~5_combout\)) # (\RAM64|dado_out~0_combout\) ) ) ) # ( \CPU|DECODER1|saida[5]~2_combout\ & ( !\RAM64|ram~547_combout\ & ( \ROM|memROM~9_combout\ ) ) ) # ( !\CPU|DECODER1|saida[5]~2_combout\ & ( !\RAM64|ram~547_combout\ & ( 
-- (\DATA_IN[0]~0_combout\) # (\DATA_IN[0]~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111000000001111111101111111011111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_dado_out~0_combout\,
	datab => \ALT_INV_DATA_IN[0]~5_combout\,
	datac => \ALT_INV_DATA_IN[0]~0_combout\,
	datad => \ROM|ALT_INV_memROM~9_combout\,
	datae => \CPU|DECODER1|ALT_INV_saida[5]~2_combout\,
	dataf => \RAM64|ALT_INV_ram~547_combout\,
	combout => \CPU|MUX1|saida_MUX[0]~0_combout\);

-- Location: MLABCELL_X9_Y3_N57
\CPU|ULA1|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[0]~0_combout\ = (!\CPU|DECODER1|saida[4]~3_combout\ & (\CPU|ULA1|Add1~21_sumout\)) # (\CPU|DECODER1|saida[4]~3_combout\ & ((\CPU|MUX1|saida_MUX[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100001010010111110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER1|ALT_INV_saida[4]~3_combout\,
	datac => \CPU|ULA1|ALT_INV_Add1~21_sumout\,
	datad => \CPU|MUX1|ALT_INV_saida_MUX[0]~0_combout\,
	combout => \CPU|ULA1|saida[0]~0_combout\);

-- Location: FF_X9_Y3_N32
\CPU|REGA|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|ULA1|Add0~1_sumout\,
	asdata => \CPU|ULA1|saida[0]~0_combout\,
	sload => \CPU|DECODER1|saida[3]~4_combout\,
	ena => \CPU|DECODER1|saida[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(0));

-- Location: LABCELL_X10_Y2_N33
\REG_LEDR0_7|DOUT[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_LEDR0_7|DOUT[0]~feeder_combout\ = ( \CPU|REGA|DOUT\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REGA|ALT_INV_DOUT\(0),
	combout => \REG_LEDR0_7|DOUT[0]~feeder_combout\);

-- Location: MLABCELL_X18_Y2_N48
\AND_HEX0|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AND_HEX0|saida~0_combout\ = ( \ROM|memROM~26_combout\ & ( !\ROM|memROM~22_combout\ & ( (!\ROM|memROM~24_combout\ & !\ROM|memROM~20_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101000001010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~24_combout\,
	datac => \ROM|ALT_INV_memROM~20_combout\,
	datae => \ROM|ALT_INV_memROM~26_combout\,
	dataf => \ROM|ALT_INV_memROM~22_combout\,
	combout => \AND_HEX0|saida~0_combout\);

-- Location: LABCELL_X12_Y4_N18
\AND_LEDR0_7|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AND_LEDR0_7|saida~0_combout\ = ( \CPU|DECODER1|Equal5~0_combout\ & ( !\ROM|memROM~7_combout\ & ( (!\ROM|memROM~3_combout\ & (!\ROM|memROM~9_combout\ & \AND_HEX0|saida~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~3_combout\,
	datac => \ROM|ALT_INV_memROM~9_combout\,
	datad => \AND_HEX0|ALT_INV_saida~0_combout\,
	datae => \CPU|DECODER1|ALT_INV_Equal5~0_combout\,
	dataf => \ROM|ALT_INV_memROM~7_combout\,
	combout => \AND_LEDR0_7|saida~0_combout\);

-- Location: FF_X10_Y2_N34
\REG_LEDR0_7|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \REG_LEDR0_7|DOUT[0]~feeder_combout\,
	ena => \AND_LEDR0_7|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_LEDR0_7|DOUT\(0));

-- Location: FF_X9_Y3_N55
\REG_LEDR0_7|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(1),
	sload => VCC,
	ena => \AND_LEDR0_7|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_LEDR0_7|DOUT\(1));

-- Location: LABCELL_X10_Y2_N42
\REG_LEDR0_7|DOUT[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_LEDR0_7|DOUT[2]~feeder_combout\ = ( \CPU|REGA|DOUT\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REGA|ALT_INV_DOUT\(2),
	combout => \REG_LEDR0_7|DOUT[2]~feeder_combout\);

-- Location: FF_X10_Y2_N43
\REG_LEDR0_7|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \REG_LEDR0_7|DOUT[2]~feeder_combout\,
	ena => \AND_LEDR0_7|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_LEDR0_7|DOUT\(2));

-- Location: FF_X9_Y3_N10
\REG_LEDR0_7|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(3),
	sload => VCC,
	ena => \AND_LEDR0_7|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_LEDR0_7|DOUT\(3));

-- Location: LABCELL_X7_Y3_N39
\REG_LEDR0_7|DOUT[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_LEDR0_7|DOUT[4]~feeder_combout\ = ( \CPU|REGA|DOUT\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REGA|ALT_INV_DOUT\(4),
	combout => \REG_LEDR0_7|DOUT[4]~feeder_combout\);

-- Location: FF_X7_Y3_N40
\REG_LEDR0_7|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \REG_LEDR0_7|DOUT[4]~feeder_combout\,
	ena => \AND_LEDR0_7|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_LEDR0_7|DOUT\(4));

-- Location: LABCELL_X6_Y4_N15
\REG_LEDR0_7|DOUT[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_LEDR0_7|DOUT[5]~feeder_combout\ = ( \CPU|REGA|DOUT\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REGA|ALT_INV_DOUT\(5),
	combout => \REG_LEDR0_7|DOUT[5]~feeder_combout\);

-- Location: FF_X6_Y4_N16
\REG_LEDR0_7|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \REG_LEDR0_7|DOUT[5]~feeder_combout\,
	ena => \AND_LEDR0_7|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_LEDR0_7|DOUT\(5));

-- Location: LABCELL_X6_Y4_N42
\REG_LEDR0_7|DOUT[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_LEDR0_7|DOUT[6]~feeder_combout\ = ( \CPU|REGA|DOUT\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REGA|ALT_INV_DOUT\(6),
	combout => \REG_LEDR0_7|DOUT[6]~feeder_combout\);

-- Location: FF_X6_Y4_N43
\REG_LEDR0_7|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \REG_LEDR0_7|DOUT[6]~feeder_combout\,
	ena => \AND_LEDR0_7|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_LEDR0_7|DOUT\(6));

-- Location: FF_X7_Y4_N40
\REG_LEDR0_7|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(7),
	sload => VCC,
	ena => \AND_LEDR0_7|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_LEDR0_7|DOUT\(7));

-- Location: LABCELL_X12_Y4_N3
\AND_LEDR8|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AND_LEDR8|saida~0_combout\ = ( \ROM|memROM~9_combout\ & ( (!\ROM|memROM~7_combout\ & (!\ROM|memROM~3_combout\ & (\CPU|DECODER1|Equal5~0_combout\ & \AND_HEX0|saida~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datab => \ROM|ALT_INV_memROM~3_combout\,
	datac => \CPU|DECODER1|ALT_INV_Equal5~0_combout\,
	datad => \AND_HEX0|ALT_INV_saida~0_combout\,
	dataf => \ROM|ALT_INV_memROM~9_combout\,
	combout => \AND_LEDR8|saida~0_combout\);

-- Location: LABCELL_X10_Y2_N36
\FLIP_FLOP_LED8|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FLIP_FLOP_LED8|DOUT~0_combout\ = ( \FLIP_FLOP_LED8|DOUT~q\ & ( \AND_LEDR8|saida~0_combout\ & ( \CPU|REGA|DOUT\(0) ) ) ) # ( !\FLIP_FLOP_LED8|DOUT~q\ & ( \AND_LEDR8|saida~0_combout\ & ( \CPU|REGA|DOUT\(0) ) ) ) # ( \FLIP_FLOP_LED8|DOUT~q\ & ( 
-- !\AND_LEDR8|saida~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|REGA|ALT_INV_DOUT\(0),
	datae => \FLIP_FLOP_LED8|ALT_INV_DOUT~q\,
	dataf => \AND_LEDR8|ALT_INV_saida~0_combout\,
	combout => \FLIP_FLOP_LED8|DOUT~0_combout\);

-- Location: FF_X10_Y2_N37
\FLIP_FLOP_LED8|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FLIP_FLOP_LED8|DOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FLIP_FLOP_LED8|DOUT~q\);

-- Location: LABCELL_X12_Y4_N57
\AND_HEX2|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AND_HEX2|saida~0_combout\ = ( \CPU|DECODER1|Equal5~0_combout\ & ( \ROM|memROM~7_combout\ & ( (!\ROM|memROM~9_combout\ & \AND_HEX0|saida~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~9_combout\,
	datac => \AND_HEX0|ALT_INV_saida~0_combout\,
	datae => \CPU|DECODER1|ALT_INV_Equal5~0_combout\,
	dataf => \ROM|ALT_INV_memROM~7_combout\,
	combout => \AND_HEX2|saida~0_combout\);

-- Location: LABCELL_X12_Y7_N15
\FLIP_FLOP_LED9|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FLIP_FLOP_LED9|DOUT~0_combout\ = ( \FLIP_FLOP_LED9|DOUT~q\ & ( \AND_HEX2|saida~0_combout\ & ( (\ROM|memROM~3_combout\) # (\CPU|REGA|DOUT\(0)) ) ) ) # ( !\FLIP_FLOP_LED9|DOUT~q\ & ( \AND_HEX2|saida~0_combout\ & ( (\CPU|REGA|DOUT\(0) & 
-- !\ROM|memROM~3_combout\) ) ) ) # ( \FLIP_FLOP_LED9|DOUT~q\ & ( !\AND_HEX2|saida~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|REGA|ALT_INV_DOUT\(0),
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datae => \FLIP_FLOP_LED9|ALT_INV_DOUT~q\,
	dataf => \AND_HEX2|ALT_INV_saida~0_combout\,
	combout => \FLIP_FLOP_LED9|DOUT~0_combout\);

-- Location: FF_X12_Y7_N16
\FLIP_FLOP_LED9|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FLIP_FLOP_LED9|DOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FLIP_FLOP_LED9|DOUT~q\);

-- Location: LABCELL_X19_Y3_N54
\AND_HEX0|saida~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \AND_HEX0|saida~1_combout\ = ( \CPU|DECODER1|Equal5~0_combout\ & ( \AND_HEX0|saida~0_combout\ & ( (!\ROM|memROM~9_combout\ & \AND_HEX5|saida~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~9_combout\,
	datad => \AND_HEX5|ALT_INV_saida~0_combout\,
	datae => \CPU|DECODER1|ALT_INV_Equal5~0_combout\,
	dataf => \AND_HEX0|ALT_INV_saida~0_combout\,
	combout => \AND_HEX0|saida~1_combout\);

-- Location: FF_X36_Y3_N53
\REG_HEX0|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(0),
	sload => VCC,
	ena => \AND_HEX0|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX0|DOUT\(0));

-- Location: FF_X36_Y3_N47
\REG_HEX0|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(3),
	sload => VCC,
	ena => \AND_HEX0|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX0|DOUT\(3));

-- Location: FF_X36_Y3_N14
\REG_HEX0|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(2),
	sload => VCC,
	ena => \AND_HEX0|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX0|DOUT\(2));

-- Location: FF_X36_Y3_N50
\REG_HEX0|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(1),
	sload => VCC,
	ena => \AND_HEX0|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX0|DOUT\(1));

-- Location: LABCELL_X36_Y3_N15
\DECODER_7SEG_0|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_7SEG_0|rascSaida7seg[0]~0_combout\ = ( \REG_HEX0|DOUT\(1) & ( (\REG_HEX0|DOUT\(0) & (\REG_HEX0|DOUT\(3) & !\REG_HEX0|DOUT\(2))) ) ) # ( !\REG_HEX0|DOUT\(1) & ( (!\REG_HEX0|DOUT\(0) & (!\REG_HEX0|DOUT\(3) & \REG_HEX0|DOUT\(2))) # 
-- (\REG_HEX0|DOUT\(0) & (!\REG_HEX0|DOUT\(3) $ (\REG_HEX0|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100101001001010010010100100100010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX0|ALT_INV_DOUT\(0),
	datab => \REG_HEX0|ALT_INV_DOUT\(3),
	datac => \REG_HEX0|ALT_INV_DOUT\(2),
	dataf => \REG_HEX0|ALT_INV_DOUT\(1),
	combout => \DECODER_7SEG_0|rascSaida7seg[0]~0_combout\);

-- Location: MLABCELL_X42_Y3_N0
\DECODER_7SEG_0|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_7SEG_0|rascSaida7seg[1]~1_combout\ = ( \REG_HEX0|DOUT\(0) & ( (!\REG_HEX0|DOUT\(1) & (\REG_HEX0|DOUT\(2) & !\REG_HEX0|DOUT\(3))) # (\REG_HEX0|DOUT\(1) & ((\REG_HEX0|DOUT\(3)))) ) ) # ( !\REG_HEX0|DOUT\(0) & ( (\REG_HEX0|DOUT\(2) & 
-- ((\REG_HEX0|DOUT\(3)) # (\REG_HEX0|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100010011000100110001001100100101001001010010010100100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX0|ALT_INV_DOUT\(1),
	datab => \REG_HEX0|ALT_INV_DOUT\(2),
	datac => \REG_HEX0|ALT_INV_DOUT\(3),
	dataf => \REG_HEX0|ALT_INV_DOUT\(0),
	combout => \DECODER_7SEG_0|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X36_Y3_N18
\DECODER_7SEG_0|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_7SEG_0|rascSaida7seg[2]~2_combout\ = ( \REG_HEX0|DOUT\(1) & ( (!\REG_HEX0|DOUT\(2) & (!\REG_HEX0|DOUT\(0) & !\REG_HEX0|DOUT\(3))) # (\REG_HEX0|DOUT\(2) & ((\REG_HEX0|DOUT\(3)))) ) ) # ( !\REG_HEX0|DOUT\(1) & ( (\REG_HEX0|DOUT\(2) & 
-- (!\REG_HEX0|DOUT\(0) & \REG_HEX0|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000011000000001100111100000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_HEX0|ALT_INV_DOUT\(2),
	datac => \REG_HEX0|ALT_INV_DOUT\(0),
	datad => \REG_HEX0|ALT_INV_DOUT\(3),
	dataf => \REG_HEX0|ALT_INV_DOUT\(1),
	combout => \DECODER_7SEG_0|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X36_Y3_N51
\DECODER_7SEG_0|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_7SEG_0|rascSaida7seg[3]~3_combout\ = ( \REG_HEX0|DOUT\(1) & ( (!\REG_HEX0|DOUT\(2) & (\REG_HEX0|DOUT\(3) & !\REG_HEX0|DOUT\(0))) # (\REG_HEX0|DOUT\(2) & ((\REG_HEX0|DOUT\(0)))) ) ) # ( !\REG_HEX0|DOUT\(1) & ( (!\REG_HEX0|DOUT\(3) & 
-- (!\REG_HEX0|DOUT\(2) $ (!\REG_HEX0|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011000000000011001100000000110000000011110011000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_HEX0|ALT_INV_DOUT\(3),
	datac => \REG_HEX0|ALT_INV_DOUT\(2),
	datad => \REG_HEX0|ALT_INV_DOUT\(0),
	dataf => \REG_HEX0|ALT_INV_DOUT\(1),
	combout => \DECODER_7SEG_0|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X36_Y3_N45
\DECODER_7SEG_0|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_7SEG_0|rascSaida7seg[4]~4_combout\ = ( \REG_HEX0|DOUT\(0) & ( (!\REG_HEX0|DOUT\(3)) # ((!\REG_HEX0|DOUT\(1) & !\REG_HEX0|DOUT\(2))) ) ) # ( !\REG_HEX0|DOUT\(0) & ( (!\REG_HEX0|DOUT\(1) & (\REG_HEX0|DOUT\(2) & !\REG_HEX0|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000011111111101000001111111110100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX0|ALT_INV_DOUT\(1),
	datac => \REG_HEX0|ALT_INV_DOUT\(2),
	datad => \REG_HEX0|ALT_INV_DOUT\(3),
	dataf => \REG_HEX0|ALT_INV_DOUT\(0),
	combout => \DECODER_7SEG_0|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X36_Y3_N48
\DECODER_7SEG_0|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_7SEG_0|rascSaida7seg[5]~5_combout\ = (!\REG_HEX0|DOUT\(2) & (!\REG_HEX0|DOUT\(3) & ((\REG_HEX0|DOUT\(1)) # (\REG_HEX0|DOUT\(0))))) # (\REG_HEX0|DOUT\(2) & (\REG_HEX0|DOUT\(0) & (!\REG_HEX0|DOUT\(3) $ (!\REG_HEX0|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100110001100000010011000110000001001100011000000100110001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX0|ALT_INV_DOUT\(2),
	datab => \REG_HEX0|ALT_INV_DOUT\(3),
	datac => \REG_HEX0|ALT_INV_DOUT\(0),
	datad => \REG_HEX0|ALT_INV_DOUT\(1),
	combout => \DECODER_7SEG_0|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X36_Y3_N12
\DECODER_7SEG_0|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_7SEG_0|rascSaida7seg[6]~6_combout\ = ( \REG_HEX0|DOUT\(1) & ( (\REG_HEX0|DOUT\(0) & (!\REG_HEX0|DOUT\(3) & \REG_HEX0|DOUT\(2))) ) ) # ( !\REG_HEX0|DOUT\(1) & ( (!\REG_HEX0|DOUT\(3) & ((!\REG_HEX0|DOUT\(2)))) # (\REG_HEX0|DOUT\(3) & 
-- (!\REG_HEX0|DOUT\(0) & \REG_HEX0|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000100010110011000010001000000000010001000000000001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX0|ALT_INV_DOUT\(0),
	datab => \REG_HEX0|ALT_INV_DOUT\(3),
	datad => \REG_HEX0|ALT_INV_DOUT\(2),
	dataf => \REG_HEX0|ALT_INV_DOUT\(1),
	combout => \DECODER_7SEG_0|rascSaida7seg[6]~6_combout\);

-- Location: LABCELL_X19_Y3_N9
\AND_HEX1|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AND_HEX1|saida~0_combout\ = ( \CPU|DECODER1|Equal5~0_combout\ & ( \AND_HEX0|saida~0_combout\ & ( (\AND_HEX5|saida~0_combout\ & \ROM|memROM~9_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \AND_HEX5|ALT_INV_saida~0_combout\,
	datac => \ROM|ALT_INV_memROM~9_combout\,
	datae => \CPU|DECODER1|ALT_INV_Equal5~0_combout\,
	dataf => \AND_HEX0|ALT_INV_saida~0_combout\,
	combout => \AND_HEX1|saida~0_combout\);

-- Location: FF_X36_Y3_N2
\REG_HEX1|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(3),
	sload => VCC,
	ena => \AND_HEX1|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX1|DOUT\(3));

-- Location: FF_X36_Y3_N5
\REG_HEX1|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(0),
	sload => VCC,
	ena => \AND_HEX1|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX1|DOUT\(0));

-- Location: FF_X36_Y3_N8
\REG_HEX1|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(1),
	sload => VCC,
	ena => \AND_HEX1|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX1|DOUT\(1));

-- Location: FF_X36_Y3_N11
\REG_HEX1|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(2),
	sload => VCC,
	ena => \AND_HEX1|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX1|DOUT\(2));

-- Location: LABCELL_X36_Y3_N36
\DECODER_7SEG_1|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_7SEG_1|rascSaida7seg[0]~0_combout\ = ( \REG_HEX1|DOUT\(2) & ( (!\REG_HEX1|DOUT\(1) & (!\REG_HEX1|DOUT\(3) $ (\REG_HEX1|DOUT\(0)))) ) ) # ( !\REG_HEX1|DOUT\(2) & ( (\REG_HEX1|DOUT\(0) & (!\REG_HEX1|DOUT\(3) $ (\REG_HEX1|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000100100001001000010010000110010000100100001001000010010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX1|ALT_INV_DOUT\(3),
	datab => \REG_HEX1|ALT_INV_DOUT\(0),
	datac => \REG_HEX1|ALT_INV_DOUT\(1),
	dataf => \REG_HEX1|ALT_INV_DOUT\(2),
	combout => \DECODER_7SEG_1|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X36_Y3_N39
\DECODER_7SEG_1|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_7SEG_1|rascSaida7seg[1]~1_combout\ = ( \REG_HEX1|DOUT\(0) & ( (!\REG_HEX1|DOUT\(3) & (\REG_HEX1|DOUT\(2) & !\REG_HEX1|DOUT\(1))) # (\REG_HEX1|DOUT\(3) & ((\REG_HEX1|DOUT\(1)))) ) ) # ( !\REG_HEX1|DOUT\(0) & ( (\REG_HEX1|DOUT\(2) & 
-- ((\REG_HEX1|DOUT\(1)) # (\REG_HEX1|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001111000001010000111100001010010101010000101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX1|ALT_INV_DOUT\(3),
	datac => \REG_HEX1|ALT_INV_DOUT\(2),
	datad => \REG_HEX1|ALT_INV_DOUT\(1),
	dataf => \REG_HEX1|ALT_INV_DOUT\(0),
	combout => \DECODER_7SEG_1|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X36_Y3_N42
\DECODER_7SEG_1|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_7SEG_1|rascSaida7seg[2]~2_combout\ = ( \REG_HEX1|DOUT\(0) & ( (\REG_HEX1|DOUT\(2) & (\REG_HEX1|DOUT\(3) & \REG_HEX1|DOUT\(1))) ) ) # ( !\REG_HEX1|DOUT\(0) & ( (!\REG_HEX1|DOUT\(2) & (!\REG_HEX1|DOUT\(3) & \REG_HEX1|DOUT\(1))) # 
-- (\REG_HEX1|DOUT\(2) & (\REG_HEX1|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111000011000000111100001100000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_HEX1|ALT_INV_DOUT\(2),
	datac => \REG_HEX1|ALT_INV_DOUT\(3),
	datad => \REG_HEX1|ALT_INV_DOUT\(1),
	dataf => \REG_HEX1|ALT_INV_DOUT\(0),
	combout => \DECODER_7SEG_1|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X36_Y3_N3
\DECODER_7SEG_1|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_7SEG_1|rascSaida7seg[3]~3_combout\ = (!\REG_HEX1|DOUT\(1) & (!\REG_HEX1|DOUT\(3) & (!\REG_HEX1|DOUT\(2) $ (!\REG_HEX1|DOUT\(0))))) # (\REG_HEX1|DOUT\(1) & ((!\REG_HEX1|DOUT\(2) & (\REG_HEX1|DOUT\(3) & !\REG_HEX1|DOUT\(0))) # (\REG_HEX1|DOUT\(2) & 
-- ((\REG_HEX1|DOUT\(0))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001100010000011000110001000001100011000100000110001100010000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX1|ALT_INV_DOUT\(3),
	datab => \REG_HEX1|ALT_INV_DOUT\(1),
	datac => \REG_HEX1|ALT_INV_DOUT\(2),
	datad => \REG_HEX1|ALT_INV_DOUT\(0),
	combout => \DECODER_7SEG_1|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X36_Y3_N0
\DECODER_7SEG_1|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_7SEG_1|rascSaida7seg[4]~4_combout\ = ( \REG_HEX1|DOUT\(0) & ( (!\REG_HEX1|DOUT\(3)) # ((!\REG_HEX1|DOUT\(1) & !\REG_HEX1|DOUT\(2))) ) ) # ( !\REG_HEX1|DOUT\(0) & ( (!\REG_HEX1|DOUT\(1) & (\REG_HEX1|DOUT\(2) & !\REG_HEX1|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000011111111110000001111111111000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_HEX1|ALT_INV_DOUT\(1),
	datac => \REG_HEX1|ALT_INV_DOUT\(2),
	datad => \REG_HEX1|ALT_INV_DOUT\(3),
	dataf => \REG_HEX1|ALT_INV_DOUT\(0),
	combout => \DECODER_7SEG_1|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X36_Y3_N6
\DECODER_7SEG_1|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_7SEG_1|rascSaida7seg[5]~5_combout\ = (!\REG_HEX1|DOUT\(0) & (!\REG_HEX1|DOUT\(3) & (!\REG_HEX1|DOUT\(2) & \REG_HEX1|DOUT\(1)))) # (\REG_HEX1|DOUT\(0) & (!\REG_HEX1|DOUT\(3) $ (((\REG_HEX1|DOUT\(2) & !\REG_HEX1|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000110100010001000011010001000100001101000100010000110100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX1|ALT_INV_DOUT\(3),
	datab => \REG_HEX1|ALT_INV_DOUT\(0),
	datac => \REG_HEX1|ALT_INV_DOUT\(2),
	datad => \REG_HEX1|ALT_INV_DOUT\(1),
	combout => \DECODER_7SEG_1|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X36_Y3_N9
\DECODER_7SEG_1|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_7SEG_1|rascSaida7seg[6]~6_combout\ = (!\REG_HEX1|DOUT\(0) & (!\REG_HEX1|DOUT\(1) & (!\REG_HEX1|DOUT\(3) $ (\REG_HEX1|DOUT\(2))))) # (\REG_HEX1|DOUT\(0) & (!\REG_HEX1|DOUT\(3) & (!\REG_HEX1|DOUT\(1) $ (\REG_HEX1|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000001000010101000000100001010100000010000101010000001000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX1|ALT_INV_DOUT\(3),
	datab => \REG_HEX1|ALT_INV_DOUT\(0),
	datac => \REG_HEX1|ALT_INV_DOUT\(1),
	datad => \REG_HEX1|ALT_INV_DOUT\(2),
	combout => \DECODER_7SEG_1|rascSaida7seg[6]~6_combout\);

-- Location: LABCELL_X19_Y4_N24
\AND_HEX2|saida~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \AND_HEX2|saida~1_combout\ = ( \CPU|DECODER1|Equal5~0_combout\ & ( \AND_HEX0|saida~0_combout\ & ( (\ROM|memROM~3_combout\ & (!\ROM|memROM~9_combout\ & \ROM|memROM~7_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~3_combout\,
	datab => \ROM|ALT_INV_memROM~9_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datae => \CPU|DECODER1|ALT_INV_Equal5~0_combout\,
	dataf => \AND_HEX0|ALT_INV_saida~0_combout\,
	combout => \AND_HEX2|saida~1_combout\);

-- Location: FF_X35_Y4_N5
\REG_HEX2|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(3),
	sload => VCC,
	ena => \AND_HEX2|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX2|DOUT\(3));

-- Location: FF_X35_Y4_N32
\REG_HEX2|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(2),
	sload => VCC,
	ena => \AND_HEX2|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX2|DOUT\(2));

-- Location: FF_X35_Y4_N1
\REG_HEX2|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(0),
	sload => VCC,
	ena => \AND_HEX2|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX2|DOUT\(0));

-- Location: FF_X35_Y4_N35
\REG_HEX2|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(1),
	sload => VCC,
	ena => \AND_HEX2|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX2|DOUT\(1));

-- Location: LABCELL_X35_Y4_N51
\DECODER_7SEG_2|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_7SEG_2|rascSaida7seg[0]~0_combout\ = ( \REG_HEX2|DOUT\(1) & ( (\REG_HEX2|DOUT\(3) & (!\REG_HEX2|DOUT\(2) & \REG_HEX2|DOUT\(0))) ) ) # ( !\REG_HEX2|DOUT\(1) & ( (!\REG_HEX2|DOUT\(3) & (!\REG_HEX2|DOUT\(2) $ (!\REG_HEX2|DOUT\(0)))) # 
-- (\REG_HEX2|DOUT\(3) & (\REG_HEX2|DOUT\(2) & \REG_HEX2|DOUT\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101010100101000010101010010100000000010100000000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX2|ALT_INV_DOUT\(3),
	datac => \REG_HEX2|ALT_INV_DOUT\(2),
	datad => \REG_HEX2|ALT_INV_DOUT\(0),
	dataf => \REG_HEX2|ALT_INV_DOUT\(1),
	combout => \DECODER_7SEG_2|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X35_Y4_N6
\DECODER_7SEG_2|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_7SEG_2|rascSaida7seg[1]~1_combout\ = ( \REG_HEX2|DOUT\(1) & ( (!\REG_HEX2|DOUT\(0) & (\REG_HEX2|DOUT\(2))) # (\REG_HEX2|DOUT\(0) & ((\REG_HEX2|DOUT\(3)))) ) ) # ( !\REG_HEX2|DOUT\(1) & ( (\REG_HEX2|DOUT\(2) & (!\REG_HEX2|DOUT\(0) $ 
-- (!\REG_HEX2|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000010010000100100001001000100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX2|ALT_INV_DOUT\(0),
	datab => \REG_HEX2|ALT_INV_DOUT\(2),
	datac => \REG_HEX2|ALT_INV_DOUT\(3),
	dataf => \REG_HEX2|ALT_INV_DOUT\(1),
	combout => \DECODER_7SEG_2|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X35_Y4_N9
\DECODER_7SEG_2|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_7SEG_2|rascSaida7seg[2]~2_combout\ = ( \REG_HEX2|DOUT\(1) & ( (!\REG_HEX2|DOUT\(2) & (!\REG_HEX2|DOUT\(0) & !\REG_HEX2|DOUT\(3))) # (\REG_HEX2|DOUT\(2) & ((\REG_HEX2|DOUT\(3)))) ) ) # ( !\REG_HEX2|DOUT\(1) & ( (!\REG_HEX2|DOUT\(0) & 
-- (\REG_HEX2|DOUT\(2) & \REG_HEX2|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100010000000000010001010001000001100111000100000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX2|ALT_INV_DOUT\(0),
	datab => \REG_HEX2|ALT_INV_DOUT\(2),
	datad => \REG_HEX2|ALT_INV_DOUT\(3),
	dataf => \REG_HEX2|ALT_INV_DOUT\(1),
	combout => \DECODER_7SEG_2|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X35_Y4_N12
\DECODER_7SEG_2|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_7SEG_2|rascSaida7seg[3]~3_combout\ = ( \REG_HEX2|DOUT\(2) & ( (!\REG_HEX2|DOUT\(1) & (!\REG_HEX2|DOUT\(3) & !\REG_HEX2|DOUT\(0))) # (\REG_HEX2|DOUT\(1) & ((\REG_HEX2|DOUT\(0)))) ) ) # ( !\REG_HEX2|DOUT\(2) & ( (!\REG_HEX2|DOUT\(1) & 
-- (!\REG_HEX2|DOUT\(3) & \REG_HEX2|DOUT\(0))) # (\REG_HEX2|DOUT\(1) & (\REG_HEX2|DOUT\(3) & !\REG_HEX2|DOUT\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110100000000001011010000010100000010101011010000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX2|ALT_INV_DOUT\(1),
	datac => \REG_HEX2|ALT_INV_DOUT\(3),
	datad => \REG_HEX2|ALT_INV_DOUT\(0),
	dataf => \REG_HEX2|ALT_INV_DOUT\(2),
	combout => \DECODER_7SEG_2|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X35_Y4_N3
\DECODER_7SEG_2|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_7SEG_2|rascSaida7seg[4]~4_combout\ = ( !\REG_HEX2|DOUT\(3) & ( \REG_HEX2|DOUT\(1) & ( \REG_HEX2|DOUT\(0) ) ) ) # ( \REG_HEX2|DOUT\(3) & ( !\REG_HEX2|DOUT\(1) & ( (\REG_HEX2|DOUT\(0) & !\REG_HEX2|DOUT\(2)) ) ) ) # ( !\REG_HEX2|DOUT\(3) & ( 
-- !\REG_HEX2|DOUT\(1) & ( (\REG_HEX2|DOUT\(2)) # (\REG_HEX2|DOUT\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010100000101000001010101010101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX2|ALT_INV_DOUT\(0),
	datac => \REG_HEX2|ALT_INV_DOUT\(2),
	datae => \REG_HEX2|ALT_INV_DOUT\(3),
	dataf => \REG_HEX2|ALT_INV_DOUT\(1),
	combout => \DECODER_7SEG_2|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X35_Y4_N33
\DECODER_7SEG_2|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_7SEG_2|rascSaida7seg[5]~5_combout\ = (!\REG_HEX2|DOUT\(0) & (!\REG_HEX2|DOUT\(3) & (!\REG_HEX2|DOUT\(2) & \REG_HEX2|DOUT\(1)))) # (\REG_HEX2|DOUT\(0) & (!\REG_HEX2|DOUT\(3) $ (((\REG_HEX2|DOUT\(2) & !\REG_HEX2|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000110100010001000011010001000100001101000100010000110100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX2|ALT_INV_DOUT\(3),
	datab => \REG_HEX2|ALT_INV_DOUT\(0),
	datac => \REG_HEX2|ALT_INV_DOUT\(2),
	datad => \REG_HEX2|ALT_INV_DOUT\(1),
	combout => \DECODER_7SEG_2|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X35_Y4_N30
\DECODER_7SEG_2|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_7SEG_2|rascSaida7seg[6]~6_combout\ = ( \REG_HEX2|DOUT\(1) & ( (!\REG_HEX2|DOUT\(3) & (\REG_HEX2|DOUT\(0) & \REG_HEX2|DOUT\(2))) ) ) # ( !\REG_HEX2|DOUT\(1) & ( (!\REG_HEX2|DOUT\(3) & ((!\REG_HEX2|DOUT\(2)))) # (\REG_HEX2|DOUT\(3) & 
-- (!\REG_HEX2|DOUT\(0) & \REG_HEX2|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101001000100101010100100010000000000001000100000000000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX2|ALT_INV_DOUT\(3),
	datab => \REG_HEX2|ALT_INV_DOUT\(0),
	datad => \REG_HEX2|ALT_INV_DOUT\(2),
	dataf => \REG_HEX2|ALT_INV_DOUT\(1),
	combout => \DECODER_7SEG_2|rascSaida7seg[6]~6_combout\);

-- Location: LABCELL_X19_Y3_N24
\AND_HEX3|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AND_HEX3|saida~0_combout\ = ( \CPU|DECODER1|Equal5~0_combout\ & ( \AND_HEX0|saida~0_combout\ & ( (\ROM|memROM~7_combout\ & (\ROM|memROM~9_combout\ & \ROM|memROM~3_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datab => \ROM|ALT_INV_memROM~9_combout\,
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datae => \CPU|DECODER1|ALT_INV_Equal5~0_combout\,
	dataf => \AND_HEX0|ALT_INV_saida~0_combout\,
	combout => \AND_HEX3|saida~0_combout\);

-- Location: FF_X36_Y3_N35
\REG_HEX3|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(2),
	sload => VCC,
	ena => \AND_HEX3|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX3|DOUT\(2));

-- Location: FF_X36_Y3_N32
\REG_HEX3|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(0),
	sload => VCC,
	ena => \AND_HEX3|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX3|DOUT\(0));

-- Location: FF_X36_Y3_N29
\REG_HEX3|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(1),
	sload => VCC,
	ena => \AND_HEX3|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX3|DOUT\(1));

-- Location: FF_X36_Y3_N26
\REG_HEX3|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(3),
	sload => VCC,
	ena => \AND_HEX3|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX3|DOUT\(3));

-- Location: LABCELL_X36_Y3_N54
\DECODER_7SEG_3|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_7SEG_3|rascSaida7seg[0]~0_combout\ = ( \REG_HEX3|DOUT\(3) & ( (\REG_HEX3|DOUT\(0) & (!\REG_HEX3|DOUT\(2) $ (!\REG_HEX3|DOUT\(1)))) ) ) # ( !\REG_HEX3|DOUT\(3) & ( (!\REG_HEX3|DOUT\(1) & (!\REG_HEX3|DOUT\(2) $ (!\REG_HEX3|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000001100000011000000110000000010010000100100001001000010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX3|ALT_INV_DOUT\(2),
	datab => \REG_HEX3|ALT_INV_DOUT\(0),
	datac => \REG_HEX3|ALT_INV_DOUT\(1),
	dataf => \REG_HEX3|ALT_INV_DOUT\(3),
	combout => \DECODER_7SEG_3|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X36_Y3_N21
\DECODER_7SEG_3|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_7SEG_3|rascSaida7seg[1]~1_combout\ = ( \REG_HEX3|DOUT\(2) & ( (!\REG_HEX3|DOUT\(3) & (!\REG_HEX3|DOUT\(0) $ (!\REG_HEX3|DOUT\(1)))) # (\REG_HEX3|DOUT\(3) & ((!\REG_HEX3|DOUT\(0)) # (\REG_HEX3|DOUT\(1)))) ) ) # ( !\REG_HEX3|DOUT\(2) & ( 
-- (\REG_HEX3|DOUT\(3) & (\REG_HEX3|DOUT\(0) & \REG_HEX3|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010101011010111101010101101011110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX3|ALT_INV_DOUT\(3),
	datac => \REG_HEX3|ALT_INV_DOUT\(0),
	datad => \REG_HEX3|ALT_INV_DOUT\(1),
	dataf => \REG_HEX3|ALT_INV_DOUT\(2),
	combout => \DECODER_7SEG_3|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X36_Y3_N57
\DECODER_7SEG_3|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_7SEG_3|rascSaida7seg[2]~2_combout\ = ( \REG_HEX3|DOUT\(3) & ( (\REG_HEX3|DOUT\(2) & ((!\REG_HEX3|DOUT\(0)) # (\REG_HEX3|DOUT\(1)))) ) ) # ( !\REG_HEX3|DOUT\(3) & ( (!\REG_HEX3|DOUT\(2) & (!\REG_HEX3|DOUT\(0) & \REG_HEX3|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000001010000010101010101000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX3|ALT_INV_DOUT\(2),
	datac => \REG_HEX3|ALT_INV_DOUT\(0),
	datad => \REG_HEX3|ALT_INV_DOUT\(1),
	dataf => \REG_HEX3|ALT_INV_DOUT\(3),
	combout => \DECODER_7SEG_3|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X36_Y3_N30
\DECODER_7SEG_3|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_7SEG_3|rascSaida7seg[3]~3_combout\ = ( \REG_HEX3|DOUT\(2) & ( (!\REG_HEX3|DOUT\(1) & (!\REG_HEX3|DOUT\(3) & !\REG_HEX3|DOUT\(0))) # (\REG_HEX3|DOUT\(1) & ((\REG_HEX3|DOUT\(0)))) ) ) # ( !\REG_HEX3|DOUT\(2) & ( (!\REG_HEX3|DOUT\(1) & 
-- (!\REG_HEX3|DOUT\(3) & \REG_HEX3|DOUT\(0))) # (\REG_HEX3|DOUT\(1) & (\REG_HEX3|DOUT\(3) & !\REG_HEX3|DOUT\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111000000000000111100000011000000001100111100000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_HEX3|ALT_INV_DOUT\(1),
	datac => \REG_HEX3|ALT_INV_DOUT\(3),
	datad => \REG_HEX3|ALT_INV_DOUT\(0),
	dataf => \REG_HEX3|ALT_INV_DOUT\(2),
	combout => \DECODER_7SEG_3|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X36_Y3_N24
\DECODER_7SEG_3|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_7SEG_3|rascSaida7seg[4]~4_combout\ = (!\REG_HEX3|DOUT\(1) & ((!\REG_HEX3|DOUT\(2) & (\REG_HEX3|DOUT\(0))) # (\REG_HEX3|DOUT\(2) & ((!\REG_HEX3|DOUT\(3)))))) # (\REG_HEX3|DOUT\(1) & (((\REG_HEX3|DOUT\(0) & !\REG_HEX3|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111001100100000011100110010000001110011001000000111001100100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX3|ALT_INV_DOUT\(2),
	datab => \REG_HEX3|ALT_INV_DOUT\(0),
	datac => \REG_HEX3|ALT_INV_DOUT\(1),
	datad => \REG_HEX3|ALT_INV_DOUT\(3),
	combout => \DECODER_7SEG_3|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X36_Y3_N27
\DECODER_7SEG_3|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_7SEG_3|rascSaida7seg[5]~5_combout\ = ( \REG_HEX3|DOUT\(3) & ( (\REG_HEX3|DOUT\(2) & (\REG_HEX3|DOUT\(0) & !\REG_HEX3|DOUT\(1))) ) ) # ( !\REG_HEX3|DOUT\(3) & ( (!\REG_HEX3|DOUT\(2) & ((\REG_HEX3|DOUT\(1)) # (\REG_HEX3|DOUT\(0)))) # 
-- (\REG_HEX3|DOUT\(2) & (\REG_HEX3|DOUT\(0) & \REG_HEX3|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001010111011001000101011101100010001000000000001000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX3|ALT_INV_DOUT\(2),
	datab => \REG_HEX3|ALT_INV_DOUT\(0),
	datad => \REG_HEX3|ALT_INV_DOUT\(1),
	dataf => \REG_HEX3|ALT_INV_DOUT\(3),
	combout => \DECODER_7SEG_3|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X36_Y3_N33
\DECODER_7SEG_3|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_7SEG_3|rascSaida7seg[6]~6_combout\ = (!\REG_HEX3|DOUT\(0) & (!\REG_HEX3|DOUT\(1) & (!\REG_HEX3|DOUT\(3) $ (\REG_HEX3|DOUT\(2))))) # (\REG_HEX3|DOUT\(0) & (!\REG_HEX3|DOUT\(3) & (!\REG_HEX3|DOUT\(1) $ (\REG_HEX3|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100001000010100010000100001010001000010000101000100001000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX3|ALT_INV_DOUT\(3),
	datab => \REG_HEX3|ALT_INV_DOUT\(1),
	datac => \REG_HEX3|ALT_INV_DOUT\(0),
	datad => \REG_HEX3|ALT_INV_DOUT\(2),
	combout => \DECODER_7SEG_3|rascSaida7seg[6]~6_combout\);

-- Location: MLABCELL_X18_Y2_N39
\AND_HEX5|saida~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \AND_HEX5|saida~1_combout\ = ( !\ROM|memROM~24_combout\ & ( !\ROM|memROM~7_combout\ & ( (!\ROM|memROM~20_combout\ & (\ROM|memROM~3_combout\ & \ROM|memROM~26_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~20_combout\,
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datad => \ROM|ALT_INV_memROM~26_combout\,
	datae => \ROM|ALT_INV_memROM~24_combout\,
	dataf => \ROM|ALT_INV_memROM~7_combout\,
	combout => \AND_HEX5|saida~1_combout\);

-- Location: MLABCELL_X18_Y2_N18
\AND_HEX4|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AND_HEX4|saida~0_combout\ = ( \AND_HEX5|saida~1_combout\ & ( (\ROM|memROM~22_combout\ & (\CPU|DECODER1|Equal5~0_combout\ & !\ROM|memROM~9_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001000000000001000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~22_combout\,
	datab => \CPU|DECODER1|ALT_INV_Equal5~0_combout\,
	datad => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \AND_HEX5|ALT_INV_saida~1_combout\,
	combout => \AND_HEX4|saida~0_combout\);

-- Location: FF_X35_Y4_N50
\REG_HEX4|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(2),
	sload => VCC,
	ena => \AND_HEX4|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX4|DOUT\(2));

-- Location: FF_X35_Y4_N41
\REG_HEX4|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(1),
	sload => VCC,
	ena => \AND_HEX4|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX4|DOUT\(1));

-- Location: FF_X35_Y4_N56
\REG_HEX4|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(0),
	sload => VCC,
	ena => \AND_HEX4|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX4|DOUT\(0));

-- Location: FF_X35_Y4_N38
\REG_HEX4|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(3),
	sload => VCC,
	ena => \AND_HEX4|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX4|DOUT\(3));

-- Location: LABCELL_X35_Y4_N57
\DECODER_7SEG_4|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_7SEG_4|rascSaida7seg[0]~0_combout\ = ( \REG_HEX4|DOUT\(3) & ( (\REG_HEX4|DOUT\(0) & (!\REG_HEX4|DOUT\(2) $ (!\REG_HEX4|DOUT\(1)))) ) ) # ( !\REG_HEX4|DOUT\(3) & ( (!\REG_HEX4|DOUT\(1) & (!\REG_HEX4|DOUT\(2) $ (!\REG_HEX4|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010010001000010001001000100000000000011001100000000001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX4|ALT_INV_DOUT\(2),
	datab => \REG_HEX4|ALT_INV_DOUT\(1),
	datad => \REG_HEX4|ALT_INV_DOUT\(0),
	dataf => \REG_HEX4|ALT_INV_DOUT\(3),
	combout => \DECODER_7SEG_4|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X35_Y4_N18
\DECODER_7SEG_4|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_7SEG_4|rascSaida7seg[1]~1_combout\ = ( \REG_HEX4|DOUT\(1) & ( (!\REG_HEX4|DOUT\(0) & (\REG_HEX4|DOUT\(2))) # (\REG_HEX4|DOUT\(0) & ((\REG_HEX4|DOUT\(3)))) ) ) # ( !\REG_HEX4|DOUT\(1) & ( (\REG_HEX4|DOUT\(2) & (!\REG_HEX4|DOUT\(0) $ 
-- (!\REG_HEX4|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001010000001010000101000001010010111110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX4|ALT_INV_DOUT\(0),
	datac => \REG_HEX4|ALT_INV_DOUT\(2),
	datad => \REG_HEX4|ALT_INV_DOUT\(3),
	dataf => \REG_HEX4|ALT_INV_DOUT\(1),
	combout => \DECODER_7SEG_4|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X35_Y4_N21
\DECODER_7SEG_4|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_7SEG_4|rascSaida7seg[2]~2_combout\ = ( \REG_HEX4|DOUT\(1) & ( (!\REG_HEX4|DOUT\(2) & (!\REG_HEX4|DOUT\(0) & !\REG_HEX4|DOUT\(3))) # (\REG_HEX4|DOUT\(2) & ((\REG_HEX4|DOUT\(3)))) ) ) # ( !\REG_HEX4|DOUT\(1) & ( (!\REG_HEX4|DOUT\(0) & 
-- (\REG_HEX4|DOUT\(2) & \REG_HEX4|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100010000000000010001010001000001100111000100000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX4|ALT_INV_DOUT\(0),
	datab => \REG_HEX4|ALT_INV_DOUT\(2),
	datad => \REG_HEX4|ALT_INV_DOUT\(3),
	dataf => \REG_HEX4|ALT_INV_DOUT\(1),
	combout => \DECODER_7SEG_4|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X35_Y4_N54
\DECODER_7SEG_4|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_7SEG_4|rascSaida7seg[3]~3_combout\ = (!\REG_HEX4|DOUT\(1) & (!\REG_HEX4|DOUT\(3) & (!\REG_HEX4|DOUT\(2) $ (!\REG_HEX4|DOUT\(0))))) # (\REG_HEX4|DOUT\(1) & ((!\REG_HEX4|DOUT\(2) & (\REG_HEX4|DOUT\(3) & !\REG_HEX4|DOUT\(0))) # (\REG_HEX4|DOUT\(2) & 
-- ((\REG_HEX4|DOUT\(0))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100001010010001010000101001000101000010100100010100001010010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX4|ALT_INV_DOUT\(2),
	datab => \REG_HEX4|ALT_INV_DOUT\(1),
	datac => \REG_HEX4|ALT_INV_DOUT\(3),
	datad => \REG_HEX4|ALT_INV_DOUT\(0),
	combout => \DECODER_7SEG_4|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X35_Y4_N36
\DECODER_7SEG_4|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_7SEG_4|rascSaida7seg[4]~4_combout\ = ( \REG_HEX4|DOUT\(1) & ( (\REG_HEX4|DOUT\(0) & !\REG_HEX4|DOUT\(3)) ) ) # ( !\REG_HEX4|DOUT\(1) & ( (!\REG_HEX4|DOUT\(2) & (\REG_HEX4|DOUT\(0))) # (\REG_HEX4|DOUT\(2) & ((!\REG_HEX4|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101010000010111110101000001010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX4|ALT_INV_DOUT\(0),
	datac => \REG_HEX4|ALT_INV_DOUT\(2),
	datad => \REG_HEX4|ALT_INV_DOUT\(3),
	dataf => \REG_HEX4|ALT_INV_DOUT\(1),
	combout => \DECODER_7SEG_4|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X35_Y4_N39
\DECODER_7SEG_4|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_7SEG_4|rascSaida7seg[5]~5_combout\ = ( \REG_HEX4|DOUT\(3) & ( (\REG_HEX4|DOUT\(0) & (\REG_HEX4|DOUT\(2) & !\REG_HEX4|DOUT\(1))) ) ) # ( !\REG_HEX4|DOUT\(3) & ( (!\REG_HEX4|DOUT\(0) & (!\REG_HEX4|DOUT\(2) & \REG_HEX4|DOUT\(1))) # 
-- (\REG_HEX4|DOUT\(0) & ((!\REG_HEX4|DOUT\(2)) # (\REG_HEX4|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010011011101010001001101110100010001000000000001000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX4|ALT_INV_DOUT\(0),
	datab => \REG_HEX4|ALT_INV_DOUT\(2),
	datad => \REG_HEX4|ALT_INV_DOUT\(1),
	dataf => \REG_HEX4|ALT_INV_DOUT\(3),
	combout => \DECODER_7SEG_4|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X35_Y4_N48
\DECODER_7SEG_4|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_7SEG_4|rascSaida7seg[6]~6_combout\ = ( \REG_HEX4|DOUT\(3) & ( (!\REG_HEX4|DOUT\(1) & (!\REG_HEX4|DOUT\(0) & \REG_HEX4|DOUT\(2))) ) ) # ( !\REG_HEX4|DOUT\(3) & ( (!\REG_HEX4|DOUT\(1) & ((!\REG_HEX4|DOUT\(2)))) # (\REG_HEX4|DOUT\(1) & 
-- (\REG_HEX4|DOUT\(0) & \REG_HEX4|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000011110011000000001100000000110000000000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_HEX4|ALT_INV_DOUT\(1),
	datac => \REG_HEX4|ALT_INV_DOUT\(0),
	datad => \REG_HEX4|ALT_INV_DOUT\(2),
	dataf => \REG_HEX4|ALT_INV_DOUT\(3),
	combout => \DECODER_7SEG_4|rascSaida7seg[6]~6_combout\);

-- Location: MLABCELL_X18_Y2_N21
\AND_HEX5|saida\ : cyclonev_lcell_comb
-- Equation(s):
-- \AND_HEX5|saida~combout\ = ( \AND_HEX5|saida~1_combout\ & ( (\ROM|memROM~22_combout\ & (\CPU|DECODER1|Equal5~0_combout\ & \ROM|memROM~9_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~22_combout\,
	datab => \CPU|DECODER1|ALT_INV_Equal5~0_combout\,
	datac => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \AND_HEX5|ALT_INV_saida~1_combout\,
	combout => \AND_HEX5|saida~combout\);

-- Location: FF_X35_Y4_N29
\REG_HEX5|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(2),
	sload => VCC,
	ena => \AND_HEX5|saida~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX5|DOUT\(2));

-- Location: FF_X35_Y4_N47
\REG_HEX5|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(1),
	sload => VCC,
	ena => \AND_HEX5|saida~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX5|DOUT\(1));

-- Location: FF_X35_Y4_N44
\REG_HEX5|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(3),
	sload => VCC,
	ena => \AND_HEX5|saida~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX5|DOUT\(3));

-- Location: FF_X35_Y4_N26
\REG_HEX5|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|REGA|DOUT\(0),
	sload => VCC,
	ena => \AND_HEX5|saida~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_HEX5|DOUT\(0));

-- Location: LABCELL_X31_Y4_N12
\DECODER_7SEG_5|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_7SEG_5|rascSaida7seg[0]~0_combout\ = ( \REG_HEX5|DOUT\(3) & ( \REG_HEX5|DOUT\(0) & ( !\REG_HEX5|DOUT\(2) $ (!\REG_HEX5|DOUT\(1)) ) ) ) # ( !\REG_HEX5|DOUT\(3) & ( \REG_HEX5|DOUT\(0) & ( (!\REG_HEX5|DOUT\(2) & !\REG_HEX5|DOUT\(1)) ) ) ) # ( 
-- !\REG_HEX5|DOUT\(3) & ( !\REG_HEX5|DOUT\(0) & ( (\REG_HEX5|DOUT\(2) & !\REG_HEX5|DOUT\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000000000000000000011000000110000000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_HEX5|ALT_INV_DOUT\(2),
	datac => \REG_HEX5|ALT_INV_DOUT\(1),
	datae => \REG_HEX5|ALT_INV_DOUT\(3),
	dataf => \REG_HEX5|ALT_INV_DOUT\(0),
	combout => \DECODER_7SEG_5|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X31_Y4_N42
\DECODER_7SEG_5|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_7SEG_5|rascSaida7seg[1]~1_combout\ = ( \REG_HEX5|DOUT\(3) & ( \REG_HEX5|DOUT\(0) & ( \REG_HEX5|DOUT\(1) ) ) ) # ( !\REG_HEX5|DOUT\(3) & ( \REG_HEX5|DOUT\(0) & ( (\REG_HEX5|DOUT\(2) & !\REG_HEX5|DOUT\(1)) ) ) ) # ( \REG_HEX5|DOUT\(3) & ( 
-- !\REG_HEX5|DOUT\(0) & ( \REG_HEX5|DOUT\(2) ) ) ) # ( !\REG_HEX5|DOUT\(3) & ( !\REG_HEX5|DOUT\(0) & ( (\REG_HEX5|DOUT\(2) & \REG_HEX5|DOUT\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011001100110011001100110000001100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_HEX5|ALT_INV_DOUT\(2),
	datac => \REG_HEX5|ALT_INV_DOUT\(1),
	datae => \REG_HEX5|ALT_INV_DOUT\(3),
	dataf => \REG_HEX5|ALT_INV_DOUT\(0),
	combout => \DECODER_7SEG_5|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X35_Y4_N15
\DECODER_7SEG_5|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_7SEG_5|rascSaida7seg[2]~2_combout\ = ( \REG_HEX5|DOUT\(3) & ( (\REG_HEX5|DOUT\(2) & ((!\REG_HEX5|DOUT\(0)) # (\REG_HEX5|DOUT\(1)))) ) ) # ( !\REG_HEX5|DOUT\(3) & ( (\REG_HEX5|DOUT\(1) & (!\REG_HEX5|DOUT\(0) & !\REG_HEX5|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000001100000000000000000000111100110000000011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_HEX5|ALT_INV_DOUT\(1),
	datac => \REG_HEX5|ALT_INV_DOUT\(0),
	datad => \REG_HEX5|ALT_INV_DOUT\(2),
	dataf => \REG_HEX5|ALT_INV_DOUT\(3),
	combout => \DECODER_7SEG_5|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X35_Y4_N24
\DECODER_7SEG_5|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_7SEG_5|rascSaida7seg[3]~3_combout\ = (!\REG_HEX5|DOUT\(1) & (!\REG_HEX5|DOUT\(3) & (!\REG_HEX5|DOUT\(2) $ (!\REG_HEX5|DOUT\(0))))) # (\REG_HEX5|DOUT\(1) & ((!\REG_HEX5|DOUT\(2) & (\REG_HEX5|DOUT\(3) & !\REG_HEX5|DOUT\(0))) # (\REG_HEX5|DOUT\(2) & 
-- ((\REG_HEX5|DOUT\(0))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001100010000101000110001000010100011000100001010001100010000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX5|ALT_INV_DOUT\(1),
	datab => \REG_HEX5|ALT_INV_DOUT\(3),
	datac => \REG_HEX5|ALT_INV_DOUT\(2),
	datad => \REG_HEX5|ALT_INV_DOUT\(0),
	combout => \DECODER_7SEG_5|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X35_Y4_N42
\DECODER_7SEG_5|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_7SEG_5|rascSaida7seg[4]~4_combout\ = ( \REG_HEX5|DOUT\(1) & ( (\REG_HEX5|DOUT\(0) & !\REG_HEX5|DOUT\(3)) ) ) # ( !\REG_HEX5|DOUT\(1) & ( (!\REG_HEX5|DOUT\(2) & (\REG_HEX5|DOUT\(0))) # (\REG_HEX5|DOUT\(2) & ((!\REG_HEX5|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011100100010011101110010001000110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX5|ALT_INV_DOUT\(2),
	datab => \REG_HEX5|ALT_INV_DOUT\(0),
	datad => \REG_HEX5|ALT_INV_DOUT\(3),
	dataf => \REG_HEX5|ALT_INV_DOUT\(1),
	combout => \DECODER_7SEG_5|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X35_Y4_N45
\DECODER_7SEG_5|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_7SEG_5|rascSaida7seg[5]~5_combout\ = ( \REG_HEX5|DOUT\(3) & ( (\REG_HEX5|DOUT\(2) & (\REG_HEX5|DOUT\(0) & !\REG_HEX5|DOUT\(1))) ) ) # ( !\REG_HEX5|DOUT\(3) & ( (!\REG_HEX5|DOUT\(2) & ((\REG_HEX5|DOUT\(1)) # (\REG_HEX5|DOUT\(0)))) # 
-- (\REG_HEX5|DOUT\(2) & (\REG_HEX5|DOUT\(0) & \REG_HEX5|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001010111011001000101011101100010001000000000001000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX5|ALT_INV_DOUT\(2),
	datab => \REG_HEX5|ALT_INV_DOUT\(0),
	datad => \REG_HEX5|ALT_INV_DOUT\(1),
	dataf => \REG_HEX5|ALT_INV_DOUT\(3),
	combout => \DECODER_7SEG_5|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X35_Y4_N27
\DECODER_7SEG_5|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER_7SEG_5|rascSaida7seg[6]~6_combout\ = (!\REG_HEX5|DOUT\(0) & (!\REG_HEX5|DOUT\(1) & (!\REG_HEX5|DOUT\(3) $ (\REG_HEX5|DOUT\(2))))) # (\REG_HEX5|DOUT\(0) & (!\REG_HEX5|DOUT\(3) & (!\REG_HEX5|DOUT\(1) $ (\REG_HEX5|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100000100100100010000010010010001000001001001000100000100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_HEX5|ALT_INV_DOUT\(1),
	datab => \REG_HEX5|ALT_INV_DOUT\(3),
	datac => \REG_HEX5|ALT_INV_DOUT\(0),
	datad => \REG_HEX5|ALT_INV_DOUT\(2),
	combout => \DECODER_7SEG_5|rascSaida7seg[6]~6_combout\);

-- Location: MLABCELL_X9_Y3_N27
\CPU|ULA1|Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Equal2~0_combout\ = ( !\CPU|ULA1|Add1~29_sumout\ & ( (!\CPU|ULA1|Add1~21_sumout\ & !\CPU|ULA1|Add1~25_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA1|ALT_INV_Add1~21_sumout\,
	datac => \CPU|ULA1|ALT_INV_Add1~25_sumout\,
	dataf => \CPU|ULA1|ALT_INV_Add1~29_sumout\,
	combout => \CPU|ULA1|Equal2~0_combout\);

-- Location: MLABCELL_X9_Y3_N6
\CPU|ULA1|Equal2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Equal2~1_combout\ = ( !\CPU|ULA1|Add1~9_sumout\ & ( !\CPU|ULA1|Add1~13_sumout\ & ( (!\CPU|ULA1|Add1~5_sumout\ & (!\CPU|ULA1|Add1~17_sumout\ & (\CPU|ULA1|Equal2~0_combout\ & !\CPU|ULA1|Add1~1_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA1|ALT_INV_Add1~5_sumout\,
	datab => \CPU|ULA1|ALT_INV_Add1~17_sumout\,
	datac => \CPU|ULA1|ALT_INV_Equal2~0_combout\,
	datad => \CPU|ULA1|ALT_INV_Add1~1_sumout\,
	datae => \CPU|ULA1|ALT_INV_Add1~9_sumout\,
	dataf => \CPU|ULA1|ALT_INV_Add1~13_sumout\,
	combout => \CPU|ULA1|Equal2~1_combout\);

-- Location: MLABCELL_X49_Y28_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


