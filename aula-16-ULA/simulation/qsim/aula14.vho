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

-- DATE "11/18/2022 20:35:50"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ULAMIPS IS
    PORT (
	A : IN std_logic_vector(31 DOWNTO 0);
	B : IN std_logic_vector(31 DOWNTO 0);
	inverteB : IN std_logic;
	R : OUT std_logic_vector(31 DOWNTO 0);
	ZERO : OUT std_logic;
	sel : IN std_logic_vector(1 DOWNTO 0)
	);
END ULAMIPS;

-- Design Ports Information
-- R[0]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[1]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[2]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[3]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[4]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[5]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[6]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[7]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[8]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[9]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[10]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[11]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[12]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[13]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[14]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[15]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[16]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[17]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[18]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[19]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[20]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[21]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[22]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[23]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[24]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[25]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[26]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[27]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[28]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[29]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[30]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[31]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ZERO	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[0]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[1]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inverteB	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[16]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[16]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[17]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[17]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[18]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[18]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[19]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[19]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[20]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[20]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[21]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[21]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[22]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[22]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[23]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[23]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[24]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[24]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[25]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[25]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[26]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[26]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[27]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[27]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[28]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[28]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[29]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[29]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[30]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[30]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[31]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[31]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ULAMIPS IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_inverteB : std_logic;
SIGNAL ww_R : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_ZERO : std_logic;
SIGNAL ww_sel : std_logic_vector(1 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \sel[1]~input_o\ : std_logic;
SIGNAL \sel[0]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \inverteB~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \opBit0|R~0_combout\ : std_logic;
SIGNAL \B[31]~input_o\ : std_logic;
SIGNAL \opBit31|saida_MUX_B~0_combout\ : std_logic;
SIGNAL \A[30]~input_o\ : std_logic;
SIGNAL \B[30]~input_o\ : std_logic;
SIGNAL \A[29]~input_o\ : std_logic;
SIGNAL \A[28]~input_o\ : std_logic;
SIGNAL \B[27]~input_o\ : std_logic;
SIGNAL \B[25]~input_o\ : std_logic;
SIGNAL \opBit25|saida_MUX_B~0_combout\ : std_logic;
SIGNAL \B[26]~input_o\ : std_logic;
SIGNAL \opBit26|saida_MUX_B~0_combout\ : std_logic;
SIGNAL \A[25]~input_o\ : std_logic;
SIGNAL \A[23]~input_o\ : std_logic;
SIGNAL \A[22]~input_o\ : std_logic;
SIGNAL \B[23]~input_o\ : std_logic;
SIGNAL \opBit23|saida_MUX_B~0_combout\ : std_logic;
SIGNAL \B[24]~input_o\ : std_logic;
SIGNAL \opBit24|saida_MUX_B~0_combout\ : std_logic;
SIGNAL \A[24]~input_o\ : std_logic;
SIGNAL \opBit24|op_SOMA_SUB~0_combout\ : std_logic;
SIGNAL \B[22]~input_o\ : std_logic;
SIGNAL \opBit22|saida_MUX_B~0_combout\ : std_logic;
SIGNAL \B[20]~input_o\ : std_logic;
SIGNAL \opBit20|saida_MUX_B~0_combout\ : std_logic;
SIGNAL \B[21]~input_o\ : std_logic;
SIGNAL \opBit21|saida_MUX_B~0_combout\ : std_logic;
SIGNAL \B[19]~input_o\ : std_logic;
SIGNAL \opBit19|saida_MUX_B~0_combout\ : std_logic;
SIGNAL \A[19]~input_o\ : std_logic;
SIGNAL \opBit19|op_AND~0_combout\ : std_logic;
SIGNAL \A[21]~input_o\ : std_logic;
SIGNAL \A[18]~input_o\ : std_logic;
SIGNAL \B[17]~input_o\ : std_logic;
SIGNAL \opBit17|saida_MUX_B~0_combout\ : std_logic;
SIGNAL \opBit19|op_SOMA_SUB~0_combout\ : std_logic;
SIGNAL \B[18]~input_o\ : std_logic;
SIGNAL \opBit18|saida_MUX_B~0_combout\ : std_logic;
SIGNAL \A[17]~input_o\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \opBit15|saida_MUX_B~0_combout\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \opBit12|saida_MUX_B~0_combout\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \opBit9|op_AND~0_combout\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \opBit10|saida_MUX_B~0_combout\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \opBit5|saida_MUX_B~0_combout\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \opBit4|op_AND~0_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \opBit4|op_SOMA_SUB~0_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \opBit1|carryOut~combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \opBit2|saida_MUX_B~0_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \opBit3|saida_MUX_B~0_combout\ : std_logic;
SIGNAL \opBit4|carryOut~0_combout\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \opBit6|saida_MUX_B~0_combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \opBit6|carryOut~combout\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \opBit7|saida_MUX_B~0_combout\ : std_logic;
SIGNAL \opBit9|op_SOMA_SUB~0_combout\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \opBit8|saida_MUX_B~0_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \opBit9|carryOut~0_combout\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \opBit11|saida_MUX_B~0_combout\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \opBit11|carryOut~combout\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \opBit14|saida_MUX_B~0_combout\ : std_logic;
SIGNAL \opBit14|op_SOMA_SUB~0_combout\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \opBit13|saida_MUX_B~0_combout\ : std_logic;
SIGNAL \opBit14|carryOut~0_combout\ : std_logic;
SIGNAL \B[16]~input_o\ : std_logic;
SIGNAL \opBit16|saida_MUX_B~0_combout\ : std_logic;
SIGNAL \opBit14|op_AND~0_combout\ : std_logic;
SIGNAL \A[16]~input_o\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \opBit16|carryOut~combout\ : std_logic;
SIGNAL \opBit19|carryOut~0_combout\ : std_logic;
SIGNAL \A[20]~input_o\ : std_logic;
SIGNAL \opBit21|carryOut~combout\ : std_logic;
SIGNAL \opBit24|carryOut~0_combout\ : std_logic;
SIGNAL \A[26]~input_o\ : std_logic;
SIGNAL \opBit24|op_AND~0_combout\ : std_logic;
SIGNAL \opBit26|carryOut~combout\ : std_logic;
SIGNAL \A[27]~input_o\ : std_logic;
SIGNAL \B[28]~input_o\ : std_logic;
SIGNAL \opBit28|carryOut~combout\ : std_logic;
SIGNAL \B[29]~input_o\ : std_logic;
SIGNAL \opBit30|carryOut~combout\ : std_logic;
SIGNAL \A[31]~input_o\ : std_logic;
SIGNAL \opBit0|R~1_combout\ : std_logic;
SIGNAL \opBit0|carryOut~0_combout\ : std_logic;
SIGNAL \opBit1|R~0_combout\ : std_logic;
SIGNAL \opBit2|R~0_combout\ : std_logic;
SIGNAL \opBit2|carryOut~combout\ : std_logic;
SIGNAL \opBit3|R~0_combout\ : std_logic;
SIGNAL \opBit3|carryOut~combout\ : std_logic;
SIGNAL \opBit4|R~0_combout\ : std_logic;
SIGNAL \opBit5|R~0_combout\ : std_logic;
SIGNAL \opBit5|carryOut~combout\ : std_logic;
SIGNAL \opBit6|R~0_combout\ : std_logic;
SIGNAL \opBit7|R~0_combout\ : std_logic;
SIGNAL \opBit8|op_SOMA_SUB~0_combout\ : std_logic;
SIGNAL \opBit0|R~2_combout\ : std_logic;
SIGNAL \opBit8|R~0_combout\ : std_logic;
SIGNAL \opBit8|R~1_combout\ : std_logic;
SIGNAL \opBit8|carryOut~combout\ : std_logic;
SIGNAL \opBit9|R~0_combout\ : std_logic;
SIGNAL \opBit10|R~0_combout\ : std_logic;
SIGNAL \opBit10|carryOut~combout\ : std_logic;
SIGNAL \opBit11|R~0_combout\ : std_logic;
SIGNAL \opBit12|R~0_combout\ : std_logic;
SIGNAL \opBit13|R~0_combout\ : std_logic;
SIGNAL \opBit13|op_SOMA_SUB~0_combout\ : std_logic;
SIGNAL \opBit13|R~1_combout\ : std_logic;
SIGNAL \opBit13|carryOut~combout\ : std_logic;
SIGNAL \opBit14|R~0_combout\ : std_logic;
SIGNAL \opBit15|R~0_combout\ : std_logic;
SIGNAL \opBit15|carryOut~combout\ : std_logic;
SIGNAL \opBit16|R~0_combout\ : std_logic;
SIGNAL \opBit17|R~0_combout\ : std_logic;
SIGNAL \opBit18|R~0_combout\ : std_logic;
SIGNAL \opBit18|op_SOMA_SUB~0_combout\ : std_logic;
SIGNAL \opBit18|R~1_combout\ : std_logic;
SIGNAL \opBit18|carryOut~combout\ : std_logic;
SIGNAL \opBit19|R~0_combout\ : std_logic;
SIGNAL \opBit20|R~0_combout\ : std_logic;
SIGNAL \opBit20|carryOut~combout\ : std_logic;
SIGNAL \opBit21|R~0_combout\ : std_logic;
SIGNAL \opBit22|R~0_combout\ : std_logic;
SIGNAL \opBit23|R~0_combout\ : std_logic;
SIGNAL \opBit23|op_SOMA_SUB~0_combout\ : std_logic;
SIGNAL \opBit23|R~1_combout\ : std_logic;
SIGNAL \opBit23|carryOut~combout\ : std_logic;
SIGNAL \opBit24|R~0_combout\ : std_logic;
SIGNAL \opBit25|R~0_combout\ : std_logic;
SIGNAL \opBit25|carryOut~combout\ : std_logic;
SIGNAL \opBit26|R~0_combout\ : std_logic;
SIGNAL \opBit27|saida_MUX_B~0_combout\ : std_logic;
SIGNAL \opBit27|R~0_combout\ : std_logic;
SIGNAL \opBit28|op_SOMA_SUB~0_combout\ : std_logic;
SIGNAL \opBit28|R~0_combout\ : std_logic;
SIGNAL \opBit28|R~1_combout\ : std_logic;
SIGNAL \opBit29|saida_MUX_B~0_combout\ : std_logic;
SIGNAL \opBit29|R~0_combout\ : std_logic;
SIGNAL \opBit30|op_SOMA_SUB~0_combout\ : std_logic;
SIGNAL \opBit30|R~0_combout\ : std_logic;
SIGNAL \opBit30|R~1_combout\ : std_logic;
SIGNAL \opBit31|R~0_combout\ : std_logic;
SIGNAL \ZERO~0_combout\ : std_logic;
SIGNAL \ZERO~1_combout\ : std_logic;
SIGNAL \ZERO~2_combout\ : std_logic;
SIGNAL \ZERO~3_combout\ : std_logic;
SIGNAL \ZERO~4_combout\ : std_logic;
SIGNAL \ZERO~5_combout\ : std_logic;
SIGNAL \ZERO~6_combout\ : std_logic;
SIGNAL \ZERO~7_combout\ : std_logic;
SIGNAL \ZERO~8_combout\ : std_logic;
SIGNAL \ALT_INV_B[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_inverteB~input_o\ : std_logic;
SIGNAL \ALT_INV_sel[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_sel[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_ZERO~8_combout\ : std_logic;
SIGNAL \ALT_INV_ZERO~7_combout\ : std_logic;
SIGNAL \ALT_INV_ZERO~6_combout\ : std_logic;
SIGNAL \ALT_INV_ZERO~5_combout\ : std_logic;
SIGNAL \ALT_INV_ZERO~4_combout\ : std_logic;
SIGNAL \ALT_INV_ZERO~3_combout\ : std_logic;
SIGNAL \ALT_INV_ZERO~2_combout\ : std_logic;
SIGNAL \ALT_INV_ZERO~1_combout\ : std_logic;
SIGNAL \ALT_INV_ZERO~0_combout\ : std_logic;
SIGNAL \opBit31|ALT_INV_R~0_combout\ : std_logic;
SIGNAL \opBit30|ALT_INV_R~1_combout\ : std_logic;
SIGNAL \opBit30|ALT_INV_R~0_combout\ : std_logic;
SIGNAL \opBit30|ALT_INV_op_SOMA_SUB~0_combout\ : std_logic;
SIGNAL \opBit29|ALT_INV_R~0_combout\ : std_logic;
SIGNAL \opBit29|ALT_INV_saida_MUX_B~0_combout\ : std_logic;
SIGNAL \opBit28|ALT_INV_R~1_combout\ : std_logic;
SIGNAL \opBit28|ALT_INV_R~0_combout\ : std_logic;
SIGNAL \opBit28|ALT_INV_op_SOMA_SUB~0_combout\ : std_logic;
SIGNAL \opBit27|ALT_INV_R~0_combout\ : std_logic;
SIGNAL \opBit27|ALT_INV_saida_MUX_B~0_combout\ : std_logic;
SIGNAL \opBit26|ALT_INV_R~0_combout\ : std_logic;
SIGNAL \opBit25|ALT_INV_carryOut~combout\ : std_logic;
SIGNAL \opBit25|ALT_INV_R~0_combout\ : std_logic;
SIGNAL \opBit24|ALT_INV_R~0_combout\ : std_logic;
SIGNAL \opBit23|ALT_INV_carryOut~combout\ : std_logic;
SIGNAL \opBit23|ALT_INV_R~1_combout\ : std_logic;
SIGNAL \opBit23|ALT_INV_R~0_combout\ : std_logic;
SIGNAL \opBit23|ALT_INV_op_SOMA_SUB~0_combout\ : std_logic;
SIGNAL \opBit22|ALT_INV_R~0_combout\ : std_logic;
SIGNAL \opBit21|ALT_INV_R~0_combout\ : std_logic;
SIGNAL \opBit20|ALT_INV_carryOut~combout\ : std_logic;
SIGNAL \opBit20|ALT_INV_R~0_combout\ : std_logic;
SIGNAL \opBit19|ALT_INV_R~0_combout\ : std_logic;
SIGNAL \opBit18|ALT_INV_carryOut~combout\ : std_logic;
SIGNAL \opBit18|ALT_INV_R~1_combout\ : std_logic;
SIGNAL \opBit18|ALT_INV_R~0_combout\ : std_logic;
SIGNAL \opBit18|ALT_INV_op_SOMA_SUB~0_combout\ : std_logic;
SIGNAL \opBit17|ALT_INV_R~0_combout\ : std_logic;
SIGNAL \opBit16|ALT_INV_R~0_combout\ : std_logic;
SIGNAL \opBit15|ALT_INV_carryOut~combout\ : std_logic;
SIGNAL \opBit15|ALT_INV_R~0_combout\ : std_logic;
SIGNAL \opBit14|ALT_INV_R~0_combout\ : std_logic;
SIGNAL \opBit13|ALT_INV_carryOut~combout\ : std_logic;
SIGNAL \opBit13|ALT_INV_R~1_combout\ : std_logic;
SIGNAL \opBit13|ALT_INV_R~0_combout\ : std_logic;
SIGNAL \opBit13|ALT_INV_op_SOMA_SUB~0_combout\ : std_logic;
SIGNAL \opBit12|ALT_INV_R~0_combout\ : std_logic;
SIGNAL \opBit11|ALT_INV_R~0_combout\ : std_logic;
SIGNAL \opBit10|ALT_INV_carryOut~combout\ : std_logic;
SIGNAL \opBit10|ALT_INV_R~0_combout\ : std_logic;
SIGNAL \opBit9|ALT_INV_R~0_combout\ : std_logic;
SIGNAL \opBit8|ALT_INV_carryOut~combout\ : std_logic;
SIGNAL \opBit8|ALT_INV_R~1_combout\ : std_logic;
SIGNAL \opBit8|ALT_INV_R~0_combout\ : std_logic;
SIGNAL \opBit8|ALT_INV_op_SOMA_SUB~0_combout\ : std_logic;
SIGNAL \opBit0|ALT_INV_R~2_combout\ : std_logic;
SIGNAL \opBit7|ALT_INV_R~0_combout\ : std_logic;
SIGNAL \opBit6|ALT_INV_R~0_combout\ : std_logic;
SIGNAL \opBit5|ALT_INV_carryOut~combout\ : std_logic;
SIGNAL \opBit5|ALT_INV_R~0_combout\ : std_logic;
SIGNAL \opBit4|ALT_INV_R~0_combout\ : std_logic;
SIGNAL \opBit3|ALT_INV_carryOut~combout\ : std_logic;
SIGNAL \opBit3|ALT_INV_R~0_combout\ : std_logic;
SIGNAL \opBit2|ALT_INV_carryOut~combout\ : std_logic;
SIGNAL \opBit2|ALT_INV_R~0_combout\ : std_logic;
SIGNAL \opBit1|ALT_INV_R~0_combout\ : std_logic;
SIGNAL \opBit0|ALT_INV_carryOut~0_combout\ : std_logic;
SIGNAL \opBit0|ALT_INV_R~1_combout\ : std_logic;
SIGNAL \opBit0|ALT_INV_R~0_combout\ : std_logic;
SIGNAL \opBit31|ALT_INV_saida_MUX_B~0_combout\ : std_logic;
SIGNAL \opBit30|ALT_INV_carryOut~combout\ : std_logic;
SIGNAL \opBit28|ALT_INV_carryOut~combout\ : std_logic;
SIGNAL \opBit26|ALT_INV_carryOut~combout\ : std_logic;
SIGNAL \opBit26|ALT_INV_saida_MUX_B~0_combout\ : std_logic;
SIGNAL \opBit25|ALT_INV_saida_MUX_B~0_combout\ : std_logic;
SIGNAL \opBit24|ALT_INV_op_AND~0_combout\ : std_logic;
SIGNAL \opBit24|ALT_INV_carryOut~0_combout\ : std_logic;
SIGNAL \opBit24|ALT_INV_op_SOMA_SUB~0_combout\ : std_logic;
SIGNAL \opBit24|ALT_INV_saida_MUX_B~0_combout\ : std_logic;
SIGNAL \opBit23|ALT_INV_saida_MUX_B~0_combout\ : std_logic;
SIGNAL \opBit22|ALT_INV_saida_MUX_B~0_combout\ : std_logic;
SIGNAL \opBit21|ALT_INV_carryOut~combout\ : std_logic;
SIGNAL \opBit21|ALT_INV_saida_MUX_B~0_combout\ : std_logic;
SIGNAL \opBit20|ALT_INV_saida_MUX_B~0_combout\ : std_logic;
SIGNAL \opBit19|ALT_INV_op_AND~0_combout\ : std_logic;
SIGNAL \opBit19|ALT_INV_carryOut~0_combout\ : std_logic;
SIGNAL \opBit19|ALT_INV_op_SOMA_SUB~0_combout\ : std_logic;
SIGNAL \opBit19|ALT_INV_saida_MUX_B~0_combout\ : std_logic;
SIGNAL \opBit18|ALT_INV_saida_MUX_B~0_combout\ : std_logic;
SIGNAL \opBit17|ALT_INV_saida_MUX_B~0_combout\ : std_logic;
SIGNAL \opBit16|ALT_INV_carryOut~combout\ : std_logic;
SIGNAL \opBit16|ALT_INV_saida_MUX_B~0_combout\ : std_logic;
SIGNAL \opBit15|ALT_INV_saida_MUX_B~0_combout\ : std_logic;
SIGNAL \opBit14|ALT_INV_op_AND~0_combout\ : std_logic;
SIGNAL \opBit14|ALT_INV_carryOut~0_combout\ : std_logic;
SIGNAL \opBit14|ALT_INV_op_SOMA_SUB~0_combout\ : std_logic;
SIGNAL \opBit14|ALT_INV_saida_MUX_B~0_combout\ : std_logic;
SIGNAL \opBit13|ALT_INV_saida_MUX_B~0_combout\ : std_logic;
SIGNAL \opBit12|ALT_INV_saida_MUX_B~0_combout\ : std_logic;
SIGNAL \opBit11|ALT_INV_carryOut~combout\ : std_logic;
SIGNAL \opBit11|ALT_INV_saida_MUX_B~0_combout\ : std_logic;
SIGNAL \opBit10|ALT_INV_saida_MUX_B~0_combout\ : std_logic;
SIGNAL \opBit9|ALT_INV_op_AND~0_combout\ : std_logic;
SIGNAL \opBit9|ALT_INV_carryOut~0_combout\ : std_logic;
SIGNAL \opBit9|ALT_INV_op_SOMA_SUB~0_combout\ : std_logic;
SIGNAL \opBit8|ALT_INV_saida_MUX_B~0_combout\ : std_logic;
SIGNAL \opBit7|ALT_INV_saida_MUX_B~0_combout\ : std_logic;
SIGNAL \opBit6|ALT_INV_carryOut~combout\ : std_logic;
SIGNAL \opBit6|ALT_INV_saida_MUX_B~0_combout\ : std_logic;
SIGNAL \opBit5|ALT_INV_saida_MUX_B~0_combout\ : std_logic;
SIGNAL \opBit4|ALT_INV_op_AND~0_combout\ : std_logic;
SIGNAL \opBit4|ALT_INV_carryOut~0_combout\ : std_logic;
SIGNAL \opBit4|ALT_INV_op_SOMA_SUB~0_combout\ : std_logic;
SIGNAL \opBit3|ALT_INV_saida_MUX_B~0_combout\ : std_logic;
SIGNAL \opBit2|ALT_INV_saida_MUX_B~0_combout\ : std_logic;
SIGNAL \opBit1|ALT_INV_carryOut~combout\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
ww_inverteB <= inverteB;
R <= ww_R;
ZERO <= ww_ZERO;
ww_sel <= sel;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_B[31]~input_o\ <= NOT \B[31]~input_o\;
\ALT_INV_A[31]~input_o\ <= NOT \A[31]~input_o\;
\ALT_INV_B[30]~input_o\ <= NOT \B[30]~input_o\;
\ALT_INV_A[30]~input_o\ <= NOT \A[30]~input_o\;
\ALT_INV_B[29]~input_o\ <= NOT \B[29]~input_o\;
\ALT_INV_A[29]~input_o\ <= NOT \A[29]~input_o\;
\ALT_INV_B[28]~input_o\ <= NOT \B[28]~input_o\;
\ALT_INV_A[28]~input_o\ <= NOT \A[28]~input_o\;
\ALT_INV_B[27]~input_o\ <= NOT \B[27]~input_o\;
\ALT_INV_A[27]~input_o\ <= NOT \A[27]~input_o\;
\ALT_INV_B[26]~input_o\ <= NOT \B[26]~input_o\;
\ALT_INV_A[26]~input_o\ <= NOT \A[26]~input_o\;
\ALT_INV_B[25]~input_o\ <= NOT \B[25]~input_o\;
\ALT_INV_A[25]~input_o\ <= NOT \A[25]~input_o\;
\ALT_INV_B[24]~input_o\ <= NOT \B[24]~input_o\;
\ALT_INV_A[24]~input_o\ <= NOT \A[24]~input_o\;
\ALT_INV_B[23]~input_o\ <= NOT \B[23]~input_o\;
\ALT_INV_A[23]~input_o\ <= NOT \A[23]~input_o\;
\ALT_INV_B[22]~input_o\ <= NOT \B[22]~input_o\;
\ALT_INV_A[22]~input_o\ <= NOT \A[22]~input_o\;
\ALT_INV_B[21]~input_o\ <= NOT \B[21]~input_o\;
\ALT_INV_A[21]~input_o\ <= NOT \A[21]~input_o\;
\ALT_INV_B[20]~input_o\ <= NOT \B[20]~input_o\;
\ALT_INV_A[20]~input_o\ <= NOT \A[20]~input_o\;
\ALT_INV_B[19]~input_o\ <= NOT \B[19]~input_o\;
\ALT_INV_A[19]~input_o\ <= NOT \A[19]~input_o\;
\ALT_INV_B[18]~input_o\ <= NOT \B[18]~input_o\;
\ALT_INV_A[18]~input_o\ <= NOT \A[18]~input_o\;
\ALT_INV_B[17]~input_o\ <= NOT \B[17]~input_o\;
\ALT_INV_A[17]~input_o\ <= NOT \A[17]~input_o\;
\ALT_INV_B[16]~input_o\ <= NOT \B[16]~input_o\;
\ALT_INV_A[16]~input_o\ <= NOT \A[16]~input_o\;
\ALT_INV_B[15]~input_o\ <= NOT \B[15]~input_o\;
\ALT_INV_A[15]~input_o\ <= NOT \A[15]~input_o\;
\ALT_INV_B[14]~input_o\ <= NOT \B[14]~input_o\;
\ALT_INV_A[14]~input_o\ <= NOT \A[14]~input_o\;
\ALT_INV_B[13]~input_o\ <= NOT \B[13]~input_o\;
\ALT_INV_A[13]~input_o\ <= NOT \A[13]~input_o\;
\ALT_INV_B[12]~input_o\ <= NOT \B[12]~input_o\;
\ALT_INV_A[12]~input_o\ <= NOT \A[12]~input_o\;
\ALT_INV_B[11]~input_o\ <= NOT \B[11]~input_o\;
\ALT_INV_A[11]~input_o\ <= NOT \A[11]~input_o\;
\ALT_INV_B[10]~input_o\ <= NOT \B[10]~input_o\;
\ALT_INV_A[10]~input_o\ <= NOT \A[10]~input_o\;
\ALT_INV_B[9]~input_o\ <= NOT \B[9]~input_o\;
\ALT_INV_A[9]~input_o\ <= NOT \A[9]~input_o\;
\ALT_INV_B[8]~input_o\ <= NOT \B[8]~input_o\;
\ALT_INV_A[8]~input_o\ <= NOT \A[8]~input_o\;
\ALT_INV_B[7]~input_o\ <= NOT \B[7]~input_o\;
\ALT_INV_A[7]~input_o\ <= NOT \A[7]~input_o\;
\ALT_INV_B[6]~input_o\ <= NOT \B[6]~input_o\;
\ALT_INV_A[6]~input_o\ <= NOT \A[6]~input_o\;
\ALT_INV_B[5]~input_o\ <= NOT \B[5]~input_o\;
\ALT_INV_A[5]~input_o\ <= NOT \A[5]~input_o\;
\ALT_INV_B[4]~input_o\ <= NOT \B[4]~input_o\;
\ALT_INV_A[4]~input_o\ <= NOT \A[4]~input_o\;
\ALT_INV_B[3]~input_o\ <= NOT \B[3]~input_o\;
\ALT_INV_A[3]~input_o\ <= NOT \A[3]~input_o\;
\ALT_INV_B[2]~input_o\ <= NOT \B[2]~input_o\;
\ALT_INV_A[2]~input_o\ <= NOT \A[2]~input_o\;
\ALT_INV_B[1]~input_o\ <= NOT \B[1]~input_o\;
\ALT_INV_A[1]~input_o\ <= NOT \A[1]~input_o\;
\ALT_INV_B[0]~input_o\ <= NOT \B[0]~input_o\;
\ALT_INV_A[0]~input_o\ <= NOT \A[0]~input_o\;
\ALT_INV_inverteB~input_o\ <= NOT \inverteB~input_o\;
\ALT_INV_sel[1]~input_o\ <= NOT \sel[1]~input_o\;
\ALT_INV_sel[0]~input_o\ <= NOT \sel[0]~input_o\;
\ALT_INV_ZERO~8_combout\ <= NOT \ZERO~8_combout\;
\ALT_INV_ZERO~7_combout\ <= NOT \ZERO~7_combout\;
\ALT_INV_ZERO~6_combout\ <= NOT \ZERO~6_combout\;
\ALT_INV_ZERO~5_combout\ <= NOT \ZERO~5_combout\;
\ALT_INV_ZERO~4_combout\ <= NOT \ZERO~4_combout\;
\ALT_INV_ZERO~3_combout\ <= NOT \ZERO~3_combout\;
\ALT_INV_ZERO~2_combout\ <= NOT \ZERO~2_combout\;
\ALT_INV_ZERO~1_combout\ <= NOT \ZERO~1_combout\;
\ALT_INV_ZERO~0_combout\ <= NOT \ZERO~0_combout\;
\opBit31|ALT_INV_R~0_combout\ <= NOT \opBit31|R~0_combout\;
\opBit30|ALT_INV_R~1_combout\ <= NOT \opBit30|R~1_combout\;
\opBit30|ALT_INV_R~0_combout\ <= NOT \opBit30|R~0_combout\;
\opBit30|ALT_INV_op_SOMA_SUB~0_combout\ <= NOT \opBit30|op_SOMA_SUB~0_combout\;
\opBit29|ALT_INV_R~0_combout\ <= NOT \opBit29|R~0_combout\;
\opBit29|ALT_INV_saida_MUX_B~0_combout\ <= NOT \opBit29|saida_MUX_B~0_combout\;
\opBit28|ALT_INV_R~1_combout\ <= NOT \opBit28|R~1_combout\;
\opBit28|ALT_INV_R~0_combout\ <= NOT \opBit28|R~0_combout\;
\opBit28|ALT_INV_op_SOMA_SUB~0_combout\ <= NOT \opBit28|op_SOMA_SUB~0_combout\;
\opBit27|ALT_INV_R~0_combout\ <= NOT \opBit27|R~0_combout\;
\opBit27|ALT_INV_saida_MUX_B~0_combout\ <= NOT \opBit27|saida_MUX_B~0_combout\;
\opBit26|ALT_INV_R~0_combout\ <= NOT \opBit26|R~0_combout\;
\opBit25|ALT_INV_carryOut~combout\ <= NOT \opBit25|carryOut~combout\;
\opBit25|ALT_INV_R~0_combout\ <= NOT \opBit25|R~0_combout\;
\opBit24|ALT_INV_R~0_combout\ <= NOT \opBit24|R~0_combout\;
\opBit23|ALT_INV_carryOut~combout\ <= NOT \opBit23|carryOut~combout\;
\opBit23|ALT_INV_R~1_combout\ <= NOT \opBit23|R~1_combout\;
\opBit23|ALT_INV_R~0_combout\ <= NOT \opBit23|R~0_combout\;
\opBit23|ALT_INV_op_SOMA_SUB~0_combout\ <= NOT \opBit23|op_SOMA_SUB~0_combout\;
\opBit22|ALT_INV_R~0_combout\ <= NOT \opBit22|R~0_combout\;
\opBit21|ALT_INV_R~0_combout\ <= NOT \opBit21|R~0_combout\;
\opBit20|ALT_INV_carryOut~combout\ <= NOT \opBit20|carryOut~combout\;
\opBit20|ALT_INV_R~0_combout\ <= NOT \opBit20|R~0_combout\;
\opBit19|ALT_INV_R~0_combout\ <= NOT \opBit19|R~0_combout\;
\opBit18|ALT_INV_carryOut~combout\ <= NOT \opBit18|carryOut~combout\;
\opBit18|ALT_INV_R~1_combout\ <= NOT \opBit18|R~1_combout\;
\opBit18|ALT_INV_R~0_combout\ <= NOT \opBit18|R~0_combout\;
\opBit18|ALT_INV_op_SOMA_SUB~0_combout\ <= NOT \opBit18|op_SOMA_SUB~0_combout\;
\opBit17|ALT_INV_R~0_combout\ <= NOT \opBit17|R~0_combout\;
\opBit16|ALT_INV_R~0_combout\ <= NOT \opBit16|R~0_combout\;
\opBit15|ALT_INV_carryOut~combout\ <= NOT \opBit15|carryOut~combout\;
\opBit15|ALT_INV_R~0_combout\ <= NOT \opBit15|R~0_combout\;
\opBit14|ALT_INV_R~0_combout\ <= NOT \opBit14|R~0_combout\;
\opBit13|ALT_INV_carryOut~combout\ <= NOT \opBit13|carryOut~combout\;
\opBit13|ALT_INV_R~1_combout\ <= NOT \opBit13|R~1_combout\;
\opBit13|ALT_INV_R~0_combout\ <= NOT \opBit13|R~0_combout\;
\opBit13|ALT_INV_op_SOMA_SUB~0_combout\ <= NOT \opBit13|op_SOMA_SUB~0_combout\;
\opBit12|ALT_INV_R~0_combout\ <= NOT \opBit12|R~0_combout\;
\opBit11|ALT_INV_R~0_combout\ <= NOT \opBit11|R~0_combout\;
\opBit10|ALT_INV_carryOut~combout\ <= NOT \opBit10|carryOut~combout\;
\opBit10|ALT_INV_R~0_combout\ <= NOT \opBit10|R~0_combout\;
\opBit9|ALT_INV_R~0_combout\ <= NOT \opBit9|R~0_combout\;
\opBit8|ALT_INV_carryOut~combout\ <= NOT \opBit8|carryOut~combout\;
\opBit8|ALT_INV_R~1_combout\ <= NOT \opBit8|R~1_combout\;
\opBit8|ALT_INV_R~0_combout\ <= NOT \opBit8|R~0_combout\;
\opBit8|ALT_INV_op_SOMA_SUB~0_combout\ <= NOT \opBit8|op_SOMA_SUB~0_combout\;
\opBit0|ALT_INV_R~2_combout\ <= NOT \opBit0|R~2_combout\;
\opBit7|ALT_INV_R~0_combout\ <= NOT \opBit7|R~0_combout\;
\opBit6|ALT_INV_R~0_combout\ <= NOT \opBit6|R~0_combout\;
\opBit5|ALT_INV_carryOut~combout\ <= NOT \opBit5|carryOut~combout\;
\opBit5|ALT_INV_R~0_combout\ <= NOT \opBit5|R~0_combout\;
\opBit4|ALT_INV_R~0_combout\ <= NOT \opBit4|R~0_combout\;
\opBit3|ALT_INV_carryOut~combout\ <= NOT \opBit3|carryOut~combout\;
\opBit3|ALT_INV_R~0_combout\ <= NOT \opBit3|R~0_combout\;
\opBit2|ALT_INV_carryOut~combout\ <= NOT \opBit2|carryOut~combout\;
\opBit2|ALT_INV_R~0_combout\ <= NOT \opBit2|R~0_combout\;
\opBit1|ALT_INV_R~0_combout\ <= NOT \opBit1|R~0_combout\;
\opBit0|ALT_INV_carryOut~0_combout\ <= NOT \opBit0|carryOut~0_combout\;
\opBit0|ALT_INV_R~1_combout\ <= NOT \opBit0|R~1_combout\;
\opBit0|ALT_INV_R~0_combout\ <= NOT \opBit0|R~0_combout\;
\opBit31|ALT_INV_saida_MUX_B~0_combout\ <= NOT \opBit31|saida_MUX_B~0_combout\;
\opBit30|ALT_INV_carryOut~combout\ <= NOT \opBit30|carryOut~combout\;
\opBit28|ALT_INV_carryOut~combout\ <= NOT \opBit28|carryOut~combout\;
\opBit26|ALT_INV_carryOut~combout\ <= NOT \opBit26|carryOut~combout\;
\opBit26|ALT_INV_saida_MUX_B~0_combout\ <= NOT \opBit26|saida_MUX_B~0_combout\;
\opBit25|ALT_INV_saida_MUX_B~0_combout\ <= NOT \opBit25|saida_MUX_B~0_combout\;
\opBit24|ALT_INV_op_AND~0_combout\ <= NOT \opBit24|op_AND~0_combout\;
\opBit24|ALT_INV_carryOut~0_combout\ <= NOT \opBit24|carryOut~0_combout\;
\opBit24|ALT_INV_op_SOMA_SUB~0_combout\ <= NOT \opBit24|op_SOMA_SUB~0_combout\;
\opBit24|ALT_INV_saida_MUX_B~0_combout\ <= NOT \opBit24|saida_MUX_B~0_combout\;
\opBit23|ALT_INV_saida_MUX_B~0_combout\ <= NOT \opBit23|saida_MUX_B~0_combout\;
\opBit22|ALT_INV_saida_MUX_B~0_combout\ <= NOT \opBit22|saida_MUX_B~0_combout\;
\opBit21|ALT_INV_carryOut~combout\ <= NOT \opBit21|carryOut~combout\;
\opBit21|ALT_INV_saida_MUX_B~0_combout\ <= NOT \opBit21|saida_MUX_B~0_combout\;
\opBit20|ALT_INV_saida_MUX_B~0_combout\ <= NOT \opBit20|saida_MUX_B~0_combout\;
\opBit19|ALT_INV_op_AND~0_combout\ <= NOT \opBit19|op_AND~0_combout\;
\opBit19|ALT_INV_carryOut~0_combout\ <= NOT \opBit19|carryOut~0_combout\;
\opBit19|ALT_INV_op_SOMA_SUB~0_combout\ <= NOT \opBit19|op_SOMA_SUB~0_combout\;
\opBit19|ALT_INV_saida_MUX_B~0_combout\ <= NOT \opBit19|saida_MUX_B~0_combout\;
\opBit18|ALT_INV_saida_MUX_B~0_combout\ <= NOT \opBit18|saida_MUX_B~0_combout\;
\opBit17|ALT_INV_saida_MUX_B~0_combout\ <= NOT \opBit17|saida_MUX_B~0_combout\;
\opBit16|ALT_INV_carryOut~combout\ <= NOT \opBit16|carryOut~combout\;
\opBit16|ALT_INV_saida_MUX_B~0_combout\ <= NOT \opBit16|saida_MUX_B~0_combout\;
\opBit15|ALT_INV_saida_MUX_B~0_combout\ <= NOT \opBit15|saida_MUX_B~0_combout\;
\opBit14|ALT_INV_op_AND~0_combout\ <= NOT \opBit14|op_AND~0_combout\;
\opBit14|ALT_INV_carryOut~0_combout\ <= NOT \opBit14|carryOut~0_combout\;
\opBit14|ALT_INV_op_SOMA_SUB~0_combout\ <= NOT \opBit14|op_SOMA_SUB~0_combout\;
\opBit14|ALT_INV_saida_MUX_B~0_combout\ <= NOT \opBit14|saida_MUX_B~0_combout\;
\opBit13|ALT_INV_saida_MUX_B~0_combout\ <= NOT \opBit13|saida_MUX_B~0_combout\;
\opBit12|ALT_INV_saida_MUX_B~0_combout\ <= NOT \opBit12|saida_MUX_B~0_combout\;
\opBit11|ALT_INV_carryOut~combout\ <= NOT \opBit11|carryOut~combout\;
\opBit11|ALT_INV_saida_MUX_B~0_combout\ <= NOT \opBit11|saida_MUX_B~0_combout\;
\opBit10|ALT_INV_saida_MUX_B~0_combout\ <= NOT \opBit10|saida_MUX_B~0_combout\;
\opBit9|ALT_INV_op_AND~0_combout\ <= NOT \opBit9|op_AND~0_combout\;
\opBit9|ALT_INV_carryOut~0_combout\ <= NOT \opBit9|carryOut~0_combout\;
\opBit9|ALT_INV_op_SOMA_SUB~0_combout\ <= NOT \opBit9|op_SOMA_SUB~0_combout\;
\opBit8|ALT_INV_saida_MUX_B~0_combout\ <= NOT \opBit8|saida_MUX_B~0_combout\;
\opBit7|ALT_INV_saida_MUX_B~0_combout\ <= NOT \opBit7|saida_MUX_B~0_combout\;
\opBit6|ALT_INV_carryOut~combout\ <= NOT \opBit6|carryOut~combout\;
\opBit6|ALT_INV_saida_MUX_B~0_combout\ <= NOT \opBit6|saida_MUX_B~0_combout\;
\opBit5|ALT_INV_saida_MUX_B~0_combout\ <= NOT \opBit5|saida_MUX_B~0_combout\;
\opBit4|ALT_INV_op_AND~0_combout\ <= NOT \opBit4|op_AND~0_combout\;
\opBit4|ALT_INV_carryOut~0_combout\ <= NOT \opBit4|carryOut~0_combout\;
\opBit4|ALT_INV_op_SOMA_SUB~0_combout\ <= NOT \opBit4|op_SOMA_SUB~0_combout\;
\opBit3|ALT_INV_saida_MUX_B~0_combout\ <= NOT \opBit3|saida_MUX_B~0_combout\;
\opBit2|ALT_INV_saida_MUX_B~0_combout\ <= NOT \opBit2|saida_MUX_B~0_combout\;
\opBit1|ALT_INV_carryOut~combout\ <= NOT \opBit1|carryOut~combout\;

-- Location: IOOBUF_X33_Y0_N93
\R[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \opBit0|R~1_combout\,
	devoe => ww_devoe,
	o => ww_R(0));

-- Location: IOOBUF_X16_Y0_N59
\R[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \opBit1|R~0_combout\,
	devoe => ww_devoe,
	o => ww_R(1));

-- Location: IOOBUF_X11_Y0_N53
\R[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \opBit2|R~0_combout\,
	devoe => ww_devoe,
	o => ww_R(2));

-- Location: IOOBUF_X10_Y0_N93
\R[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \opBit3|R~0_combout\,
	devoe => ww_devoe,
	o => ww_R(3));

-- Location: IOOBUF_X12_Y0_N19
\R[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \opBit4|R~0_combout\,
	devoe => ww_devoe,
	o => ww_R(4));

-- Location: IOOBUF_X38_Y0_N53
\R[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \opBit5|R~0_combout\,
	devoe => ww_devoe,
	o => ww_R(5));

-- Location: IOOBUF_X18_Y45_N2
\R[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \opBit6|R~0_combout\,
	devoe => ww_devoe,
	o => ww_R(6));

-- Location: IOOBUF_X29_Y0_N53
\R[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \opBit7|R~0_combout\,
	devoe => ww_devoe,
	o => ww_R(7));

-- Location: IOOBUF_X25_Y0_N36
\R[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \opBit8|R~1_combout\,
	devoe => ww_devoe,
	o => ww_R(8));

-- Location: IOOBUF_X38_Y0_N19
\R[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \opBit9|R~0_combout\,
	devoe => ww_devoe,
	o => ww_R(9));

-- Location: IOOBUF_X12_Y0_N36
\R[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \opBit10|R~0_combout\,
	devoe => ww_devoe,
	o => ww_R(10));

-- Location: IOOBUF_X29_Y0_N36
\R[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \opBit11|R~0_combout\,
	devoe => ww_devoe,
	o => ww_R(11));

-- Location: IOOBUF_X10_Y0_N42
\R[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \opBit12|R~0_combout\,
	devoe => ww_devoe,
	o => ww_R(12));

-- Location: IOOBUF_X14_Y0_N19
\R[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \opBit13|R~1_combout\,
	devoe => ww_devoe,
	o => ww_R(13));

-- Location: IOOBUF_X11_Y0_N2
\R[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \opBit14|R~0_combout\,
	devoe => ww_devoe,
	o => ww_R(14));

-- Location: IOOBUF_X48_Y0_N76
\R[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \opBit15|R~0_combout\,
	devoe => ww_devoe,
	o => ww_R(15));

-- Location: IOOBUF_X23_Y0_N93
\R[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \opBit16|R~0_combout\,
	devoe => ww_devoe,
	o => ww_R(16));

-- Location: IOOBUF_X33_Y0_N42
\R[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \opBit17|R~0_combout\,
	devoe => ww_devoe,
	o => ww_R(17));

-- Location: IOOBUF_X36_Y0_N53
\R[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \opBit18|R~1_combout\,
	devoe => ww_devoe,
	o => ww_R(18));

-- Location: IOOBUF_X36_Y0_N2
\R[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \opBit19|R~0_combout\,
	devoe => ww_devoe,
	o => ww_R(19));

-- Location: IOOBUF_X44_Y0_N36
\R[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \opBit20|R~0_combout\,
	devoe => ww_devoe,
	o => ww_R(20));

-- Location: IOOBUF_X22_Y0_N53
\R[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \opBit21|R~0_combout\,
	devoe => ww_devoe,
	o => ww_R(21));

-- Location: IOOBUF_X23_Y0_N76
\R[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \opBit22|R~0_combout\,
	devoe => ww_devoe,
	o => ww_R(22));

-- Location: IOOBUF_X18_Y0_N2
\R[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \opBit23|R~1_combout\,
	devoe => ww_devoe,
	o => ww_R(23));

-- Location: IOOBUF_X14_Y0_N53
\R[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \opBit24|R~0_combout\,
	devoe => ww_devoe,
	o => ww_R(24));

-- Location: IOOBUF_X22_Y0_N2
\R[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \opBit25|R~0_combout\,
	devoe => ww_devoe,
	o => ww_R(25));

-- Location: IOOBUF_X33_Y0_N59
\R[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \opBit26|R~0_combout\,
	devoe => ww_devoe,
	o => ww_R(26));

-- Location: IOOBUF_X38_Y0_N2
\R[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \opBit27|R~0_combout\,
	devoe => ww_devoe,
	o => ww_R(27));

-- Location: IOOBUF_X43_Y0_N19
\R[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \opBit28|R~1_combout\,
	devoe => ww_devoe,
	o => ww_R(28));

-- Location: IOOBUF_X0_Y18_N45
\R[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \opBit29|R~0_combout\,
	devoe => ww_devoe,
	o => ww_R(29));

-- Location: IOOBUF_X0_Y19_N56
\R[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \opBit30|R~1_combout\,
	devoe => ww_devoe,
	o => ww_R(30));

-- Location: IOOBUF_X16_Y45_N59
\R[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \opBit31|R~0_combout\,
	devoe => ww_devoe,
	o => ww_R(31));

-- Location: IOOBUF_X23_Y0_N59
\ZERO~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_ZERO~8_combout\,
	devoe => ww_devoe,
	o => ww_ZERO);

-- Location: IOIBUF_X29_Y0_N1
\sel[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel(1),
	o => \sel[1]~input_o\);

-- Location: IOIBUF_X24_Y0_N1
\sel[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel(0),
	o => \sel[0]~input_o\);

-- Location: IOIBUF_X0_Y20_N21
\B[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X10_Y0_N75
\inverteB~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inverteB,
	o => \inverteB~input_o\);

-- Location: IOIBUF_X14_Y0_N35
\A[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: LABCELL_X16_Y2_N36
\opBit0|R~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \opBit0|R~0_combout\ = ( \A[0]~input_o\ & ( (!\sel[0]~input_o\ & (!\B[0]~input_o\ $ (((!\sel[1]~input_o\ & !\inverteB~input_o\))))) # (\sel[0]~input_o\ & (!\sel[1]~input_o\)) ) ) # ( !\A[0]~input_o\ & ( (!\sel[1]~input_o\ & (\sel[0]~input_o\ & 
-- (!\B[0]~input_o\ $ (!\inverteB~input_o\)))) # (\sel[1]~input_o\ & (!\sel[0]~input_o\ & (\B[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000100100000001100010010001101010111000100110101011100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sel[1]~input_o\,
	datab => \ALT_INV_sel[0]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_inverteB~input_o\,
	dataf => \ALT_INV_A[0]~input_o\,
	combout => \opBit0|R~0_combout\);

-- Location: IOIBUF_X38_Y45_N1
\B[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(31),
	o => \B[31]~input_o\);

-- Location: LABCELL_X17_Y12_N30
\opBit31|saida_MUX_B~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \opBit31|saida_MUX_B~0_combout\ = !\inverteB~input_o\ $ (!\B[31]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000000001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_inverteB~input_o\,
	datad => \ALT_INV_B[31]~input_o\,
	combout => \opBit31|saida_MUX_B~0_combout\);

-- Location: IOIBUF_X18_Y45_N35
\A[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(30),
	o => \A[30]~input_o\);

-- Location: IOIBUF_X0_Y19_N4
\B[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(30),
	o => \B[30]~input_o\);

-- Location: IOIBUF_X0_Y18_N95
\A[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(29),
	o => \A[29]~input_o\);

-- Location: IOIBUF_X0_Y21_N38
\A[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(28),
	o => \A[28]~input_o\);

-- Location: IOIBUF_X0_Y19_N21
\B[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(27),
	o => \B[27]~input_o\);

-- Location: IOIBUF_X18_Y0_N35
\B[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(25),
	o => \B[25]~input_o\);

-- Location: LABCELL_X19_Y4_N27
\opBit25|saida_MUX_B~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \opBit25|saida_MUX_B~0_combout\ = ( \B[25]~input_o\ & ( !\inverteB~input_o\ ) ) # ( !\B[25]~input_o\ & ( \inverteB~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_inverteB~input_o\,
	dataf => \ALT_INV_B[25]~input_o\,
	combout => \opBit25|saida_MUX_B~0_combout\);

-- Location: IOIBUF_X16_Y45_N41
\B[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(26),
	o => \B[26]~input_o\);

-- Location: MLABCELL_X18_Y12_N3
\opBit26|saida_MUX_B~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \opBit26|saida_MUX_B~0_combout\ = !\inverteB~input_o\ $ (!\B[26]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010010101011010101001010101101010100101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datad => \ALT_INV_B[26]~input_o\,
	combout => \opBit26|saida_MUX_B~0_combout\);

-- Location: IOIBUF_X19_Y0_N35
\A[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(25),
	o => \A[25]~input_o\);

-- Location: IOIBUF_X50_Y0_N1
\A[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(23),
	o => \A[23]~input_o\);

-- Location: IOIBUF_X0_Y19_N38
\A[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(22),
	o => \A[22]~input_o\);

-- Location: IOIBUF_X0_Y21_N4
\B[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(23),
	o => \B[23]~input_o\);

-- Location: LABCELL_X19_Y4_N3
\opBit23|saida_MUX_B~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \opBit23|saida_MUX_B~0_combout\ = ( \B[23]~input_o\ & ( !\inverteB~input_o\ ) ) # ( !\B[23]~input_o\ & ( \inverteB~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_inverteB~input_o\,
	dataf => \ALT_INV_B[23]~input_o\,
	combout => \opBit23|saida_MUX_B~0_combout\);

-- Location: IOIBUF_X46_Y0_N1
\B[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(24),
	o => \B[24]~input_o\);

-- Location: MLABCELL_X18_Y12_N0
\opBit24|saida_MUX_B~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \opBit24|saida_MUX_B~0_combout\ = ( \B[24]~input_o\ & ( !\inverteB~input_o\ ) ) # ( !\B[24]~input_o\ & ( \inverteB~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	dataf => \ALT_INV_B[24]~input_o\,
	combout => \opBit24|saida_MUX_B~0_combout\);

