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

-- DATE "09/22/2022 10:26:33"

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
	KEY : IN std_logic_vector(3 DOWNTO 0);
	SW : IN std_logic_vector(9 DOWNTO 0);
	PC_OUT : OUT std_logic_vector(8 DOWNTO 0);
	LEDR : OUT std_logic_vector(9 DOWNTO 0);
	REGA_OUT : OUT std_logic_vector(7 DOWNTO 0);
	INST_OUT : OUT std_logic_vector(12 DOWNTO 0);
	ENTRADAB_ULA : OUT std_logic_vector(7 DOWNTO 0);
	Palavra_Controle : OUT std_logic_vector(11 DOWNTO 0)
	);
END TopLevel;

-- Design Ports Information
-- CLOCK_50	=>  Location: PIN_M9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_W9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_M7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_M6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_U13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_T13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_T12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AB15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AB13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PC_OUT[0]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[1]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[2]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[3]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[4]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[5]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[6]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[7]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[8]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- REGA_OUT[0]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGA_OUT[1]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGA_OUT[2]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGA_OUT[3]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGA_OUT[4]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGA_OUT[5]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGA_OUT[6]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGA_OUT[7]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST_OUT[0]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST_OUT[1]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST_OUT[2]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST_OUT[3]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST_OUT[4]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST_OUT[5]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST_OUT[6]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST_OUT[7]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST_OUT[8]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST_OUT[9]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST_OUT[10]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST_OUT[11]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INST_OUT[12]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENTRADAB_ULA[0]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENTRADAB_ULA[1]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENTRADAB_ULA[2]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENTRADAB_ULA[3]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENTRADAB_ULA[4]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENTRADAB_ULA[5]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENTRADAB_ULA[6]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENTRADAB_ULA[7]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra_Controle[0]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra_Controle[1]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra_Controle[2]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra_Controle[3]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra_Controle[4]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra_Controle[5]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra_Controle[6]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra_Controle[7]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra_Controle[8]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra_Controle[9]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra_Controle[10]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra_Controle[11]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_U7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_PC_OUT : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_REGA_OUT : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_INST_OUT : std_logic_vector(12 DOWNTO 0);
SIGNAL ww_ENTRADAB_ULA : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Palavra_Controle : std_logic_vector(11 DOWNTO 0);
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
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
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[0]~inputCLKENA0_outclk\ : std_logic;
SIGNAL \incrementaPC|Add0~1_sumout\ : std_logic;
SIGNAL \PC|DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \incrementaPC|Add0~2\ : std_logic;
SIGNAL \incrementaPC|Add0~5_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~10\ : std_logic;
SIGNAL \incrementaPC|Add0~13_sumout\ : std_logic;
SIGNAL \ROM1|memROM~13_combout\ : std_logic;
SIGNAL \ROM1|memROM~14_combout\ : std_logic;
SIGNAL \MUXproxPC|saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \ROM1|memROM~15_combout\ : std_logic;
SIGNAL \ROM1|memROM~16_combout\ : std_logic;
SIGNAL \MUXproxPC|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \PC|DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \incrementaPC|Add0~6\ : std_logic;
SIGNAL \incrementaPC|Add0~9_sumout\ : std_logic;
SIGNAL \ROM1|memROM~11_combout\ : std_logic;
SIGNAL \ROM1|memROM~12_combout\ : std_logic;
SIGNAL \MUXproxPC|saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \ROM1|memROM~5_combout\ : std_logic;
SIGNAL \ROM1|memROM~6_combout\ : std_logic;
SIGNAL \ROM1|memROM~7_combout\ : std_logic;
SIGNAL \ROM1|memROM~8_combout\ : std_logic;
SIGNAL \ROM1|memROM~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~2_combout\ : std_logic;
SIGNAL \DESVIO1|Sel[1]~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~3_combout\ : std_logic;
SIGNAL \DECODER1|Equal10~6_combout\ : std_logic;
SIGNAL \DECODER1|saida[9]~3_combout\ : std_logic;
SIGNAL \DESVIO1|comb~2_combout\ : std_logic;
SIGNAL \DESVIO1|comb~1_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~14\ : std_logic;
SIGNAL \incrementaPC|Add0~17_sumout\ : std_logic;
SIGNAL \MUXproxPC|saida_MUX[4]~4_combout\ : std_logic;
SIGNAL \PC|DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \incrementaPC|Add0~18\ : std_logic;
SIGNAL \incrementaPC|Add0~21_sumout\ : std_logic;
SIGNAL \MUXproxPC|saida_MUX[5]~5_combout\ : std_logic;
SIGNAL \ROM1|memROM~1_combout\ : std_logic;
SIGNAL \ROM1|memROM~4_combout\ : std_logic;
SIGNAL \DECODER1|Equal10~1_combout\ : std_logic;
SIGNAL \ROM1|memROM~17_combout\ : std_logic;
SIGNAL \ROM1|memROM~9_combout\ : std_logic;
SIGNAL \ROM1|memROM~10_combout\ : std_logic;
SIGNAL \DECODER1|Equal10~2_combout\ : std_logic;
SIGNAL \RAM1|ram~161_combout\ : std_logic;
SIGNAL \RAM1|ram~22_q\ : std_logic;
SIGNAL \RAM1|ram~155_combout\ : std_logic;
SIGNAL \RAM1|ram~156_combout\ : std_logic;
SIGNAL \ROM1|memROM~21_combout\ : std_logic;
SIGNAL \RAM1|ram~20_q\ : std_logic;
SIGNAL \RAM1|ram~151_combout\ : std_logic;
SIGNAL \RAM1|ram~152_combout\ : std_logic;
SIGNAL \ROM1|memROM~20_combout\ : std_logic;
SIGNAL \RAM1|ram~19_q\ : std_logic;
SIGNAL \RAM1|ram~149_combout\ : std_logic;
SIGNAL \RAM1|ram~150_combout\ : std_logic;
SIGNAL \ROM1|memROM~19_combout\ : std_logic;
SIGNAL \RAM1|ram~18_q\ : std_logic;
SIGNAL \RAM1|ram~147_combout\ : std_logic;
SIGNAL \RAM1|ram~148_combout\ : std_logic;
SIGNAL \ROM1|memROM~18_combout\ : std_logic;
SIGNAL \RAM1|ram~17_q\ : std_logic;
SIGNAL \RAM1|ram~145_combout\ : std_logic;
SIGNAL \RAM1|ram~146_combout\ : std_logic;
SIGNAL \ULA1|Add0~1_sumout\ : std_logic;
SIGNAL \DECODER1|saida~0_combout\ : std_logic;
SIGNAL \ULA1|Add1~34_cout\ : std_logic;
SIGNAL \ULA1|Add1~1_sumout\ : std_logic;
SIGNAL \MUX1|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \ULA1|saida[0]~8_combout\ : std_logic;
SIGNAL \DECODER1|Equal10~0_combout\ : std_logic;
SIGNAL \DECODER1|saida~2_combout\ : std_logic;
SIGNAL \ULA1|Add0~2\ : std_logic;
SIGNAL \ULA1|Add0~5_sumout\ : std_logic;
SIGNAL \MUX1|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \ULA1|Add1~2\ : std_logic;
SIGNAL \ULA1|Add1~5_sumout\ : std_logic;
SIGNAL \ULA1|saida[1]~9_combout\ : std_logic;
SIGNAL \ULA1|Add0~6\ : std_logic;
SIGNAL \ULA1|Add0~9_sumout\ : std_logic;
SIGNAL \MUX1|saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \ULA1|Add1~6\ : std_logic;
SIGNAL \ULA1|Add1~9_sumout\ : std_logic;
SIGNAL \ULA1|saida[2]~10_combout\ : std_logic;
SIGNAL \ULA1|Add0~10\ : std_logic;
SIGNAL \ULA1|Add0~13_sumout\ : std_logic;
SIGNAL \MUX1|saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \ULA1|Add1~10\ : std_logic;
SIGNAL \ULA1|Add1~13_sumout\ : std_logic;
SIGNAL \ULA1|saida[3]~11_combout\ : std_logic;
SIGNAL \ULA1|Add0~14\ : std_logic;
SIGNAL \ULA1|Add0~17_sumout\ : std_logic;
SIGNAL \MUX1|saida_MUX[4]~4_combout\ : std_logic;
SIGNAL \ULA1|Add1~14\ : std_logic;
SIGNAL \ULA1|Add1~17_sumout\ : std_logic;
SIGNAL \ULA1|saida[4]~12_combout\ : std_logic;
SIGNAL \RAM1|ram~21_q\ : std_logic;
SIGNAL \RAM1|ram~153_combout\ : std_logic;
SIGNAL \RAM1|ram~154_combout\ : std_logic;
SIGNAL \ULA1|Add0~18\ : std_logic;
SIGNAL \ULA1|Add0~21_sumout\ : std_logic;
SIGNAL \MUX1|saida_MUX[5]~5_combout\ : std_logic;
SIGNAL \ULA1|saida[5]~13_combout\ : std_logic;
SIGNAL \ULA1|Add1~18\ : std_logic;
SIGNAL \ULA1|Add1~21_sumout\ : std_logic;
SIGNAL \DECODER1|Equal10~3_combout\ : std_logic;
SIGNAL \RAM1|ram~23_q\ : std_logic;
SIGNAL \RAM1|ram~157_combout\ : std_logic;
SIGNAL \RAM1|ram~158_combout\ : std_logic;
SIGNAL \ULA1|Add0~22\ : std_logic;
SIGNAL \ULA1|Add0~25_sumout\ : std_logic;
SIGNAL \MUX1|saida_MUX[6]~6_combout\ : std_logic;
SIGNAL \ULA1|saida[6]~14_combout\ : std_logic;
SIGNAL \ULA1|Add1~22\ : std_logic;
SIGNAL \ULA1|Add1~25_sumout\ : std_logic;
SIGNAL \RAM1|ram~24_q\ : std_logic;
SIGNAL \RAM1|ram~159_combout\ : std_logic;
SIGNAL \RAM1|ram~160_combout\ : std_logic;
SIGNAL \ULA1|Add0~26\ : std_logic;
SIGNAL \ULA1|Add0~29_sumout\ : std_logic;
SIGNAL \MUX1|saida_MUX[7]~7_combout\ : std_logic;
SIGNAL \ULA1|saida[7]~15_combout\ : std_logic;
SIGNAL \ULA1|Add1~26\ : std_logic;
SIGNAL \ULA1|Add1~29_sumout\ : std_logic;
SIGNAL \FLIPFLOP1|DOUT~1_combout\ : std_logic;
SIGNAL \FLIPFLOP1|DOUT~0_combout\ : std_logic;
SIGNAL \FLIPFLOP1|DOUT~q\ : std_logic;
SIGNAL \DESVIO1|comb~0_combout\ : std_logic;
SIGNAL \DESVIO1|comb~3_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~22\ : std_logic;
SIGNAL \incrementaPC|Add0~25_sumout\ : std_logic;
SIGNAL \MUXproxPC|saida_MUX[6]~6_combout\ : std_logic;
SIGNAL \PC|DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \incrementaPC|Add0~26\ : std_logic;
SIGNAL \incrementaPC|Add0~29_sumout\ : std_logic;
SIGNAL \MUXproxPC|saida_MUX[7]~7_combout\ : std_logic;
SIGNAL \PC|DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \incrementaPC|Add0~30\ : std_logic;
SIGNAL \incrementaPC|Add0~33_sumout\ : std_logic;
SIGNAL \MUXproxPC|saida_MUX[8]~8_combout\ : std_logic;
SIGNAL \PC|DOUT[8]~DUPLICATE_q\ : std_logic;
SIGNAL \DECODER1|Equal10~5_combout\ : std_logic;
SIGNAL \MUXproxPC|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \PC|DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ULA1|saida[0]~0_combout\ : std_logic;
SIGNAL \ULA1|saida[1]~1_combout\ : std_logic;
SIGNAL \ULA1|saida[2]~2_combout\ : std_logic;
SIGNAL \ULA1|saida[3]~3_combout\ : std_logic;
SIGNAL \ULA1|saida[4]~4_combout\ : std_logic;
SIGNAL \ULA1|saida[5]~5_combout\ : std_logic;
SIGNAL \ULA1|saida[6]~6_combout\ : std_logic;
SIGNAL \ULA1|saida[7]~7_combout\ : std_logic;
SIGNAL \DECODER1|saida~1_combout\ : std_logic;
SIGNAL \DECODER1|Equal10~4_combout\ : std_logic;
SIGNAL \REGA|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \END_RETORNO|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \DESVIO1|Sel\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \PC|ALT_INV_DOUT[8]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \DESVIO1|ALT_INV_Sel\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \DESVIO1|ALT_INV_comb~3_combout\ : std_logic;
SIGNAL \FLIPFLOP1|ALT_INV_DOUT~1_combout\ : std_logic;
SIGNAL \DESVIO1|ALT_INV_comb~2_combout\ : std_logic;
SIGNAL \DESVIO1|ALT_INV_comb~1_combout\ : std_logic;
SIGNAL \DESVIO1|ALT_INV_comb~0_combout\ : std_logic;
SIGNAL \FLIPFLOP1|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \DESVIO1|ALT_INV_Sel[1]~0_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~21_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~20_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~19_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~18_combout\ : std_logic;
SIGNAL \END_RETORNO|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \DECODER1|ALT_INV_Equal10~6_combout\ : std_logic;
SIGNAL \DECODER1|ALT_INV_saida[9]~3_combout\ : std_logic;
SIGNAL \DECODER1|ALT_INV_Equal10~5_combout\ : std_logic;
SIGNAL \DECODER1|ALT_INV_Equal10~3_combout\ : std_logic;
SIGNAL \DECODER1|ALT_INV_Equal10~2_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~17_combout\ : std_logic;
SIGNAL \MUX1|ALT_INV_saida_MUX[7]~7_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~160_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~159_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~24_q\ : std_logic;
SIGNAL \MUX1|ALT_INV_saida_MUX[6]~6_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~158_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~157_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~23_q\ : std_logic;
SIGNAL \MUX1|ALT_INV_saida_MUX[5]~5_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~156_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~155_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~22_q\ : std_logic;
SIGNAL \MUX1|ALT_INV_saida_MUX[4]~4_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~154_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~153_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~21_q\ : std_logic;
SIGNAL \MUX1|ALT_INV_saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~152_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~151_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~20_q\ : std_logic;
SIGNAL \MUX1|ALT_INV_saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~150_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~149_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~19_q\ : std_logic;
SIGNAL \MUX1|ALT_INV_saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~148_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~147_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~18_q\ : std_logic;
SIGNAL \MUX1|ALT_INV_saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~146_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~16_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~15_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~145_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~14_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~13_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~12_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~11_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~17_q\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~10_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~9_combout\ : std_logic;
SIGNAL \DECODER1|ALT_INV_Equal10~1_combout\ : std_logic;
SIGNAL \DECODER1|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \DECODER1|ALT_INV_Equal10~0_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \incrementaPC|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \REGA|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ULA1|ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~1_sumout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
ww_SW <= SW;
PC_OUT <= ww_PC_OUT;
LEDR <= ww_LEDR;
REGA_OUT <= ww_REGA_OUT;
INST_OUT <= ww_INST_OUT;
ENTRADAB_ULA <= ww_ENTRADAB_ULA;
Palavra_Controle <= ww_Palavra_Controle;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\PC|ALT_INV_DOUT[8]~DUPLICATE_q\ <= NOT \PC|DOUT[8]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[7]~DUPLICATE_q\ <= NOT \PC|DOUT[7]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[6]~DUPLICATE_q\ <= NOT \PC|DOUT[6]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[5]~DUPLICATE_q\ <= NOT \PC|DOUT[5]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[4]~DUPLICATE_q\ <= NOT \PC|DOUT[4]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[1]~DUPLICATE_q\ <= NOT \PC|DOUT[1]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[0]~DUPLICATE_q\ <= NOT \PC|DOUT[0]~DUPLICATE_q\;
\DESVIO1|ALT_INV_Sel\(1) <= NOT \DESVIO1|Sel\(1);
\DESVIO1|ALT_INV_Sel\(0) <= NOT \DESVIO1|Sel\(0);
\DESVIO1|ALT_INV_comb~3_combout\ <= NOT \DESVIO1|comb~3_combout\;
\FLIPFLOP1|ALT_INV_DOUT~1_combout\ <= NOT \FLIPFLOP1|DOUT~1_combout\;
\DESVIO1|ALT_INV_comb~2_combout\ <= NOT \DESVIO1|comb~2_combout\;
\DESVIO1|ALT_INV_comb~1_combout\ <= NOT \DESVIO1|comb~1_combout\;
\DESVIO1|ALT_INV_comb~0_combout\ <= NOT \DESVIO1|comb~0_combout\;
\FLIPFLOP1|ALT_INV_DOUT~q\ <= NOT \FLIPFLOP1|DOUT~q\;
\DESVIO1|ALT_INV_Sel[1]~0_combout\ <= NOT \DESVIO1|Sel[1]~0_combout\;
\ROM1|ALT_INV_memROM~21_combout\ <= NOT \ROM1|memROM~21_combout\;
\ROM1|ALT_INV_memROM~20_combout\ <= NOT \ROM1|memROM~20_combout\;
\ROM1|ALT_INV_memROM~19_combout\ <= NOT \ROM1|memROM~19_combout\;
\ROM1|ALT_INV_memROM~18_combout\ <= NOT \ROM1|memROM~18_combout\;
\END_RETORNO|ALT_INV_DOUT\(8) <= NOT \END_RETORNO|DOUT\(8);
\END_RETORNO|ALT_INV_DOUT\(7) <= NOT \END_RETORNO|DOUT\(7);
\END_RETORNO|ALT_INV_DOUT\(6) <= NOT \END_RETORNO|DOUT\(6);
\END_RETORNO|ALT_INV_DOUT\(5) <= NOT \END_RETORNO|DOUT\(5);
\END_RETORNO|ALT_INV_DOUT\(4) <= NOT \END_RETORNO|DOUT\(4);
\END_RETORNO|ALT_INV_DOUT\(3) <= NOT \END_RETORNO|DOUT\(3);
\END_RETORNO|ALT_INV_DOUT\(2) <= NOT \END_RETORNO|DOUT\(2);
\END_RETORNO|ALT_INV_DOUT\(1) <= NOT \END_RETORNO|DOUT\(1);
\END_RETORNO|ALT_INV_DOUT\(0) <= NOT \END_RETORNO|DOUT\(0);
\DECODER1|ALT_INV_Equal10~6_combout\ <= NOT \DECODER1|Equal10~6_combout\;
\DECODER1|ALT_INV_saida[9]~3_combout\ <= NOT \DECODER1|saida[9]~3_combout\;
\DECODER1|ALT_INV_Equal10~5_combout\ <= NOT \DECODER1|Equal10~5_combout\;
\DECODER1|ALT_INV_Equal10~3_combout\ <= NOT \DECODER1|Equal10~3_combout\;
\DECODER1|ALT_INV_Equal10~2_combout\ <= NOT \DECODER1|Equal10~2_combout\;
\ROM1|ALT_INV_memROM~17_combout\ <= NOT \ROM1|memROM~17_combout\;
\MUX1|ALT_INV_saida_MUX[7]~7_combout\ <= NOT \MUX1|saida_MUX[7]~7_combout\;
\RAM1|ALT_INV_ram~160_combout\ <= NOT \RAM1|ram~160_combout\;
\RAM1|ALT_INV_ram~159_combout\ <= NOT \RAM1|ram~159_combout\;
\RAM1|ALT_INV_ram~24_q\ <= NOT \RAM1|ram~24_q\;
\MUX1|ALT_INV_saida_MUX[6]~6_combout\ <= NOT \MUX1|saida_MUX[6]~6_combout\;
\RAM1|ALT_INV_ram~158_combout\ <= NOT \RAM1|ram~158_combout\;
\RAM1|ALT_INV_ram~157_combout\ <= NOT \RAM1|ram~157_combout\;
\RAM1|ALT_INV_ram~23_q\ <= NOT \RAM1|ram~23_q\;
\MUX1|ALT_INV_saida_MUX[5]~5_combout\ <= NOT \MUX1|saida_MUX[5]~5_combout\;
\RAM1|ALT_INV_ram~156_combout\ <= NOT \RAM1|ram~156_combout\;
\RAM1|ALT_INV_ram~155_combout\ <= NOT \RAM1|ram~155_combout\;
\RAM1|ALT_INV_ram~22_q\ <= NOT \RAM1|ram~22_q\;
\MUX1|ALT_INV_saida_MUX[4]~4_combout\ <= NOT \MUX1|saida_MUX[4]~4_combout\;
\RAM1|ALT_INV_ram~154_combout\ <= NOT \RAM1|ram~154_combout\;
\RAM1|ALT_INV_ram~153_combout\ <= NOT \RAM1|ram~153_combout\;
\RAM1|ALT_INV_ram~21_q\ <= NOT \RAM1|ram~21_q\;
\MUX1|ALT_INV_saida_MUX[3]~3_combout\ <= NOT \MUX1|saida_MUX[3]~3_combout\;
\RAM1|ALT_INV_ram~152_combout\ <= NOT \RAM1|ram~152_combout\;
\RAM1|ALT_INV_ram~151_combout\ <= NOT \RAM1|ram~151_combout\;
\RAM1|ALT_INV_ram~20_q\ <= NOT \RAM1|ram~20_q\;
\MUX1|ALT_INV_saida_MUX[2]~2_combout\ <= NOT \MUX1|saida_MUX[2]~2_combout\;
\RAM1|ALT_INV_ram~150_combout\ <= NOT \RAM1|ram~150_combout\;
\RAM1|ALT_INV_ram~149_combout\ <= NOT \RAM1|ram~149_combout\;
\RAM1|ALT_INV_ram~19_q\ <= NOT \RAM1|ram~19_q\;
\MUX1|ALT_INV_saida_MUX[1]~1_combout\ <= NOT \MUX1|saida_MUX[1]~1_combout\;
\RAM1|ALT_INV_ram~148_combout\ <= NOT \RAM1|ram~148_combout\;
\RAM1|ALT_INV_ram~147_combout\ <= NOT \RAM1|ram~147_combout\;
\RAM1|ALT_INV_ram~18_q\ <= NOT \RAM1|ram~18_q\;
\MUX1|ALT_INV_saida_MUX[0]~0_combout\ <= NOT \MUX1|saida_MUX[0]~0_combout\;
\RAM1|ALT_INV_ram~146_combout\ <= NOT \RAM1|ram~146_combout\;
\ROM1|ALT_INV_memROM~16_combout\ <= NOT \ROM1|memROM~16_combout\;
\ROM1|ALT_INV_memROM~15_combout\ <= NOT \ROM1|memROM~15_combout\;
\RAM1|ALT_INV_ram~145_combout\ <= NOT \RAM1|ram~145_combout\;
\ROM1|ALT_INV_memROM~14_combout\ <= NOT \ROM1|memROM~14_combout\;
\ROM1|ALT_INV_memROM~13_combout\ <= NOT \ROM1|memROM~13_combout\;
\ROM1|ALT_INV_memROM~12_combout\ <= NOT \ROM1|memROM~12_combout\;
\ROM1|ALT_INV_memROM~11_combout\ <= NOT \ROM1|memROM~11_combout\;
\RAM1|ALT_INV_ram~17_q\ <= NOT \RAM1|ram~17_q\;
\ROM1|ALT_INV_memROM~10_combout\ <= NOT \ROM1|memROM~10_combout\;
\ROM1|ALT_INV_memROM~9_combout\ <= NOT \ROM1|memROM~9_combout\;
\DECODER1|ALT_INV_Equal10~1_combout\ <= NOT \DECODER1|Equal10~1_combout\;
\DECODER1|ALT_INV_saida~0_combout\ <= NOT \DECODER1|saida~0_combout\;
\DECODER1|ALT_INV_Equal10~0_combout\ <= NOT \DECODER1|Equal10~0_combout\;
\ROM1|ALT_INV_memROM~8_combout\ <= NOT \ROM1|memROM~8_combout\;
\ROM1|ALT_INV_memROM~7_combout\ <= NOT \ROM1|memROM~7_combout\;
\ROM1|ALT_INV_memROM~6_combout\ <= NOT \ROM1|memROM~6_combout\;
\ROM1|ALT_INV_memROM~5_combout\ <= NOT \ROM1|memROM~5_combout\;
\ROM1|ALT_INV_memROM~4_combout\ <= NOT \ROM1|memROM~4_combout\;
\ROM1|ALT_INV_memROM~3_combout\ <= NOT \ROM1|memROM~3_combout\;
\ROM1|ALT_INV_memROM~2_combout\ <= NOT \ROM1|memROM~2_combout\;
\ROM1|ALT_INV_memROM~1_combout\ <= NOT \ROM1|memROM~1_combout\;
\ROM1|ALT_INV_memROM~0_combout\ <= NOT \ROM1|memROM~0_combout\;
\PC|ALT_INV_DOUT\(8) <= NOT \PC|DOUT\(8);
\PC|ALT_INV_DOUT\(7) <= NOT \PC|DOUT\(7);
\PC|ALT_INV_DOUT\(6) <= NOT \PC|DOUT\(6);
\PC|ALT_INV_DOUT\(5) <= NOT \PC|DOUT\(5);
\PC|ALT_INV_DOUT\(4) <= NOT \PC|DOUT\(4);
\PC|ALT_INV_DOUT\(3) <= NOT \PC|DOUT\(3);
\PC|ALT_INV_DOUT\(2) <= NOT \PC|DOUT\(2);
\PC|ALT_INV_DOUT\(1) <= NOT \PC|DOUT\(1);
\PC|ALT_INV_DOUT\(0) <= NOT \PC|DOUT\(0);
\incrementaPC|ALT_INV_Add0~33_sumout\ <= NOT \incrementaPC|Add0~33_sumout\;
\incrementaPC|ALT_INV_Add0~29_sumout\ <= NOT \incrementaPC|Add0~29_sumout\;
\incrementaPC|ALT_INV_Add0~25_sumout\ <= NOT \incrementaPC|Add0~25_sumout\;
\incrementaPC|ALT_INV_Add0~21_sumout\ <= NOT \incrementaPC|Add0~21_sumout\;
\incrementaPC|ALT_INV_Add0~17_sumout\ <= NOT \incrementaPC|Add0~17_sumout\;
\incrementaPC|ALT_INV_Add0~13_sumout\ <= NOT \incrementaPC|Add0~13_sumout\;
\incrementaPC|ALT_INV_Add0~9_sumout\ <= NOT \incrementaPC|Add0~9_sumout\;
\incrementaPC|ALT_INV_Add0~5_sumout\ <= NOT \incrementaPC|Add0~5_sumout\;
\incrementaPC|ALT_INV_Add0~1_sumout\ <= NOT \incrementaPC|Add0~1_sumout\;
\REGA|ALT_INV_DOUT\(7) <= NOT \REGA|DOUT\(7);
\REGA|ALT_INV_DOUT\(6) <= NOT \REGA|DOUT\(6);
\REGA|ALT_INV_DOUT\(5) <= NOT \REGA|DOUT\(5);
\REGA|ALT_INV_DOUT\(4) <= NOT \REGA|DOUT\(4);
\REGA|ALT_INV_DOUT\(3) <= NOT \REGA|DOUT\(3);
\REGA|ALT_INV_DOUT\(2) <= NOT \REGA|DOUT\(2);
\REGA|ALT_INV_DOUT\(1) <= NOT \REGA|DOUT\(1);
\REGA|ALT_INV_DOUT\(0) <= NOT \REGA|DOUT\(0);
\ULA1|ALT_INV_Add1~29_sumout\ <= NOT \ULA1|Add1~29_sumout\;
\ULA1|ALT_INV_Add0~29_sumout\ <= NOT \ULA1|Add0~29_sumout\;
\ULA1|ALT_INV_Add1~25_sumout\ <= NOT \ULA1|Add1~25_sumout\;
\ULA1|ALT_INV_Add0~25_sumout\ <= NOT \ULA1|Add0~25_sumout\;
\ULA1|ALT_INV_Add1~21_sumout\ <= NOT \ULA1|Add1~21_sumout\;
\ULA1|ALT_INV_Add0~21_sumout\ <= NOT \ULA1|Add0~21_sumout\;
\ULA1|ALT_INV_Add1~17_sumout\ <= NOT \ULA1|Add1~17_sumout\;
\ULA1|ALT_INV_Add0~17_sumout\ <= NOT \ULA1|Add0~17_sumout\;
\ULA1|ALT_INV_Add1~13_sumout\ <= NOT \ULA1|Add1~13_sumout\;
\ULA1|ALT_INV_Add0~13_sumout\ <= NOT \ULA1|Add0~13_sumout\;
\ULA1|ALT_INV_Add1~9_sumout\ <= NOT \ULA1|Add1~9_sumout\;
\ULA1|ALT_INV_Add0~9_sumout\ <= NOT \ULA1|Add0~9_sumout\;
\ULA1|ALT_INV_Add1~5_sumout\ <= NOT \ULA1|Add1~5_sumout\;
\ULA1|ALT_INV_Add0~5_sumout\ <= NOT \ULA1|Add0~5_sumout\;
\ULA1|ALT_INV_Add1~1_sumout\ <= NOT \ULA1|Add1~1_sumout\;
\ULA1|ALT_INV_Add0~1_sumout\ <= NOT \ULA1|Add0~1_sumout\;