-- Location: IOIBUF_X11_Y0_N35
\A[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(24),
	o => \A[24]~input_o\);

-- Location: LABCELL_X19_Y4_N6
\opBit24|op_SOMA_SUB~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \opBit24|op_SOMA_SUB~0_combout\ = !\opBit24|saida_MUX_B~0_combout\ $ (!\A[24]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \opBit24|ALT_INV_saida_MUX_B~0_combout\,
	datab => \ALT_INV_A[24]~input_o\,
	combout => \opBit24|op_SOMA_SUB~0_combout\);

-- Location: IOIBUF_X40_Y0_N58
\B[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(22),
	o => \B[22]~input_o\);

-- Location: LABCELL_X19_Y4_N0
\opBit22|saida_MUX_B~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \opBit22|saida_MUX_B~0_combout\ = ( \B[22]~input_o\ & ( !\inverteB~input_o\ ) ) # ( !\B[22]~input_o\ & ( \inverteB~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_inverteB~input_o\,
	dataf => \ALT_INV_B[22]~input_o\,
	combout => \opBit22|saida_MUX_B~0_combout\);

-- Location: IOIBUF_X34_Y0_N35
\B[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(20),
	o => \B[20]~input_o\);

-- Location: MLABCELL_X23_Y2_N39
\opBit20|saida_MUX_B~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \opBit20|saida_MUX_B~0_combout\ = ( \B[20]~input_o\ & ( !\inverteB~input_o\ ) ) # ( !\B[20]~input_o\ & ( \inverteB~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	dataf => \ALT_INV_B[20]~input_o\,
	combout => \opBit20|saida_MUX_B~0_combout\);