-- Location: IOOBUF_X19_Y0_N53
\PC_OUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT[0]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUT(0));

-- Location: IOOBUF_X12_Y0_N53
\PC_OUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT[1]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUT(1));

-- Location: IOOBUF_X8_Y45_N59
\PC_OUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(2),
	devoe => ww_devoe,
	o => ww_PC_OUT(2));

-- Location: IOOBUF_X54_Y21_N39
\PC_OUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(3),
	devoe => ww_devoe,
	o => ww_PC_OUT(3));

-- Location: IOOBUF_X12_Y0_N36
\PC_OUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT[4]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUT(4));

-- Location: IOOBUF_X8_Y45_N42
\PC_OUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT[5]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUT(5));

-- Location: IOOBUF_X18_Y0_N53
\PC_OUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT[6]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUT(6));

-- Location: IOOBUF_X54_Y18_N62
\PC_OUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT[7]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUT(7));

-- Location: IOOBUF_X8_Y45_N76
\PC_OUT[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT[8]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUT(8));

-- Location: IOOBUF_X0_Y18_N79
\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|saida[0]~0_combout\,
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
	i => \ULA1|saida[1]~1_combout\,
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
	i => \ULA1|saida[2]~2_combout\,
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
	i => \ULA1|saida[3]~3_combout\,
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
	i => \ULA1|saida[4]~4_combout\,
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
	i => \ULA1|saida[5]~5_combout\,
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
	i => \ULA1|saida[6]~6_combout\,
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
	i => \ULA1|saida[7]~7_combout\,
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
	i => \DECODER1|Equal10~0_combout\,
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
	i => \DECODER1|saida~0_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(9));