-- Location: IOIBUF_X34_Y0_N52
\B[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(21),
	o => \B[21]~input_o\);

-- Location: LABCELL_X25_Y2_N15
\opBit21|saida_MUX_B~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \opBit21|saida_MUX_B~0_combout\ = !\inverteB~input_o\ $ (!\B[21]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000000001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_inverteB~input_o\,
	datad => \ALT_INV_B[21]~input_o\,
	combout => \opBit21|saida_MUX_B~0_combout\);

-- Location: IOIBUF_X24_Y0_N35
\B[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(19),
	o => \B[19]~input_o\);

-- Location: MLABCELL_X23_Y2_N36
\opBit19|saida_MUX_B~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \opBit19|saida_MUX_B~0_combout\ = ( \B[19]~input_o\ & ( !\inverteB~input_o\ ) ) # ( !\B[19]~input_o\ & ( \inverteB~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	dataf => \ALT_INV_B[19]~input_o\,
	combout => \opBit19|saida_MUX_B~0_combout\);

-- Location: IOIBUF_X24_Y0_N18
\A[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(19),
	o => \A[19]~input_o\);

-- Location: LABCELL_X25_Y2_N0
\opBit19|op_AND~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \opBit19|op_AND~0_combout\ = ( \A[19]~input_o\ & ( \opBit19|saida_MUX_B~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \opBit19|ALT_INV_saida_MUX_B~0_combout\,
	dataf => \ALT_INV_A[19]~input_o\,
	combout => \opBit19|op_AND~0_combout\);

-- Location: IOIBUF_X38_Y0_N35
\A[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(21),
	o => \A[21]~input_o\);

-- Location: IOIBUF_X24_Y0_N52
\A[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(18),
	o => \A[18]~input_o\);

-- Location: IOIBUF_X0_Y18_N61
\B[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(17),
	o => \B[17]~input_o\);

-- Location: LABCELL_X21_Y2_N12
\opBit17|saida_MUX_B~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \opBit17|saida_MUX_B~0_combout\ = ( \inverteB~input_o\ & ( !\B[17]~input_o\ ) ) # ( !\inverteB~input_o\ & ( \B[17]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000000001111000011111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[17]~input_o\,
	datae => \ALT_INV_inverteB~input_o\,
	combout => \opBit17|saida_MUX_B~0_combout\);

-- Location: LABCELL_X25_Y2_N3
\opBit19|op_SOMA_SUB~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \opBit19|op_SOMA_SUB~0_combout\ = ( \A[19]~input_o\ & ( !\opBit19|saida_MUX_B~0_combout\ ) ) # ( !\A[19]~input_o\ & ( \opBit19|saida_MUX_B~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \opBit19|ALT_INV_saida_MUX_B~0_combout\,
	dataf => \ALT_INV_A[19]~input_o\,
	combout => \opBit19|op_SOMA_SUB~0_combout\);

-- Location: IOIBUF_X0_Y18_N78
\B[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(18),
	o => \B[18]~input_o\);

-- Location: LABCELL_X21_Y2_N51
\opBit18|saida_MUX_B~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \opBit18|saida_MUX_B~0_combout\ = ( \B[18]~input_o\ & ( !\inverteB~input_o\ ) ) # ( !\B[18]~input_o\ & ( \inverteB~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101101010101010101001010101010101011010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datae => \ALT_INV_B[18]~input_o\,
	combout => \opBit18|saida_MUX_B~0_combout\);

-- Location: IOIBUF_X25_Y0_N1
\A[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(17),
	o => \A[17]~input_o\);

-- Location: IOIBUF_X34_Y0_N1
\B[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: MLABCELL_X23_Y2_N21
\opBit15|saida_MUX_B~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \opBit15|saida_MUX_B~0_combout\ = ( \B[15]~input_o\ & ( !\inverteB~input_o\ ) ) # ( !\B[15]~input_o\ & ( \inverteB~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101101010101010101001010101010101011010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datae => \ALT_INV_B[15]~input_o\,
	combout => \opBit15|saida_MUX_B~0_combout\);

-- Location: IOIBUF_X22_Y45_N18
\B[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: LABCELL_X21_Y2_N30
\opBit12|saida_MUX_B~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \opBit12|saida_MUX_B~0_combout\ = ( !\inverteB~input_o\ & ( \B[12]~input_o\ ) ) # ( \inverteB~input_o\ & ( !\B[12]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_inverteB~input_o\,
	dataf => \ALT_INV_B[12]~input_o\,
	combout => \opBit12|saida_MUX_B~0_combout\);

-- Location: IOIBUF_X14_Y0_N1
\A[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: IOIBUF_X19_Y0_N52
\B[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: LABCELL_X20_Y2_N3
\opBit9|op_AND~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \opBit9|op_AND~0_combout\ = ( \B[9]~input_o\ & ( (!\inverteB~input_o\ & \A[9]~input_o\) ) ) # ( !\B[9]~input_o\ & ( (\inverteB~input_o\ & \A[9]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_inverteB~input_o\,
	datad => \ALT_INV_A[9]~input_o\,
	dataf => \ALT_INV_B[9]~input_o\,
	combout => \opBit9|op_AND~0_combout\);

-- Location: IOIBUF_X22_Y0_N18
\B[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: LABCELL_X19_Y2_N15
\opBit10|saida_MUX_B~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \opBit10|saida_MUX_B~0_combout\ = ( \B[10]~input_o\ & ( !\inverteB~input_o\ ) ) # ( !\B[10]~input_o\ & ( \inverteB~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_inverteB~input_o\,
	dataf => \ALT_INV_B[10]~input_o\,
	combout => \opBit10|saida_MUX_B~0_combout\);

-- Location: IOIBUF_X16_Y0_N75
\A[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: IOIBUF_X12_Y0_N1
\B[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: LABCELL_X16_Y2_N33
\opBit5|saida_MUX_B~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \opBit5|saida_MUX_B~0_combout\ = ( \B[5]~input_o\ & ( !\inverteB~input_o\ ) ) # ( !\B[5]~input_o\ & ( \inverteB~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	dataf => \ALT_INV_B[5]~input_o\,
	combout => \opBit5|saida_MUX_B~0_combout\);

-- Location: IOIBUF_X16_Y0_N92
\B[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: IOIBUF_X40_Y0_N41
\A[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: LABCELL_X16_Y2_N24
\opBit4|op_AND~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \opBit4|op_AND~0_combout\ = ( \A[4]~input_o\ & ( !\B[4]~input_o\ $ (!\inverteB~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000111100001111000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[4]~input_o\,
	datac => \ALT_INV_inverteB~input_o\,
	dataf => \ALT_INV_A[4]~input_o\,
	combout => \opBit4|op_AND~0_combout\);

-- Location: IOIBUF_X10_Y0_N58
\A[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: IOIBUF_X20_Y45_N18
\A[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LABCELL_X16_Y2_N15
\opBit4|op_SOMA_SUB~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \opBit4|op_SOMA_SUB~0_combout\ = ( \A[4]~input_o\ & ( !\B[4]~input_o\ $ (\inverteB~input_o\) ) ) # ( !\A[4]~input_o\ & ( !\B[4]~input_o\ $ (!\inverteB~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[4]~input_o\,
	datad => \ALT_INV_inverteB~input_o\,
	dataf => \ALT_INV_A[4]~input_o\,
	combout => \opBit4|op_SOMA_SUB~0_combout\);

-- Location: IOIBUF_X18_Y0_N52
\A[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X19_Y0_N1
\B[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LABCELL_X16_Y2_N0
\opBit1|carryOut\ : cyclonev_lcell_comb
-- Equation(s):
-- \opBit1|carryOut~combout\ = ( \B[1]~input_o\ & ( (!\inverteB~input_o\ & (((\B[0]~input_o\ & \A[0]~input_o\)) # (\A[1]~input_o\))) # (\inverteB~input_o\ & (\A[1]~input_o\ & ((!\B[0]~input_o\) # (\A[0]~input_o\)))) ) ) # ( !\B[1]~input_o\ & ( 
-- (!\inverteB~input_o\ & (\B[0]~input_o\ & (\A[0]~input_o\ & \A[1]~input_o\))) # (\inverteB~input_o\ & ((!\B[0]~input_o\) # ((\A[1]~input_o\) # (\A[0]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010101010111010001010101011100000010111011110000001011101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[0]~input_o\,
	datad => \ALT_INV_A[1]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \opBit1|carryOut~combout\);

-- Location: IOIBUF_X33_Y0_N75
\B[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LABCELL_X16_Y2_N9
\opBit2|saida_MUX_B~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \opBit2|saida_MUX_B~0_combout\ = ( \B[2]~input_o\ & ( !\inverteB~input_o\ ) ) # ( !\B[2]~input_o\ & ( \inverteB~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \opBit2|saida_MUX_B~0_combout\);

-- Location: IOIBUF_X22_Y0_N35
\A[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X36_Y0_N18
\B[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LABCELL_X16_Y2_N6
\opBit3|saida_MUX_B~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \opBit3|saida_MUX_B~0_combout\ = ( \B[3]~input_o\ & ( !\inverteB~input_o\ ) ) # ( !\B[3]~input_o\ & ( \inverteB~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \opBit3|saida_MUX_B~0_combout\);

-- Location: LABCELL_X16_Y2_N18
\opBit4|carryOut~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \opBit4|carryOut~0_combout\ = ( \A[2]~input_o\ & ( \opBit3|saida_MUX_B~0_combout\ & ( (\opBit4|op_SOMA_SUB~0_combout\ & (((\opBit2|saida_MUX_B~0_combout\) # (\opBit1|carryOut~combout\)) # (\A[3]~input_o\))) ) ) ) # ( !\A[2]~input_o\ & ( 
-- \opBit3|saida_MUX_B~0_combout\ & ( (\opBit4|op_SOMA_SUB~0_combout\ & (((\opBit1|carryOut~combout\ & \opBit2|saida_MUX_B~0_combout\)) # (\A[3]~input_o\))) ) ) ) # ( \A[2]~input_o\ & ( !\opBit3|saida_MUX_B~0_combout\ & ( (\A[3]~input_o\ & 
-- (\opBit4|op_SOMA_SUB~0_combout\ & ((\opBit2|saida_MUX_B~0_combout\) # (\opBit1|carryOut~combout\)))) ) ) ) # ( !\A[2]~input_o\ & ( !\opBit3|saida_MUX_B~0_combout\ & ( (\A[3]~input_o\ & (\opBit4|op_SOMA_SUB~0_combout\ & (\opBit1|carryOut~combout\ & 
-- \opBit2|saida_MUX_B~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000010001000100010001000100110001001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[3]~input_o\,
	datab => \opBit4|ALT_INV_op_SOMA_SUB~0_combout\,
	datac => \opBit1|ALT_INV_carryOut~combout\,
	datad => \opBit2|ALT_INV_saida_MUX_B~0_combout\,
	datae => \ALT_INV_A[2]~input_o\,
	dataf => \opBit3|ALT_INV_saida_MUX_B~0_combout\,
	combout => \opBit4|carryOut~0_combout\);

-- Location: IOIBUF_X43_Y0_N52
\B[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: LABCELL_X20_Y2_N0
\opBit6|saida_MUX_B~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \opBit6|saida_MUX_B~0_combout\ = ( \B[6]~input_o\ & ( !\inverteB~input_o\ ) ) # ( !\B[6]~input_o\ & ( \inverteB~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_inverteB~input_o\,
	dataf => \ALT_INV_B[6]~input_o\,
	combout => \opBit6|saida_MUX_B~0_combout\);

-- Location: IOIBUF_X40_Y0_N75
\A[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: LABCELL_X19_Y2_N0
\opBit6|carryOut\ : cyclonev_lcell_comb
-- Equation(s):
-- \opBit6|carryOut~combout\ = ( \opBit6|saida_MUX_B~0_combout\ & ( \A[5]~input_o\ & ( (!\opBit5|saida_MUX_B~0_combout\ & (!\opBit4|op_AND~0_combout\ & (!\A[6]~input_o\ & !\opBit4|carryOut~0_combout\))) ) ) ) # ( !\opBit6|saida_MUX_B~0_combout\ & ( 
-- \A[5]~input_o\ & ( (!\A[6]~input_o\) # ((!\opBit5|saida_MUX_B~0_combout\ & (!\opBit4|op_AND~0_combout\ & !\opBit4|carryOut~0_combout\))) ) ) ) # ( \opBit6|saida_MUX_B~0_combout\ & ( !\A[5]~input_o\ & ( (!\A[6]~input_o\ & ((!\opBit5|saida_MUX_B~0_combout\) 
-- # ((!\opBit4|op_AND~0_combout\ & !\opBit4|carryOut~0_combout\)))) ) ) ) # ( !\opBit6|saida_MUX_B~0_combout\ & ( !\A[5]~input_o\ & ( (!\opBit5|saida_MUX_B~0_combout\) # ((!\A[6]~input_o\) # ((!\opBit4|op_AND~0_combout\ & !\opBit4|carryOut~0_combout\))) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111011111010111000001010000011111000111100001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \opBit5|ALT_INV_saida_MUX_B~0_combout\,
	datab => \opBit4|ALT_INV_op_AND~0_combout\,
	datac => \ALT_INV_A[6]~input_o\,
	datad => \opBit4|ALT_INV_carryOut~0_combout\,
	datae => \opBit6|ALT_INV_saida_MUX_B~0_combout\,
	dataf => \ALT_INV_A[5]~input_o\,
	combout => \opBit6|carryOut~combout\);

-- Location: IOIBUF_X12_Y0_N52
\B[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: LABCELL_X19_Y2_N39
\opBit7|saida_MUX_B~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \opBit7|saida_MUX_B~0_combout\ = !\inverteB~input_o\ $ (!\B[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000000001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_inverteB~input_o\,
	datad => \ALT_INV_B[7]~input_o\,
	combout => \opBit7|saida_MUX_B~0_combout\);

-- Location: LABCELL_X19_Y2_N21
\opBit9|op_SOMA_SUB~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \opBit9|op_SOMA_SUB~0_combout\ = ( \B[9]~input_o\ & ( !\A[9]~input_o\ $ (\inverteB~input_o\) ) ) # ( !\B[9]~input_o\ & ( !\A[9]~input_o\ $ (!\inverteB~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101010100101101001011010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[9]~input_o\,
	datac => \ALT_INV_inverteB~input_o\,
	dataf => \ALT_INV_B[9]~input_o\,
	combout => \opBit9|op_SOMA_SUB~0_combout\);

-- Location: IOIBUF_X25_Y0_N52
\B[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: LABCELL_X19_Y2_N12
\opBit8|saida_MUX_B~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \opBit8|saida_MUX_B~0_combout\ = ( \B[8]~input_o\ & ( !\inverteB~input_o\ ) ) # ( !\B[8]~input_o\ & ( \inverteB~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_inverteB~input_o\,
	dataf => \ALT_INV_B[8]~input_o\,
	combout => \opBit8|saida_MUX_B~0_combout\);

-- Location: IOIBUF_X0_Y20_N4
\A[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: IOIBUF_X36_Y0_N35
\A[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: LABCELL_X19_Y2_N54
\opBit9|carryOut~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \opBit9|carryOut~0_combout\ = ( \A[7]~input_o\ & ( \A[8]~input_o\ & ( (\opBit9|op_SOMA_SUB~0_combout\ & ((!\opBit6|carryOut~combout\) # ((\opBit8|saida_MUX_B~0_combout\) # (\opBit7|saida_MUX_B~0_combout\)))) ) ) ) # ( !\A[7]~input_o\ & ( \A[8]~input_o\ & 
-- ( (\opBit9|op_SOMA_SUB~0_combout\ & (((!\opBit6|carryOut~combout\ & \opBit7|saida_MUX_B~0_combout\)) # (\opBit8|saida_MUX_B~0_combout\))) ) ) ) # ( \A[7]~input_o\ & ( !\A[8]~input_o\ & ( (\opBit9|op_SOMA_SUB~0_combout\ & (\opBit8|saida_MUX_B~0_combout\ & 
-- ((!\opBit6|carryOut~combout\) # (\opBit7|saida_MUX_B~0_combout\)))) ) ) ) # ( !\A[7]~input_o\ & ( !\A[8]~input_o\ & ( (!\opBit6|carryOut~combout\ & (\opBit7|saida_MUX_B~0_combout\ & (\opBit9|op_SOMA_SUB~0_combout\ & \opBit8|saida_MUX_B~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000101100000010000011110000101100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \opBit6|ALT_INV_carryOut~combout\,
	datab => \opBit7|ALT_INV_saida_MUX_B~0_combout\,
	datac => \opBit9|ALT_INV_op_SOMA_SUB~0_combout\,
	datad => \opBit8|ALT_INV_saida_MUX_B~0_combout\,
	datae => \ALT_INV_A[7]~input_o\,
	dataf => \ALT_INV_A[8]~input_o\,
	combout => \opBit9|carryOut~0_combout\);

-- Location: IOIBUF_X29_Y0_N18
\B[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: LABCELL_X20_Y2_N36
\opBit11|saida_MUX_B~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \opBit11|saida_MUX_B~0_combout\ = !\inverteB~input_o\ $ (!\B[11]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100001111000011110000111100001111000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_inverteB~input_o\,
	datac => \ALT_INV_B[11]~input_o\,
	combout => \opBit11|saida_MUX_B~0_combout\);

-- Location: IOIBUF_X52_Y0_N18
\A[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: LABCELL_X20_Y2_N42
\opBit11|carryOut\ : cyclonev_lcell_comb
-- Equation(s):
-- \opBit11|carryOut~combout\ = ( !\opBit11|saida_MUX_B~0_combout\ & ( \A[11]~input_o\ & ( (!\opBit10|saida_MUX_B~0_combout\ & ((!\A[10]~input_o\) # ((!\opBit9|op_AND~0_combout\ & !\opBit9|carryOut~0_combout\)))) # (\opBit10|saida_MUX_B~0_combout\ & 
-- (!\opBit9|op_AND~0_combout\ & (!\A[10]~input_o\ & !\opBit9|carryOut~0_combout\))) ) ) ) # ( \opBit11|saida_MUX_B~0_combout\ & ( !\A[11]~input_o\ & ( (!\opBit10|saida_MUX_B~0_combout\ & ((!\A[10]~input_o\) # ((!\opBit9|op_AND~0_combout\ & 
-- !\opBit9|carryOut~0_combout\)))) # (\opBit10|saida_MUX_B~0_combout\ & (!\opBit9|op_AND~0_combout\ & (!\A[10]~input_o\ & !\opBit9|carryOut~0_combout\))) ) ) ) # ( !\opBit11|saida_MUX_B~0_combout\ & ( !\A[11]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111010001100000011101000110000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \opBit9|ALT_INV_op_AND~0_combout\,
	datab => \opBit10|ALT_INV_saida_MUX_B~0_combout\,
	datac => \ALT_INV_A[10]~input_o\,
	datad => \opBit9|ALT_INV_carryOut~0_combout\,
	datae => \opBit11|ALT_INV_saida_MUX_B~0_combout\,
	dataf => \ALT_INV_A[11]~input_o\,
	combout => \opBit11|carryOut~combout\);

-- Location: IOIBUF_X0_Y21_N55
\A[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: IOIBUF_X18_Y0_N18
\A[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: IOIBUF_X11_Y0_N18
\B[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: MLABCELL_X23_Y2_N3
\opBit14|saida_MUX_B~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \opBit14|saida_MUX_B~0_combout\ = ( \B[14]~input_o\ & ( !\inverteB~input_o\ ) ) # ( !\B[14]~input_o\ & ( \inverteB~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101101010101010101001010101010101011010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datae => \ALT_INV_B[14]~input_o\,
	combout => \opBit14|saida_MUX_B~0_combout\);

-- Location: MLABCELL_X23_Y2_N6
\opBit14|op_SOMA_SUB~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \opBit14|op_SOMA_SUB~0_combout\ = ( \opBit14|saida_MUX_B~0_combout\ & ( !\A[14]~input_o\ ) ) # ( !\opBit14|saida_MUX_B~0_combout\ & ( \A[14]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000000001111000011111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[14]~input_o\,
	datae => \opBit14|ALT_INV_saida_MUX_B~0_combout\,
	combout => \opBit14|op_SOMA_SUB~0_combout\);

-- Location: IOIBUF_X0_Y20_N55
\A[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: IOIBUF_X23_Y0_N41
\B[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: LABCELL_X21_Y2_N39
\opBit13|saida_MUX_B~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \opBit13|saida_MUX_B~0_combout\ = ( \inverteB~input_o\ & ( !\B[13]~input_o\ ) ) # ( !\inverteB~input_o\ & ( \B[13]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000000001111000011111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[13]~input_o\,
	datae => \ALT_INV_inverteB~input_o\,
	combout => \opBit13|saida_MUX_B~0_combout\);

-- Location: LABCELL_X20_Y2_N18
\opBit14|carryOut~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \opBit14|carryOut~0_combout\ = ( \A[12]~input_o\ & ( \opBit13|saida_MUX_B~0_combout\ & ( (\opBit14|op_SOMA_SUB~0_combout\ & (((!\opBit11|carryOut~combout\) # (\A[13]~input_o\)) # (\opBit12|saida_MUX_B~0_combout\))) ) ) ) # ( !\A[12]~input_o\ & ( 
-- \opBit13|saida_MUX_B~0_combout\ & ( (\opBit14|op_SOMA_SUB~0_combout\ & (((\opBit12|saida_MUX_B~0_combout\ & !\opBit11|carryOut~combout\)) # (\A[13]~input_o\))) ) ) ) # ( \A[12]~input_o\ & ( !\opBit13|saida_MUX_B~0_combout\ & ( (\A[13]~input_o\ & 
-- (\opBit14|op_SOMA_SUB~0_combout\ & ((!\opBit11|carryOut~combout\) # (\opBit12|saida_MUX_B~0_combout\)))) ) ) ) # ( !\A[12]~input_o\ & ( !\opBit13|saida_MUX_B~0_combout\ & ( (\opBit12|saida_MUX_B~0_combout\ & (!\opBit11|carryOut~combout\ & (\A[13]~input_o\ 
-- & \opBit14|op_SOMA_SUB~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000110100000000010011110000000011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \opBit12|ALT_INV_saida_MUX_B~0_combout\,
	datab => \opBit11|ALT_INV_carryOut~combout\,
	datac => \ALT_INV_A[13]~input_o\,
	datad => \opBit14|ALT_INV_op_SOMA_SUB~0_combout\,
	datae => \ALT_INV_A[12]~input_o\,
	dataf => \opBit13|ALT_INV_saida_MUX_B~0_combout\,
	combout => \opBit14|carryOut~0_combout\);

-- Location: IOIBUF_X34_Y0_N18
\B[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(16),
	o => \B[16]~input_o\);

-- Location: MLABCELL_X23_Y2_N24
\opBit16|saida_MUX_B~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \opBit16|saida_MUX_B~0_combout\ = !\inverteB~input_o\ $ (!\B[16]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000000001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_inverteB~input_o\,
	datad => \ALT_INV_B[16]~input_o\,
	combout => \opBit16|saida_MUX_B~0_combout\);

-- Location: MLABCELL_X23_Y2_N42
\opBit14|op_AND~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \opBit14|op_AND~0_combout\ = ( \opBit14|saida_MUX_B~0_combout\ & ( \A[14]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[14]~input_o\,
	datae => \opBit14|ALT_INV_saida_MUX_B~0_combout\,
	combout => \opBit14|op_AND~0_combout\);

-- Location: IOIBUF_X16_Y0_N41
\A[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(16),
	o => \A[16]~input_o\);

-- Location: IOIBUF_X25_Y0_N18
\A[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: MLABCELL_X23_Y2_N30
\opBit16|carryOut\ : cyclonev_lcell_comb
-- Equation(s):
-- \opBit16|carryOut~combout\ = ( \A[16]~input_o\ & ( \A[15]~input_o\ & ( (!\opBit15|saida_MUX_B~0_combout\ & (!\opBit14|carryOut~0_combout\ & (!\opBit16|saida_MUX_B~0_combout\ & !\opBit14|op_AND~0_combout\))) ) ) ) # ( !\A[16]~input_o\ & ( \A[15]~input_o\ & 
-- ( (!\opBit16|saida_MUX_B~0_combout\) # ((!\opBit15|saida_MUX_B~0_combout\ & (!\opBit14|carryOut~0_combout\ & !\opBit14|op_AND~0_combout\))) ) ) ) # ( \A[16]~input_o\ & ( !\A[15]~input_o\ & ( (!\opBit16|saida_MUX_B~0_combout\ & 
-- ((!\opBit15|saida_MUX_B~0_combout\) # ((!\opBit14|carryOut~0_combout\ & !\opBit14|op_AND~0_combout\)))) ) ) ) # ( !\A[16]~input_o\ & ( !\A[15]~input_o\ & ( (!\opBit15|saida_MUX_B~0_combout\) # ((!\opBit16|saida_MUX_B~0_combout\) # 
-- ((!\opBit14|carryOut~0_combout\ & !\opBit14|op_AND~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111011111010111000001010000011111000111100001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \opBit15|ALT_INV_saida_MUX_B~0_combout\,
	datab => \opBit14|ALT_INV_carryOut~0_combout\,
	datac => \opBit16|ALT_INV_saida_MUX_B~0_combout\,
	datad => \opBit14|ALT_INV_op_AND~0_combout\,
	datae => \ALT_INV_A[16]~input_o\,
	dataf => \ALT_INV_A[15]~input_o\,
	combout => \opBit16|carryOut~combout\);

-- Location: LABCELL_X25_Y2_N36
\opBit19|carryOut~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \opBit19|carryOut~0_combout\ = ( \A[17]~input_o\ & ( \opBit16|carryOut~combout\ & ( (\opBit19|op_SOMA_SUB~0_combout\ & ((!\A[18]~input_o\ & (\opBit17|saida_MUX_B~0_combout\ & \opBit18|saida_MUX_B~0_combout\)) # (\A[18]~input_o\ & 
-- ((\opBit18|saida_MUX_B~0_combout\) # (\opBit17|saida_MUX_B~0_combout\))))) ) ) ) # ( !\A[17]~input_o\ & ( \opBit16|carryOut~combout\ & ( (\A[18]~input_o\ & (\opBit19|op_SOMA_SUB~0_combout\ & \opBit18|saida_MUX_B~0_combout\)) ) ) ) # ( \A[17]~input_o\ & ( 
-- !\opBit16|carryOut~combout\ & ( (\opBit19|op_SOMA_SUB~0_combout\ & ((\opBit18|saida_MUX_B~0_combout\) # (\A[18]~input_o\))) ) ) ) # ( !\A[17]~input_o\ & ( !\opBit16|carryOut~combout\ & ( (\opBit19|op_SOMA_SUB~0_combout\ & ((!\A[18]~input_o\ & 
-- (\opBit17|saida_MUX_B~0_combout\ & \opBit18|saida_MUX_B~0_combout\)) # (\A[18]~input_o\ & ((\opBit18|saida_MUX_B~0_combout\) # (\opBit17|saida_MUX_B~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000111000001010000111100000000000001010000000100000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[18]~input_o\,
	datab => \opBit17|ALT_INV_saida_MUX_B~0_combout\,
	datac => \opBit19|ALT_INV_op_SOMA_SUB~0_combout\,
	datad => \opBit18|ALT_INV_saida_MUX_B~0_combout\,
	datae => \ALT_INV_A[17]~input_o\,
	dataf => \opBit16|ALT_INV_carryOut~combout\,
	combout => \opBit19|carryOut~0_combout\);

-- Location: IOIBUF_X19_Y0_N18
\A[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(20),
	o => \A[20]~input_o\);

-- Location: LABCELL_X25_Y2_N48
\opBit21|carryOut\ : cyclonev_lcell_comb
-- Equation(s):
-- \opBit21|carryOut~combout\ = ( \opBit19|carryOut~0_combout\ & ( \A[20]~input_o\ & ( (!\opBit21|saida_MUX_B~0_combout\ & !\A[21]~input_o\) ) ) ) # ( !\opBit19|carryOut~0_combout\ & ( \A[20]~input_o\ & ( (!\opBit21|saida_MUX_B~0_combout\ & 
-- ((!\A[21]~input_o\) # ((!\opBit20|saida_MUX_B~0_combout\ & !\opBit19|op_AND~0_combout\)))) # (\opBit21|saida_MUX_B~0_combout\ & (!\opBit20|saida_MUX_B~0_combout\ & (!\opBit19|op_AND~0_combout\ & !\A[21]~input_o\))) ) ) ) # ( \opBit19|carryOut~0_combout\ & 
-- ( !\A[20]~input_o\ & ( (!\opBit20|saida_MUX_B~0_combout\ & ((!\opBit21|saida_MUX_B~0_combout\) # (!\A[21]~input_o\))) # (\opBit20|saida_MUX_B~0_combout\ & (!\opBit21|saida_MUX_B~0_combout\ & !\A[21]~input_o\)) ) ) ) # ( !\opBit19|carryOut~0_combout\ & ( 
-- !\A[20]~input_o\ & ( (!\opBit21|saida_MUX_B~0_combout\ & ((!\opBit20|saida_MUX_B~0_combout\) # ((!\opBit19|op_AND~0_combout\) # (!\A[21]~input_o\)))) # (\opBit21|saida_MUX_B~0_combout\ & (!\A[21]~input_o\ & ((!\opBit20|saida_MUX_B~0_combout\) # 
-- (!\opBit19|op_AND~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111011001000111011101000100011101100100000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \opBit20|ALT_INV_saida_MUX_B~0_combout\,
	datab => \opBit21|ALT_INV_saida_MUX_B~0_combout\,
	datac => \opBit19|ALT_INV_op_AND~0_combout\,
	datad => \ALT_INV_A[21]~input_o\,
	datae => \opBit19|ALT_INV_carryOut~0_combout\,
	dataf => \ALT_INV_A[20]~input_o\,
	combout => \opBit21|carryOut~combout\);

-- Location: LABCELL_X19_Y4_N42
\opBit24|carryOut~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \opBit24|carryOut~0_combout\ = ( \opBit22|saida_MUX_B~0_combout\ & ( \opBit21|carryOut~combout\ & ( (\opBit24|op_SOMA_SUB~0_combout\ & ((!\A[23]~input_o\ & (\A[22]~input_o\ & \opBit23|saida_MUX_B~0_combout\)) # (\A[23]~input_o\ & 
-- ((\opBit23|saida_MUX_B~0_combout\) # (\A[22]~input_o\))))) ) ) ) # ( !\opBit22|saida_MUX_B~0_combout\ & ( \opBit21|carryOut~combout\ & ( (\A[23]~input_o\ & (\opBit23|saida_MUX_B~0_combout\ & \opBit24|op_SOMA_SUB~0_combout\)) ) ) ) # ( 
-- \opBit22|saida_MUX_B~0_combout\ & ( !\opBit21|carryOut~combout\ & ( (\opBit24|op_SOMA_SUB~0_combout\ & ((\opBit23|saida_MUX_B~0_combout\) # (\A[23]~input_o\))) ) ) ) # ( !\opBit22|saida_MUX_B~0_combout\ & ( !\opBit21|carryOut~combout\ & ( 
-- (\opBit24|op_SOMA_SUB~0_combout\ & ((!\A[23]~input_o\ & (\A[22]~input_o\ & \opBit23|saida_MUX_B~0_combout\)) # (\A[23]~input_o\ & ((\opBit23|saida_MUX_B~0_combout\) # (\A[22]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010111000000000101111100000000000001010000000000010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[23]~input_o\,
	datab => \ALT_INV_A[22]~input_o\,
	datac => \opBit23|ALT_INV_saida_MUX_B~0_combout\,
	datad => \opBit24|ALT_INV_op_SOMA_SUB~0_combout\,
	datae => \opBit22|ALT_INV_saida_MUX_B~0_combout\,
	dataf => \opBit21|ALT_INV_carryOut~combout\,
	combout => \opBit24|carryOut~0_combout\);

-- Location: IOIBUF_X18_Y45_N52
\A[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(26),
	o => \A[26]~input_o\);

-- Location: LABCELL_X19_Y4_N48
\opBit24|op_AND~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \opBit24|op_AND~0_combout\ = (\A[24]~input_o\ & \opBit24|saida_MUX_B~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[24]~input_o\,
	datac => \opBit24|ALT_INV_saida_MUX_B~0_combout\,
	combout => \opBit24|op_AND~0_combout\);

-- Location: LABCELL_X19_Y4_N30
\opBit26|carryOut\ : cyclonev_lcell_comb
-- Equation(s):
-- \opBit26|carryOut~combout\ = ( \A[26]~input_o\ & ( \opBit24|op_AND~0_combout\ & ( (!\opBit25|saida_MUX_B~0_combout\ & (!\opBit26|saida_MUX_B~0_combout\ & !\A[25]~input_o\)) ) ) ) # ( !\A[26]~input_o\ & ( \opBit24|op_AND~0_combout\ & ( 
-- (!\opBit26|saida_MUX_B~0_combout\) # ((!\opBit25|saida_MUX_B~0_combout\ & !\A[25]~input_o\)) ) ) ) # ( \A[26]~input_o\ & ( !\opBit24|op_AND~0_combout\ & ( (!\opBit26|saida_MUX_B~0_combout\ & ((!\opBit25|saida_MUX_B~0_combout\ & ((!\A[25]~input_o\) # 
-- (!\opBit24|carryOut~0_combout\))) # (\opBit25|saida_MUX_B~0_combout\ & (!\A[25]~input_o\ & !\opBit24|carryOut~0_combout\)))) ) ) ) # ( !\A[26]~input_o\ & ( !\opBit24|op_AND~0_combout\ & ( (!\opBit26|saida_MUX_B~0_combout\) # 
-- ((!\opBit25|saida_MUX_B~0_combout\ & ((!\A[25]~input_o\) # (!\opBit24|carryOut~0_combout\))) # (\opBit25|saida_MUX_B~0_combout\ & (!\A[25]~input_o\ & !\opBit24|carryOut~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111011101100110010001000000011101100111011001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \opBit25|ALT_INV_saida_MUX_B~0_combout\,
	datab => \opBit26|ALT_INV_saida_MUX_B~0_combout\,
	datac => \ALT_INV_A[25]~input_o\,
	datad => \opBit24|ALT_INV_carryOut~0_combout\,
	datae => \ALT_INV_A[26]~input_o\,
	dataf => \opBit24|ALT_INV_op_AND~0_combout\,
	combout => \opBit26|carryOut~combout\);

-- Location: IOIBUF_X14_Y45_N18
\A[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(27),
	o => \A[27]~input_o\);

-- Location: IOIBUF_X0_Y20_N38
\B[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(28),
	o => \B[28]~input_o\);

-- Location: MLABCELL_X18_Y12_N36
\opBit28|carryOut\ : cyclonev_lcell_comb
-- Equation(s):
-- \opBit28|carryOut~combout\ = ( \A[27]~input_o\ & ( \B[28]~input_o\ & ( (!\opBit26|carryOut~combout\ & ((!\inverteB~input_o\) # ((\A[28]~input_o\)))) # (\opBit26|carryOut~combout\ & ((!\B[27]~input_o\ & ((\A[28]~input_o\))) # (\B[27]~input_o\ & 
-- (!\inverteB~input_o\)))) ) ) ) # ( !\A[27]~input_o\ & ( \B[28]~input_o\ & ( (!\opBit26|carryOut~combout\ & ((!\B[27]~input_o\ & ((\A[28]~input_o\))) # (\B[27]~input_o\ & (!\inverteB~input_o\)))) # (\opBit26|carryOut~combout\ & (!\inverteB~input_o\ & 
-- (\A[28]~input_o\))) ) ) ) # ( \A[27]~input_o\ & ( !\B[28]~input_o\ & ( (!\opBit26|carryOut~combout\ & (((\A[28]~input_o\)) # (\inverteB~input_o\))) # (\opBit26|carryOut~combout\ & ((!\B[27]~input_o\ & (\inverteB~input_o\)) # (\B[27]~input_o\ & 
-- ((\A[28]~input_o\))))) ) ) ) # ( !\A[27]~input_o\ & ( !\B[28]~input_o\ & ( (!\opBit26|carryOut~combout\ & ((!\B[27]~input_o\ & (\inverteB~input_o\)) # (\B[27]~input_o\ & ((\A[28]~input_o\))))) # (\opBit26|carryOut~combout\ & (\inverteB~input_o\ & 
-- (\A[28]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001100010001011101110101001100111010001000101011101100111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datab => \ALT_INV_A[28]~input_o\,
	datac => \ALT_INV_B[27]~input_o\,
	datad => \opBit26|ALT_INV_carryOut~combout\,
	datae => \ALT_INV_A[27]~input_o\,
	dataf => \ALT_INV_B[28]~input_o\,
	combout => \opBit28|carryOut~combout\);

-- Location: IOIBUF_X44_Y0_N1
\B[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(29),
	o => \B[29]~input_o\);

-- Location: MLABCELL_X18_Y12_N42
\opBit30|carryOut\ : cyclonev_lcell_comb
-- Equation(s):
-- \opBit30|carryOut~combout\ = ( \opBit28|carryOut~combout\ & ( \B[29]~input_o\ & ( (!\B[30]~input_o\ & (((\inverteB~input_o\ & \A[29]~input_o\)) # (\A[30]~input_o\))) # (\B[30]~input_o\ & ((!\inverteB~input_o\) # ((\A[30]~input_o\ & \A[29]~input_o\)))) ) ) 
-- ) # ( !\opBit28|carryOut~combout\ & ( \B[29]~input_o\ & ( (!\B[30]~input_o\ & (\A[30]~input_o\ & ((\A[29]~input_o\) # (\inverteB~input_o\)))) # (\B[30]~input_o\ & (!\inverteB~input_o\ & ((\A[29]~input_o\) # (\A[30]~input_o\)))) ) ) ) # ( 
-- \opBit28|carryOut~combout\ & ( !\B[29]~input_o\ & ( (!\B[30]~input_o\ & (((\A[30]~input_o\ & \A[29]~input_o\)) # (\inverteB~input_o\))) # (\B[30]~input_o\ & (((!\inverteB~input_o\ & \A[29]~input_o\)) # (\A[30]~input_o\))) ) ) ) # ( 
-- !\opBit28|carryOut~combout\ & ( !\B[29]~input_o\ & ( (!\B[30]~input_o\ & (\inverteB~input_o\ & ((\A[29]~input_o\) # (\A[30]~input_o\)))) # (\B[30]~input_o\ & (\A[30]~input_o\ & ((!\inverteB~input_o\) # (\A[29]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001001010011010100110111101100010010001110100011101001111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datab => \ALT_INV_A[30]~input_o\,
	datac => \ALT_INV_B[30]~input_o\,
	datad => \ALT_INV_A[29]~input_o\,
	datae => \opBit28|ALT_INV_carryOut~combout\,
	dataf => \ALT_INV_B[29]~input_o\,
	combout => \opBit30|carryOut~combout\);

-- Location: IOIBUF_X54_Y16_N4
\A[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(31),
	o => \A[31]~input_o\);

-- Location: MLABCELL_X18_Y12_N18
\opBit0|R~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \opBit0|R~1_combout\ = ( \sel[1]~input_o\ & ( \A[31]~input_o\ & ( ((\opBit31|saida_MUX_B~0_combout\ & (\sel[0]~input_o\ & !\opBit30|carryOut~combout\))) # (\opBit0|R~0_combout\) ) ) ) # ( !\sel[1]~input_o\ & ( \A[31]~input_o\ & ( \opBit0|R~0_combout\ ) ) 
-- ) # ( \sel[1]~input_o\ & ( !\A[31]~input_o\ & ( ((!\opBit31|saida_MUX_B~0_combout\ & (\sel[0]~input_o\ & \opBit30|carryOut~combout\))) # (\opBit0|R~0_combout\) ) ) ) # ( !\sel[1]~input_o\ & ( !\A[31]~input_o\ & ( \opBit0|R~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101110101010101010101010101011101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \opBit0|ALT_INV_R~0_combout\,
	datab => \opBit31|ALT_INV_saida_MUX_B~0_combout\,
	datac => \ALT_INV_sel[0]~input_o\,
	datad => \opBit30|ALT_INV_carryOut~combout\,
	datae => \ALT_INV_sel[1]~input_o\,
	dataf => \ALT_INV_A[31]~input_o\,
	combout => \opBit0|R~1_combout\);

-- Location: LABCELL_X16_Y2_N3
\opBit0|carryOut~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \opBit0|carryOut~0_combout\ = ( \A[0]~input_o\ & ( (\B[0]~input_o\) # (\inverteB~input_o\) ) ) # ( !\A[0]~input_o\ & ( (\inverteB~input_o\ & !\B[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[0]~input_o\,
	combout => \opBit0|carryOut~0_combout\);

-- Location: LABCELL_X16_Y2_N42
\opBit1|R~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \opBit1|R~0_combout\ = ( !\sel[1]~input_o\ & ( \sel[0]~input_o\ & ( (!\inverteB~input_o\ $ (!\B[1]~input_o\)) # (\A[1]~input_o\) ) ) ) # ( \sel[1]~input_o\ & ( !\sel[0]~input_o\ & ( !\opBit0|carryOut~0_combout\ $ (!\A[1]~input_o\ $ (!\inverteB~input_o\ $ 
-- (!\B[1]~input_o\))) ) ) ) # ( !\sel[1]~input_o\ & ( !\sel[0]~input_o\ & ( (\A[1]~input_o\ & (!\inverteB~input_o\ $ (!\B[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100110000011010011001011000111111111100110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \opBit0|ALT_INV_carryOut~0_combout\,
	datab => \ALT_INV_A[1]~input_o\,
	datac => \ALT_INV_inverteB~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_sel[1]~input_o\,
	dataf => \ALT_INV_sel[0]~input_o\,
	combout => \opBit1|R~0_combout\);

-- Location: LABCELL_X16_Y2_N39
\opBit2|R~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \opBit2|R~0_combout\ = ( \opBit2|saida_MUX_B~0_combout\ & ( (!\sel[0]~input_o\ & (!\A[2]~input_o\ $ (((!\sel[1]~input_o\) # (\opBit1|carryOut~combout\))))) # (\sel[0]~input_o\ & (!\sel[1]~input_o\)) ) ) # ( !\opBit2|saida_MUX_B~0_combout\ & ( 
-- (!\sel[1]~input_o\ & (\sel[0]~input_o\ & (\A[2]~input_o\))) # (\sel[1]~input_o\ & (!\sel[0]~input_o\ & (!\A[2]~input_o\ $ (!\opBit1|carryOut~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011001000010000001100100001001101010001011100110101000101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sel[1]~input_o\,
	datab => \ALT_INV_sel[0]~input_o\,
	datac => \ALT_INV_A[2]~input_o\,
	datad => \opBit1|ALT_INV_carryOut~combout\,
	dataf => \opBit2|ALT_INV_saida_MUX_B~0_combout\,
	combout => \opBit2|R~0_combout\);

-- Location: LABCELL_X16_Y2_N51
\opBit2|carryOut\ : cyclonev_lcell_comb
-- Equation(s):
-- \opBit2|carryOut~combout\ = ( \opBit2|saida_MUX_B~0_combout\ & ( (\A[2]~input_o\) # (\opBit1|carryOut~combout\) ) ) # ( !\opBit2|saida_MUX_B~0_combout\ & ( (\opBit1|carryOut~combout\ & \A[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010101011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \opBit1|ALT_INV_carryOut~combout\,
	datac => \ALT_INV_A[2]~input_o\,
	dataf => \opBit2|ALT_INV_saida_MUX_B~0_combout\,
	combout => \opBit2|carryOut~combout\);

-- Location: LABCELL_X16_Y2_N12
\opBit3|R~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \opBit3|R~0_combout\ = ( \sel[0]~input_o\ & ( (!\sel[1]~input_o\ & ((\A[3]~input_o\) # (\opBit3|saida_MUX_B~0_combout\))) ) ) # ( !\sel[0]~input_o\ & ( (!\sel[1]~input_o\ & (((\opBit3|saida_MUX_B~0_combout\ & \A[3]~input_o\)))) # (\sel[1]~input_o\ & 
-- (!\opBit2|carryOut~combout\ $ (!\opBit3|saida_MUX_B~0_combout\ $ (\A[3]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101101001000000110110100100111111000000000011111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \opBit2|ALT_INV_carryOut~combout\,
	datab => \opBit3|ALT_INV_saida_MUX_B~0_combout\,
	datac => \ALT_INV_A[3]~input_o\,
	datad => \ALT_INV_sel[1]~input_o\,
	dataf => \ALT_INV_sel[0]~input_o\,
	combout => \opBit3|R~0_combout\);

-- Location: LABCELL_X16_Y2_N48
\opBit3|carryOut\ : cyclonev_lcell_comb
-- Equation(s):
-- \opBit3|carryOut~combout\ = ( \opBit3|saida_MUX_B~0_combout\ & ( ((!\opBit1|carryOut~combout\ & (\opBit2|saida_MUX_B~0_combout\ & \A[2]~input_o\)) # (\opBit1|carryOut~combout\ & ((\A[2]~input_o\) # (\opBit2|saida_MUX_B~0_combout\)))) # (\A[3]~input_o\) ) 
-- ) # ( !\opBit3|saida_MUX_B~0_combout\ & ( (\A[3]~input_o\ & ((!\opBit1|carryOut~combout\ & (\opBit2|saida_MUX_B~0_combout\ & \A[2]~input_o\)) # (\opBit1|carryOut~combout\ & ((\A[2]~input_o\) # (\opBit2|saida_MUX_B~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000111000000010000011100011111011111110001111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \opBit1|ALT_INV_carryOut~combout\,
	datab => \opBit2|ALT_INV_saida_MUX_B~0_combout\,
	datac => \ALT_INV_A[3]~input_o\,
	datad => \ALT_INV_A[2]~input_o\,
	dataf => \opBit3|ALT_INV_saida_MUX_B~0_combout\,
	combout => \opBit3|carryOut~combout\);

-- Location: LABCELL_X16_Y2_N54
\opBit4|R~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \opBit4|R~0_combout\ = ( \sel[1]~input_o\ & ( \A[4]~input_o\ & ( (!\sel[0]~input_o\ & (!\opBit3|carryOut~combout\ $ (!\B[4]~input_o\ $ (!\inverteB~input_o\)))) ) ) ) # ( !\sel[1]~input_o\ & ( \A[4]~input_o\ & ( (!\B[4]~input_o\ $ (!\inverteB~input_o\)) # 
-- (\sel[0]~input_o\) ) ) ) # ( \sel[1]~input_o\ & ( !\A[4]~input_o\ & ( (!\sel[0]~input_o\ & (!\opBit3|carryOut~combout\ $ (!\B[4]~input_o\ $ (\inverteB~input_o\)))) ) ) ) # ( !\sel[1]~input_o\ & ( !\A[4]~input_o\ & ( (\sel[0]~input_o\ & (!\B[4]~input_o\ $ 
-- (!\inverteB~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111100011010010000000000111100111111111001011000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \opBit3|ALT_INV_carryOut~combout\,
	datab => \ALT_INV_B[4]~input_o\,
	datac => \ALT_INV_inverteB~input_o\,
	datad => \ALT_INV_sel[0]~input_o\,
	datae => \ALT_INV_sel[1]~input_o\,
	dataf => \ALT_INV_A[4]~input_o\,
	combout => \opBit4|R~0_combout\);

-- Location: LABCELL_X19_Y2_N30
\opBit5|R~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \opBit5|R~0_combout\ = ( \sel[1]~input_o\ & ( \A[5]~input_o\ & ( (!\sel[0]~input_o\ & (!\opBit5|saida_MUX_B~0_combout\ $ (((\opBit4|carryOut~0_combout\) # (\opBit4|op_AND~0_combout\))))) ) ) ) # ( !\sel[1]~input_o\ & ( \A[5]~input_o\ & ( 
-- (\opBit5|saida_MUX_B~0_combout\) # (\sel[0]~input_o\) ) ) ) # ( \sel[1]~input_o\ & ( !\A[5]~input_o\ & ( (!\sel[0]~input_o\ & (!\opBit5|saida_MUX_B~0_combout\ $ (((!\opBit4|op_AND~0_combout\ & !\opBit4|carryOut~0_combout\))))) ) ) ) # ( !\sel[1]~input_o\ 
-- & ( !\A[5]~input_o\ & ( (\sel[0]~input_o\ & \opBit5|saida_MUX_B~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101001010001010000001011111010111111000001000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sel[0]~input_o\,
	datab => \opBit4|ALT_INV_op_AND~0_combout\,
	datac => \opBit5|ALT_INV_saida_MUX_B~0_combout\,
	datad => \opBit4|ALT_INV_carryOut~0_combout\,
	datae => \ALT_INV_sel[1]~input_o\,
	dataf => \ALT_INV_A[5]~input_o\,
	combout => \opBit5|R~0_combout\);

-- Location: LABCELL_X19_Y2_N18
\opBit5|carryOut\ : cyclonev_lcell_comb
-- Equation(s):
-- \opBit5|carryOut~combout\ = ( \A[5]~input_o\ & ( (!\opBit4|op_AND~0_combout\ & (!\opBit5|saida_MUX_B~0_combout\ & !\opBit4|carryOut~0_combout\)) ) ) # ( !\A[5]~input_o\ & ( (!\opBit5|saida_MUX_B~0_combout\) # ((!\opBit4|op_AND~0_combout\ & 
-- !\opBit4|carryOut~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011110000111111001111000011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \opBit4|ALT_INV_op_AND~0_combout\,
	datac => \opBit5|ALT_INV_saida_MUX_B~0_combout\,
	datad => \opBit4|ALT_INV_carryOut~0_combout\,
	dataf => \ALT_INV_A[5]~input_o\,
	combout => \opBit5|carryOut~combout\);

-- Location: LABCELL_X19_Y2_N36
\opBit6|R~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \opBit6|R~0_combout\ = ( \opBit5|carryOut~combout\ & ( (!\A[6]~input_o\ & (\opBit6|saida_MUX_B~0_combout\ & (!\sel[0]~input_o\ $ (!\sel[1]~input_o\)))) # (\A[6]~input_o\ & (!\sel[1]~input_o\ $ (((!\sel[0]~input_o\ & !\opBit6|saida_MUX_B~0_combout\))))) ) 
-- ) # ( !\opBit5|carryOut~combout\ & ( (!\sel[0]~input_o\ & ((!\A[6]~input_o\ & (\sel[1]~input_o\ & !\opBit6|saida_MUX_B~0_combout\)) # (\A[6]~input_o\ & ((\opBit6|saida_MUX_B~0_combout\))))) # (\sel[0]~input_o\ & (!\sel[1]~input_o\ & 
-- ((\opBit6|saida_MUX_B~0_combout\) # (\A[6]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001100001110010000110000111001000010010011110000001001001111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sel[0]~input_o\,
	datab => \ALT_INV_A[6]~input_o\,
	datac => \ALT_INV_sel[1]~input_o\,
	datad => \opBit6|ALT_INV_saida_MUX_B~0_combout\,
	dataf => \opBit5|ALT_INV_carryOut~combout\,
	combout => \opBit6|R~0_combout\);

-- Location: LABCELL_X19_Y2_N6
\opBit7|R~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \opBit7|R~0_combout\ = ( \A[7]~input_o\ & ( (!\sel[0]~input_o\ & (!\opBit7|saida_MUX_B~0_combout\ $ (((!\opBit6|carryOut~combout\) # (!\sel[1]~input_o\))))) # (\sel[0]~input_o\ & (((!\sel[1]~input_o\)))) ) ) # ( !\A[7]~input_o\ & ( (!\sel[1]~input_o\ & 
-- (((\opBit7|saida_MUX_B~0_combout\ & \sel[0]~input_o\)))) # (\sel[1]~input_o\ & (!\sel[0]~input_o\ & (!\opBit6|carryOut~combout\ $ (\opBit7|saida_MUX_B~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100100110000000010010011000000110110111100000011011011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \opBit6|ALT_INV_carryOut~combout\,
	datab => \opBit7|ALT_INV_saida_MUX_B~0_combout\,
	datac => \ALT_INV_sel[1]~input_o\,
	datad => \ALT_INV_sel[0]~input_o\,
	dataf => \ALT_INV_A[7]~input_o\,
	combout => \opBit7|R~0_combout\);

-- Location: LABCELL_X19_Y2_N51
\opBit8|op_SOMA_SUB~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \opBit8|op_SOMA_SUB~0_combout\ = !\A[8]~input_o\ $ (!\opBit8|saida_MUX_B~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[8]~input_o\,
	datab => \opBit8|ALT_INV_saida_MUX_B~0_combout\,
	combout => \opBit8|op_SOMA_SUB~0_combout\);

-- Location: LABCELL_X19_Y2_N45
\opBit0|R~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \opBit0|R~2_combout\ = ( \sel[1]~input_o\ & ( !\sel[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_sel[0]~input_o\,
	dataf => \ALT_INV_sel[1]~input_o\,
	combout => \opBit0|R~2_combout\);

-- Location: LABCELL_X19_Y2_N48
\opBit8|R~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \opBit8|R~0_combout\ = (!\sel[1]~input_o\ & ((!\A[8]~input_o\ & (\opBit8|saida_MUX_B~0_combout\ & \sel[0]~input_o\)) # (\A[8]~input_o\ & ((\sel[0]~input_o\) # (\opBit8|saida_MUX_B~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011100000000000101110000000000010111000000000001011100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[8]~input_o\,
	datab => \opBit8|ALT_INV_saida_MUX_B~0_combout\,
	datac => \ALT_INV_sel[0]~input_o\,
	datad => \ALT_INV_sel[1]~input_o\,
	combout => \opBit8|R~0_combout\);

-- Location: LABCELL_X19_Y2_N24
\opBit8|R~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \opBit8|R~1_combout\ = ( \opBit6|carryOut~combout\ & ( \opBit8|R~0_combout\ ) ) # ( !\opBit6|carryOut~combout\ & ( \opBit8|R~0_combout\ ) ) # ( \opBit6|carryOut~combout\ & ( !\opBit8|R~0_combout\ & ( (\opBit0|R~2_combout\ & 
-- (!\opBit8|op_SOMA_SUB~0_combout\ $ (((!\opBit7|saida_MUX_B~0_combout\) # (!\A[7]~input_o\))))) ) ) ) # ( !\opBit6|carryOut~combout\ & ( !\opBit8|R~0_combout\ & ( (\opBit0|R~2_combout\ & (!\opBit8|op_SOMA_SUB~0_combout\ $ (((!\opBit7|saida_MUX_B~0_combout\ 
-- & !\A[7]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001101010000000000101011011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \opBit8|ALT_INV_op_SOMA_SUB~0_combout\,
	datab => \opBit7|ALT_INV_saida_MUX_B~0_combout\,
	datac => \ALT_INV_A[7]~input_o\,
	datad => \opBit0|ALT_INV_R~2_combout\,
	datae => \opBit6|ALT_INV_carryOut~combout\,
	dataf => \opBit8|ALT_INV_R~0_combout\,
	combout => \opBit8|R~1_combout\);

-- Location: LABCELL_X19_Y2_N9
\opBit8|carryOut\ : cyclonev_lcell_comb
-- Equation(s):
-- \opBit8|carryOut~combout\ = ( \A[8]~input_o\ & ( ((!\opBit6|carryOut~combout\ & ((\A[7]~input_o\) # (\opBit7|saida_MUX_B~0_combout\))) # (\opBit6|carryOut~combout\ & (\opBit7|saida_MUX_B~0_combout\ & \A[7]~input_o\))) # (\opBit8|saida_MUX_B~0_combout\) ) 
-- ) # ( !\A[8]~input_o\ & ( (\opBit8|saida_MUX_B~0_combout\ & ((!\opBit6|carryOut~combout\ & ((\A[7]~input_o\) # (\opBit7|saida_MUX_B~0_combout\))) # (\opBit6|carryOut~combout\ & (\opBit7|saida_MUX_B~0_combout\ & \A[7]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000001011000000100000101100101111101111110010111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \opBit6|ALT_INV_carryOut~combout\,
	datab => \opBit7|ALT_INV_saida_MUX_B~0_combout\,
	datac => \opBit8|ALT_INV_saida_MUX_B~0_combout\,
	datad => \ALT_INV_A[7]~input_o\,
	dataf => \ALT_INV_A[8]~input_o\,
	combout => \opBit8|carryOut~combout\);

-- Location: LABCELL_X20_Y2_N24
\opBit9|R~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \opBit9|R~0_combout\ = ( !\sel[0]~input_o\ & ( \sel[1]~input_o\ & ( !\B[9]~input_o\ $ (!\inverteB~input_o\ $ (!\A[9]~input_o\ $ (!\opBit8|carryOut~combout\))) ) ) ) # ( \sel[0]~input_o\ & ( !\sel[1]~input_o\ & ( (!\B[9]~input_o\ $ (!\inverteB~input_o\)) # 
-- (\A[9]~input_o\) ) ) ) # ( !\sel[0]~input_o\ & ( !\sel[1]~input_o\ & ( (\A[9]~input_o\ & (!\B[9]~input_o\ $ (!\inverteB~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000000110011011110110111101101001100101100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[9]~input_o\,
	datab => \ALT_INV_inverteB~input_o\,
	datac => \ALT_INV_A[9]~input_o\,
	datad => \opBit8|ALT_INV_carryOut~combout\,
	datae => \ALT_INV_sel[0]~input_o\,
	dataf => \ALT_INV_sel[1]~input_o\,
	combout => \opBit9|R~0_combout\);

-- Location: LABCELL_X20_Y2_N30
\opBit10|R~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \opBit10|R~0_combout\ = ( \A[10]~input_o\ & ( \sel[0]~input_o\ & ( !\sel[1]~input_o\ ) ) ) # ( !\A[10]~input_o\ & ( \sel[0]~input_o\ & ( (!\sel[1]~input_o\ & \opBit10|saida_MUX_B~0_combout\) ) ) ) # ( \A[10]~input_o\ & ( !\sel[0]~input_o\ & ( 
-- !\opBit10|saida_MUX_B~0_combout\ $ ((((!\sel[1]~input_o\) # (\opBit9|carryOut~0_combout\)) # (\opBit9|op_AND~0_combout\))) ) ) ) # ( !\A[10]~input_o\ & ( !\sel[0]~input_o\ & ( (\sel[1]~input_o\ & (!\opBit10|saida_MUX_B~0_combout\ $ 
-- (((!\opBit9|op_AND~0_combout\ & !\opBit9|carryOut~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100100000001000001101111100000000110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \opBit9|ALT_INV_op_AND~0_combout\,
	datab => \ALT_INV_sel[1]~input_o\,
	datac => \opBit9|ALT_INV_carryOut~0_combout\,
	datad => \opBit10|ALT_INV_saida_MUX_B~0_combout\,
	datae => \ALT_INV_A[10]~input_o\,
	dataf => \ALT_INV_sel[0]~input_o\,
	combout => \opBit10|R~0_combout\);

-- Location: LABCELL_X20_Y2_N39
\opBit10|carryOut\ : cyclonev_lcell_comb
-- Equation(s):
-- \opBit10|carryOut~combout\ = ( \opBit9|carryOut~0_combout\ & ( (!\opBit10|saida_MUX_B~0_combout\ & !\A[10]~input_o\) ) ) # ( !\opBit9|carryOut~0_combout\ & ( (!\opBit9|op_AND~0_combout\ & ((!\opBit10|saida_MUX_B~0_combout\) # (!\A[10]~input_o\))) # 
-- (\opBit9|op_AND~0_combout\ & (!\opBit10|saida_MUX_B~0_combout\ & !\A[10]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101010100000111110101010000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \opBit9|ALT_INV_op_AND~0_combout\,
	datac => \opBit10|ALT_INV_saida_MUX_B~0_combout\,
	datad => \ALT_INV_A[10]~input_o\,
	dataf => \opBit9|ALT_INV_carryOut~0_combout\,
	combout => \opBit10|carryOut~combout\);

-- Location: LABCELL_X20_Y2_N6
\opBit11|R~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \opBit11|R~0_combout\ = ( \opBit10|carryOut~combout\ & ( (!\A[11]~input_o\ & (\opBit11|saida_MUX_B~0_combout\ & (!\sel[0]~input_o\ $ (!\sel[1]~input_o\)))) # (\A[11]~input_o\ & (!\sel[1]~input_o\ $ (((!\sel[0]~input_o\ & 
-- !\opBit11|saida_MUX_B~0_combout\))))) ) ) # ( !\opBit10|carryOut~combout\ & ( (!\sel[0]~input_o\ & ((!\A[11]~input_o\ & (\sel[1]~input_o\ & !\opBit11|saida_MUX_B~0_combout\)) # (\A[11]~input_o\ & ((\opBit11|saida_MUX_B~0_combout\))))) # (\sel[0]~input_o\ 
-- & (!\sel[1]~input_o\ & ((\opBit11|saida_MUX_B~0_combout\) # (\A[11]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010010001001110001001000100111000000110011011000000011001101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sel[0]~input_o\,
	datab => \ALT_INV_sel[1]~input_o\,
	datac => \ALT_INV_A[11]~input_o\,
	datad => \opBit11|ALT_INV_saida_MUX_B~0_combout\,
	dataf => \opBit10|ALT_INV_carryOut~combout\,
	combout => \opBit11|R~0_combout\);

-- Location: LABCELL_X20_Y2_N9
\opBit12|R~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \opBit12|R~0_combout\ = ( \opBit12|saida_MUX_B~0_combout\ & ( (!\sel[0]~input_o\ & (!\A[12]~input_o\ $ (((!\sel[1]~input_o\) # (!\opBit11|carryOut~combout\))))) # (\sel[0]~input_o\ & (!\sel[1]~input_o\)) ) ) # ( !\opBit12|saida_MUX_B~0_combout\ & ( 
-- (!\sel[0]~input_o\ & (\sel[1]~input_o\ & (!\opBit11|carryOut~combout\ $ (\A[12]~input_o\)))) # (\sel[0]~input_o\ & (!\sel[1]~input_o\ & ((\A[12]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000001000110001000000100011001000110111011000100011011101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sel[0]~input_o\,
	datab => \ALT_INV_sel[1]~input_o\,
	datac => \opBit11|ALT_INV_carryOut~combout\,
	datad => \ALT_INV_A[12]~input_o\,
	dataf => \opBit12|ALT_INV_saida_MUX_B~0_combout\,
	combout => \opBit12|R~0_combout\);

-- Location: LABCELL_X20_Y2_N51
\opBit13|R~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \opBit13|R~0_combout\ = ( \opBit13|saida_MUX_B~0_combout\ & ( (!\sel[1]~input_o\ & ((\sel[0]~input_o\) # (\A[13]~input_o\))) ) ) # ( !\opBit13|saida_MUX_B~0_combout\ & ( (\A[13]~input_o\ & (!\sel[1]~input_o\ & \sel[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000001010000111100000101000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[13]~input_o\,
	datac => \ALT_INV_sel[1]~input_o\,
	datad => \ALT_INV_sel[0]~input_o\,
	dataf => \opBit13|ALT_INV_saida_MUX_B~0_combout\,
	combout => \opBit13|R~0_combout\);

-- Location: LABCELL_X20_Y2_N12
\opBit13|op_SOMA_SUB~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \opBit13|op_SOMA_SUB~0_combout\ = ( \opBit13|saida_MUX_B~0_combout\ & ( !\A[13]~input_o\ ) ) # ( !\opBit13|saida_MUX_B~0_combout\ & ( \A[13]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[13]~input_o\,
	dataf => \opBit13|ALT_INV_saida_MUX_B~0_combout\,
	combout => \opBit13|op_SOMA_SUB~0_combout\);

-- Location: LABCELL_X20_Y2_N54
\opBit13|R~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \opBit13|R~1_combout\ = ( \A[12]~input_o\ & ( \opBit12|saida_MUX_B~0_combout\ & ( ((!\opBit13|op_SOMA_SUB~0_combout\ & \opBit0|R~2_combout\)) # (\opBit13|R~0_combout\) ) ) ) # ( !\A[12]~input_o\ & ( \opBit12|saida_MUX_B~0_combout\ & ( 
-- ((\opBit0|R~2_combout\ & (!\opBit13|op_SOMA_SUB~0_combout\ $ (\opBit11|carryOut~combout\)))) # (\opBit13|R~0_combout\) ) ) ) # ( \A[12]~input_o\ & ( !\opBit12|saida_MUX_B~0_combout\ & ( ((\opBit0|R~2_combout\ & (!\opBit13|op_SOMA_SUB~0_combout\ $ 
-- (\opBit11|carryOut~combout\)))) # (\opBit13|R~0_combout\) ) ) ) # ( !\A[12]~input_o\ & ( !\opBit12|saida_MUX_B~0_combout\ & ( ((\opBit13|op_SOMA_SUB~0_combout\ & \opBit0|R~2_combout\)) # (\opBit13|R~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011101010111010111010101011101011101010101110101110101011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \opBit13|ALT_INV_R~0_combout\,
	datab => \opBit13|ALT_INV_op_SOMA_SUB~0_combout\,
	datac => \opBit0|ALT_INV_R~2_combout\,
	datad => \opBit11|ALT_INV_carryOut~combout\,
	datae => \ALT_INV_A[12]~input_o\,
	dataf => \opBit12|ALT_INV_saida_MUX_B~0_combout\,
	combout => \opBit13|R~1_combout\);

-- Location: LABCELL_X20_Y2_N48
\opBit13|carryOut\ : cyclonev_lcell_comb
-- Equation(s):
-- \opBit13|carryOut~combout\ = ( \opBit13|saida_MUX_B~0_combout\ & ( ((!\opBit11|carryOut~combout\ & ((\A[12]~input_o\) # (\opBit12|saida_MUX_B~0_combout\))) # (\opBit11|carryOut~combout\ & (\opBit12|saida_MUX_B~0_combout\ & \A[12]~input_o\))) # 
-- (\A[13]~input_o\) ) ) # ( !\opBit13|saida_MUX_B~0_combout\ & ( (\A[13]~input_o\ & ((!\opBit11|carryOut~combout\ & ((\A[12]~input_o\) # (\opBit12|saida_MUX_B~0_combout\))) # (\opBit11|carryOut~combout\ & (\opBit12|saida_MUX_B~0_combout\ & 
-- \A[12]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010001000101000001000100010101011101110111110101110111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[13]~input_o\,
	datab => \opBit11|ALT_INV_carryOut~combout\,
	datac => \opBit12|ALT_INV_saida_MUX_B~0_combout\,
	datad => \ALT_INV_A[12]~input_o\,
	dataf => \opBit13|ALT_INV_saida_MUX_B~0_combout\,
	combout => \opBit13|carryOut~combout\);

-- Location: MLABCELL_X23_Y2_N15
\opBit14|R~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \opBit14|R~0_combout\ = ( \opBit13|carryOut~combout\ & ( \sel[1]~input_o\ & ( (!\sel[0]~input_o\ & (!\A[14]~input_o\ $ (\opBit14|saida_MUX_B~0_combout\))) ) ) ) # ( !\opBit13|carryOut~combout\ & ( \sel[1]~input_o\ & ( (!\sel[0]~input_o\ & 
-- (!\A[14]~input_o\ $ (!\opBit14|saida_MUX_B~0_combout\))) ) ) ) # ( \opBit13|carryOut~combout\ & ( !\sel[1]~input_o\ & ( (!\A[14]~input_o\ & (\sel[0]~input_o\ & \opBit14|saida_MUX_B~0_combout\)) # (\A[14]~input_o\ & ((\opBit14|saida_MUX_B~0_combout\) # 
-- (\sel[0]~input_o\))) ) ) ) # ( !\opBit13|carryOut~combout\ & ( !\sel[1]~input_o\ & ( (!\A[14]~input_o\ & (\sel[0]~input_o\ & \opBit14|saida_MUX_B~0_combout\)) # (\A[14]~input_o\ & ((\opBit14|saida_MUX_B~0_combout\) # (\sel[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101011111000001010101111101010000101000001010000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[14]~input_o\,
	datac => \ALT_INV_sel[0]~input_o\,
	datad => \opBit14|ALT_INV_saida_MUX_B~0_combout\,
	datae => \opBit13|ALT_INV_carryOut~combout\,
	dataf => \ALT_INV_sel[1]~input_o\,
	combout => \opBit14|R~0_combout\);

-- Location: MLABCELL_X23_Y2_N48
\opBit15|R~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \opBit15|R~0_combout\ = ( \opBit14|carryOut~0_combout\ & ( \sel[1]~input_o\ & ( (!\sel[0]~input_o\ & (!\A[15]~input_o\ $ (\opBit15|saida_MUX_B~0_combout\))) ) ) ) # ( !\opBit14|carryOut~0_combout\ & ( \sel[1]~input_o\ & ( (!\sel[0]~input_o\ & 
-- (!\A[15]~input_o\ $ (!\opBit14|op_AND~0_combout\ $ (\opBit15|saida_MUX_B~0_combout\)))) ) ) ) # ( \opBit14|carryOut~0_combout\ & ( !\sel[1]~input_o\ & ( (!\A[15]~input_o\ & (\opBit15|saida_MUX_B~0_combout\ & \sel[0]~input_o\)) # (\A[15]~input_o\ & 
-- ((\sel[0]~input_o\) # (\opBit15|saida_MUX_B~0_combout\))) ) ) ) # ( !\opBit14|carryOut~0_combout\ & ( !\sel[1]~input_o\ & ( (!\A[15]~input_o\ & (\opBit15|saida_MUX_B~0_combout\ & \sel[0]~input_o\)) # (\A[15]~input_o\ & ((\sel[0]~input_o\) # 
-- (\opBit15|saida_MUX_B~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101011111000001010101111101101001000000001010010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[15]~input_o\,
	datab => \opBit14|ALT_INV_op_AND~0_combout\,
	datac => \opBit15|ALT_INV_saida_MUX_B~0_combout\,
	datad => \ALT_INV_sel[0]~input_o\,
	datae => \opBit14|ALT_INV_carryOut~0_combout\,
	dataf => \ALT_INV_sel[1]~input_o\,
	combout => \opBit15|R~0_combout\);

-- Location: MLABCELL_X23_Y2_N27
\opBit15|carryOut\ : cyclonev_lcell_comb
-- Equation(s):
-- \opBit15|carryOut~combout\ = ( \A[15]~input_o\ & ( (!\opBit15|saida_MUX_B~0_combout\ & (!\opBit14|op_AND~0_combout\ & !\opBit14|carryOut~0_combout\)) ) ) # ( !\A[15]~input_o\ & ( (!\opBit15|saida_MUX_B~0_combout\) # ((!\opBit14|op_AND~0_combout\ & 
-- !\opBit14|carryOut~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110101011101010111010101110101010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \opBit15|ALT_INV_saida_MUX_B~0_combout\,
	datab => \opBit14|ALT_INV_op_AND~0_combout\,
	datac => \opBit14|ALT_INV_carryOut~0_combout\,
	dataf => \ALT_INV_A[15]~input_o\,
	combout => \opBit15|carryOut~combout\);

-- Location: MLABCELL_X23_Y2_N54
\opBit16|R~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \opBit16|R~0_combout\ = ( \A[16]~input_o\ & ( \sel[1]~input_o\ & ( (!\sel[0]~input_o\ & (!\opBit16|saida_MUX_B~0_combout\ $ (!\opBit15|carryOut~combout\))) ) ) ) # ( !\A[16]~input_o\ & ( \sel[1]~input_o\ & ( (!\sel[0]~input_o\ & 
-- (!\opBit16|saida_MUX_B~0_combout\ $ (\opBit15|carryOut~combout\))) ) ) ) # ( \A[16]~input_o\ & ( !\sel[1]~input_o\ & ( (\sel[0]~input_o\) # (\opBit16|saida_MUX_B~0_combout\) ) ) ) # ( !\A[16]~input_o\ & ( !\sel[1]~input_o\ & ( 
-- (\opBit16|saida_MUX_B~0_combout\ & \sel[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001011101110111011110000100100001000100100001001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \opBit16|ALT_INV_saida_MUX_B~0_combout\,
	datab => \ALT_INV_sel[0]~input_o\,
	datac => \opBit15|ALT_INV_carryOut~combout\,
	datae => \ALT_INV_A[16]~input_o\,
	dataf => \ALT_INV_sel[1]~input_o\,
	combout => \opBit16|R~0_combout\);

-- Location: LABCELL_X25_Y2_N57
\opBit17|R~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \opBit17|R~0_combout\ = ( \sel[1]~input_o\ & ( (!\sel[0]~input_o\ & (!\opBit16|carryOut~combout\ $ (!\opBit17|saida_MUX_B~0_combout\ $ (!\A[17]~input_o\)))) ) ) # ( !\sel[1]~input_o\ & ( (!\opBit17|saida_MUX_B~0_combout\ & (\sel[0]~input_o\ & 
-- \A[17]~input_o\)) # (\opBit17|saida_MUX_B~0_combout\ & ((\A[17]~input_o\) # (\sel[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100111111000000110011111110010000011000001001000001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \opBit16|ALT_INV_carryOut~combout\,
	datab => \opBit17|ALT_INV_saida_MUX_B~0_combout\,
	datac => \ALT_INV_sel[0]~input_o\,
	datad => \ALT_INV_A[17]~input_o\,
	dataf => \ALT_INV_sel[1]~input_o\,
	combout => \opBit17|R~0_combout\);

-- Location: LABCELL_X25_Y2_N30
\opBit18|R~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \opBit18|R~0_combout\ = ( !\sel[1]~input_o\ & ( (!\A[18]~input_o\ & (\opBit18|saida_MUX_B~0_combout\ & \sel[0]~input_o\)) # (\A[18]~input_o\ & ((\sel[0]~input_o\) # (\opBit18|saida_MUX_B~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011100010111000101110001011100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[18]~input_o\,
	datab => \opBit18|ALT_INV_saida_MUX_B~0_combout\,
	datac => \ALT_INV_sel[0]~input_o\,
	dataf => \ALT_INV_sel[1]~input_o\,
	combout => \opBit18|R~0_combout\);

-- Location: LABCELL_X25_Y2_N33
\opBit18|op_SOMA_SUB~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \opBit18|op_SOMA_SUB~0_combout\ = !\A[18]~input_o\ $ (!\opBit18|saida_MUX_B~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[18]~input_o\,
	datab => \opBit18|ALT_INV_saida_MUX_B~0_combout\,
	combout => \opBit18|op_SOMA_SUB~0_combout\);

-- Location: LABCELL_X25_Y2_N6
\opBit18|R~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \opBit18|R~1_combout\ = ( \opBit0|R~2_combout\ & ( \opBit18|op_SOMA_SUB~0_combout\ & ( ((!\A[17]~input_o\ & ((!\opBit17|saida_MUX_B~0_combout\) # (\opBit16|carryOut~combout\))) # (\A[17]~input_o\ & (!\opBit17|saida_MUX_B~0_combout\ & 
-- \opBit16|carryOut~combout\))) # (\opBit18|R~0_combout\) ) ) ) # ( !\opBit0|R~2_combout\ & ( \opBit18|op_SOMA_SUB~0_combout\ & ( \opBit18|R~0_combout\ ) ) ) # ( \opBit0|R~2_combout\ & ( !\opBit18|op_SOMA_SUB~0_combout\ & ( ((!\A[17]~input_o\ & 
-- (\opBit17|saida_MUX_B~0_combout\ & !\opBit16|carryOut~combout\)) # (\A[17]~input_o\ & ((!\opBit16|carryOut~combout\) # (\opBit17|saida_MUX_B~0_combout\)))) # (\opBit18|R~0_combout\) ) ) ) # ( !\opBit0|R~2_combout\ & ( !\opBit18|op_SOMA_SUB~0_combout\ & ( 
-- \opBit18|R~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111011100011111111100000000111111111000111011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[17]~input_o\,
	datab => \opBit17|ALT_INV_saida_MUX_B~0_combout\,
	datac => \opBit16|ALT_INV_carryOut~combout\,
	datad => \opBit18|ALT_INV_R~0_combout\,
	datae => \opBit0|ALT_INV_R~2_combout\,
	dataf => \opBit18|ALT_INV_op_SOMA_SUB~0_combout\,
	combout => \opBit18|R~1_combout\);

-- Location: LABCELL_X25_Y2_N54
\opBit18|carryOut\ : cyclonev_lcell_comb
-- Equation(s):
-- \opBit18|carryOut~combout\ = ( \A[18]~input_o\ & ( ((!\opBit16|carryOut~combout\ & ((\A[17]~input_o\) # (\opBit17|saida_MUX_B~0_combout\))) # (\opBit16|carryOut~combout\ & (\opBit17|saida_MUX_B~0_combout\ & \A[17]~input_o\))) # 
-- (\opBit18|saida_MUX_B~0_combout\) ) ) # ( !\A[18]~input_o\ & ( (\opBit18|saida_MUX_B~0_combout\ & ((!\opBit16|carryOut~combout\ & ((\A[17]~input_o\) # (\opBit17|saida_MUX_B~0_combout\))) # (\opBit16|carryOut~combout\ & (\opBit17|saida_MUX_B~0_combout\ & 
-- \A[17]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101011000000000010101100101011111111110010101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \opBit16|ALT_INV_carryOut~combout\,
	datab => \opBit17|ALT_INV_saida_MUX_B~0_combout\,
	datac => \ALT_INV_A[17]~input_o\,
	datad => \opBit18|ALT_INV_saida_MUX_B~0_combout\,
	dataf => \ALT_INV_A[18]~input_o\,
	combout => \opBit18|carryOut~combout\);

-- Location: LABCELL_X25_Y2_N42
\opBit19|R~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \opBit19|R~0_combout\ = ( \A[19]~input_o\ & ( (!\sel[0]~input_o\ & (!\opBit19|saida_MUX_B~0_combout\ $ (((!\sel[1]~input_o\) # (\opBit18|carryOut~combout\))))) # (\sel[0]~input_o\ & (!\sel[1]~input_o\)) ) ) # ( !\A[19]~input_o\ & ( (!\sel[0]~input_o\ & 
-- (\sel[1]~input_o\ & (!\opBit19|saida_MUX_B~0_combout\ $ (!\opBit18|carryOut~combout\)))) # (\sel[0]~input_o\ & (!\sel[1]~input_o\ & (\opBit19|saida_MUX_B~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000100100000001100010010001101100010011100110110001001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sel[0]~input_o\,
	datab => \ALT_INV_sel[1]~input_o\,
	datac => \opBit19|ALT_INV_saida_MUX_B~0_combout\,
	datad => \opBit18|ALT_INV_carryOut~combout\,
	dataf => \ALT_INV_A[19]~input_o\,
	combout => \opBit19|R~0_combout\);

-- Location: LABCELL_X25_Y2_N18
\opBit20|R~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \opBit20|R~0_combout\ = ( \opBit19|carryOut~0_combout\ & ( \A[20]~input_o\ & ( (!\sel[0]~input_o\ & (\opBit20|saida_MUX_B~0_combout\)) # (\sel[0]~input_o\ & ((!\sel[1]~input_o\))) ) ) ) # ( !\opBit19|carryOut~0_combout\ & ( \A[20]~input_o\ & ( 
-- (!\sel[0]~input_o\ & (!\opBit20|saida_MUX_B~0_combout\ $ (((!\sel[1]~input_o\) # (\opBit19|op_AND~0_combout\))))) # (\sel[0]~input_o\ & (((!\sel[1]~input_o\)))) ) ) ) # ( \opBit19|carryOut~0_combout\ & ( !\A[20]~input_o\ & ( 
-- (!\opBit20|saida_MUX_B~0_combout\ & (!\sel[0]~input_o\ & \sel[1]~input_o\)) # (\opBit20|saida_MUX_B~0_combout\ & (\sel[0]~input_o\ & !\sel[1]~input_o\)) ) ) ) # ( !\opBit19|carryOut~0_combout\ & ( !\A[20]~input_o\ & ( (!\sel[0]~input_o\ & 
-- (\sel[1]~input_o\ & (!\opBit20|saida_MUX_B~0_combout\ $ (!\opBit19|op_AND~0_combout\)))) # (\sel[0]~input_o\ & (\opBit20|saida_MUX_B~0_combout\ & ((!\sel[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101001000000100011000100001110111100001000111011101000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \opBit20|ALT_INV_saida_MUX_B~0_combout\,
	datab => \ALT_INV_sel[0]~input_o\,
	datac => \opBit19|ALT_INV_op_AND~0_combout\,
	datad => \ALT_INV_sel[1]~input_o\,
	datae => \opBit19|ALT_INV_carryOut~0_combout\,
	dataf => \ALT_INV_A[20]~input_o\,
	combout => \opBit20|R~0_combout\);

-- Location: LABCELL_X25_Y2_N24
\opBit20|carryOut\ : cyclonev_lcell_comb
-- Equation(s):
-- \opBit20|carryOut~combout\ = ( \A[20]~input_o\ & ( (!\opBit20|saida_MUX_B~0_combout\ & (!\opBit19|carryOut~0_combout\ & !\opBit19|op_AND~0_combout\)) ) ) # ( !\A[20]~input_o\ & ( (!\opBit20|saida_MUX_B~0_combout\) # ((!\opBit19|carryOut~0_combout\ & 
-- !\opBit19|op_AND~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101010101010111110101010101010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \opBit20|ALT_INV_saida_MUX_B~0_combout\,
	datac => \opBit19|ALT_INV_carryOut~0_combout\,
	datad => \opBit19|ALT_INV_op_AND~0_combout\,
	dataf => \ALT_INV_A[20]~input_o\,
	combout => \opBit20|carryOut~combout\);

-- Location: LABCELL_X25_Y2_N45
\opBit21|R~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \opBit21|R~0_combout\ = ( \A[21]~input_o\ & ( (!\sel[0]~input_o\ & (!\opBit21|saida_MUX_B~0_combout\ $ (((!\sel[1]~input_o\) # (!\opBit20|carryOut~combout\))))) # (\sel[0]~input_o\ & (!\sel[1]~input_o\)) ) ) # ( !\A[21]~input_o\ & ( (!\sel[0]~input_o\ & 
-- (\sel[1]~input_o\ & (!\opBit21|saida_MUX_B~0_combout\ $ (\opBit20|carryOut~combout\)))) # (\sel[0]~input_o\ & (!\sel[1]~input_o\ & (\opBit21|saida_MUX_B~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010010000000110001001000000011001001110011011000100111001101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sel[0]~input_o\,
	datab => \ALT_INV_sel[1]~input_o\,
	datac => \opBit21|ALT_INV_saida_MUX_B~0_combout\,
	datad => \opBit20|ALT_INV_carryOut~combout\,
	dataf => \ALT_INV_A[21]~input_o\,
	combout => \opBit21|R~0_combout\);

-- Location: LABCELL_X19_Y4_N39
\opBit22|R~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \opBit22|R~0_combout\ = ( \opBit21|carryOut~combout\ & ( (!\A[22]~input_o\ & (\opBit22|saida_MUX_B~0_combout\ & (!\sel[0]~input_o\ $ (!\sel[1]~input_o\)))) # (\A[22]~input_o\ & (!\sel[1]~input_o\ $ (((!\sel[0]~input_o\ & 
-- !\opBit22|saida_MUX_B~0_combout\))))) ) ) # ( !\opBit21|carryOut~combout\ & ( (!\sel[0]~input_o\ & ((!\A[22]~input_o\ & (\sel[1]~input_o\ & !\opBit22|saida_MUX_B~0_combout\)) # (\A[22]~input_o\ & ((\opBit22|saida_MUX_B~0_combout\))))) # (\sel[0]~input_o\ 
-- & (!\sel[1]~input_o\ & ((\opBit22|saida_MUX_B~0_combout\) # (\A[22]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010010001001110001001000100111000000110011011000000011001101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sel[0]~input_o\,
	datab => \ALT_INV_sel[1]~input_o\,
	datac => \ALT_INV_A[22]~input_o\,
	datad => \opBit22|ALT_INV_saida_MUX_B~0_combout\,
	dataf => \opBit21|ALT_INV_carryOut~combout\,
	combout => \opBit22|R~0_combout\);

-- Location: LABCELL_X19_Y4_N36
\opBit23|R~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \opBit23|R~0_combout\ = ( \A[23]~input_o\ & ( (!\sel[1]~input_o\ & ((\sel[0]~input_o\) # (\opBit23|saida_MUX_B~0_combout\))) ) ) # ( !\A[23]~input_o\ & ( (!\sel[1]~input_o\ & (\opBit23|saida_MUX_B~0_combout\ & \sel[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110000001100110011000000110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_sel[1]~input_o\,
	datac => \opBit23|ALT_INV_saida_MUX_B~0_combout\,
	datad => \ALT_INV_sel[0]~input_o\,
	dataf => \ALT_INV_A[23]~input_o\,
	combout => \opBit23|R~0_combout\);

-- Location: LABCELL_X19_Y4_N15
\opBit23|op_SOMA_SUB~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \opBit23|op_SOMA_SUB~0_combout\ = !\A[23]~input_o\ $ (!\opBit23|saida_MUX_B~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010010101011010101001010101101010100101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[23]~input_o\,
	datad => \opBit23|ALT_INV_saida_MUX_B~0_combout\,
	combout => \opBit23|op_SOMA_SUB~0_combout\);

-- Location: LABCELL_X19_Y4_N18
\opBit23|R~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \opBit23|R~1_combout\ = ( \opBit0|R~2_combout\ & ( \opBit21|carryOut~combout\ & ( (!\opBit23|op_SOMA_SUB~0_combout\ $ (((!\opBit22|saida_MUX_B~0_combout\) # (!\A[22]~input_o\)))) # (\opBit23|R~0_combout\) ) ) ) # ( !\opBit0|R~2_combout\ & ( 
-- \opBit21|carryOut~combout\ & ( \opBit23|R~0_combout\ ) ) ) # ( \opBit0|R~2_combout\ & ( !\opBit21|carryOut~combout\ & ( (!\opBit23|op_SOMA_SUB~0_combout\ $ (((!\opBit22|saida_MUX_B~0_combout\ & !\A[22]~input_o\)))) # (\opBit23|R~0_combout\) ) ) ) # ( 
-- !\opBit0|R~2_combout\ & ( !\opBit21|carryOut~combout\ & ( \opBit23|R~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111011111111000111100001111000011110001111111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \opBit22|ALT_INV_saida_MUX_B~0_combout\,
	datab => \ALT_INV_A[22]~input_o\,
	datac => \opBit23|ALT_INV_R~0_combout\,
	datad => \opBit23|ALT_INV_op_SOMA_SUB~0_combout\,
	datae => \opBit0|ALT_INV_R~2_combout\,
	dataf => \opBit21|ALT_INV_carryOut~combout\,
	combout => \opBit23|R~1_combout\);

-- Location: LABCELL_X19_Y4_N12
\opBit23|carryOut\ : cyclonev_lcell_comb
-- Equation(s):
-- \opBit23|carryOut~combout\ = ( \opBit21|carryOut~combout\ & ( (!\A[23]~input_o\ & (\A[22]~input_o\ & (\opBit22|saida_MUX_B~0_combout\ & \opBit23|saida_MUX_B~0_combout\))) # (\A[23]~input_o\ & (((\A[22]~input_o\ & \opBit22|saida_MUX_B~0_combout\)) # 
-- (\opBit23|saida_MUX_B~0_combout\))) ) ) # ( !\opBit21|carryOut~combout\ & ( (!\A[23]~input_o\ & (\opBit23|saida_MUX_B~0_combout\ & ((\opBit22|saida_MUX_B~0_combout\) # (\A[22]~input_o\)))) # (\A[23]~input_o\ & (((\opBit23|saida_MUX_B~0_combout\) # 
-- (\opBit22|saida_MUX_B~0_combout\)) # (\A[22]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010101111111000101010111111100000001010101110000000101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[23]~input_o\,
	datab => \ALT_INV_A[22]~input_o\,
	datac => \opBit22|ALT_INV_saida_MUX_B~0_combout\,
	datad => \opBit23|ALT_INV_saida_MUX_B~0_combout\,
	dataf => \opBit21|ALT_INV_carryOut~combout\,
	combout => \opBit23|carryOut~combout\);

-- Location: LABCELL_X19_Y4_N9
\opBit24|R~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \opBit24|R~0_combout\ = ( \sel[1]~input_o\ & ( (!\sel[0]~input_o\ & (!\opBit24|saida_MUX_B~0_combout\ $ (!\A[24]~input_o\ $ (\opBit23|carryOut~combout\)))) ) ) # ( !\sel[1]~input_o\ & ( (!\opBit24|saida_MUX_B~0_combout\ & (\A[24]~input_o\ & 
-- \sel[0]~input_o\)) # (\opBit24|saida_MUX_B~0_combout\ & ((\sel[0]~input_o\) # (\A[24]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101110111000100010111011101101001000000000110100100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \opBit24|ALT_INV_saida_MUX_B~0_combout\,
	datab => \ALT_INV_A[24]~input_o\,
	datac => \opBit23|ALT_INV_carryOut~combout\,
	datad => \ALT_INV_sel[0]~input_o\,
	dataf => \ALT_INV_sel[1]~input_o\,
	combout => \opBit24|R~0_combout\);

-- Location: LABCELL_X19_Y4_N54
\opBit25|R~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \opBit25|R~0_combout\ = ( \opBit25|saida_MUX_B~0_combout\ & ( \sel[1]~input_o\ & ( (!\sel[0]~input_o\ & (!\A[25]~input_o\ $ (((\opBit24|carryOut~0_combout\) # (\opBit24|op_AND~0_combout\))))) ) ) ) # ( !\opBit25|saida_MUX_B~0_combout\ & ( \sel[1]~input_o\ 
-- & ( (!\sel[0]~input_o\ & (!\A[25]~input_o\ $ (((!\opBit24|op_AND~0_combout\ & !\opBit24|carryOut~0_combout\))))) ) ) ) # ( \opBit25|saida_MUX_B~0_combout\ & ( !\sel[1]~input_o\ & ( (\sel[0]~input_o\) # (\A[25]~input_o\) ) ) ) # ( 
-- !\opBit25|saida_MUX_B~0_combout\ & ( !\sel[1]~input_o\ & ( (\A[25]~input_o\ & \sel[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000011111111111101111000000000001000011100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \opBit24|ALT_INV_op_AND~0_combout\,
	datab => \opBit24|ALT_INV_carryOut~0_combout\,
	datac => \ALT_INV_A[25]~input_o\,
	datad => \ALT_INV_sel[0]~input_o\,
	datae => \opBit25|ALT_INV_saida_MUX_B~0_combout\,
	dataf => \ALT_INV_sel[1]~input_o\,
	combout => \opBit25|R~0_combout\);

-- Location: LABCELL_X19_Y4_N51
\opBit25|carryOut\ : cyclonev_lcell_comb
-- Equation(s):
-- \opBit25|carryOut~combout\ = ( \opBit24|op_AND~0_combout\ & ( (!\A[25]~input_o\ & !\opBit25|saida_MUX_B~0_combout\) ) ) # ( !\opBit24|op_AND~0_combout\ & ( (!\A[25]~input_o\ & ((!\opBit24|carryOut~0_combout\) # (!\opBit25|saida_MUX_B~0_combout\))) # 
-- (\A[25]~input_o\ & (!\opBit24|carryOut~0_combout\ & !\opBit25|saida_MUX_B~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101010100000111110101010000010101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[25]~input_o\,
	datac => \opBit24|ALT_INV_carryOut~0_combout\,
	datad => \opBit25|ALT_INV_saida_MUX_B~0_combout\,
	dataf => \opBit24|ALT_INV_op_AND~0_combout\,
	combout => \opBit25|carryOut~combout\);

-- Location: LABCELL_X19_Y4_N24
\opBit26|R~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \opBit26|R~0_combout\ = ( \sel[1]~input_o\ & ( (!\sel[0]~input_o\ & (!\opBit25|carryOut~combout\ $ (!\opBit26|saida_MUX_B~0_combout\ $ (!\A[26]~input_o\)))) ) ) # ( !\sel[1]~input_o\ & ( (!\opBit26|saida_MUX_B~0_combout\ & (\A[26]~input_o\ & 
-- \sel[0]~input_o\)) # (\opBit26|saida_MUX_B~0_combout\ & ((\sel[0]~input_o\) # (\A[26]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100111111000000110011111110010110000000001001011000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \opBit25|ALT_INV_carryOut~combout\,
	datab => \opBit26|ALT_INV_saida_MUX_B~0_combout\,
	datac => \ALT_INV_A[26]~input_o\,
	datad => \ALT_INV_sel[0]~input_o\,
	dataf => \ALT_INV_sel[1]~input_o\,
	combout => \opBit26|R~0_combout\);

-- Location: MLABCELL_X18_Y12_N27
\opBit27|saida_MUX_B~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \opBit27|saida_MUX_B~0_combout\ = ( \inverteB~input_o\ & ( !\B[27]~input_o\ ) ) # ( !\inverteB~input_o\ & ( \B[27]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_B[27]~input_o\,
	dataf => \ALT_INV_inverteB~input_o\,
	combout => \opBit27|saida_MUX_B~0_combout\);

-- Location: MLABCELL_X18_Y12_N24
\opBit27|R~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \opBit27|R~0_combout\ = ( \A[27]~input_o\ & ( (!\sel[0]~input_o\ & (!\opBit27|saida_MUX_B~0_combout\ $ (((!\sel[1]~input_o\) # (!\opBit26|carryOut~combout\))))) # (\sel[0]~input_o\ & (((!\sel[1]~input_o\)))) ) ) # ( !\A[27]~input_o\ & ( (!\sel[1]~input_o\ 
-- & (\opBit27|saida_MUX_B~0_combout\ & (\sel[0]~input_o\))) # (\sel[1]~input_o\ & (!\sel[0]~input_o\ & (!\opBit27|saida_MUX_B~0_combout\ $ (\opBit26|carryOut~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010010000010100001001000001010001011100011011000101110001101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \opBit27|ALT_INV_saida_MUX_B~0_combout\,
	datab => \ALT_INV_sel[1]~input_o\,
	datac => \ALT_INV_sel[0]~input_o\,
	datad => \opBit26|ALT_INV_carryOut~combout\,
	dataf => \ALT_INV_A[27]~input_o\,
	combout => \opBit27|R~0_combout\);

-- Location: MLABCELL_X18_Y12_N30
\opBit28|op_SOMA_SUB~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \opBit28|op_SOMA_SUB~0_combout\ = ( \inverteB~input_o\ & ( !\A[28]~input_o\ $ (\B[28]~input_o\) ) ) # ( !\inverteB~input_o\ & ( !\A[28]~input_o\ $ (!\B[28]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100001111000011110011000011110000111100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[28]~input_o\,
	datac => \ALT_INV_B[28]~input_o\,
	dataf => \ALT_INV_inverteB~input_o\,
	combout => \opBit28|op_SOMA_SUB~0_combout\);

-- Location: MLABCELL_X18_Y12_N33
\opBit28|R~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \opBit28|R~0_combout\ = ( \sel[0]~input_o\ & ( (!\sel[1]~input_o\ & ((!\inverteB~input_o\ $ (!\B[28]~input_o\)) # (\A[28]~input_o\))) ) ) # ( !\sel[0]~input_o\ & ( (\A[28]~input_o\ & (!\sel[1]~input_o\ & (!\inverteB~input_o\ $ (!\B[28]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000000000000100100000000001111011000000000111101100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datab => \ALT_INV_A[28]~input_o\,
	datac => \ALT_INV_B[28]~input_o\,
	datad => \ALT_INV_sel[1]~input_o\,
	dataf => \ALT_INV_sel[0]~input_o\,
	combout => \opBit28|R~0_combout\);

-- Location: MLABCELL_X18_Y12_N6
\opBit28|R~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \opBit28|R~1_combout\ = ( \opBit26|carryOut~combout\ & ( \opBit28|R~0_combout\ ) ) # ( !\opBit26|carryOut~combout\ & ( \opBit28|R~0_combout\ ) ) # ( \opBit26|carryOut~combout\ & ( !\opBit28|R~0_combout\ & ( (\opBit0|R~2_combout\ & 
-- (!\opBit28|op_SOMA_SUB~0_combout\ $ (((!\opBit27|saida_MUX_B~0_combout\) # (!\A[27]~input_o\))))) ) ) ) # ( !\opBit26|carryOut~combout\ & ( !\opBit28|R~0_combout\ & ( (\opBit0|R~2_combout\ & (!\opBit28|op_SOMA_SUB~0_combout\ $ 
-- (((!\opBit27|saida_MUX_B~0_combout\ & !\A[27]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001101100000000000011011011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \opBit27|ALT_INV_saida_MUX_B~0_combout\,
	datab => \opBit28|ALT_INV_op_SOMA_SUB~0_combout\,
	datac => \ALT_INV_A[27]~input_o\,
	datad => \opBit0|ALT_INV_R~2_combout\,
	datae => \opBit26|ALT_INV_carryOut~combout\,
	dataf => \opBit28|ALT_INV_R~0_combout\,
	combout => \opBit28|R~1_combout\);

-- Location: MLABCELL_X18_Y12_N15
\opBit29|saida_MUX_B~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \opBit29|saida_MUX_B~0_combout\ = ( \inverteB~input_o\ & ( !\B[29]~input_o\ ) ) # ( !\inverteB~input_o\ & ( \B[29]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[29]~input_o\,
	dataf => \ALT_INV_inverteB~input_o\,
	combout => \opBit29|saida_MUX_B~0_combout\);

-- Location: MLABCELL_X18_Y12_N12
\opBit29|R~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \opBit29|R~0_combout\ = ( \opBit29|saida_MUX_B~0_combout\ & ( (!\sel[0]~input_o\ & (!\A[29]~input_o\ $ (((!\sel[1]~input_o\) # (\opBit28|carryOut~combout\))))) # (\sel[0]~input_o\ & (((!\sel[1]~input_o\)))) ) ) # ( !\opBit29|saida_MUX_B~0_combout\ & ( 
-- (!\sel[1]~input_o\ & (((\sel[0]~input_o\ & \A[29]~input_o\)))) # (\sel[1]~input_o\ & (!\sel[0]~input_o\ & (!\opBit28|carryOut~combout\ $ (!\A[29]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000101100000100000010110000101100110111000010110011011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \opBit28|ALT_INV_carryOut~combout\,
	datab => \ALT_INV_sel[1]~input_o\,
	datac => \ALT_INV_sel[0]~input_o\,
	datad => \ALT_INV_A[29]~input_o\,
	dataf => \opBit29|ALT_INV_saida_MUX_B~0_combout\,
	combout => \opBit29|R~0_combout\);

-- Location: MLABCELL_X18_Y12_N51
\opBit30|op_SOMA_SUB~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \opBit30|op_SOMA_SUB~0_combout\ = ( \inverteB~input_o\ & ( !\B[30]~input_o\ $ (\A[30]~input_o\) ) ) # ( !\inverteB~input_o\ & ( !\B[30]~input_o\ $ (!\A[30]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011010011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[30]~input_o\,
	datab => \ALT_INV_A[30]~input_o\,
	dataf => \ALT_INV_inverteB~input_o\,
	combout => \opBit30|op_SOMA_SUB~0_combout\);

-- Location: MLABCELL_X18_Y12_N48
\opBit30|R~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \opBit30|R~0_combout\ = ( \inverteB~input_o\ & ( (!\sel[1]~input_o\ & ((!\B[30]~input_o\ & ((\sel[0]~input_o\) # (\A[30]~input_o\))) # (\B[30]~input_o\ & (\A[30]~input_o\ & \sel[0]~input_o\)))) ) ) # ( !\inverteB~input_o\ & ( (!\sel[1]~input_o\ & 
-- ((!\B[30]~input_o\ & (\A[30]~input_o\ & \sel[0]~input_o\)) # (\B[30]~input_o\ & ((\sel[0]~input_o\) # (\A[30]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011100000000000101110000000000101011000000000010101100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[30]~input_o\,
	datab => \ALT_INV_A[30]~input_o\,
	datac => \ALT_INV_sel[0]~input_o\,
	datad => \ALT_INV_sel[1]~input_o\,
	dataf => \ALT_INV_inverteB~input_o\,
	combout => \opBit30|R~0_combout\);

-- Location: MLABCELL_X18_Y12_N54
\opBit30|R~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \opBit30|R~1_combout\ = ( \opBit28|carryOut~combout\ & ( \opBit0|R~2_combout\ & ( (!\opBit30|op_SOMA_SUB~0_combout\ $ (((!\opBit29|saida_MUX_B~0_combout\ & !\A[29]~input_o\)))) # (\opBit30|R~0_combout\) ) ) ) # ( !\opBit28|carryOut~combout\ & ( 
-- \opBit0|R~2_combout\ & ( (!\opBit30|op_SOMA_SUB~0_combout\ $ (((!\opBit29|saida_MUX_B~0_combout\) # (!\A[29]~input_o\)))) # (\opBit30|R~0_combout\) ) ) ) # ( \opBit28|carryOut~combout\ & ( !\opBit0|R~2_combout\ & ( \opBit30|R~0_combout\ ) ) ) # ( 
-- !\opBit28|carryOut~combout\ & ( !\opBit0|R~2_combout\ & ( \opBit30|R~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101011111011011110110111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \opBit30|ALT_INV_op_SOMA_SUB~0_combout\,
	datab => \opBit29|ALT_INV_saida_MUX_B~0_combout\,
	datac => \opBit30|ALT_INV_R~0_combout\,
	datad => \ALT_INV_A[29]~input_o\,
	datae => \opBit28|ALT_INV_carryOut~combout\,
	dataf => \opBit0|ALT_INV_R~2_combout\,
	combout => \opBit30|R~1_combout\);

-- Location: LABCELL_X17_Y12_N33
\opBit31|R~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \opBit31|R~0_combout\ = ( \A[31]~input_o\ & ( (!\sel[0]~input_o\ & (!\opBit31|saida_MUX_B~0_combout\ $ (((!\sel[1]~input_o\) # (\opBit30|carryOut~combout\))))) # (\sel[0]~input_o\ & (!\sel[1]~input_o\)) ) ) # ( !\A[31]~input_o\ & ( (!\sel[0]~input_o\ & 
-- (\sel[1]~input_o\ & (!\opBit30|carryOut~combout\ $ (!\opBit31|saida_MUX_B~0_combout\)))) # (\sel[0]~input_o\ & (!\sel[1]~input_o\ & ((\opBit31|saida_MUX_B~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001100100000000100110010001100100110011100110010011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sel[0]~input_o\,
	datab => \ALT_INV_sel[1]~input_o\,
	datac => \opBit30|ALT_INV_carryOut~combout\,
	datad => \opBit31|ALT_INV_saida_MUX_B~0_combout\,
	dataf => \ALT_INV_A[31]~input_o\,
	combout => \opBit31|R~0_combout\);

-- Location: LABCELL_X16_Y2_N27
\ZERO~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ZERO~0_combout\ = ( !\opBit3|R~0_combout\ & ( (!\opBit4|R~0_combout\ & (!\opBit2|R~0_combout\ & !\opBit1|R~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \opBit4|ALT_INV_R~0_combout\,
	datac => \opBit2|ALT_INV_R~0_combout\,
	datad => \opBit1|ALT_INV_R~0_combout\,
	dataf => \opBit3|ALT_INV_R~0_combout\,
	combout => \ZERO~0_combout\);

-- Location: LABCELL_X19_Y2_N42
\ZERO~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ZERO~1_combout\ = ( !\opBit7|R~0_combout\ & ( (!\opBit6|R~0_combout\ & (!\opBit5|R~0_combout\ & (!\opBit8|R~1_combout\ & \ZERO~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \opBit6|ALT_INV_R~0_combout\,
	datab => \opBit5|ALT_INV_R~0_combout\,
	datac => \opBit8|ALT_INV_R~1_combout\,
	datad => \ALT_INV_ZERO~0_combout\,
	dataf => \opBit7|ALT_INV_R~0_combout\,
	combout => \ZERO~1_combout\);

-- Location: LABCELL_X20_Y2_N15
\ZERO~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ZERO~2_combout\ = ( !\opBit12|R~0_combout\ & ( (!\opBit9|R~0_combout\ & (\ZERO~1_combout\ & (!\opBit11|R~0_combout\ & !\opBit10|R~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000001000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \opBit9|ALT_INV_R~0_combout\,
	datab => \ALT_INV_ZERO~1_combout\,
	datac => \opBit11|ALT_INV_R~0_combout\,
	datad => \opBit10|ALT_INV_R~0_combout\,
	dataf => \opBit12|ALT_INV_R~0_combout\,
	combout => \ZERO~2_combout\);

-- Location: LABCELL_X16_Y2_N30
\ZERO~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ZERO~3_combout\ = ( !\opBit14|R~0_combout\ & ( (\ZERO~2_combout\ & (!\opBit13|R~1_combout\ & !\opBit15|R~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000001100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ZERO~2_combout\,
	datac => \opBit13|ALT_INV_R~1_combout\,
	datad => \opBit15|ALT_INV_R~0_combout\,
	dataf => \opBit14|ALT_INV_R~0_combout\,
	combout => \ZERO~3_combout\);

-- Location: LABCELL_X25_Y2_N27
\ZERO~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ZERO~4_combout\ = ( !\opBit18|R~1_combout\ & ( (!\opBit16|R~0_combout\ & (\ZERO~3_combout\ & !\opBit17|R~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \opBit16|ALT_INV_R~0_combout\,
	datac => \ALT_INV_ZERO~3_combout\,
	datad => \opBit17|ALT_INV_R~0_combout\,
	dataf => \opBit18|ALT_INV_R~1_combout\,
	combout => \ZERO~4_combout\);

-- Location: LABCELL_X25_Y2_N12
\ZERO~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ZERO~5_combout\ = ( !\opBit19|R~0_combout\ & ( (!\opBit20|R~0_combout\ & (!\opBit22|R~0_combout\ & (\ZERO~4_combout\ & !\opBit21|R~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000010000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \opBit20|ALT_INV_R~0_combout\,
	datab => \opBit22|ALT_INV_R~0_combout\,
	datac => \ALT_INV_ZERO~4_combout\,
	datad => \opBit21|ALT_INV_R~0_combout\,
	dataf => \opBit19|ALT_INV_R~0_combout\,
	combout => \ZERO~5_combout\);

-- Location: LABCELL_X21_Y2_N24
\ZERO~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ZERO~6_combout\ = ( \ZERO~5_combout\ & ( (!\opBit25|R~0_combout\ & (!\opBit23|R~1_combout\ & !\opBit24|R~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \opBit25|ALT_INV_R~0_combout\,
	datac => \opBit23|ALT_INV_R~1_combout\,
	datad => \opBit24|ALT_INV_R~0_combout\,
	dataf => \ALT_INV_ZERO~5_combout\,
	combout => \ZERO~6_combout\);

-- Location: LABCELL_X21_Y2_N27
\ZERO~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ZERO~7_combout\ = ( \ZERO~6_combout\ & ( (!\opBit26|R~0_combout\ & (!\opBit28|R~1_combout\ & !\opBit27|R~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \opBit26|ALT_INV_R~0_combout\,
	datac => \opBit28|ALT_INV_R~1_combout\,
	datad => \opBit27|ALT_INV_R~0_combout\,
	dataf => \ALT_INV_ZERO~6_combout\,
	combout => \ZERO~7_combout\);

-- Location: LABCELL_X17_Y12_N6
\ZERO~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ZERO~8_combout\ = ( \opBit0|R~1_combout\ & ( \ZERO~7_combout\ ) ) # ( !\opBit0|R~1_combout\ & ( \ZERO~7_combout\ & ( ((\opBit31|R~0_combout\) # (\opBit29|R~0_combout\)) # (\opBit30|R~1_combout\) ) ) ) # ( \opBit0|R~1_combout\ & ( !\ZERO~7_combout\ ) ) # 
-- ( !\opBit0|R~1_combout\ & ( !\ZERO~7_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111101111111011111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \opBit30|ALT_INV_R~1_combout\,
	datab => \opBit29|ALT_INV_R~0_combout\,
	datac => \opBit31|ALT_INV_R~0_combout\,
	datae => \opBit0|ALT_INV_R~1_combout\,
	dataf => \ALT_INV_ZERO~7_combout\,
	combout => \ZERO~8_combout\);

-- Location: LABCELL_X35_Y1_N0
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