-- Location: IOOBUF_X12_Y0_N2
\REGA_OUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGA|DOUT\(0),
	devoe => ww_devoe,
	o => ww_REGA_OUT(0));

-- Location: IOOBUF_X12_Y0_N19
\REGA_OUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGA|DOUT\(1),
	devoe => ww_devoe,
	o => ww_REGA_OUT(1));

-- Location: IOOBUF_X8_Y45_N93
\REGA_OUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGA|DOUT\(2),
	devoe => ww_devoe,
	o => ww_REGA_OUT(2));

-- Location: IOOBUF_X11_Y0_N2
\REGA_OUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGA|DOUT\(3),
	devoe => ww_devoe,
	o => ww_REGA_OUT(3));

-- Location: IOOBUF_X22_Y0_N36
\REGA_OUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGA|DOUT\(4),
	devoe => ww_devoe,
	o => ww_REGA_OUT(4));

-- Location: IOOBUF_X14_Y0_N53
\REGA_OUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGA|DOUT\(5),
	devoe => ww_devoe,
	o => ww_REGA_OUT(5));

-- Location: IOOBUF_X54_Y20_N22
\REGA_OUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGA|DOUT\(6),
	devoe => ww_devoe,
	o => ww_REGA_OUT(6));

-- Location: IOOBUF_X14_Y45_N53
\REGA_OUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGA|DOUT\(7),
	devoe => ww_devoe,
	o => ww_REGA_OUT(7));

-- Location: IOOBUF_X10_Y0_N76
\INST_OUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~10_combout\,
	devoe => ww_devoe,
	o => ww_INST_OUT(0));

-- Location: IOOBUF_X10_Y0_N42
\INST_OUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~16_combout\,
	devoe => ww_devoe,
	o => ww_INST_OUT(1));

-- Location: IOOBUF_X54_Y19_N56
\INST_OUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~12_combout\,
	devoe => ww_devoe,
	o => ww_INST_OUT(2));

-- Location: IOOBUF_X54_Y19_N22
\INST_OUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~14_combout\,
	devoe => ww_devoe,
	o => ww_INST_OUT(3));

-- Location: IOOBUF_X34_Y45_N53
\INST_OUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_INST_OUT(4));

-- Location: IOOBUF_X32_Y45_N42
\INST_OUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_INST_OUT(5));

-- Location: IOOBUF_X52_Y0_N53
\INST_OUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_INST_OUT(6));

-- Location: IOOBUF_X50_Y45_N2
\INST_OUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_INST_OUT(7));

-- Location: IOOBUF_X16_Y0_N76
\INST_OUT[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~17_combout\,
	devoe => ww_devoe,
	o => ww_INST_OUT(8));

-- Location: IOOBUF_X11_Y0_N19
\INST_OUT[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~4_combout\,
	devoe => ww_devoe,
	o => ww_INST_OUT(9));

-- Location: IOOBUF_X16_Y0_N42
\INST_OUT[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~6_combout\,
	devoe => ww_devoe,
	o => ww_INST_OUT(10));

-- Location: IOOBUF_X10_Y45_N36
\INST_OUT[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~8_combout\,
	devoe => ww_devoe,
	o => ww_INST_OUT(11));

-- Location: IOOBUF_X16_Y0_N59
\INST_OUT[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~2_combout\,
	devoe => ww_devoe,
	o => ww_INST_OUT(12));

-- Location: IOOBUF_X18_Y0_N19
\ENTRADAB_ULA[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX1|saida_MUX[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_ENTRADAB_ULA(0));

-- Location: IOOBUF_X12_Y45_N36
\ENTRADAB_ULA[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX1|saida_MUX[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_ENTRADAB_ULA(1));

-- Location: IOOBUF_X10_Y45_N53
\ENTRADAB_ULA[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX1|saida_MUX[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_ENTRADAB_ULA(2));

-- Location: IOOBUF_X14_Y0_N36
\ENTRADAB_ULA[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX1|saida_MUX[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_ENTRADAB_ULA(3));

-- Location: IOOBUF_X16_Y0_N93
\ENTRADAB_ULA[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX1|saida_MUX[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_ENTRADAB_ULA(4));

-- Location: IOOBUF_X19_Y0_N19
\ENTRADAB_ULA[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX1|saida_MUX[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_ENTRADAB_ULA(5));

-- Location: IOOBUF_X10_Y45_N19
\ENTRADAB_ULA[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX1|saida_MUX[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_ENTRADAB_ULA(6));

-- Location: IOOBUF_X11_Y0_N53
\ENTRADAB_ULA[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX1|saida_MUX[7]~7_combout\,
	devoe => ww_devoe,
	o => ww_ENTRADAB_ULA(7));

-- Location: IOOBUF_X10_Y45_N2
\Palavra_Controle[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER1|Equal10~2_combout\,
	devoe => ww_devoe,
	o => ww_Palavra_Controle(0));

-- Location: IOOBUF_X23_Y0_N42
\Palavra_Controle[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER1|saida~1_combout\,
	devoe => ww_devoe,
	o => ww_Palavra_Controle(1));

-- Location: IOOBUF_X54_Y20_N56
\Palavra_Controle[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER1|Equal10~3_combout\,
	devoe => ww_devoe,
	o => ww_Palavra_Controle(2));

-- Location: IOOBUF_X19_Y0_N2
\Palavra_Controle[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER1|Equal10~0_combout\,
	devoe => ww_devoe,
	o => ww_Palavra_Controle(3));

-- Location: IOOBUF_X54_Y21_N22
\Palavra_Controle[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER1|saida~0_combout\,
	devoe => ww_devoe,
	o => ww_Palavra_Controle(4));

-- Location: IOOBUF_X12_Y45_N53
\Palavra_Controle[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER1|saida~2_combout\,
	devoe => ww_devoe,
	o => ww_Palavra_Controle(5));

-- Location: IOOBUF_X10_Y0_N59
\Palavra_Controle[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER1|Equal10~1_combout\,
	devoe => ww_devoe,
	o => ww_Palavra_Controle(6));

-- Location: IOOBUF_X54_Y19_N39
\Palavra_Controle[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER1|Equal10~4_combout\,
	devoe => ww_devoe,
	o => ww_Palavra_Controle(7));

-- Location: IOOBUF_X18_Y0_N36
\Palavra_Controle[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER1|Equal10~5_combout\,
	devoe => ww_devoe,
	o => ww_Palavra_Controle(8));

-- Location: IOOBUF_X54_Y20_N5
\Palavra_Controle[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER1|ALT_INV_saida[9]~3_combout\,
	devoe => ww_devoe,
	o => ww_Palavra_Controle(9));

-- Location: IOOBUF_X54_Y20_N39
\Palavra_Controle[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER1|Equal10~6_combout\,
	devoe => ww_devoe,
	o => ww_Palavra_Controle(10));

-- Location: IOOBUF_X18_Y0_N2
\Palavra_Controle[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER1|Equal10~5_combout\,
	devoe => ww_devoe,
	o => ww_Palavra_Controle(11));

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

-- Location: CLKCTRL_G5
\KEY[0]~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \KEY[0]~input_o\,
	outclk => \KEY[0]~inputCLKENA0_outclk\);

-- Location: LABCELL_X2_Y19_N30
\incrementaPC|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~1_sumout\ = SUM(( \PC|DOUT[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))
-- \incrementaPC|Add0~2\ = CARRY(( \PC|DOUT[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	cin => GND,
	sumout => \incrementaPC|Add0~1_sumout\,
	cout => \incrementaPC|Add0~2\);

-- Location: FF_X1_Y20_N40
\PC|DOUT[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \MUXproxPC|saida_MUX[5]~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[5]~DUPLICATE_q\);

-- Location: FF_X1_Y20_N14
\PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MUXproxPC|saida_MUX[8]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(8));

-- Location: FF_X2_Y20_N53
\PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \MUXproxPC|saida_MUX[0]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(0));

-- Location: LABCELL_X2_Y19_N33
\incrementaPC|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~5_sumout\ = SUM(( \PC|DOUT[1]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~2\ ))
-- \incrementaPC|Add0~6\ = CARRY(( \PC|DOUT[1]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	cin => \incrementaPC|Add0~2\,
	sumout => \incrementaPC|Add0~5_sumout\,
	cout => \incrementaPC|Add0~6\);

-- Location: FF_X2_Y19_N35
\END_RETORNO|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~5_sumout\,
	ena => \DECODER1|Equal10~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \END_RETORNO|DOUT\(1));

-- Location: LABCELL_X2_Y19_N36
\incrementaPC|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~9_sumout\ = SUM(( \PC|DOUT\(2) ) + ( GND ) + ( \incrementaPC|Add0~6\ ))
-- \incrementaPC|Add0~10\ = CARRY(( \PC|DOUT\(2) ) + ( GND ) + ( \incrementaPC|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT\(2),
	cin => \incrementaPC|Add0~6\,
	sumout => \incrementaPC|Add0~9_sumout\,
	cout => \incrementaPC|Add0~10\);

-- Location: LABCELL_X2_Y19_N39
\incrementaPC|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~13_sumout\ = SUM(( \PC|DOUT\(3) ) + ( GND ) + ( \incrementaPC|Add0~10\ ))
-- \incrementaPC|Add0~14\ = CARRY(( \PC|DOUT\(3) ) + ( GND ) + ( \incrementaPC|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT\(3),
	cin => \incrementaPC|Add0~10\,
	sumout => \incrementaPC|Add0~13_sumout\,
	cout => \incrementaPC|Add0~14\);

-- Location: FF_X2_Y19_N40
\END_RETORNO|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~13_sumout\,
	ena => \DECODER1|Equal10~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \END_RETORNO|DOUT\(3));

-- Location: FF_X2_Y20_N2
\PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MUXproxPC|saida_MUX[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(1));

-- Location: LABCELL_X2_Y20_N12
\ROM1|memROM~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~13_combout\ = ( \PC|DOUT\(2) & ( (\PC|DOUT\(3) & (\PC|DOUT\(0) & !\PC|DOUT\(1))) ) ) # ( !\PC|DOUT\(2) & ( (!\PC|DOUT\(3) & !\PC|DOUT\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000000000011000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT\(0),
	datad => \PC|ALT_INV_DOUT\(1),
	dataf => \PC|ALT_INV_DOUT\(2),
	combout => \ROM1|memROM~13_combout\);

-- Location: LABCELL_X1_Y20_N24
\ROM1|memROM~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~14_combout\ = ( \ROM1|memROM~13_combout\ & ( (!\PC|DOUT[8]~DUPLICATE_q\ & \ROM1|memROM~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \ROM1|memROM~14_combout\);

-- Location: LABCELL_X1_Y20_N21
\MUXproxPC|saida_MUX[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXproxPC|saida_MUX[3]~3_combout\ = ( \incrementaPC|Add0~13_sumout\ & ( (!\DESVIO1|Sel\(0) & ((!\DESVIO1|Sel\(1)) # ((\END_RETORNO|DOUT\(3))))) # (\DESVIO1|Sel\(0) & (!\DESVIO1|Sel\(1) & ((\ROM1|memROM~14_combout\)))) ) ) # ( 
-- !\incrementaPC|Add0~13_sumout\ & ( (!\DESVIO1|Sel\(0) & (\DESVIO1|Sel\(1) & (\END_RETORNO|DOUT\(3)))) # (\DESVIO1|Sel\(0) & (!\DESVIO1|Sel\(1) & ((\ROM1|memROM~14_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110000000100100011010001010110011101000101011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DESVIO1|ALT_INV_Sel\(0),
	datab => \DESVIO1|ALT_INV_Sel\(1),
	datac => \END_RETORNO|ALT_INV_DOUT\(3),
	datad => \ROM1|ALT_INV_memROM~14_combout\,
	dataf => \incrementaPC|ALT_INV_Add0~13_sumout\,
	combout => \MUXproxPC|saida_MUX[3]~3_combout\);

-- Location: FF_X2_Y20_N11
\PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \MUXproxPC|saida_MUX[3]~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(3));

-- Location: LABCELL_X2_Y20_N33
\ROM1|memROM~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~15_combout\ = ( \PC|DOUT\(2) & ( (!\PC|DOUT\(0) & (\PC|DOUT\(3) & !\PC|DOUT\(1))) ) ) # ( !\PC|DOUT\(2) & ( (!\PC|DOUT\(0) & !\PC|DOUT\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000101010100000000000001010000000000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datac => \PC|ALT_INV_DOUT\(3),
	datad => \PC|ALT_INV_DOUT\(1),
	dataf => \PC|ALT_INV_DOUT\(2),
	combout => \ROM1|memROM~15_combout\);

-- Location: LABCELL_X2_Y20_N30
\ROM1|memROM~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~16_combout\ = ( \ROM1|memROM~1_combout\ & ( (\ROM1|memROM~15_combout\ & !\PC|DOUT[8]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~15_combout\,
	datad => \PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \ROM1|memROM~16_combout\);

-- Location: LABCELL_X2_Y20_N0
\MUXproxPC|saida_MUX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXproxPC|saida_MUX[1]~1_combout\ = ( \incrementaPC|Add0~5_sumout\ & ( (!\DESVIO1|Sel\(1) & (((!\DESVIO1|Sel\(0)) # (\ROM1|memROM~16_combout\)))) # (\DESVIO1|Sel\(1) & (\END_RETORNO|DOUT\(1) & ((!\DESVIO1|Sel\(0))))) ) ) # ( !\incrementaPC|Add0~5_sumout\ 
-- & ( (!\DESVIO1|Sel\(1) & (((\ROM1|memROM~16_combout\ & \DESVIO1|Sel\(0))))) # (\DESVIO1|Sel\(1) & (\END_RETORNO|DOUT\(1) & ((!\DESVIO1|Sel\(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110000000001010011000011110101001100001111010100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \END_RETORNO|ALT_INV_DOUT\(1),
	datab => \ROM1|ALT_INV_memROM~16_combout\,
	datac => \DESVIO1|ALT_INV_Sel\(1),
	datad => \DESVIO1|ALT_INV_Sel\(0),
	dataf => \incrementaPC|ALT_INV_Add0~5_sumout\,
	combout => \MUXproxPC|saida_MUX[1]~1_combout\);

-- Location: FF_X2_Y20_N1
\PC|DOUT[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MUXproxPC|saida_MUX[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[1]~DUPLICATE_q\);

-- Location: FF_X2_Y19_N37
\END_RETORNO|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~9_sumout\,
	ena => \DECODER1|Equal10~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \END_RETORNO|DOUT\(2));

-- Location: LABCELL_X2_Y20_N39
\ROM1|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~11_combout\ = ( \PC|DOUT\(0) & ( (!\PC|DOUT\(1) & ((!\PC|DOUT\(3)) # (\PC|DOUT\(2)))) ) ) # ( !\PC|DOUT\(0) & ( (!\PC|DOUT\(2) & (!\PC|DOUT\(3) $ (\PC|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000001100110000000000110011110011000000001111001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT\(2),
	datac => \PC|ALT_INV_DOUT\(3),
	datad => \PC|ALT_INV_DOUT\(1),
	dataf => \PC|ALT_INV_DOUT\(0),
	combout => \ROM1|memROM~11_combout\);

-- Location: LABCELL_X2_Y20_N45
\ROM1|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~12_combout\ = ( \ROM1|memROM~11_combout\ & ( (\ROM1|memROM~1_combout\ & !\PC|DOUT[8]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datad => \PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \ROM1|memROM~12_combout\);

-- Location: LABCELL_X1_Y20_N3
\MUXproxPC|saida_MUX[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXproxPC|saida_MUX[2]~2_combout\ = ( \ROM1|memROM~12_combout\ & ( (!\DESVIO1|Sel\(1) & (((\DESVIO1|Sel\(0)) # (\incrementaPC|Add0~9_sumout\)))) # (\DESVIO1|Sel\(1) & (\END_RETORNO|DOUT\(2) & ((!\DESVIO1|Sel\(0))))) ) ) # ( !\ROM1|memROM~12_combout\ & ( 
-- (!\DESVIO1|Sel\(0) & ((!\DESVIO1|Sel\(1) & ((\incrementaPC|Add0~9_sumout\))) # (\DESVIO1|Sel\(1) & (\END_RETORNO|DOUT\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100000000000111010000000000011101110011000001110111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \END_RETORNO|ALT_INV_DOUT\(2),
	datab => \DESVIO1|ALT_INV_Sel\(1),
	datac => \incrementaPC|ALT_INV_Add0~9_sumout\,
	datad => \DESVIO1|ALT_INV_Sel\(0),
	dataf => \ROM1|ALT_INV_memROM~12_combout\,
	combout => \MUXproxPC|saida_MUX[2]~2_combout\);

-- Location: FF_X2_Y20_N17
\PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \MUXproxPC|saida_MUX[2]~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(2));

-- Location: LABCELL_X2_Y20_N9
\ROM1|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~5_combout\ = ( \PC|DOUT[1]~DUPLICATE_q\ & ( (!\PC|DOUT\(0) & (!\PC|DOUT\(2) & !\PC|DOUT\(3))) # (\PC|DOUT\(0) & (\PC|DOUT\(2) & \PC|DOUT\(3))) ) ) # ( !\PC|DOUT[1]~DUPLICATE_q\ & ( !\PC|DOUT\(3) $ (((!\PC|DOUT\(0)) # (\PC|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000010101111010100001010111110100000000001011010000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	dataf => \PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \ROM1|memROM~5_combout\);

-- Location: LABCELL_X7_Y20_N57
\ROM1|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~6_combout\ = ( \ROM1|memROM~5_combout\ & ( (!\PC|DOUT\(8) & \ROM1|memROM~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT\(8),
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \ROM1|memROM~6_combout\);

-- Location: LABCELL_X2_Y20_N27
\ROM1|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~7_combout\ = ( \PC|DOUT[1]~DUPLICATE_q\ & ( (!\PC|DOUT[0]~DUPLICATE_q\ & ((!\PC|DOUT\(3)) # (!\PC|DOUT\(2)))) ) ) # ( !\PC|DOUT[1]~DUPLICATE_q\ & ( (!\PC|DOUT\(3) & ((\PC|DOUT[0]~DUPLICATE_q\))) # (\PC|DOUT\(3) & ((!\PC|DOUT[0]~DUPLICATE_q\) 
-- # (\PC|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111001111001100111100111111111100000000001111110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \ROM1|memROM~7_combout\);

-- Location: LABCELL_X7_Y20_N48
\ROM1|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~8_combout\ = ( !\PC|DOUT\(8) & ( (\ROM1|memROM~1_combout\ & \ROM1|memROM~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	datad => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \PC|ALT_INV_DOUT\(8),
	combout => \ROM1|memROM~8_combout\);

-- Location: LABCELL_X2_Y20_N54
\ROM1|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~0_combout\ = ( \PC|DOUT\(2) & ( (\PC|DOUT\(0) & \PC|DOUT[1]~DUPLICATE_q\) ) ) # ( !\PC|DOUT\(2) & ( (!\PC|DOUT\(3) & (!\PC|DOUT\(0) & !\PC|DOUT[1]~DUPLICATE_q\)) # (\PC|DOUT\(3) & (\PC|DOUT\(0) & \PC|DOUT[1]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000011110000000000001100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT\(0),
	datad => \PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	dataf => \PC|ALT_INV_DOUT\(2),
	combout => \ROM1|memROM~0_combout\);

-- Location: LABCELL_X7_Y20_N36
\ROM1|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~2_combout\ = ( !\PC|DOUT\(8) & ( (\ROM1|memROM~0_combout\ & \ROM1|memROM~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \PC|ALT_INV_DOUT\(8),
	combout => \ROM1|memROM~2_combout\);

-- Location: LABCELL_X7_Y20_N18
\DESVIO1|Sel[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DESVIO1|Sel[1]~0_combout\ = (\ROM1|memROM~4_combout\ & ((!\ROM1|memROM~6_combout\ & (!\ROM1|memROM~8_combout\ & \ROM1|memROM~2_combout\)) # (\ROM1|memROM~6_combout\ & (\ROM1|memROM~8_combout\ & !\ROM1|memROM~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000000000000010100000000000001010000000000000101000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~4_combout\,
	datab => \ROM1|ALT_INV_memROM~6_combout\,
	datac => \ROM1|ALT_INV_memROM~8_combout\,
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \DESVIO1|Sel[1]~0_combout\);

-- Location: LABCELL_X2_Y20_N42
\ROM1|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~3_combout\ = ( \PC|DOUT[1]~DUPLICATE_q\ & ( (!\PC|DOUT\(0) & !\PC|DOUT\(3)) ) ) # ( !\PC|DOUT[1]~DUPLICATE_q\ & ( (!\PC|DOUT\(0) & (!\PC|DOUT\(2) $ (\PC|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000110000110000000011000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT\(2),
	datac => \PC|ALT_INV_DOUT\(0),
	datad => \PC|ALT_INV_DOUT\(3),
	dataf => \PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \ROM1|memROM~3_combout\);

-- Location: MLABCELL_X4_Y20_N48
\DECODER1|Equal10~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER1|Equal10~6_combout\ = ( \ROM1|memROM~5_combout\ & ( \ROM1|memROM~1_combout\ & ( (!\ROM1|memROM~3_combout\ & (!\PC|DOUT[8]~DUPLICATE_q\ & (\ROM1|memROM~7_combout\ & !\ROM1|memROM~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~3_combout\,
	datab => \PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datac => \ROM1|ALT_INV_memROM~7_combout\,
	datad => \ROM1|ALT_INV_memROM~0_combout\,
	datae => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \DECODER1|Equal10~6_combout\);

-- Location: MLABCELL_X4_Y20_N18
\DECODER1|saida[9]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER1|saida[9]~3_combout\ = ( \ROM1|memROM~5_combout\ & ( \ROM1|memROM~1_combout\ & ( (((!\ROM1|memROM~0_combout\) # (\ROM1|memROM~7_combout\)) # (\PC|DOUT[8]~DUPLICATE_q\)) # (\ROM1|memROM~3_combout\) ) ) ) # ( !\ROM1|memROM~5_combout\ & ( 
-- \ROM1|memROM~1_combout\ ) ) # ( \ROM1|memROM~5_combout\ & ( !\ROM1|memROM~1_combout\ ) ) # ( !\ROM1|memROM~5_combout\ & ( !\ROM1|memROM~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~3_combout\,
	datab => \PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datac => \ROM1|ALT_INV_memROM~7_combout\,
	datad => \ROM1|ALT_INV_memROM~0_combout\,
	datae => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \DECODER1|saida[9]~3_combout\);

-- Location: LABCELL_X1_Y20_N57
\DESVIO1|comb~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DESVIO1|comb~2_combout\ = ( \DECODER1|saida[9]~3_combout\ & ( (\DECODER1|Equal10~5_combout\ & \DECODER1|Equal10~6_combout\) ) ) # ( !\DECODER1|saida[9]~3_combout\ & ( (!\DESVIO1|Sel[1]~0_combout\ & !\DECODER1|Equal10~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER1|ALT_INV_Equal10~5_combout\,
	datac => \DESVIO1|ALT_INV_Sel[1]~0_combout\,
	datad => \DECODER1|ALT_INV_Equal10~6_combout\,
	dataf => \DECODER1|ALT_INV_saida[9]~3_combout\,
	combout => \DESVIO1|comb~2_combout\);

-- Location: LABCELL_X1_Y20_N42
\DESVIO1|comb~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DESVIO1|comb~1_combout\ = ( \DECODER1|saida[9]~3_combout\ & ( (!\DECODER1|Equal10~5_combout\) # (!\DECODER1|Equal10~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111100001111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DECODER1|ALT_INV_Equal10~5_combout\,
	datad => \DECODER1|ALT_INV_Equal10~6_combout\,
	dataf => \DECODER1|ALT_INV_saida[9]~3_combout\,
	combout => \DESVIO1|comb~1_combout\);

-- Location: LABCELL_X1_Y20_N30
\DESVIO1|Sel[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \DESVIO1|Sel\(1) = ( \DESVIO1|Sel\(1) & ( !\DESVIO1|comb~1_combout\ ) ) # ( !\DESVIO1|Sel\(1) & ( (\DESVIO1|comb~2_combout\ & !\DESVIO1|comb~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \DESVIO1|ALT_INV_comb~2_combout\,
	datac => \DESVIO1|ALT_INV_comb~1_combout\,
	dataf => \DESVIO1|ALT_INV_Sel\(1),
	combout => \DESVIO1|Sel\(1));

-- Location: LABCELL_X2_Y19_N42
\incrementaPC|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~17_sumout\ = SUM(( \PC|DOUT[4]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~14\ ))
-- \incrementaPC|Add0~18\ = CARRY(( \PC|DOUT[4]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	cin => \incrementaPC|Add0~14\,
	sumout => \incrementaPC|Add0~17_sumout\,
	cout => \incrementaPC|Add0~18\);

-- Location: FF_X2_Y19_N43
\END_RETORNO|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~17_sumout\,
	ena => \DECODER1|Equal10~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \END_RETORNO|DOUT\(4));

-- Location: LABCELL_X1_Y20_N18
\MUXproxPC|saida_MUX[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXproxPC|saida_MUX[4]~4_combout\ = ( \incrementaPC|Add0~17_sumout\ & ( (!\DESVIO1|Sel\(0) & ((!\DESVIO1|Sel\(1)) # (\END_RETORNO|DOUT\(4)))) ) ) # ( !\incrementaPC|Add0~17_sumout\ & ( (!\DESVIO1|Sel\(0) & (\DESVIO1|Sel\(1) & \END_RETORNO|DOUT\(4))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001010001010100010101000101010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DESVIO1|ALT_INV_Sel\(0),
	datab => \DESVIO1|ALT_INV_Sel\(1),
	datac => \END_RETORNO|ALT_INV_DOUT\(4),
	dataf => \incrementaPC|ALT_INV_Add0~17_sumout\,
	combout => \MUXproxPC|saida_MUX[4]~4_combout\);

-- Location: FF_X1_Y20_N19
\PC|DOUT[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MUXproxPC|saida_MUX[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[4]~DUPLICATE_q\);

-- Location: LABCELL_X2_Y19_N45
\incrementaPC|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~21_sumout\ = SUM(( \PC|DOUT[5]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~18\ ))
-- \incrementaPC|Add0~22\ = CARRY(( \PC|DOUT[5]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	cin => \incrementaPC|Add0~18\,
	sumout => \incrementaPC|Add0~21_sumout\,
	cout => \incrementaPC|Add0~22\);

-- Location: FF_X2_Y19_N47
\END_RETORNO|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~21_sumout\,
	ena => \DECODER1|Equal10~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \END_RETORNO|DOUT\(5));

-- Location: LABCELL_X1_Y20_N27
\MUXproxPC|saida_MUX[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXproxPC|saida_MUX[5]~5_combout\ = ( \incrementaPC|Add0~21_sumout\ & ( (!\DESVIO1|Sel\(0) & ((!\DESVIO1|Sel\(1)) # (\END_RETORNO|DOUT\(5)))) ) ) # ( !\incrementaPC|Add0~21_sumout\ & ( (\END_RETORNO|DOUT\(5) & (\DESVIO1|Sel\(1) & !\DESVIO1|Sel\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000011010000110100001101000011010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \END_RETORNO|ALT_INV_DOUT\(5),
	datab => \DESVIO1|ALT_INV_Sel\(1),
	datac => \DESVIO1|ALT_INV_Sel\(0),
	dataf => \incrementaPC|ALT_INV_Add0~21_sumout\,
	combout => \MUXproxPC|saida_MUX[5]~5_combout\);

-- Location: FF_X1_Y20_N41
\PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \MUXproxPC|saida_MUX[5]~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(5));

-- Location: FF_X1_Y20_N53
\PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MUXproxPC|saida_MUX[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(6));

-- Location: FF_X1_Y20_N47
\PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MUXproxPC|saida_MUX[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(7));

-- Location: FF_X1_Y20_N20
\PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MUXproxPC|saida_MUX[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(4));

-- Location: LABCELL_X1_Y20_N54
\ROM1|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~1_combout\ = ( !\PC|DOUT\(4) & ( (!\PC|DOUT\(5) & (!\PC|DOUT\(6) & !\PC|DOUT\(7))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT\(5),
	datac => \PC|ALT_INV_DOUT\(6),
	datad => \PC|ALT_INV_DOUT\(7),
	dataf => \PC|ALT_INV_DOUT\(4),
	combout => \ROM1|memROM~1_combout\);

-- Location: LABCELL_X1_Y20_N48
\ROM1|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~4_combout\ = ( !\PC|DOUT\(8) & ( (\ROM1|memROM~1_combout\ & \ROM1|memROM~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	dataf => \PC|ALT_INV_DOUT\(8),
	combout => \ROM1|memROM~4_combout\);

-- Location: LABCELL_X2_Y20_N48
\DECODER1|Equal10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER1|Equal10~1_combout\ = ( \ROM1|memROM~7_combout\ & ( !\ROM1|memROM~5_combout\ & ( (!\PC|DOUT[8]~DUPLICATE_q\ & (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & !\ROM1|memROM~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	datae => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \DECODER1|Equal10~1_combout\);

-- Location: LABCELL_X2_Y19_N0
\ROM1|memROM~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~17_combout\ = ( \ROM1|memROM~1_combout\ & ( \PC|DOUT\(2) & ( (\PC|DOUT[1]~DUPLICATE_q\ & (!\PC|DOUT\(3) & !\PC|DOUT[8]~DUPLICATE_q\)) ) ) ) # ( \ROM1|memROM~1_combout\ & ( !\PC|DOUT\(2) & ( (\PC|DOUT[1]~DUPLICATE_q\ & (\PC|DOUT\(3) & 
-- (!\PC|DOUT[8]~DUPLICATE_q\ & \PC|DOUT[0]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datae => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \PC|ALT_INV_DOUT\(2),
	combout => \ROM1|memROM~17_combout\);

-- Location: LABCELL_X2_Y20_N24
\ROM1|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~9_combout\ = ( \PC|DOUT\(2) & ( (!\PC|DOUT\(1) & ((\PC|DOUT\(0)) # (\PC|DOUT\(3)))) ) ) # ( !\PC|DOUT\(2) & ( (!\PC|DOUT\(3) & (!\PC|DOUT\(0) $ (!\PC|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011000000000011001100000000111111000000000011111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT\(0),
	datad => \PC|ALT_INV_DOUT\(1),
	dataf => \PC|ALT_INV_DOUT\(2),
	combout => \ROM1|memROM~9_combout\);

-- Location: LABCELL_X1_Y20_N15
\ROM1|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~10_combout\ = ( \ROM1|memROM~9_combout\ & ( (!\PC|DOUT\(8) & \ROM1|memROM~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT\(8),
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \ROM1|memROM~10_combout\);

-- Location: LABCELL_X2_Y19_N6
\DECODER1|Equal10~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER1|Equal10~2_combout\ = ( \ROM1|memROM~7_combout\ & ( !\ROM1|memROM~5_combout\ & ( (!\PC|DOUT[8]~DUPLICATE_q\ & (\ROM1|memROM~1_combout\ & (\ROM1|memROM~3_combout\ & !\ROM1|memROM~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	datad => \ROM1|ALT_INV_memROM~0_combout\,
	datae => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \DECODER1|Equal10~2_combout\);

-- Location: LABCELL_X1_Y20_N36
\RAM1|ram~161\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~161_combout\ = ( !\ROM1|memROM~14_combout\ & ( \DECODER1|Equal10~2_combout\ & ( (\ROM1|memROM~17_combout\ & (!\ROM1|memROM~16_combout\ & (!\ROM1|memROM~12_combout\ & !\ROM1|memROM~10_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~17_combout\,
	datab => \ROM1|ALT_INV_memROM~16_combout\,
	datac => \ROM1|ALT_INV_memROM~12_combout\,
	datad => \ROM1|ALT_INV_memROM~10_combout\,
	datae => \ROM1|ALT_INV_memROM~14_combout\,
	dataf => \DECODER1|ALT_INV_Equal10~2_combout\,
	combout => \RAM1|ram~161_combout\);

-- Location: FF_X4_Y20_N5
\RAM1|ram~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM1|ram~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~22_q\);

-- Location: MLABCELL_X4_Y20_N3
\RAM1|ram~155\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~155_combout\ = ( \RAM1|ram~22_q\ & ( !\ROM1|memROM~10_combout\ & ( !\ROM1|memROM~16_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~16_combout\,
	datae => \RAM1|ALT_INV_ram~22_q\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM1|ram~155_combout\);

-- Location: LABCELL_X5_Y20_N27
\RAM1|ram~156\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~156_combout\ = ( \RAM1|ram~155_combout\ & ( (!\ROM1|memROM~14_combout\ & !\ROM1|memROM~12_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~14_combout\,
	datad => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \RAM1|ALT_INV_ram~155_combout\,
	combout => \RAM1|ram~156_combout\);

-- Location: MLABCELL_X4_Y20_N36
\ROM1|memROM~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~21_combout\ = ( \ROM1|memROM~13_combout\ & ( \ROM1|memROM~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ROM1|ALT_INV_memROM~13_combout\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \ROM1|memROM~21_combout\);

-- Location: FF_X2_Y20_N59
\RAM1|ram~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~20_q\);

-- Location: LABCELL_X2_Y20_N57
\RAM1|ram~151\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~151_combout\ = ( !\ROM1|memROM~16_combout\ & ( (!\ROM1|memROM~10_combout\ & \RAM1|ram~20_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \RAM1|ALT_INV_ram~20_q\,
	dataf => \ROM1|ALT_INV_memROM~16_combout\,
	combout => \RAM1|ram~151_combout\);

-- Location: LABCELL_X2_Y20_N6
\RAM1|ram~152\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~152_combout\ = ( \RAM1|ram~151_combout\ & ( (!\ROM1|memROM~14_combout\ & !\ROM1|memROM~12_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~14_combout\,
	datad => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \RAM1|ALT_INV_ram~151_combout\,
	combout => \RAM1|ram~152_combout\);

-- Location: LABCELL_X2_Y20_N15
\ROM1|memROM~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~20_combout\ = ( \ROM1|memROM~1_combout\ & ( \ROM1|memROM~11_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~11_combout\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \ROM1|memROM~20_combout\);

-- Location: FF_X2_Y20_N20
\RAM1|ram~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~19_q\);

-- Location: LABCELL_X2_Y20_N18
\RAM1|ram~149\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~149_combout\ = ( !\ROM1|memROM~14_combout\ & ( (!\ROM1|memROM~12_combout\ & \RAM1|ram~19_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~12_combout\,
	datad => \RAM1|ALT_INV_ram~19_q\,
	dataf => \ROM1|ALT_INV_memROM~14_combout\,
	combout => \RAM1|ram~149_combout\);

-- Location: LABCELL_X2_Y20_N3
\RAM1|ram~150\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~150_combout\ = ( \RAM1|ram~149_combout\ & ( (!\ROM1|memROM~16_combout\ & !\ROM1|memROM~10_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~16_combout\,
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	dataf => \RAM1|ALT_INV_ram~149_combout\,
	combout => \RAM1|ram~150_combout\);

-- Location: LABCELL_X2_Y20_N36
\ROM1|memROM~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~19_combout\ = ( \ROM1|memROM~15_combout\ & ( \ROM1|memROM~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \ROM1|memROM~19_combout\);

-- Location: FF_X1_Y20_N29
\RAM1|ram~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM1|ram~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~18_q\);

-- Location: LABCELL_X1_Y20_N0
\RAM1|ram~147\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~147_combout\ = ( !\ROM1|memROM~10_combout\ & ( (!\ROM1|memROM~16_combout\ & \RAM1|ram~18_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~16_combout\,
	datad => \RAM1|ALT_INV_ram~18_q\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM1|ram~147_combout\);

-- Location: LABCELL_X5_Y20_N3
\RAM1|ram~148\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~148_combout\ = ( \RAM1|ram~147_combout\ & ( (!\ROM1|memROM~12_combout\ & !\ROM1|memROM~14_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~12_combout\,
	datad => \ROM1|ALT_INV_memROM~14_combout\,
	dataf => \RAM1|ALT_INV_ram~147_combout\,
	combout => \RAM1|ram~148_combout\);

-- Location: LABCELL_X2_Y20_N21
\ROM1|memROM~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~18_combout\ = ( \ROM1|memROM~9_combout\ & ( \ROM1|memROM~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \ROM1|memROM~18_combout\);

-- Location: FF_X1_Y20_N35
\RAM1|ram~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~17_q\);

-- Location: LABCELL_X1_Y20_N33
\RAM1|ram~145\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~145_combout\ = ( !\ROM1|memROM~12_combout\ & ( (!\ROM1|memROM~14_combout\ & \RAM1|ram~17_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~14_combout\,
	datad => \RAM1|ALT_INV_ram~17_q\,
	dataf => \ROM1|ALT_INV_memROM~12_combout\,
	combout => \RAM1|ram~145_combout\);

-- Location: LABCELL_X1_Y20_N6
\RAM1|ram~146\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~146_combout\ = ( \RAM1|ram~145_combout\ & ( (!\ROM1|memROM~10_combout\ & !\ROM1|memROM~16_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~10_combout\,
	datac => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \RAM1|ALT_INV_ram~145_combout\,
	combout => \RAM1|ram~146_combout\);

-- Location: LABCELL_X6_Y20_N30
\ULA1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~1_sumout\ = SUM(( \REGA|DOUT\(0) ) + ( (!\DECODER1|Equal10~1_combout\ & (((\RAM1|ram~146_combout\)))) # (\DECODER1|Equal10~1_combout\ & (!\PC|DOUT[8]~DUPLICATE_q\ & (\ROM1|memROM~18_combout\))) ) + ( !VCC ))
-- \ULA1|Add0~2\ = CARRY(( \REGA|DOUT\(0) ) + ( (!\DECODER1|Equal10~1_combout\ & (((\RAM1|ram~146_combout\)))) # (\DECODER1|Equal10~1_combout\ & (!\PC|DOUT[8]~DUPLICATE_q\ & (\ROM1|memROM~18_combout\))) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110110101000100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER1|ALT_INV_Equal10~1_combout\,
	datab => \PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datac => \ROM1|ALT_INV_memROM~18_combout\,
	datad => \REGA|ALT_INV_DOUT\(0),
	dataf => \RAM1|ALT_INV_ram~146_combout\,
	cin => GND,
	sumout => \ULA1|Add0~1_sumout\,
	cout => \ULA1|Add0~2\);

-- Location: LABCELL_X7_Y20_N27
\DECODER1|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER1|saida~0_combout\ = ( \ROM1|memROM~8_combout\ & ( (!\ROM1|memROM~4_combout\ & (!\ROM1|memROM~6_combout\ & !\ROM1|memROM~2_combout\)) ) ) # ( !\ROM1|memROM~8_combout\ & ( (\ROM1|memROM~4_combout\ & (!\ROM1|memROM~6_combout\ & 
-- !\ROM1|memROM~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100000000000010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \DECODER1|saida~0_combout\);

-- Location: LABCELL_X5_Y20_N30
\ULA1|Add1~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~34_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \ULA1|Add1~34_cout\);

-- Location: LABCELL_X5_Y20_N33
\ULA1|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~1_sumout\ = SUM(( (!\DECODER1|Equal10~1_combout\ & (((!\RAM1|ram~146_combout\)))) # (\DECODER1|Equal10~1_combout\ & (((!\ROM1|memROM~18_combout\)) # (\PC|DOUT[8]~DUPLICATE_q\))) ) + ( \REGA|DOUT\(0) ) + ( \ULA1|Add1~34_cout\ ))
-- \ULA1|Add1~2\ = CARRY(( (!\DECODER1|Equal10~1_combout\ & (((!\RAM1|ram~146_combout\)))) # (\DECODER1|Equal10~1_combout\ & (((!\ROM1|memROM~18_combout\)) # (\PC|DOUT[8]~DUPLICATE_q\))) ) + ( \REGA|DOUT\(0) ) + ( \ULA1|Add1~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111110100001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datab => \ROM1|ALT_INV_memROM~18_combout\,
	datac => \DECODER1|ALT_INV_Equal10~1_combout\,
	datad => \RAM1|ALT_INV_ram~146_combout\,
	dataf => \REGA|ALT_INV_DOUT\(0),
	cin => \ULA1|Add1~34_cout\,
	sumout => \ULA1|Add1~1_sumout\,
	cout => \ULA1|Add1~2\);

-- Location: LABCELL_X5_Y20_N24
\MUX1|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[0]~0_combout\ = ( \DECODER1|Equal10~1_combout\ & ( \ROM1|memROM~10_combout\ ) ) # ( !\DECODER1|Equal10~1_combout\ & ( \RAM1|ram~146_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \RAM1|ALT_INV_ram~146_combout\,
	dataf => \DECODER1|ALT_INV_Equal10~1_combout\,
	combout => \MUX1|saida_MUX[0]~0_combout\);

-- Location: LABCELL_X6_Y20_N9
\ULA1|saida[0]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[0]~8_combout\ = ( \MUX1|saida_MUX[0]~0_combout\ & ( (\ULA1|Add1~1_sumout\) # (\DECODER1|saida~0_combout\) ) ) # ( !\MUX1|saida_MUX[0]~0_combout\ & ( (!\DECODER1|saida~0_combout\ & \ULA1|Add1~1_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DECODER1|ALT_INV_saida~0_combout\,
	datad => \ULA1|ALT_INV_Add1~1_sumout\,
	dataf => \MUX1|ALT_INV_saida_MUX[0]~0_combout\,
	combout => \ULA1|saida[0]~8_combout\);

-- Location: LABCELL_X7_Y20_N21
\DECODER1|Equal10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER1|Equal10~0_combout\ = ( !\ROM1|memROM~8_combout\ & ( (!\ROM1|memROM~4_combout\ & (\ROM1|memROM~6_combout\ & !\ROM1|memROM~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \DECODER1|Equal10~0_combout\);

-- Location: LABCELL_X7_Y20_N24
\DECODER1|saida~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER1|saida~2_combout\ = ( \ROM1|memROM~8_combout\ & ( (!\ROM1|memROM~4_combout\ & (!\ROM1|memROM~6_combout\ & !\ROM1|memROM~2_combout\)) ) ) # ( !\ROM1|memROM~8_combout\ & ( (!\ROM1|memROM~2_combout\ & ((\ROM1|memROM~6_combout\) # 
-- (\ROM1|memROM~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000001110000011100000111000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~4_combout\,
	datab => \ROM1|ALT_INV_memROM~6_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \DECODER1|saida~2_combout\);

-- Location: FF_X6_Y20_N32
\REGA|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA1|Add0~1_sumout\,
	asdata => \ULA1|saida[0]~8_combout\,
	sload => \DECODER1|ALT_INV_Equal10~0_combout\,
	ena => \DECODER1|saida~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(0));

-- Location: LABCELL_X6_Y20_N33
\ULA1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~5_sumout\ = SUM(( \REGA|DOUT\(1) ) + ( (!\DECODER1|Equal10~1_combout\ & (((\RAM1|ram~148_combout\)))) # (\DECODER1|Equal10~1_combout\ & (!\PC|DOUT[8]~DUPLICATE_q\ & (\ROM1|memROM~19_combout\))) ) + ( \ULA1|Add0~2\ ))
-- \ULA1|Add0~6\ = CARRY(( \REGA|DOUT\(1) ) + ( (!\DECODER1|Equal10~1_combout\ & (((\RAM1|ram~148_combout\)))) # (\DECODER1|Equal10~1_combout\ & (!\PC|DOUT[8]~DUPLICATE_q\ & (\ROM1|memROM~19_combout\))) ) + ( \ULA1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110110101000100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER1|ALT_INV_Equal10~1_combout\,
	datab => \PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datac => \ROM1|ALT_INV_memROM~19_combout\,
	datad => \REGA|ALT_INV_DOUT\(1),
	dataf => \RAM1|ALT_INV_ram~148_combout\,
	cin => \ULA1|Add0~2\,
	sumout => \ULA1|Add0~5_sumout\,
	cout => \ULA1|Add0~6\);

-- Location: LABCELL_X6_Y20_N27
\MUX1|saida_MUX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[1]~1_combout\ = ( \RAM1|ram~148_combout\ & ( (!\DECODER1|Equal10~1_combout\) # (\ROM1|memROM~16_combout\) ) ) # ( !\RAM1|ram~148_combout\ & ( (\DECODER1|Equal10~1_combout\ & \ROM1|memROM~16_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER1|ALT_INV_Equal10~1_combout\,
	datac => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \RAM1|ALT_INV_ram~148_combout\,
	combout => \MUX1|saida_MUX[1]~1_combout\);

-- Location: LABCELL_X5_Y20_N36
\ULA1|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~5_sumout\ = SUM(( (!\DECODER1|Equal10~1_combout\ & (((!\RAM1|ram~148_combout\)))) # (\DECODER1|Equal10~1_combout\ & (((!\ROM1|memROM~19_combout\)) # (\PC|DOUT[8]~DUPLICATE_q\))) ) + ( \REGA|DOUT\(1) ) + ( \ULA1|Add1~2\ ))
-- \ULA1|Add1~6\ = CARRY(( (!\DECODER1|Equal10~1_combout\ & (((!\RAM1|ram~148_combout\)))) # (\DECODER1|Equal10~1_combout\ & (((!\ROM1|memROM~19_combout\)) # (\PC|DOUT[8]~DUPLICATE_q\))) ) + ( \REGA|DOUT\(1) ) + ( \ULA1|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111110100110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datab => \DECODER1|ALT_INV_Equal10~1_combout\,
	datac => \ROM1|ALT_INV_memROM~19_combout\,
	datad => \RAM1|ALT_INV_ram~148_combout\,
	dataf => \REGA|ALT_INV_DOUT\(1),
	cin => \ULA1|Add1~2\,
	sumout => \ULA1|Add1~5_sumout\,
	cout => \ULA1|Add1~6\);

-- Location: LABCELL_X6_Y20_N57
\ULA1|saida[1]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[1]~9_combout\ = ( \ULA1|Add1~5_sumout\ & ( (!\DECODER1|saida~0_combout\) # (\MUX1|saida_MUX[1]~1_combout\) ) ) # ( !\ULA1|Add1~5_sumout\ & ( (\DECODER1|saida~0_combout\ & \MUX1|saida_MUX[1]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DECODER1|ALT_INV_saida~0_combout\,
	datad => \MUX1|ALT_INV_saida_MUX[1]~1_combout\,
	dataf => \ULA1|ALT_INV_Add1~5_sumout\,
	combout => \ULA1|saida[1]~9_combout\);

-- Location: FF_X6_Y20_N35
\REGA|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA1|Add0~5_sumout\,
	asdata => \ULA1|saida[1]~9_combout\,
	sload => \DECODER1|ALT_INV_Equal10~0_combout\,
	ena => \DECODER1|saida~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(1));

-- Location: LABCELL_X6_Y20_N36
\ULA1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~9_sumout\ = SUM(( \REGA|DOUT\(2) ) + ( (!\DECODER1|Equal10~1_combout\ & (((\RAM1|ram~150_combout\)))) # (\DECODER1|Equal10~1_combout\ & (!\PC|DOUT[8]~DUPLICATE_q\ & (\ROM1|memROM~20_combout\))) ) + ( \ULA1|Add0~6\ ))
-- \ULA1|Add0~10\ = CARRY(( \REGA|DOUT\(2) ) + ( (!\DECODER1|Equal10~1_combout\ & (((\RAM1|ram~150_combout\)))) # (\DECODER1|Equal10~1_combout\ & (!\PC|DOUT[8]~DUPLICATE_q\ & (\ROM1|memROM~20_combout\))) ) + ( \ULA1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110110101000100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER1|ALT_INV_Equal10~1_combout\,
	datab => \PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datac => \ROM1|ALT_INV_memROM~20_combout\,
	datad => \REGA|ALT_INV_DOUT\(2),
	dataf => \RAM1|ALT_INV_ram~150_combout\,
	cin => \ULA1|Add0~6\,
	sumout => \ULA1|Add0~9_sumout\,
	cout => \ULA1|Add0~10\);

-- Location: LABCELL_X7_Y20_N45
\MUX1|saida_MUX[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[2]~2_combout\ = ( \RAM1|ram~150_combout\ & ( (!\DECODER1|Equal10~1_combout\) # (\ROM1|memROM~12_combout\) ) ) # ( !\RAM1|ram~150_combout\ & ( (\DECODER1|Equal10~1_combout\ & \ROM1|memROM~12_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DECODER1|ALT_INV_Equal10~1_combout\,
	datad => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \RAM1|ALT_INV_ram~150_combout\,
	combout => \MUX1|saida_MUX[2]~2_combout\);

-- Location: LABCELL_X5_Y20_N39
\ULA1|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~9_sumout\ = SUM(( (!\DECODER1|Equal10~1_combout\ & (((!\RAM1|ram~150_combout\)))) # (\DECODER1|Equal10~1_combout\ & (((!\ROM1|memROM~20_combout\)) # (\PC|DOUT[8]~DUPLICATE_q\))) ) + ( \REGA|DOUT\(2) ) + ( \ULA1|Add1~6\ ))
-- \ULA1|Add1~10\ = CARRY(( (!\DECODER1|Equal10~1_combout\ & (((!\RAM1|ram~150_combout\)))) # (\DECODER1|Equal10~1_combout\ & (((!\ROM1|memROM~20_combout\)) # (\PC|DOUT[8]~DUPLICATE_q\))) ) + ( \REGA|DOUT\(2) ) + ( \ULA1|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111110100110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datab => \DECODER1|ALT_INV_Equal10~1_combout\,
	datac => \ROM1|ALT_INV_memROM~20_combout\,
	datad => \RAM1|ALT_INV_ram~150_combout\,
	dataf => \REGA|ALT_INV_DOUT\(2),
	cin => \ULA1|Add1~6\,
	sumout => \ULA1|Add1~9_sumout\,
	cout => \ULA1|Add1~10\);

-- Location: LABCELL_X6_Y20_N21
\ULA1|saida[2]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[2]~10_combout\ = ( \ULA1|Add1~9_sumout\ & ( (!\DECODER1|saida~0_combout\) # (\MUX1|saida_MUX[2]~2_combout\) ) ) # ( !\ULA1|Add1~9_sumout\ & ( (\MUX1|saida_MUX[2]~2_combout\ & \DECODER1|saida~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX1|ALT_INV_saida_MUX[2]~2_combout\,
	datac => \DECODER1|ALT_INV_saida~0_combout\,
	dataf => \ULA1|ALT_INV_Add1~9_sumout\,
	combout => \ULA1|saida[2]~10_combout\);

-- Location: FF_X6_Y20_N38
\REGA|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA1|Add0~9_sumout\,
	asdata => \ULA1|saida[2]~10_combout\,
	sload => \DECODER1|ALT_INV_Equal10~0_combout\,
	ena => \DECODER1|saida~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(2));

-- Location: LABCELL_X6_Y20_N39
\ULA1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~13_sumout\ = SUM(( \REGA|DOUT\(3) ) + ( (!\DECODER1|Equal10~1_combout\ & (((\RAM1|ram~152_combout\)))) # (\DECODER1|Equal10~1_combout\ & (!\PC|DOUT[8]~DUPLICATE_q\ & (\ROM1|memROM~21_combout\))) ) + ( \ULA1|Add0~10\ ))
-- \ULA1|Add0~14\ = CARRY(( \REGA|DOUT\(3) ) + ( (!\DECODER1|Equal10~1_combout\ & (((\RAM1|ram~152_combout\)))) # (\DECODER1|Equal10~1_combout\ & (!\PC|DOUT[8]~DUPLICATE_q\ & (\ROM1|memROM~21_combout\))) ) + ( \ULA1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110110101000100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER1|ALT_INV_Equal10~1_combout\,
	datab => \PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datac => \ROM1|ALT_INV_memROM~21_combout\,
	datad => \REGA|ALT_INV_DOUT\(3),
	dataf => \RAM1|ALT_INV_ram~152_combout\,
	cin => \ULA1|Add0~10\,
	sumout => \ULA1|Add0~13_sumout\,
	cout => \ULA1|Add0~14\);

-- Location: LABCELL_X5_Y20_N9
\MUX1|saida_MUX[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[3]~3_combout\ = (!\DECODER1|Equal10~1_combout\ & ((\RAM1|ram~152_combout\))) # (\DECODER1|Equal10~1_combout\ & (\ROM1|memROM~14_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100000101111101010000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~14_combout\,
	datac => \DECODER1|ALT_INV_Equal10~1_combout\,
	datad => \RAM1|ALT_INV_ram~152_combout\,
	combout => \MUX1|saida_MUX[3]~3_combout\);

-- Location: LABCELL_X5_Y20_N42
\ULA1|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~13_sumout\ = SUM(( (!\DECODER1|Equal10~1_combout\ & (((!\RAM1|ram~152_combout\)))) # (\DECODER1|Equal10~1_combout\ & (((!\ROM1|memROM~21_combout\)) # (\PC|DOUT[8]~DUPLICATE_q\))) ) + ( \REGA|DOUT\(3) ) + ( \ULA1|Add1~10\ ))
-- \ULA1|Add1~14\ = CARRY(( (!\DECODER1|Equal10~1_combout\ & (((!\RAM1|ram~152_combout\)))) # (\DECODER1|Equal10~1_combout\ & (((!\ROM1|memROM~21_combout\)) # (\PC|DOUT[8]~DUPLICATE_q\))) ) + ( \REGA|DOUT\(3) ) + ( \ULA1|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111110100110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datab => \DECODER1|ALT_INV_Equal10~1_combout\,
	datac => \ROM1|ALT_INV_memROM~21_combout\,
	datad => \RAM1|ALT_INV_ram~152_combout\,
	dataf => \REGA|ALT_INV_DOUT\(3),
	cin => \ULA1|Add1~10\,
	sumout => \ULA1|Add1~13_sumout\,
	cout => \ULA1|Add1~14\);

-- Location: LABCELL_X6_Y20_N54
\ULA1|saida[3]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[3]~11_combout\ = ( \ULA1|Add1~13_sumout\ & ( (!\DECODER1|saida~0_combout\) # (\MUX1|saida_MUX[3]~3_combout\) ) ) # ( !\ULA1|Add1~13_sumout\ & ( (\MUX1|saida_MUX[3]~3_combout\ & \DECODER1|saida~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MUX1|ALT_INV_saida_MUX[3]~3_combout\,
	datad => \DECODER1|ALT_INV_saida~0_combout\,
	dataf => \ULA1|ALT_INV_Add1~13_sumout\,
	combout => \ULA1|saida[3]~11_combout\);

-- Location: FF_X6_Y20_N41
\REGA|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA1|Add0~13_sumout\,
	asdata => \ULA1|saida[3]~11_combout\,
	sload => \DECODER1|ALT_INV_Equal10~0_combout\,
	ena => \DECODER1|saida~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(3));

-- Location: LABCELL_X6_Y20_N42
\ULA1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~17_sumout\ = SUM(( \REGA|DOUT\(4) ) + ( (!\DECODER1|Equal10~1_combout\ & \RAM1|ram~154_combout\) ) + ( \ULA1|Add0~14\ ))
-- \ULA1|Add0~18\ = CARRY(( \REGA|DOUT\(4) ) + ( (!\DECODER1|Equal10~1_combout\ & \RAM1|ram~154_combout\) ) + ( \ULA1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101011111010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER1|ALT_INV_Equal10~1_combout\,
	datac => \RAM1|ALT_INV_ram~154_combout\,
	datad => \REGA|ALT_INV_DOUT\(4),
	cin => \ULA1|Add0~14\,
	sumout => \ULA1|Add0~17_sumout\,
	cout => \ULA1|Add0~18\);

-- Location: LABCELL_X7_Y20_N33
\MUX1|saida_MUX[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[4]~4_combout\ = ( \RAM1|ram~154_combout\ & ( !\DECODER1|Equal10~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DECODER1|ALT_INV_Equal10~1_combout\,
	dataf => \RAM1|ALT_INV_ram~154_combout\,
	combout => \MUX1|saida_MUX[4]~4_combout\);

-- Location: LABCELL_X5_Y20_N45
\ULA1|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~17_sumout\ = SUM(( (!\RAM1|ram~154_combout\) # (\DECODER1|Equal10~1_combout\) ) + ( \REGA|DOUT\(4) ) + ( \ULA1|Add1~14\ ))
-- \ULA1|Add1~18\ = CARRY(( (!\RAM1|ram~154_combout\) # (\DECODER1|Equal10~1_combout\) ) + ( \REGA|DOUT\(4) ) + ( \ULA1|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \DECODER1|ALT_INV_Equal10~1_combout\,
	datac => \REGA|ALT_INV_DOUT\(4),
	datad => \RAM1|ALT_INV_ram~154_combout\,
	cin => \ULA1|Add1~14\,
	sumout => \ULA1|Add1~17_sumout\,
	cout => \ULA1|Add1~18\);

-- Location: LABCELL_X6_Y20_N12
\ULA1|saida[4]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[4]~12_combout\ = ( \ULA1|Add1~17_sumout\ & ( (!\DECODER1|saida~0_combout\) # (\MUX1|saida_MUX[4]~4_combout\) ) ) # ( !\ULA1|Add1~17_sumout\ & ( (\MUX1|saida_MUX[4]~4_combout\ & \DECODER1|saida~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MUX1|ALT_INV_saida_MUX[4]~4_combout\,
	datad => \DECODER1|ALT_INV_saida~0_combout\,
	dataf => \ULA1|ALT_INV_Add1~17_sumout\,
	combout => \ULA1|saida[4]~12_combout\);

-- Location: FF_X6_Y20_N44
\REGA|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA1|Add0~17_sumout\,
	asdata => \ULA1|saida[4]~12_combout\,
	sload => \DECODER1|ALT_INV_Equal10~0_combout\,
	ena => \DECODER1|saida~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(4));

-- Location: FF_X5_Y20_N22
\RAM1|ram~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~21_q\);

-- Location: LABCELL_X6_Y20_N18
\RAM1|ram~153\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~153_combout\ = ( !\ROM1|memROM~12_combout\ & ( (\RAM1|ram~21_q\ & !\ROM1|memROM~14_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_ram~21_q\,
	datad => \ROM1|ALT_INV_memROM~14_combout\,
	dataf => \ROM1|ALT_INV_memROM~12_combout\,
	combout => \RAM1|ram~153_combout\);

-- Location: LABCELL_X6_Y20_N0
\RAM1|ram~154\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~154_combout\ = ( \RAM1|ram~153_combout\ & ( (!\ROM1|memROM~10_combout\ & !\ROM1|memROM~16_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \RAM1|ALT_INV_ram~153_combout\,
	combout => \RAM1|ram~154_combout\);

-- Location: LABCELL_X6_Y20_N45
\ULA1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~21_sumout\ = SUM(( \REGA|DOUT\(5) ) + ( (!\DECODER1|Equal10~1_combout\ & \RAM1|ram~156_combout\) ) + ( \ULA1|Add0~18\ ))
-- \ULA1|Add0~22\ = CARRY(( \REGA|DOUT\(5) ) + ( (!\DECODER1|Equal10~1_combout\ & \RAM1|ram~156_combout\) ) + ( \ULA1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101011111010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER1|ALT_INV_Equal10~1_combout\,
	datac => \RAM1|ALT_INV_ram~156_combout\,
	datad => \REGA|ALT_INV_DOUT\(5),
	cin => \ULA1|Add0~18\,
	sumout => \ULA1|Add0~21_sumout\,
	cout => \ULA1|Add0~22\);

-- Location: LABCELL_X6_Y20_N3
\MUX1|saida_MUX[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[5]~5_combout\ = ( !\DECODER1|Equal10~1_combout\ & ( \RAM1|ram~156_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM1|ALT_INV_ram~156_combout\,
	dataf => \DECODER1|ALT_INV_Equal10~1_combout\,
	combout => \MUX1|saida_MUX[5]~5_combout\);

-- Location: LABCELL_X6_Y20_N24
\ULA1|saida[5]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[5]~13_combout\ = ( \ULA1|Add1~21_sumout\ & ( (!\DECODER1|saida~0_combout\) # (\MUX1|saida_MUX[5]~5_combout\) ) ) # ( !\ULA1|Add1~21_sumout\ & ( (\MUX1|saida_MUX[5]~5_combout\ & \DECODER1|saida~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MUX1|ALT_INV_saida_MUX[5]~5_combout\,
	datad => \DECODER1|ALT_INV_saida~0_combout\,
	dataf => \ULA1|ALT_INV_Add1~21_sumout\,
	combout => \ULA1|saida[5]~13_combout\);

-- Location: FF_X6_Y20_N47
\REGA|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA1|Add0~21_sumout\,
	asdata => \ULA1|saida[5]~13_combout\,
	sload => \DECODER1|ALT_INV_Equal10~0_combout\,
	ena => \DECODER1|saida~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(5));

-- Location: LABCELL_X5_Y20_N48
\ULA1|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~21_sumout\ = SUM(( (!\RAM1|ram~156_combout\) # (\DECODER1|Equal10~1_combout\) ) + ( \REGA|DOUT\(5) ) + ( \ULA1|Add1~18\ ))
-- \ULA1|Add1~22\ = CARRY(( (!\RAM1|ram~156_combout\) # (\DECODER1|Equal10~1_combout\) ) + ( \REGA|DOUT\(5) ) + ( \ULA1|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER1|ALT_INV_Equal10~1_combout\,
	datac => \REGA|ALT_INV_DOUT\(5),
	datad => \RAM1|ALT_INV_ram~156_combout\,
	cin => \ULA1|Add1~18\,
	sumout => \ULA1|Add1~21_sumout\,
	cout => \ULA1|Add1~22\);

-- Location: LABCELL_X7_Y20_N9
\DECODER1|Equal10~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER1|Equal10~3_combout\ = ( !\ROM1|memROM~8_combout\ & ( (!\ROM1|memROM~4_combout\ & (!\ROM1|memROM~6_combout\ & \ROM1|memROM~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \DECODER1|Equal10~3_combout\);

-- Location: FF_X4_Y20_N8
\RAM1|ram~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~23_q\);

-- Location: MLABCELL_X4_Y20_N6
\RAM1|ram~157\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~157_combout\ = ( \RAM1|ram~23_q\ & ( !\ROM1|memROM~14_combout\ & ( !\ROM1|memROM~12_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~12_combout\,
	datae => \RAM1|ALT_INV_ram~23_q\,
	dataf => \ROM1|ALT_INV_memROM~14_combout\,
	combout => \RAM1|ram~157_combout\);

-- Location: MLABCELL_X4_Y20_N57
\RAM1|ram~158\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~158_combout\ = ( !\ROM1|memROM~16_combout\ & ( \RAM1|ram~157_combout\ & ( !\ROM1|memROM~10_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	datae => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \RAM1|ALT_INV_ram~157_combout\,
	combout => \RAM1|ram~158_combout\);

-- Location: LABCELL_X6_Y20_N48
\ULA1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~25_sumout\ = SUM(( \REGA|DOUT\(6) ) + ( (!\DECODER1|Equal10~1_combout\ & \RAM1|ram~158_combout\) ) + ( \ULA1|Add0~22\ ))
-- \ULA1|Add0~26\ = CARRY(( \REGA|DOUT\(6) ) + ( (!\DECODER1|Equal10~1_combout\ & \RAM1|ram~158_combout\) ) + ( \ULA1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101011111010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER1|ALT_INV_Equal10~1_combout\,
	datac => \RAM1|ALT_INV_ram~158_combout\,
	datad => \REGA|ALT_INV_DOUT\(6),
	cin => \ULA1|Add0~22\,
	sumout => \ULA1|Add0~25_sumout\,
	cout => \ULA1|Add0~26\);

-- Location: LABCELL_X5_Y20_N0
\MUX1|saida_MUX[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[6]~6_combout\ = (!\DECODER1|Equal10~1_combout\ & \RAM1|ram~158_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \DECODER1|ALT_INV_Equal10~1_combout\,
	datad => \RAM1|ALT_INV_ram~158_combout\,
	combout => \MUX1|saida_MUX[6]~6_combout\);

-- Location: LABCELL_X5_Y20_N6
\ULA1|saida[6]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[6]~14_combout\ = ( \ULA1|Add1~25_sumout\ & ( (!\DECODER1|saida~0_combout\) # (\MUX1|saida_MUX[6]~6_combout\) ) ) # ( !\ULA1|Add1~25_sumout\ & ( (\DECODER1|saida~0_combout\ & \MUX1|saida_MUX[6]~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DECODER1|ALT_INV_saida~0_combout\,
	datad => \MUX1|ALT_INV_saida_MUX[6]~6_combout\,
	dataf => \ULA1|ALT_INV_Add1~25_sumout\,
	combout => \ULA1|saida[6]~14_combout\);

-- Location: FF_X6_Y20_N50
\REGA|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA1|Add0~25_sumout\,
	asdata => \ULA1|saida[6]~14_combout\,
	sload => \DECODER1|ALT_INV_Equal10~0_combout\,
	ena => \DECODER1|saida~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(6));

-- Location: LABCELL_X5_Y20_N51
\ULA1|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~25_sumout\ = SUM(( (!\RAM1|ram~158_combout\) # (\DECODER1|Equal10~1_combout\) ) + ( \REGA|DOUT\(6) ) + ( \ULA1|Add1~22\ ))
-- \ULA1|Add1~26\ = CARRY(( (!\RAM1|ram~158_combout\) # (\DECODER1|Equal10~1_combout\) ) + ( \REGA|DOUT\(6) ) + ( \ULA1|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER1|ALT_INV_Equal10~1_combout\,
	datac => \REGA|ALT_INV_DOUT\(6),
	datad => \RAM1|ALT_INV_ram~158_combout\,
	cin => \ULA1|Add1~22\,
	sumout => \ULA1|Add1~25_sumout\,
	cout => \ULA1|Add1~26\);

-- Location: FF_X4_Y20_N44
\RAM1|ram~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~24_q\);

-- Location: MLABCELL_X4_Y20_N42
\RAM1|ram~159\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~159_combout\ = ( \RAM1|ram~24_q\ & ( !\ROM1|memROM~10_combout\ & ( !\ROM1|memROM~16_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~16_combout\,
	datae => \RAM1|ALT_INV_ram~24_q\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM1|ram~159_combout\);

-- Location: MLABCELL_X4_Y20_N33
\RAM1|ram~160\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~160_combout\ = ( !\ROM1|memROM~14_combout\ & ( \RAM1|ram~159_combout\ & ( !\ROM1|memROM~12_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~12_combout\,
	datae => \ROM1|ALT_INV_memROM~14_combout\,
	dataf => \RAM1|ALT_INV_ram~159_combout\,
	combout => \RAM1|ram~160_combout\);

-- Location: LABCELL_X6_Y20_N51
\ULA1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~29_sumout\ = SUM(( \REGA|DOUT\(7) ) + ( (!\DECODER1|Equal10~1_combout\ & \RAM1|ram~160_combout\) ) + ( \ULA1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101011111010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER1|ALT_INV_Equal10~1_combout\,
	datac => \RAM1|ALT_INV_ram~160_combout\,
	datad => \REGA|ALT_INV_DOUT\(7),
	cin => \ULA1|Add0~26\,
	sumout => \ULA1|Add0~29_sumout\);

-- Location: MLABCELL_X4_Y20_N24
\MUX1|saida_MUX[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[7]~7_combout\ = ( !\DECODER1|Equal10~1_combout\ & ( \RAM1|ram~160_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \DECODER1|ALT_INV_Equal10~1_combout\,
	dataf => \RAM1|ALT_INV_ram~160_combout\,
	combout => \MUX1|saida_MUX[7]~7_combout\);

-- Location: LABCELL_X6_Y20_N6
\ULA1|saida[7]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[7]~15_combout\ = ( \ULA1|Add1~29_sumout\ & ( (!\DECODER1|saida~0_combout\) # (\MUX1|saida_MUX[7]~7_combout\) ) ) # ( !\ULA1|Add1~29_sumout\ & ( (\DECODER1|saida~0_combout\ & \MUX1|saida_MUX[7]~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DECODER1|ALT_INV_saida~0_combout\,
	datad => \MUX1|ALT_INV_saida_MUX[7]~7_combout\,
	dataf => \ULA1|ALT_INV_Add1~29_sumout\,
	combout => \ULA1|saida[7]~15_combout\);

-- Location: FF_X6_Y20_N53
\REGA|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA1|Add0~29_sumout\,
	asdata => \ULA1|saida[7]~15_combout\,
	sload => \DECODER1|ALT_INV_Equal10~0_combout\,
	ena => \DECODER1|saida~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(7));

-- Location: LABCELL_X5_Y20_N54
\ULA1|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~29_sumout\ = SUM(( (!\RAM1|ram~160_combout\) # (\DECODER1|Equal10~1_combout\) ) + ( \REGA|DOUT\(7) ) + ( \ULA1|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \DECODER1|ALT_INV_Equal10~1_combout\,
	datac => \REGA|ALT_INV_DOUT\(7),
	datad => \RAM1|ALT_INV_ram~160_combout\,
	cin => \ULA1|Add1~26\,
	sumout => \ULA1|Add1~29_sumout\);

-- Location: LABCELL_X5_Y20_N18
\FLIPFLOP1|DOUT~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \FLIPFLOP1|DOUT~1_combout\ = ( \ULA1|Add1~5_sumout\ & ( \ULA1|Add1~13_sumout\ & ( (\FLIPFLOP1|DOUT~q\ & !\DECODER1|Equal10~3_combout\) ) ) ) # ( !\ULA1|Add1~5_sumout\ & ( \ULA1|Add1~13_sumout\ & ( (\FLIPFLOP1|DOUT~q\ & !\DECODER1|Equal10~3_combout\) ) ) ) 
-- # ( \ULA1|Add1~5_sumout\ & ( !\ULA1|Add1~13_sumout\ & ( (\FLIPFLOP1|DOUT~q\ & !\DECODER1|Equal10~3_combout\) ) ) ) # ( !\ULA1|Add1~5_sumout\ & ( !\ULA1|Add1~13_sumout\ & ( (!\DECODER1|Equal10~3_combout\ & (\FLIPFLOP1|DOUT~q\)) # 
-- (\DECODER1|Equal10~3_combout\ & (((!\ULA1|Add1~1_sumout\ & !\ULA1|Add1~9_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FLIPFLOP1|ALT_INV_DOUT~q\,
	datab => \DECODER1|ALT_INV_Equal10~3_combout\,
	datac => \ULA1|ALT_INV_Add1~1_sumout\,
	datad => \ULA1|ALT_INV_Add1~9_sumout\,
	datae => \ULA1|ALT_INV_Add1~5_sumout\,
	dataf => \ULA1|ALT_INV_Add1~13_sumout\,
	combout => \FLIPFLOP1|DOUT~1_combout\);

-- Location: LABCELL_X5_Y20_N12
\FLIPFLOP1|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FLIPFLOP1|DOUT~0_combout\ = ( \ULA1|Add1~29_sumout\ & ( \FLIPFLOP1|DOUT~1_combout\ & ( !\DECODER1|Equal10~3_combout\ ) ) ) # ( !\ULA1|Add1~29_sumout\ & ( \FLIPFLOP1|DOUT~1_combout\ & ( (!\DECODER1|Equal10~3_combout\) # ((!\ULA1|Add1~21_sumout\ & 
-- (!\ULA1|Add1~25_sumout\ & !\ULA1|Add1~17_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011101100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Add1~21_sumout\,
	datab => \DECODER1|ALT_INV_Equal10~3_combout\,
	datac => \ULA1|ALT_INV_Add1~25_sumout\,
	datad => \ULA1|ALT_INV_Add1~17_sumout\,
	datae => \ULA1|ALT_INV_Add1~29_sumout\,
	dataf => \FLIPFLOP1|ALT_INV_DOUT~1_combout\,
	combout => \FLIPFLOP1|DOUT~0_combout\);

-- Location: FF_X5_Y20_N14
\FLIPFLOP1|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \FLIPFLOP1|DOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FLIPFLOP1|DOUT~q\);

-- Location: LABCELL_X7_Y20_N30
\DESVIO1|comb~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DESVIO1|comb~0_combout\ = ( \ROM1|memROM~8_combout\ & ( (\ROM1|memROM~6_combout\ & (!\ROM1|memROM~2_combout\ & ((!\ROM1|memROM~4_combout\) # (\FLIPFLOP1|DOUT~q\)))) ) ) # ( !\ROM1|memROM~8_combout\ & ( (\ROM1|memROM~4_combout\ & (!\ROM1|memROM~6_combout\ 
-- & \ROM1|memROM~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000100000001100000010000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~4_combout\,
	datab => \ROM1|ALT_INV_memROM~6_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \FLIPFLOP1|ALT_INV_DOUT~q\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \DESVIO1|comb~0_combout\);

-- Location: LABCELL_X7_Y20_N42
\DESVIO1|comb~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DESVIO1|comb~3_combout\ = ( \ROM1|memROM~4_combout\ & ( (!\ROM1|memROM~2_combout\ & ((!\ROM1|memROM~6_combout\) # ((!\ROM1|memROM~8_combout\) # (!\FLIPFLOP1|DOUT~q\)))) # (\ROM1|memROM~2_combout\ & (((\ROM1|memROM~8_combout\)) # 
-- (\ROM1|memROM~6_combout\))) ) ) # ( !\ROM1|memROM~4_combout\ & ( ((!\ROM1|memROM~6_combout\) # (!\ROM1|memROM~8_combout\)) # (\ROM1|memROM~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110111111101111111011111110110111111101111011011111110111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~6_combout\,
	datac => \ROM1|ALT_INV_memROM~8_combout\,
	datad => \FLIPFLOP1|ALT_INV_DOUT~q\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \DESVIO1|comb~3_combout\);

-- Location: MLABCELL_X4_Y20_N15
\DESVIO1|Sel[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \DESVIO1|Sel\(0) = ( !\DESVIO1|comb~3_combout\ & ( \DESVIO1|Sel\(0) ) ) # ( !\DESVIO1|comb~3_combout\ & ( !\DESVIO1|Sel\(0) & ( \DESVIO1|comb~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DESVIO1|ALT_INV_comb~0_combout\,
	datae => \DESVIO1|ALT_INV_comb~3_combout\,
	dataf => \DESVIO1|ALT_INV_Sel\(0),
	combout => \DESVIO1|Sel\(0));

-- Location: LABCELL_X2_Y19_N48
\incrementaPC|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~25_sumout\ = SUM(( \PC|DOUT[6]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~22\ ))
-- \incrementaPC|Add0~26\ = CARRY(( \PC|DOUT[6]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	cin => \incrementaPC|Add0~22\,
	sumout => \incrementaPC|Add0~25_sumout\,
	cout => \incrementaPC|Add0~26\);

-- Location: FF_X2_Y19_N49
\END_RETORNO|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~25_sumout\,
	ena => \DECODER1|Equal10~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \END_RETORNO|DOUT\(6));

-- Location: LABCELL_X1_Y20_N51
\MUXproxPC|saida_MUX[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXproxPC|saida_MUX[6]~6_combout\ = ( \END_RETORNO|DOUT\(6) & ( (!\DESVIO1|Sel\(0) & ((\incrementaPC|Add0~25_sumout\) # (\DESVIO1|Sel\(1)))) ) ) # ( !\END_RETORNO|DOUT\(6) & ( (!\DESVIO1|Sel\(0) & (!\DESVIO1|Sel\(1) & \incrementaPC|Add0~25_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000000001010101010100000101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DESVIO1|ALT_INV_Sel\(0),
	datac => \DESVIO1|ALT_INV_Sel\(1),
	datad => \incrementaPC|ALT_INV_Add0~25_sumout\,
	dataf => \END_RETORNO|ALT_INV_DOUT\(6),
	combout => \MUXproxPC|saida_MUX[6]~6_combout\);

-- Location: FF_X1_Y20_N52
\PC|DOUT[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MUXproxPC|saida_MUX[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[6]~DUPLICATE_q\);

-- Location: LABCELL_X2_Y19_N51
\incrementaPC|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~29_sumout\ = SUM(( \PC|DOUT[7]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~26\ ))
-- \incrementaPC|Add0~30\ = CARRY(( \PC|DOUT[7]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	cin => \incrementaPC|Add0~26\,
	sumout => \incrementaPC|Add0~29_sumout\,
	cout => \incrementaPC|Add0~30\);

-- Location: FF_X2_Y19_N52
\END_RETORNO|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~29_sumout\,
	ena => \DECODER1|Equal10~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \END_RETORNO|DOUT\(7));

-- Location: LABCELL_X1_Y20_N45
\MUXproxPC|saida_MUX[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXproxPC|saida_MUX[7]~7_combout\ = ( \incrementaPC|Add0~29_sumout\ & ( (!\DESVIO1|Sel\(0) & ((!\DESVIO1|Sel\(1)) # (\END_RETORNO|DOUT\(7)))) ) ) # ( !\incrementaPC|Add0~29_sumout\ & ( (\END_RETORNO|DOUT\(7) & (\DESVIO1|Sel\(1) & !\DESVIO1|Sel\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000011110101000000001111010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \END_RETORNO|ALT_INV_DOUT\(7),
	datac => \DESVIO1|ALT_INV_Sel\(1),
	datad => \DESVIO1|ALT_INV_Sel\(0),
	dataf => \incrementaPC|ALT_INV_Add0~29_sumout\,
	combout => \MUXproxPC|saida_MUX[7]~7_combout\);

-- Location: FF_X1_Y20_N46
\PC|DOUT[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MUXproxPC|saida_MUX[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[7]~DUPLICATE_q\);

-- Location: LABCELL_X2_Y19_N54
\incrementaPC|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~33_sumout\ = SUM(( \PC|DOUT[8]~DUPLICATE_q\ ) + ( GND ) + ( \incrementaPC|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	cin => \incrementaPC|Add0~30\,
	sumout => \incrementaPC|Add0~33_sumout\);

-- Location: FF_X2_Y19_N56
\END_RETORNO|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~33_sumout\,
	ena => \DECODER1|Equal10~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \END_RETORNO|DOUT\(8));

-- Location: LABCELL_X1_Y20_N12
\MUXproxPC|saida_MUX[8]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXproxPC|saida_MUX[8]~8_combout\ = ( \incrementaPC|Add0~33_sumout\ & ( (!\DESVIO1|Sel\(1) & (((!\DESVIO1|Sel\(0)) # (\ROM1|memROM~17_combout\)))) # (\DESVIO1|Sel\(1) & (\END_RETORNO|DOUT\(8) & ((!\DESVIO1|Sel\(0))))) ) ) # ( 
-- !\incrementaPC|Add0~33_sumout\ & ( (!\DESVIO1|Sel\(1) & (((\ROM1|memROM~17_combout\ & \DESVIO1|Sel\(0))))) # (\DESVIO1|Sel\(1) & (\END_RETORNO|DOUT\(8) & ((!\DESVIO1|Sel\(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100001100000100010000110011011101000011001101110100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \END_RETORNO|ALT_INV_DOUT\(8),
	datab => \DESVIO1|ALT_INV_Sel\(1),
	datac => \ROM1|ALT_INV_memROM~17_combout\,
	datad => \DESVIO1|ALT_INV_Sel\(0),
	dataf => \incrementaPC|ALT_INV_Add0~33_sumout\,
	combout => \MUXproxPC|saida_MUX[8]~8_combout\);

-- Location: FF_X1_Y20_N13
\PC|DOUT[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MUXproxPC|saida_MUX[8]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[8]~DUPLICATE_q\);

-- Location: LABCELL_X2_Y19_N18
\DECODER1|Equal10~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER1|Equal10~5_combout\ = ( \ROM1|memROM~1_combout\ & ( !\ROM1|memROM~5_combout\ & ( (!\PC|DOUT[8]~DUPLICATE_q\ & (\ROM1|memROM~0_combout\ & (\ROM1|memROM~3_combout\ & !\ROM1|memROM~7_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	datad => \ROM1|ALT_INV_memROM~7_combout\,
	datae => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \DECODER1|Equal10~5_combout\);

-- Location: FF_X2_Y19_N31
\END_RETORNO|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~1_sumout\,
	ena => \DECODER1|Equal10~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \END_RETORNO|DOUT\(0));

-- Location: LABCELL_X1_Y20_N9
\MUXproxPC|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXproxPC|saida_MUX[0]~0_combout\ = ( \incrementaPC|Add0~1_sumout\ & ( (!\DESVIO1|Sel\(1) & (((!\DESVIO1|Sel\(0)) # (\ROM1|memROM~10_combout\)))) # (\DESVIO1|Sel\(1) & (\END_RETORNO|DOUT\(0) & ((!\DESVIO1|Sel\(0))))) ) ) # ( !\incrementaPC|Add0~1_sumout\ 
-- & ( (!\DESVIO1|Sel\(1) & (((\ROM1|memROM~10_combout\ & \DESVIO1|Sel\(0))))) # (\DESVIO1|Sel\(1) & (\END_RETORNO|DOUT\(0) & ((!\DESVIO1|Sel\(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110000000001010011000011110101001100001111010100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \END_RETORNO|ALT_INV_DOUT\(0),
	datab => \ROM1|ALT_INV_memROM~10_combout\,
	datac => \DESVIO1|ALT_INV_Sel\(1),
	datad => \DESVIO1|ALT_INV_Sel\(0),
	dataf => \incrementaPC|ALT_INV_Add0~1_sumout\,
	combout => \MUXproxPC|saida_MUX[0]~0_combout\);

-- Location: FF_X2_Y20_N52
\PC|DOUT[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \MUXproxPC|saida_MUX[0]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[0]~DUPLICATE_q\);

-- Location: LABCELL_X7_Y20_N51
\ULA1|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[0]~0_combout\ = ( \ULA1|Add1~1_sumout\ & ( (!\DECODER1|Equal10~0_combout\ & (((!\DECODER1|saida~0_combout\) # (\MUX1|saida_MUX[0]~0_combout\)))) # (\DECODER1|Equal10~0_combout\ & (\ULA1|Add0~1_sumout\)) ) ) # ( !\ULA1|Add1~1_sumout\ & ( 
-- (!\DECODER1|Equal10~0_combout\ & (((\DECODER1|saida~0_combout\ & \MUX1|saida_MUX[0]~0_combout\)))) # (\DECODER1|Equal10~0_combout\ & (\ULA1|Add0~1_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011101000100010001110111010001110111011101000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Add0~1_sumout\,
	datab => \DECODER1|ALT_INV_Equal10~0_combout\,
	datac => \DECODER1|ALT_INV_saida~0_combout\,
	datad => \MUX1|ALT_INV_saida_MUX[0]~0_combout\,
	dataf => \ULA1|ALT_INV_Add1~1_sumout\,
	combout => \ULA1|saida[0]~0_combout\);

-- Location: LABCELL_X7_Y20_N54
\ULA1|saida[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[1]~1_combout\ = ( \DECODER1|Equal10~0_combout\ & ( \ULA1|Add0~5_sumout\ ) ) # ( !\DECODER1|Equal10~0_combout\ & ( (!\DECODER1|saida~0_combout\ & ((\ULA1|Add1~5_sumout\))) # (\DECODER1|saida~0_combout\ & (\MUX1|saida_MUX[1]~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX1|ALT_INV_saida_MUX[1]~1_combout\,
	datab => \DECODER1|ALT_INV_saida~0_combout\,
	datac => \ULA1|ALT_INV_Add1~5_sumout\,
	datad => \ULA1|ALT_INV_Add0~5_sumout\,
	dataf => \DECODER1|ALT_INV_Equal10~0_combout\,
	combout => \ULA1|saida[1]~1_combout\);

-- Location: LABCELL_X7_Y20_N0
\ULA1|saida[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[2]~2_combout\ = ( \MUX1|saida_MUX[2]~2_combout\ & ( (!\DECODER1|Equal10~0_combout\ & (((\ULA1|Add1~9_sumout\)) # (\DECODER1|saida~0_combout\))) # (\DECODER1|Equal10~0_combout\ & (((\ULA1|Add0~9_sumout\)))) ) ) # ( 
-- !\MUX1|saida_MUX[2]~2_combout\ & ( (!\DECODER1|Equal10~0_combout\ & (!\DECODER1|saida~0_combout\ & (\ULA1|Add1~9_sumout\))) # (\DECODER1|Equal10~0_combout\ & (((\ULA1|Add0~9_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001011101000010000101110100101010011111110010101001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER1|ALT_INV_Equal10~0_combout\,
	datab => \DECODER1|ALT_INV_saida~0_combout\,
	datac => \ULA1|ALT_INV_Add1~9_sumout\,
	datad => \ULA1|ALT_INV_Add0~9_sumout\,
	dataf => \MUX1|ALT_INV_saida_MUX[2]~2_combout\,
	combout => \ULA1|saida[2]~2_combout\);

-- Location: LABCELL_X6_Y20_N15
\ULA1|saida[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[3]~3_combout\ = ( \ULA1|Add1~13_sumout\ & ( (!\DECODER1|Equal10~0_combout\ & (((!\DECODER1|saida~0_combout\) # (\MUX1|saida_MUX[3]~3_combout\)))) # (\DECODER1|Equal10~0_combout\ & (\ULA1|Add0~13_sumout\)) ) ) # ( !\ULA1|Add1~13_sumout\ & ( 
-- (!\DECODER1|Equal10~0_combout\ & (((\DECODER1|saida~0_combout\ & \MUX1|saida_MUX[3]~3_combout\)))) # (\DECODER1|Equal10~0_combout\ & (\ULA1|Add0~13_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110101000001010011010111000101111101011100010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Add0~13_sumout\,
	datab => \DECODER1|ALT_INV_saida~0_combout\,
	datac => \DECODER1|ALT_INV_Equal10~0_combout\,
	datad => \MUX1|ALT_INV_saida_MUX[3]~3_combout\,
	dataf => \ULA1|ALT_INV_Add1~13_sumout\,
	combout => \ULA1|saida[3]~3_combout\);

-- Location: LABCELL_X7_Y20_N39
\ULA1|saida[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[4]~4_combout\ = ( \MUX1|saida_MUX[4]~4_combout\ & ( (!\DECODER1|Equal10~0_combout\ & (((\DECODER1|saida~0_combout\)) # (\ULA1|Add1~17_sumout\))) # (\DECODER1|Equal10~0_combout\ & (((\ULA1|Add0~17_sumout\)))) ) ) # ( 
-- !\MUX1|saida_MUX[4]~4_combout\ & ( (!\DECODER1|Equal10~0_combout\ & (\ULA1|Add1~17_sumout\ & (!\DECODER1|saida~0_combout\))) # (\DECODER1|Equal10~0_combout\ & (((\ULA1|Add0~17_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000001110101001000000111010100101010011111110010101001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER1|ALT_INV_Equal10~0_combout\,
	datab => \ULA1|ALT_INV_Add1~17_sumout\,
	datac => \DECODER1|ALT_INV_saida~0_combout\,
	datad => \ULA1|ALT_INV_Add0~17_sumout\,
	dataf => \MUX1|ALT_INV_saida_MUX[4]~4_combout\,
	combout => \ULA1|saida[4]~4_combout\);

-- Location: LABCELL_X7_Y20_N3
\ULA1|saida[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[5]~5_combout\ = ( \ULA1|Add0~21_sumout\ & ( ((!\DECODER1|saida~0_combout\ & (\ULA1|Add1~21_sumout\)) # (\DECODER1|saida~0_combout\ & ((\MUX1|saida_MUX[5]~5_combout\)))) # (\DECODER1|Equal10~0_combout\) ) ) # ( !\ULA1|Add0~21_sumout\ & ( 
-- (!\DECODER1|Equal10~0_combout\ & ((!\DECODER1|saida~0_combout\ & (\ULA1|Add1~21_sumout\)) # (\DECODER1|saida~0_combout\ & ((\MUX1|saida_MUX[5]~5_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000010000010101001011101011111110101110101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER1|ALT_INV_Equal10~0_combout\,
	datab => \DECODER1|ALT_INV_saida~0_combout\,
	datac => \ULA1|ALT_INV_Add1~21_sumout\,
	datad => \MUX1|ALT_INV_saida_MUX[5]~5_combout\,
	dataf => \ULA1|ALT_INV_Add0~21_sumout\,
	combout => \ULA1|saida[5]~5_combout\);

-- Location: LABCELL_X7_Y20_N15
\ULA1|saida[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[6]~6_combout\ = ( \ULA1|Add1~25_sumout\ & ( (!\DECODER1|Equal10~0_combout\ & ((!\DECODER1|saida~0_combout\) # ((\MUX1|saida_MUX[6]~6_combout\)))) # (\DECODER1|Equal10~0_combout\ & (((\ULA1|Add0~25_sumout\)))) ) ) # ( !\ULA1|Add1~25_sumout\ & ( 
-- (!\DECODER1|Equal10~0_combout\ & (\DECODER1|saida~0_combout\ & ((\MUX1|saida_MUX[6]~6_combout\)))) # (\DECODER1|Equal10~0_combout\ & (((\ULA1|Add0~25_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100111000001010010011110001101101011111000110110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER1|ALT_INV_Equal10~0_combout\,
	datab => \DECODER1|ALT_INV_saida~0_combout\,
	datac => \ULA1|ALT_INV_Add0~25_sumout\,
	datad => \MUX1|ALT_INV_saida_MUX[6]~6_combout\,
	dataf => \ULA1|ALT_INV_Add1~25_sumout\,
	combout => \ULA1|saida[6]~6_combout\);

-- Location: LABCELL_X7_Y20_N12
\ULA1|saida[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[7]~7_combout\ = ( \ULA1|Add1~29_sumout\ & ( (!\DECODER1|Equal10~0_combout\ & ((!\DECODER1|saida~0_combout\) # ((\MUX1|saida_MUX[7]~7_combout\)))) # (\DECODER1|Equal10~0_combout\ & (((\ULA1|Add0~29_sumout\)))) ) ) # ( !\ULA1|Add1~29_sumout\ & ( 
-- (!\DECODER1|Equal10~0_combout\ & (\DECODER1|saida~0_combout\ & ((\MUX1|saida_MUX[7]~7_combout\)))) # (\DECODER1|Equal10~0_combout\ & (((\ULA1|Add0~29_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100111000001010010011110001101101011111000110110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER1|ALT_INV_Equal10~0_combout\,
	datab => \DECODER1|ALT_INV_saida~0_combout\,
	datac => \ULA1|ALT_INV_Add0~29_sumout\,
	datad => \MUX1|ALT_INV_saida_MUX[7]~7_combout\,
	dataf => \ULA1|ALT_INV_Add1~29_sumout\,
	combout => \ULA1|saida[7]~7_combout\);

-- Location: LABCELL_X7_Y20_N6
\DECODER1|saida~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER1|saida~1_combout\ = (!\ROM1|memROM~8_combout\ & (!\ROM1|memROM~2_combout\ & ((\ROM1|memROM~6_combout\) # (\ROM1|memROM~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000000000000011100000000000001110000000000000111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~4_combout\,
	datab => \ROM1|ALT_INV_memROM~6_combout\,
	datac => \ROM1|ALT_INV_memROM~8_combout\,
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \DECODER1|saida~1_combout\);

-- Location: LABCELL_X2_Y19_N24
\DECODER1|Equal10~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER1|Equal10~4_combout\ = ( \ROM1|memROM~1_combout\ & ( \ROM1|memROM~7_combout\ & ( (!\PC|DOUT[8]~DUPLICATE_q\ & (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~3_combout\ & \ROM1|memROM~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	datad => \ROM1|ALT_INV_memROM~5_combout\,
	datae => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \DECODER1|Equal10~4_combout\);

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

-- Location: MLABCELL_X37_Y43_N0
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


