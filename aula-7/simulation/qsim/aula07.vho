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

-- DATE "10/13/2022 12:02:12"

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
	LEDR : OUT std_logic_vector(9 DOWNTO 0);
	KEY : IN std_logic_vector(3 DOWNTO 0)
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
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \LEDR[8]~output_o\ : std_logic;
SIGNAL \LEDR[9]~output_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~1_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~18\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~21_sumout\ : std_logic;
SIGNAL \ROM|memROM~11_combout\ : std_logic;
SIGNAL \ROM|memROM~9_combout\ : std_logic;
SIGNAL \ROM|memROM~7_combout\ : std_logic;
SIGNAL \ROM|memROM~8_combout\ : std_logic;
SIGNAL \CPU|DECODER1|Equal10~2_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~22\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~25_sumout\ : std_logic;
SIGNAL \ROM|memROM~10_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~26\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~29_sumout\ : std_logic;
SIGNAL \ROM|memROM~1_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~30\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~33_sumout\ : std_logic;
SIGNAL \ROM|memROM~6_combout\ : std_logic;
SIGNAL \ROM|memROM~3_combout\ : std_logic;
SIGNAL \ROM|memROM~4_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~2\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~5_sumout\ : std_logic;
SIGNAL \ROM|memROM~0_combout\ : std_logic;
SIGNAL \ROM|memROM~2_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~6\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~9_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~10\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~13_sumout\ : std_logic;
SIGNAL \ROM|memROM~12_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~14\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~17_sumout\ : std_logic;
SIGNAL \ROM|memROM~5_combout\ : std_logic;
SIGNAL \RAM64|process_0~0_combout\ : std_logic;
SIGNAL \CPU|DECODER1|Equal10~0_combout\ : std_logic;
SIGNAL \ROM|memROM~13_combout\ : std_logic;
SIGNAL \RAM64|process_0~2_combout\ : std_logic;
SIGNAL \RAM64|process_0~1_combout\ : std_logic;
SIGNAL \RAM64|ram~557_combout\ : std_logic;
SIGNAL \RAM64|ram~23_q\ : std_logic;
SIGNAL \RAM64|ram~527_combout\ : std_logic;
SIGNAL \RAM64|ram~558_combout\ : std_logic;
SIGNAL \RAM64|ram~15_q\ : std_logic;
SIGNAL \RAM64|ram~528_combout\ : std_logic;
SIGNAL \RAM64|ram~529_combout\ : std_logic;
SIGNAL \RAM64|ram~530_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~1_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~34_cout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~1_sumout\ : std_logic;
SIGNAL \CPU|DECODER1|saida[4]~0_combout\ : std_logic;
SIGNAL \CPU|ULA1|saida[0]~0_combout\ : std_logic;
SIGNAL \CPU|DECODER1|Equal10~1_combout\ : std_logic;
SIGNAL \CPU|DECODER1|saida~1_combout\ : std_logic;
SIGNAL \AND_LEDR07|saida~0_combout\ : std_logic;
SIGNAL \ROM|memROM~14_combout\ : std_logic;
SIGNAL \RAM64|ram~24_q\ : std_logic;
SIGNAL \RAM64|ram~531_combout\ : std_logic;
SIGNAL \RAM64|ram~16_q\ : std_logic;
SIGNAL \RAM64|ram~532_combout\ : std_logic;
SIGNAL \RAM64|ram~533_combout\ : std_logic;
SIGNAL \RAM64|ram~534_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~2\ : std_logic;
SIGNAL \CPU|ULA1|Add0~5_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~2\ : std_logic;
SIGNAL \CPU|ULA1|Add1~5_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[1]~1_combout\ : std_logic;
SIGNAL \RAM64|ram~25_q\ : std_logic;
SIGNAL \RAM64|ram~535_combout\ : std_logic;
SIGNAL \RAM64|ram~17_q\ : std_logic;
SIGNAL \RAM64|ram~536_combout\ : std_logic;
SIGNAL \RAM64|ram~537_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~6\ : std_logic;
SIGNAL \CPU|ULA1|Add0~9_sumout\ : std_logic;
SIGNAL \RAM64|ram~538_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~6\ : std_logic;
SIGNAL \CPU|ULA1|Add1~9_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[2]~2_combout\ : std_logic;
SIGNAL \RAM64|ram~26_q\ : std_logic;
SIGNAL \RAM64|ram~539_combout\ : std_logic;
SIGNAL \RAM64|ram~18_q\ : std_logic;
SIGNAL \RAM64|ram~540_combout\ : std_logic;
SIGNAL \RAM64|ram~541_combout\ : std_logic;
SIGNAL \RAM64|ram~542_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~10\ : std_logic;
SIGNAL \CPU|ULA1|Add0~13_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~10\ : std_logic;
SIGNAL \CPU|ULA1|Add1~13_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[3]~3_combout\ : std_logic;
SIGNAL \RAM64|ram~27_q\ : std_logic;
SIGNAL \RAM64|ram~543_combout\ : std_logic;
SIGNAL \RAM64|ram~19_q\ : std_logic;
SIGNAL \RAM64|ram~544_combout\ : std_logic;
SIGNAL \RAM64|ram~545_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~14\ : std_logic;
SIGNAL \CPU|ULA1|Add0~17_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~14\ : std_logic;
SIGNAL \CPU|ULA1|Add1~17_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[4]~4_combout\ : std_logic;
SIGNAL \RAM64|ram~28_q\ : std_logic;
SIGNAL \RAM64|ram~546_combout\ : std_logic;
SIGNAL \RAM64|ram~20_q\ : std_logic;
SIGNAL \RAM64|ram~547_combout\ : std_logic;
SIGNAL \RAM64|ram~548_combout\ : std_logic;
SIGNAL \RAM64|ram~549_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~18\ : std_logic;
SIGNAL \CPU|ULA1|Add0~21_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~18\ : std_logic;
SIGNAL \CPU|ULA1|Add1~21_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[5]~5_combout\ : std_logic;
SIGNAL \RAM64|ram~29_q\ : std_logic;
SIGNAL \RAM64|ram~550_combout\ : std_logic;
SIGNAL \RAM64|ram~21_q\ : std_logic;
SIGNAL \RAM64|ram~551_combout\ : std_logic;
SIGNAL \RAM64|ram~552_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~22\ : std_logic;
SIGNAL \CPU|ULA1|Add0~25_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~22\ : std_logic;
SIGNAL \CPU|ULA1|Add1~25_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[6]~6_combout\ : std_logic;
SIGNAL \RAM64|ram~30_q\ : std_logic;
SIGNAL \RAM64|ram~553_combout\ : std_logic;
SIGNAL \RAM64|ram~22_q\ : std_logic;
SIGNAL \RAM64|ram~554_combout\ : std_logic;
SIGNAL \RAM64|ram~555_combout\ : std_logic;
SIGNAL \RAM64|ram~556_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~26\ : std_logic;
SIGNAL \CPU|ULA1|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~26\ : std_logic;
SIGNAL \CPU|ULA1|Add1~29_sumout\ : std_logic;
SIGNAL \CPU|ULA1|saida[7]~7_combout\ : std_logic;
SIGNAL \AND_LEDR8|saida~0_combout\ : std_logic;
SIGNAL \FLIP_FLOP_LED8|DOUT~0_combout\ : std_logic;
SIGNAL \FLIP_FLOP_LED8|DOUT~q\ : std_logic;
SIGNAL \AND_LEDR07|saida~1_combout\ : std_logic;
SIGNAL \FLIP_FLOP_LED9|DOUT~0_combout\ : std_logic;
SIGNAL \FLIP_FLOP_LED9|DOUT~q\ : std_logic;
SIGNAL \CPU|REGA|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CPU|PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \REG_LEDR07|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \RAM64|ALT_INV_process_0~2_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~14_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_process_0~1_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~13_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~556_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~555_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~554_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~22_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~553_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~30_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~552_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~551_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~21_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~550_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~29_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~549_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~548_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~547_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~20_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~546_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~28_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~545_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~544_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~19_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~543_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~27_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~542_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~541_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~540_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~18_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~539_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~26_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~538_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~537_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~536_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~17_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~535_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~25_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~534_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~533_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~532_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~16_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~531_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~24_q\ : std_logic;
SIGNAL \CPU|DECODER1|ALT_INV_saida[4]~0_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~530_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~529_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~528_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~15_q\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~527_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_ram~23_q\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~12_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~11_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~10_combout\ : std_logic;
SIGNAL \CPU|DECODER1|ALT_INV_Equal10~0_combout\ : std_logic;
SIGNAL \AND_LEDR07|ALT_INV_saida~1_combout\ : std_logic;
SIGNAL \AND_LEDR8|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~9_combout\ : std_logic;
SIGNAL \RAM64|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~0_combout\ : std_logic;
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

BEGIN

ww_CLOCK_50 <= CLOCK_50;
LEDR <= ww_LEDR;
ww_KEY <= KEY;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\RAM64|ALT_INV_process_0~2_combout\ <= NOT \RAM64|process_0~2_combout\;
\ROM|ALT_INV_memROM~14_combout\ <= NOT \ROM|memROM~14_combout\;
\RAM64|ALT_INV_process_0~1_combout\ <= NOT \RAM64|process_0~1_combout\;
\ROM|ALT_INV_memROM~13_combout\ <= NOT \ROM|memROM~13_combout\;
\RAM64|ALT_INV_ram~556_combout\ <= NOT \RAM64|ram~556_combout\;
\RAM64|ALT_INV_ram~555_combout\ <= NOT \RAM64|ram~555_combout\;
\RAM64|ALT_INV_ram~554_combout\ <= NOT \RAM64|ram~554_combout\;
\RAM64|ALT_INV_ram~22_q\ <= NOT \RAM64|ram~22_q\;
\RAM64|ALT_INV_ram~553_combout\ <= NOT \RAM64|ram~553_combout\;
\RAM64|ALT_INV_ram~30_q\ <= NOT \RAM64|ram~30_q\;
\RAM64|ALT_INV_ram~552_combout\ <= NOT \RAM64|ram~552_combout\;
\RAM64|ALT_INV_ram~551_combout\ <= NOT \RAM64|ram~551_combout\;
\RAM64|ALT_INV_ram~21_q\ <= NOT \RAM64|ram~21_q\;
\RAM64|ALT_INV_ram~550_combout\ <= NOT \RAM64|ram~550_combout\;
\RAM64|ALT_INV_ram~29_q\ <= NOT \RAM64|ram~29_q\;
\RAM64|ALT_INV_ram~549_combout\ <= NOT \RAM64|ram~549_combout\;
\RAM64|ALT_INV_ram~548_combout\ <= NOT \RAM64|ram~548_combout\;
\RAM64|ALT_INV_ram~547_combout\ <= NOT \RAM64|ram~547_combout\;
\RAM64|ALT_INV_ram~20_q\ <= NOT \RAM64|ram~20_q\;
\RAM64|ALT_INV_ram~546_combout\ <= NOT \RAM64|ram~546_combout\;
\RAM64|ALT_INV_ram~28_q\ <= NOT \RAM64|ram~28_q\;
\RAM64|ALT_INV_ram~545_combout\ <= NOT \RAM64|ram~545_combout\;
\RAM64|ALT_INV_ram~544_combout\ <= NOT \RAM64|ram~544_combout\;
\RAM64|ALT_INV_ram~19_q\ <= NOT \RAM64|ram~19_q\;
\RAM64|ALT_INV_ram~543_combout\ <= NOT \RAM64|ram~543_combout\;
\RAM64|ALT_INV_ram~27_q\ <= NOT \RAM64|ram~27_q\;
\RAM64|ALT_INV_ram~542_combout\ <= NOT \RAM64|ram~542_combout\;
\RAM64|ALT_INV_ram~541_combout\ <= NOT \RAM64|ram~541_combout\;
\RAM64|ALT_INV_ram~540_combout\ <= NOT \RAM64|ram~540_combout\;
\RAM64|ALT_INV_ram~18_q\ <= NOT \RAM64|ram~18_q\;
\RAM64|ALT_INV_ram~539_combout\ <= NOT \RAM64|ram~539_combout\;
\RAM64|ALT_INV_ram~26_q\ <= NOT \RAM64|ram~26_q\;
\RAM64|ALT_INV_ram~538_combout\ <= NOT \RAM64|ram~538_combout\;
\RAM64|ALT_INV_ram~537_combout\ <= NOT \RAM64|ram~537_combout\;
\RAM64|ALT_INV_ram~536_combout\ <= NOT \RAM64|ram~536_combout\;
\RAM64|ALT_INV_ram~17_q\ <= NOT \RAM64|ram~17_q\;
\RAM64|ALT_INV_ram~535_combout\ <= NOT \RAM64|ram~535_combout\;
\RAM64|ALT_INV_ram~25_q\ <= NOT \RAM64|ram~25_q\;
\RAM64|ALT_INV_ram~534_combout\ <= NOT \RAM64|ram~534_combout\;
\RAM64|ALT_INV_ram~533_combout\ <= NOT \RAM64|ram~533_combout\;
\RAM64|ALT_INV_ram~532_combout\ <= NOT \RAM64|ram~532_combout\;
\RAM64|ALT_INV_ram~16_q\ <= NOT \RAM64|ram~16_q\;
\RAM64|ALT_INV_ram~531_combout\ <= NOT \RAM64|ram~531_combout\;
\RAM64|ALT_INV_ram~24_q\ <= NOT \RAM64|ram~24_q\;
\CPU|DECODER1|ALT_INV_saida[4]~0_combout\ <= NOT \CPU|DECODER1|saida[4]~0_combout\;
\RAM64|ALT_INV_ram~530_combout\ <= NOT \RAM64|ram~530_combout\;
\RAM64|ALT_INV_ram~529_combout\ <= NOT \RAM64|ram~529_combout\;
\RAM64|ALT_INV_ram~528_combout\ <= NOT \RAM64|ram~528_combout\;
\RAM64|ALT_INV_ram~15_q\ <= NOT \RAM64|ram~15_q\;
\RAM64|ALT_INV_ram~527_combout\ <= NOT \RAM64|ram~527_combout\;
\RAM64|ALT_INV_ram~23_q\ <= NOT \RAM64|ram~23_q\;
\ROM|ALT_INV_memROM~12_combout\ <= NOT \ROM|memROM~12_combout\;
\ROM|ALT_INV_memROM~11_combout\ <= NOT \ROM|memROM~11_combout\;
\ROM|ALT_INV_memROM~10_combout\ <= NOT \ROM|memROM~10_combout\;
\CPU|DECODER1|ALT_INV_Equal10~0_combout\ <= NOT \CPU|DECODER1|Equal10~0_combout\;
\AND_LEDR07|ALT_INV_saida~1_combout\ <= NOT \AND_LEDR07|saida~1_combout\;
\AND_LEDR8|ALT_INV_saida~0_combout\ <= NOT \AND_LEDR8|saida~0_combout\;
\ROM|ALT_INV_memROM~9_combout\ <= NOT \ROM|memROM~9_combout\;
\RAM64|ALT_INV_process_0~0_combout\ <= NOT \RAM64|process_0~0_combout\;
\ROM|ALT_INV_memROM~8_combout\ <= NOT \ROM|memROM~8_combout\;
\ROM|ALT_INV_memROM~7_combout\ <= NOT \ROM|memROM~7_combout\;
\ROM|ALT_INV_memROM~6_combout\ <= NOT \ROM|memROM~6_combout\;
\ROM|ALT_INV_memROM~5_combout\ <= NOT \ROM|memROM~5_combout\;
\ROM|ALT_INV_memROM~4_combout\ <= NOT \ROM|memROM~4_combout\;
\ROM|ALT_INV_memROM~3_combout\ <= NOT \ROM|memROM~3_combout\;
\ROM|ALT_INV_memROM~2_combout\ <= NOT \ROM|memROM~2_combout\;
\ROM|ALT_INV_memROM~1_combout\ <= NOT \ROM|memROM~1_combout\;
\ROM|ALT_INV_memROM~0_combout\ <= NOT \ROM|memROM~0_combout\;
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

\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_LEDR07|DOUT\(0),
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

\LEDR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_LEDR07|DOUT\(1),
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

\LEDR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_LEDR07|DOUT\(2),
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

\LEDR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_LEDR07|DOUT\(3),
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

\LEDR[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_LEDR07|DOUT\(4),
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

\LEDR[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_LEDR07|DOUT\(5),
	devoe => ww_devoe,
	o => \LEDR[5]~output_o\);

\LEDR[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_LEDR07|DOUT\(6),
	devoe => ww_devoe,
	o => \LEDR[6]~output_o\);

\LEDR[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_LEDR07|DOUT\(7),
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

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
	o => \LEDR[8]~output_o\);

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
	o => \LEDR[9]~output_o\);

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

\ROM|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~11_combout\ = ( \ROM|memROM~5_combout\ & ( (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2) & \CPU|PC|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000100000000000000000000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \ROM|ALT_INV_memROM~5_combout\,
	combout => \ROM|memROM~11_combout\);

\ROM|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~9_combout\ = (!\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(2) $ (!\CPU|PC|DOUT\(3))))) # (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT\(1)) # (!\CPU|PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111010100000010111101010000001011110101000000101111010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~9_combout\);

\ROM|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~7_combout\ = (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(0) $ (\CPU|PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000010000001000000001000000100000000100000010000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~7_combout\);

\ROM|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~8_combout\ = (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) $ (!\CPU|PC|DOUT\(2))))) # (\CPU|PC|DOUT\(3) & (((\CPU|PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100000001111001010000000111100101000000011110010100000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~8_combout\);

\CPU|DECODER1|Equal10~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER1|Equal10~2_combout\ = (\ROM|memROM~5_combout\ & (!\ROM|memROM~9_combout\ & (\ROM|memROM~7_combout\ & !\ROM|memROM~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000001000000000000000100000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~5_combout\,
	datab => \ROM|ALT_INV_memROM~9_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \ROM|ALT_INV_memROM~8_combout\,
	combout => \CPU|DECODER1|Equal10~2_combout\);

\CPU|PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|incrementaPC|Add0~21_sumout\,
	asdata => \ROM|memROM~11_combout\,
	sload => \CPU|DECODER1|Equal10~2_combout\,
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

\ROM|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~10_combout\ = ( \ROM|memROM~5_combout\ & ( (\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000000000000000000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \ROM|ALT_INV_memROM~5_combout\,
	combout => \ROM|memROM~10_combout\);

\CPU|PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|incrementaPC|Add0~25_sumout\,
	asdata => \ROM|memROM~10_combout\,
	sload => \CPU|DECODER1|Equal10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(6));

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

\CPU|PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|incrementaPC|Add0~29_sumout\,
	asdata => \ROM|memROM~11_combout\,
	sload => \CPU|DECODER1|Equal10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(7));

\ROM|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~1_combout\ = (!\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(6) & !\CPU|PC|DOUT\(7))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(4),
	datab => \CPU|PC|ALT_INV_DOUT\(5),
	datac => \CPU|PC|ALT_INV_DOUT\(6),
	datad => \CPU|PC|ALT_INV_DOUT\(7),
	combout => \ROM|memROM~1_combout\);

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

\ROM|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~6_combout\ = ( \ROM|memROM~5_combout\ & ( (!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(0) & ((\CPU|PC|DOUT\(3))))) # (\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(0) $ (!\CPU|PC|DOUT\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001101010000000000000000000000000011010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \ROM|ALT_INV_memROM~5_combout\,
	combout => \ROM|memROM~6_combout\);

\CPU|PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|incrementaPC|Add0~33_sumout\,
	asdata => \ROM|memROM~6_combout\,
	sload => \CPU|DECODER1|Equal10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(8));

\ROM|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~3_combout\ = (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(3)))) # (\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(2) & (\CPU|PC|DOUT\(1))) # (\CPU|PC|DOUT\(2) & ((!\CPU|PC|DOUT\(3))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001010100010000100101010001000010010101000100001001010100010000",
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

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \ROM|ALT_INV_memROM~3_combout\,
	combout => \ROM|memROM~4_combout\);

\CPU|PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|incrementaPC|Add0~1_sumout\,
	asdata => \ROM|memROM~4_combout\,
	sload => \CPU|DECODER1|Equal10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(0));

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

\ROM|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~0_combout\ = (!\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(3)))) # (\CPU|PC|DOUT\(0) & (((!\CPU|PC|DOUT\(2) & \CPU|PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001010000000000100101000000000010010100000000001001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~0_combout\);

\ROM|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~2_combout\ = (\ROM|memROM~0_combout\ & (\ROM|memROM~1_combout\ & !\CPU|PC|DOUT\(8)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000000010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \CPU|PC|ALT_INV_DOUT\(8),
	combout => \ROM|memROM~2_combout\);

\CPU|PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|incrementaPC|Add0~5_sumout\,
	asdata => \ROM|memROM~2_combout\,
	sload => \CPU|DECODER1|Equal10~2_combout\,
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

\CPU|PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|incrementaPC|Add0~9_sumout\,
	asdata => \ROM|memROM~10_combout\,
	sload => \CPU|DECODER1|Equal10~2_combout\,
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

\ROM|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~12_combout\ = (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(2) & (\CPU|PC|DOUT\(3) & \ROM|memROM~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \CPU|PC|ALT_INV_DOUT\(3),
	datad => \ROM|ALT_INV_memROM~5_combout\,
	combout => \ROM|memROM~12_combout\);

\CPU|PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|incrementaPC|Add0~13_sumout\,
	asdata => \ROM|memROM~12_combout\,
	sload => \CPU|DECODER1|Equal10~2_combout\,
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
	asdata => \ROM|memROM~10_combout\,
	sload => \CPU|DECODER1|Equal10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(4));

\ROM|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~5_combout\ = ( !\CPU|PC|DOUT\(8) & ( (!\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(6) & !\CPU|PC|DOUT\(7)))) ) )

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
	combout => \ROM|memROM~5_combout\);

\RAM64|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|process_0~0_combout\ = (\ROM|memROM~5_combout\ & (!\ROM|memROM~7_combout\ & !\ROM|memROM~8_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000001000000010000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~5_combout\,
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \ROM|ALT_INV_memROM~8_combout\,
	combout => \RAM64|process_0~0_combout\);

\CPU|DECODER1|Equal10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER1|Equal10~0_combout\ = (\RAM64|process_0~0_combout\ & ((!\ROM|memROM~5_combout\) # (!\ROM|memROM~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000001110000011100000111000001110000011100000111000001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~5_combout\,
	datab => \ROM|ALT_INV_memROM~9_combout\,
	datac => \RAM64|ALT_INV_process_0~0_combout\,
	combout => \CPU|DECODER1|Equal10~0_combout\);

\ROM|memROM~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~13_combout\ = (!\ROM|memROM~1_combout\) # (!\ROM|memROM~3_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011101110111011101110111011101110111011101110111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~3_combout\,
	combout => \ROM|memROM~13_combout\);

\RAM64|process_0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|process_0~2_combout\ = ( \CPU|PC|DOUT\(0) & ( (\ROM|memROM~5_combout\ & (!\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT\(2)) # (!\CPU|PC|DOUT\(1))))) ) ) # ( !\CPU|PC|DOUT\(0) & ( (\ROM|memROM~5_combout\ & (!\CPU|PC|DOUT\(3) $ (!\CPU|PC|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010000010100010001000100000000010100000101000100010001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~5_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(3),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(1),
	datae => \CPU|PC|ALT_INV_DOUT\(0),
	combout => \RAM64|process_0~2_combout\);

\RAM64|process_0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|process_0~1_combout\ = (!\ROM|memROM~6_combout\ & (\RAM64|process_0~0_combout\ & \RAM64|process_0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~6_combout\,
	datab => \RAM64|ALT_INV_process_0~0_combout\,
	datac => \RAM64|ALT_INV_process_0~2_combout\,
	combout => \RAM64|process_0~1_combout\);

\RAM64|ram~557\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~557_combout\ = ( \RAM64|process_0~1_combout\ & ( (!\ROM|memROM~12_combout\ & (!\ROM|memROM~10_combout\ & (!\ROM|memROM~2_combout\ & \ROM|memROM~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001000000000000000000000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~12_combout\,
	datab => \ROM|ALT_INV_memROM~10_combout\,
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \RAM64|ALT_INV_process_0~1_combout\,
	combout => \RAM64|ram~557_combout\);

\RAM64|ram~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(0),
	ena => \RAM64|ram~557_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~23_q\);

\RAM64|ram~527\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~527_combout\ = ( !\ROM|memROM~12_combout\ & ( !\ROM|memROM~2_combout\ & ( \RAM64|ram~23_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~23_q\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM64|ram~527_combout\);

\RAM64|ram~558\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~558_combout\ = ( \RAM64|process_0~1_combout\ & ( (!\ROM|memROM~12_combout\ & (!\ROM|memROM~10_combout\ & (!\ROM|memROM~2_combout\ & !\ROM|memROM~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~12_combout\,
	datab => \ROM|ALT_INV_memROM~10_combout\,
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \RAM64|ALT_INV_process_0~1_combout\,
	combout => \RAM64|ram~558_combout\);

\RAM64|ram~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(0),
	ena => \RAM64|ram~558_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~15_q\);

\RAM64|ram~528\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~528_combout\ = ( !\ROM|memROM~12_combout\ & ( !\ROM|memROM~2_combout\ & ( \RAM64|ram~15_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~15_q\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM64|ram~528_combout\);

\RAM64|ram~529\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~529_combout\ = ( \ROM|memROM~4_combout\ & ( !\ROM|memROM~11_combout\ & ( \RAM64|ram~527_combout\ ) ) ) # ( !\ROM|memROM~4_combout\ & ( !\ROM|memROM~11_combout\ & ( \RAM64|ram~528_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~527_combout\,
	datab => \RAM64|ALT_INV_ram~528_combout\,
	datae => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \ROM|ALT_INV_memROM~11_combout\,
	combout => \RAM64|ram~529_combout\);

\RAM64|ram~530\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~530_combout\ = (!\ROM|memROM~10_combout\ & \RAM64|ram~529_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~10_combout\,
	datac => \RAM64|ALT_INV_ram~529_combout\,
	combout => \RAM64|ram~530_combout\);

\CPU|ULA1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~1_sumout\ = SUM(( (!\CPU|DECODER1|Equal10~0_combout\ & (((\RAM64|ram~530_combout\)))) # (\CPU|DECODER1|Equal10~0_combout\ & (!\CPU|PC|DOUT\(8) & (!\ROM|memROM~13_combout\))) ) + ( \CPU|REGA|DOUT\(0) ) + ( !VCC ))
-- \CPU|ULA1|Add0~2\ = CARRY(( (!\CPU|DECODER1|Equal10~0_combout\ & (((\RAM64|ram~530_combout\)))) # (\CPU|DECODER1|Equal10~0_combout\ & (!\CPU|PC|DOUT\(8) & (!\ROM|memROM~13_combout\))) ) + ( \CPU|REGA|DOUT\(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000100000011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER1|ALT_INV_Equal10~0_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \ROM|ALT_INV_memROM~13_combout\,
	datad => \RAM64|ALT_INV_ram~530_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(0),
	cin => GND,
	sumout => \CPU|ULA1|Add0~1_sumout\,
	cout => \CPU|ULA1|Add0~2\);

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
-- \CPU|ULA1|Add1~1_sumout\ = SUM(( (!\CPU|DECODER1|Equal10~0_combout\ & (((!\RAM64|ram~530_combout\)))) # (\CPU|DECODER1|Equal10~0_combout\ & (((\CPU|PC|DOUT\(8))) # (\ROM|memROM~13_combout\))) ) + ( \CPU|REGA|DOUT\(0) ) + ( \CPU|ULA1|Add1~34_cout\ ))
-- \CPU|ULA1|Add1~2\ = CARRY(( (!\CPU|DECODER1|Equal10~0_combout\ & (((!\RAM64|ram~530_combout\)))) # (\CPU|DECODER1|Equal10~0_combout\ & (((\CPU|PC|DOUT\(8))) # (\ROM|memROM~13_combout\))) ) + ( \CPU|REGA|DOUT\(0) ) + ( \CPU|ULA1|Add1~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001011111100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER1|ALT_INV_Equal10~0_combout\,
	datab => \ROM|ALT_INV_memROM~13_combout\,
	datac => \CPU|PC|ALT_INV_DOUT\(8),
	datad => \RAM64|ALT_INV_ram~530_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(0),
	cin => \CPU|ULA1|Add1~34_cout\,
	sumout => \CPU|ULA1|Add1~1_sumout\,
	cout => \CPU|ULA1|Add1~2\);

\CPU|DECODER1|saida[4]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER1|saida[4]~0_combout\ = (\ROM|memROM~5_combout\ & (!\ROM|memROM~7_combout\ & (!\ROM|memROM~9_combout\ $ (\ROM|memROM~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000010000010000000001000001000000000100000100000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~5_combout\,
	datab => \ROM|ALT_INV_memROM~9_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \ROM|ALT_INV_memROM~8_combout\,
	combout => \CPU|DECODER1|saida[4]~0_combout\);

\CPU|ULA1|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[0]~0_combout\ = ( \CPU|DECODER1|saida[4]~0_combout\ & ( (!\CPU|DECODER1|Equal10~0_combout\ & ((\RAM64|ram~530_combout\))) # (\CPU|DECODER1|Equal10~0_combout\ & (\ROM|memROM~4_combout\)) ) ) # ( !\CPU|DECODER1|saida[4]~0_combout\ & ( 
-- \CPU|ULA1|Add1~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000111010001110100000000111111110001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~4_combout\,
	datab => \CPU|DECODER1|ALT_INV_Equal10~0_combout\,
	datac => \RAM64|ALT_INV_ram~530_combout\,
	datad => \CPU|ULA1|ALT_INV_Add1~1_sumout\,
	datae => \CPU|DECODER1|ALT_INV_saida[4]~0_combout\,
	combout => \CPU|ULA1|saida[0]~0_combout\);

\CPU|DECODER1|Equal10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER1|Equal10~1_combout\ = (!\ROM|memROM~5_combout\) # (((!\ROM|memROM~7_combout\) # (!\ROM|memROM~8_combout\)) # (\ROM|memROM~9_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111011111111111111101111111111111110111111111111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~5_combout\,
	datab => \ROM|ALT_INV_memROM~9_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \ROM|ALT_INV_memROM~8_combout\,
	combout => \CPU|DECODER1|Equal10~1_combout\);

\CPU|DECODER1|saida~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER1|saida~1_combout\ = (\ROM|memROM~5_combout\ & (!\ROM|memROM~8_combout\ $ (((\ROM|memROM~7_combout\) # (\ROM|memROM~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000010101010000000001010101000000000101010100000000010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~5_combout\,
	datab => \ROM|ALT_INV_memROM~9_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \ROM|ALT_INV_memROM~8_combout\,
	combout => \CPU|DECODER1|saida~1_combout\);

\CPU|REGA|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|ULA1|Add0~1_sumout\,
	asdata => \CPU|ULA1|saida[0]~0_combout\,
	sload => \CPU|DECODER1|Equal10~1_combout\,
	ena => \CPU|DECODER1|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(0));

\AND_LEDR07|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AND_LEDR07|saida~0_combout\ = ( \RAM64|process_0~2_combout\ & ( (!\ROM|memROM~2_combout\ & (!\ROM|memROM~4_combout\ & (\ROM|memROM~6_combout\ & \RAM64|process_0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000100000000000000000000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~4_combout\,
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datad => \RAM64|ALT_INV_process_0~0_combout\,
	datae => \RAM64|ALT_INV_process_0~2_combout\,
	combout => \AND_LEDR07|saida~0_combout\);

\REG_LEDR07|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(0),
	ena => \AND_LEDR07|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_LEDR07|DOUT\(0));

\ROM|memROM~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~14_combout\ = (\ROM|memROM~0_combout\ & \ROM|memROM~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	combout => \ROM|memROM~14_combout\);

\RAM64|ram~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(1),
	ena => \RAM64|ram~557_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~24_q\);

\RAM64|ram~531\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~531_combout\ = ( !\ROM|memROM~12_combout\ & ( !\ROM|memROM~2_combout\ & ( \RAM64|ram~24_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~24_q\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM64|ram~531_combout\);

\RAM64|ram~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(1),
	ena => \RAM64|ram~558_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~16_q\);

\RAM64|ram~532\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~532_combout\ = ( !\ROM|memROM~12_combout\ & ( !\ROM|memROM~2_combout\ & ( \RAM64|ram~16_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~16_q\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM64|ram~532_combout\);

\RAM64|ram~533\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~533_combout\ = ( \ROM|memROM~4_combout\ & ( !\ROM|memROM~11_combout\ & ( \RAM64|ram~531_combout\ ) ) ) # ( !\ROM|memROM~4_combout\ & ( !\ROM|memROM~11_combout\ & ( \RAM64|ram~532_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~531_combout\,
	datab => \RAM64|ALT_INV_ram~532_combout\,
	datae => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \ROM|ALT_INV_memROM~11_combout\,
	combout => \RAM64|ram~533_combout\);

\RAM64|ram~534\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~534_combout\ = (!\ROM|memROM~10_combout\ & \RAM64|ram~533_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~10_combout\,
	datac => \RAM64|ALT_INV_ram~533_combout\,
	combout => \RAM64|ram~534_combout\);

\CPU|ULA1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~5_sumout\ = SUM(( (!\CPU|DECODER1|Equal10~0_combout\ & (((\RAM64|ram~534_combout\)))) # (\CPU|DECODER1|Equal10~0_combout\ & (!\CPU|PC|DOUT\(8) & (\ROM|memROM~14_combout\))) ) + ( \CPU|REGA|DOUT\(1) ) + ( \CPU|ULA1|Add0~2\ ))
-- \CPU|ULA1|Add0~6\ = CARRY(( (!\CPU|DECODER1|Equal10~0_combout\ & (((\RAM64|ram~534_combout\)))) # (\CPU|DECODER1|Equal10~0_combout\ & (!\CPU|PC|DOUT\(8) & (\ROM|memROM~14_combout\))) ) + ( \CPU|REGA|DOUT\(1) ) + ( \CPU|ULA1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER1|ALT_INV_Equal10~0_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \ROM|ALT_INV_memROM~14_combout\,
	datad => \RAM64|ALT_INV_ram~534_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(1),
	cin => \CPU|ULA1|Add0~2\,
	sumout => \CPU|ULA1|Add0~5_sumout\,
	cout => \CPU|ULA1|Add0~6\);

\CPU|ULA1|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~5_sumout\ = SUM(( (!\CPU|DECODER1|Equal10~0_combout\ & (((!\RAM64|ram~534_combout\)))) # (\CPU|DECODER1|Equal10~0_combout\ & ((!\ROM|memROM~14_combout\) # ((\CPU|PC|DOUT\(8))))) ) + ( \CPU|REGA|DOUT\(1) ) + ( \CPU|ULA1|Add1~2\ ))
-- \CPU|ULA1|Add1~6\ = CARRY(( (!\CPU|DECODER1|Equal10~0_combout\ & (((!\RAM64|ram~534_combout\)))) # (\CPU|DECODER1|Equal10~0_combout\ & ((!\ROM|memROM~14_combout\) # ((\CPU|PC|DOUT\(8))))) ) + ( \CPU|REGA|DOUT\(1) ) + ( \CPU|ULA1|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001110111101000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER1|ALT_INV_Equal10~0_combout\,
	datab => \ROM|ALT_INV_memROM~14_combout\,
	datac => \CPU|PC|ALT_INV_DOUT\(8),
	datad => \RAM64|ALT_INV_ram~534_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(1),
	cin => \CPU|ULA1|Add1~2\,
	sumout => \CPU|ULA1|Add1~5_sumout\,
	cout => \CPU|ULA1|Add1~6\);

\CPU|ULA1|saida[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[1]~1_combout\ = ( \CPU|ULA1|Add1~5_sumout\ & ( (!\CPU|DECODER1|saida[4]~0_combout\) # ((!\CPU|DECODER1|Equal10~0_combout\ & ((\RAM64|ram~534_combout\))) # (\CPU|DECODER1|Equal10~0_combout\ & (\ROM|memROM~2_combout\))) ) ) # ( 
-- !\CPU|ULA1|Add1~5_sumout\ & ( (\CPU|DECODER1|saida[4]~0_combout\ & ((!\CPU|DECODER1|Equal10~0_combout\ & ((\RAM64|ram~534_combout\))) # (\CPU|DECODER1|Equal10~0_combout\ & (\ROM|memROM~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001101111100011111110100000001000011011111000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \CPU|DECODER1|ALT_INV_Equal10~0_combout\,
	datac => \CPU|DECODER1|ALT_INV_saida[4]~0_combout\,
	datad => \RAM64|ALT_INV_ram~534_combout\,
	datae => \CPU|ULA1|ALT_INV_Add1~5_sumout\,
	combout => \CPU|ULA1|saida[1]~1_combout\);

\CPU|REGA|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|ULA1|Add0~5_sumout\,
	asdata => \CPU|ULA1|saida[1]~1_combout\,
	sload => \CPU|DECODER1|Equal10~1_combout\,
	ena => \CPU|DECODER1|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(1));

\REG_LEDR07|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(1),
	ena => \AND_LEDR07|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_LEDR07|DOUT\(1));

\RAM64|ram~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(2),
	ena => \RAM64|ram~557_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~25_q\);

\RAM64|ram~535\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~535_combout\ = ( !\ROM|memROM~12_combout\ & ( !\ROM|memROM~2_combout\ & ( \RAM64|ram~25_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~25_q\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM64|ram~535_combout\);

\RAM64|ram~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(2),
	ena => \RAM64|ram~558_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~17_q\);

\RAM64|ram~536\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~536_combout\ = ( !\ROM|memROM~12_combout\ & ( !\ROM|memROM~2_combout\ & ( \RAM64|ram~17_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~17_q\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM64|ram~536_combout\);

\RAM64|ram~537\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~537_combout\ = ( \ROM|memROM~4_combout\ & ( !\ROM|memROM~11_combout\ & ( \RAM64|ram~535_combout\ ) ) ) # ( !\ROM|memROM~4_combout\ & ( !\ROM|memROM~11_combout\ & ( \RAM64|ram~536_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~535_combout\,
	datab => \RAM64|ALT_INV_ram~536_combout\,
	datae => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \ROM|ALT_INV_memROM~11_combout\,
	combout => \RAM64|ram~537_combout\);

\CPU|ULA1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~9_sumout\ = SUM(( (!\CPU|DECODER1|Equal10~0_combout\ & (!\ROM|memROM~10_combout\ & \RAM64|ram~537_combout\)) # (\CPU|DECODER1|Equal10~0_combout\ & (\ROM|memROM~10_combout\)) ) + ( \CPU|REGA|DOUT\(2) ) + ( \CPU|ULA1|Add0~6\ ))
-- \CPU|ULA1|Add0~10\ = CARRY(( (!\CPU|DECODER1|Equal10~0_combout\ & (!\ROM|memROM~10_combout\ & \RAM64|ram~537_combout\)) # (\CPU|DECODER1|Equal10~0_combout\ & (\ROM|memROM~10_combout\)) ) + ( \CPU|REGA|DOUT\(2) ) + ( \CPU|ULA1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000001000110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER1|ALT_INV_Equal10~0_combout\,
	datab => \ROM|ALT_INV_memROM~10_combout\,
	datad => \RAM64|ALT_INV_ram~537_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(2),
	cin => \CPU|ULA1|Add0~6\,
	sumout => \CPU|ULA1|Add0~9_sumout\,
	cout => \CPU|ULA1|Add0~10\);

\RAM64|ram~538\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~538_combout\ = (!\ROM|memROM~10_combout\ & \RAM64|ram~537_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~10_combout\,
	datac => \RAM64|ALT_INV_ram~537_combout\,
	combout => \RAM64|ram~538_combout\);

\CPU|ULA1|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~9_sumout\ = SUM(( (!\CPU|DECODER1|Equal10~0_combout\ & ((!\RAM64|ram~538_combout\))) # (\CPU|DECODER1|Equal10~0_combout\ & (!\ROM|memROM~10_combout\)) ) + ( \CPU|REGA|DOUT\(2) ) + ( \CPU|ULA1|Add1~6\ ))
-- \CPU|ULA1|Add1~10\ = CARRY(( (!\CPU|DECODER1|Equal10~0_combout\ & ((!\RAM64|ram~538_combout\))) # (\CPU|DECODER1|Equal10~0_combout\ & (!\ROM|memROM~10_combout\)) ) + ( \CPU|REGA|DOUT\(2) ) + ( \CPU|ULA1|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111101001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER1|ALT_INV_Equal10~0_combout\,
	datac => \ROM|ALT_INV_memROM~10_combout\,
	datad => \RAM64|ALT_INV_ram~538_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(2),
	cin => \CPU|ULA1|Add1~6\,
	sumout => \CPU|ULA1|Add1~9_sumout\,
	cout => \CPU|ULA1|Add1~10\);

\CPU|ULA1|saida[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[2]~2_combout\ = ( \CPU|ULA1|Add1~9_sumout\ & ( (!\CPU|DECODER1|saida[4]~0_combout\) # ((!\CPU|DECODER1|Equal10~0_combout\ & ((\RAM64|ram~538_combout\))) # (\CPU|DECODER1|Equal10~0_combout\ & (\ROM|memROM~10_combout\))) ) ) # ( 
-- !\CPU|ULA1|Add1~9_sumout\ & ( (\CPU|DECODER1|saida[4]~0_combout\ & ((!\CPU|DECODER1|Equal10~0_combout\ & ((\RAM64|ram~538_combout\))) # (\CPU|DECODER1|Equal10~0_combout\ & (\ROM|memROM~10_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001101111100011111110100000001000011011111000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~10_combout\,
	datab => \CPU|DECODER1|ALT_INV_Equal10~0_combout\,
	datac => \CPU|DECODER1|ALT_INV_saida[4]~0_combout\,
	datad => \RAM64|ALT_INV_ram~538_combout\,
	datae => \CPU|ULA1|ALT_INV_Add1~9_sumout\,
	combout => \CPU|ULA1|saida[2]~2_combout\);

\CPU|REGA|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|ULA1|Add0~9_sumout\,
	asdata => \CPU|ULA1|saida[2]~2_combout\,
	sload => \CPU|DECODER1|Equal10~1_combout\,
	ena => \CPU|DECODER1|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(2));

\REG_LEDR07|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(2),
	ena => \AND_LEDR07|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_LEDR07|DOUT\(2));

\RAM64|ram~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(3),
	ena => \RAM64|ram~557_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~26_q\);

\RAM64|ram~539\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~539_combout\ = ( !\ROM|memROM~12_combout\ & ( !\ROM|memROM~2_combout\ & ( \RAM64|ram~26_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~26_q\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM64|ram~539_combout\);

\RAM64|ram~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(3),
	ena => \RAM64|ram~558_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~18_q\);

\RAM64|ram~540\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~540_combout\ = ( !\ROM|memROM~12_combout\ & ( !\ROM|memROM~2_combout\ & ( \RAM64|ram~18_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~18_q\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM64|ram~540_combout\);

\RAM64|ram~541\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~541_combout\ = ( \ROM|memROM~4_combout\ & ( !\ROM|memROM~11_combout\ & ( \RAM64|ram~539_combout\ ) ) ) # ( !\ROM|memROM~4_combout\ & ( !\ROM|memROM~11_combout\ & ( \RAM64|ram~540_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~539_combout\,
	datab => \RAM64|ALT_INV_ram~540_combout\,
	datae => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \ROM|ALT_INV_memROM~11_combout\,
	combout => \RAM64|ram~541_combout\);

\RAM64|ram~542\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~542_combout\ = (!\ROM|memROM~10_combout\ & \RAM64|ram~541_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~10_combout\,
	datac => \RAM64|ALT_INV_ram~541_combout\,
	combout => \RAM64|ram~542_combout\);

\CPU|ULA1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~13_sumout\ = SUM(( (!\CPU|DECODER1|Equal10~0_combout\ & ((\RAM64|ram~542_combout\))) # (\CPU|DECODER1|Equal10~0_combout\ & (\ROM|memROM~12_combout\)) ) + ( \CPU|REGA|DOUT\(3) ) + ( \CPU|ULA1|Add0~10\ ))
-- \CPU|ULA1|Add0~14\ = CARRY(( (!\CPU|DECODER1|Equal10~0_combout\ & ((\RAM64|ram~542_combout\))) # (\CPU|DECODER1|Equal10~0_combout\ & (\ROM|memROM~12_combout\)) ) + ( \CPU|REGA|DOUT\(3) ) + ( \CPU|ULA1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER1|ALT_INV_Equal10~0_combout\,
	datac => \ROM|ALT_INV_memROM~12_combout\,
	datad => \RAM64|ALT_INV_ram~542_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(3),
	cin => \CPU|ULA1|Add0~10\,
	sumout => \CPU|ULA1|Add0~13_sumout\,
	cout => \CPU|ULA1|Add0~14\);

\CPU|ULA1|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~13_sumout\ = SUM(( (!\CPU|DECODER1|Equal10~0_combout\ & ((!\RAM64|ram~542_combout\))) # (\CPU|DECODER1|Equal10~0_combout\ & (!\ROM|memROM~12_combout\)) ) + ( \CPU|REGA|DOUT\(3) ) + ( \CPU|ULA1|Add1~10\ ))
-- \CPU|ULA1|Add1~14\ = CARRY(( (!\CPU|DECODER1|Equal10~0_combout\ & ((!\RAM64|ram~542_combout\))) # (\CPU|DECODER1|Equal10~0_combout\ & (!\ROM|memROM~12_combout\)) ) + ( \CPU|REGA|DOUT\(3) ) + ( \CPU|ULA1|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111101001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER1|ALT_INV_Equal10~0_combout\,
	datac => \ROM|ALT_INV_memROM~12_combout\,
	datad => \RAM64|ALT_INV_ram~542_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(3),
	cin => \CPU|ULA1|Add1~10\,
	sumout => \CPU|ULA1|Add1~13_sumout\,
	cout => \CPU|ULA1|Add1~14\);

\CPU|ULA1|saida[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[3]~3_combout\ = ( \CPU|ULA1|Add1~13_sumout\ & ( (!\CPU|DECODER1|saida[4]~0_combout\) # ((!\CPU|DECODER1|Equal10~0_combout\ & ((\RAM64|ram~542_combout\))) # (\CPU|DECODER1|Equal10~0_combout\ & (\ROM|memROM~12_combout\))) ) ) # ( 
-- !\CPU|ULA1|Add1~13_sumout\ & ( (\CPU|DECODER1|saida[4]~0_combout\ & ((!\CPU|DECODER1|Equal10~0_combout\ & ((\RAM64|ram~542_combout\))) # (\CPU|DECODER1|Equal10~0_combout\ & (\ROM|memROM~12_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001101111100011111110100000001000011011111000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~12_combout\,
	datab => \CPU|DECODER1|ALT_INV_Equal10~0_combout\,
	datac => \CPU|DECODER1|ALT_INV_saida[4]~0_combout\,
	datad => \RAM64|ALT_INV_ram~542_combout\,
	datae => \CPU|ULA1|ALT_INV_Add1~13_sumout\,
	combout => \CPU|ULA1|saida[3]~3_combout\);

\CPU|REGA|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|ULA1|Add0~13_sumout\,
	asdata => \CPU|ULA1|saida[3]~3_combout\,
	sload => \CPU|DECODER1|Equal10~1_combout\,
	ena => \CPU|DECODER1|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(3));

\REG_LEDR07|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(3),
	ena => \AND_LEDR07|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_LEDR07|DOUT\(3));

\RAM64|ram~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(4),
	ena => \RAM64|ram~557_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~27_q\);

\RAM64|ram~543\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~543_combout\ = ( !\ROM|memROM~12_combout\ & ( !\ROM|memROM~2_combout\ & ( \RAM64|ram~27_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~27_q\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM64|ram~543_combout\);

\RAM64|ram~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(4),
	ena => \RAM64|ram~558_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~19_q\);

\RAM64|ram~544\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~544_combout\ = ( !\ROM|memROM~12_combout\ & ( !\ROM|memROM~2_combout\ & ( \RAM64|ram~19_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~19_q\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM64|ram~544_combout\);

\RAM64|ram~545\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~545_combout\ = ( \ROM|memROM~4_combout\ & ( !\ROM|memROM~11_combout\ & ( \RAM64|ram~543_combout\ ) ) ) # ( !\ROM|memROM~4_combout\ & ( !\ROM|memROM~11_combout\ & ( \RAM64|ram~544_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~543_combout\,
	datab => \RAM64|ALT_INV_ram~544_combout\,
	datae => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \ROM|ALT_INV_memROM~11_combout\,
	combout => \RAM64|ram~545_combout\);

\CPU|ULA1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~17_sumout\ = SUM(( (!\CPU|DECODER1|Equal10~0_combout\ & (!\ROM|memROM~10_combout\ & \RAM64|ram~545_combout\)) # (\CPU|DECODER1|Equal10~0_combout\ & (\ROM|memROM~10_combout\)) ) + ( \CPU|REGA|DOUT\(4) ) + ( \CPU|ULA1|Add0~14\ ))
-- \CPU|ULA1|Add0~18\ = CARRY(( (!\CPU|DECODER1|Equal10~0_combout\ & (!\ROM|memROM~10_combout\ & \RAM64|ram~545_combout\)) # (\CPU|DECODER1|Equal10~0_combout\ & (\ROM|memROM~10_combout\)) ) + ( \CPU|REGA|DOUT\(4) ) + ( \CPU|ULA1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000001000110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER1|ALT_INV_Equal10~0_combout\,
	datab => \ROM|ALT_INV_memROM~10_combout\,
	datad => \RAM64|ALT_INV_ram~545_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(4),
	cin => \CPU|ULA1|Add0~14\,
	sumout => \CPU|ULA1|Add0~17_sumout\,
	cout => \CPU|ULA1|Add0~18\);

\CPU|ULA1|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~17_sumout\ = SUM(( (!\CPU|DECODER1|Equal10~0_combout\ & ((!\RAM64|ram~545_combout\) # (\ROM|memROM~10_combout\))) # (\CPU|DECODER1|Equal10~0_combout\ & (!\ROM|memROM~10_combout\)) ) + ( \CPU|REGA|DOUT\(4) ) + ( \CPU|ULA1|Add1~14\ ))
-- \CPU|ULA1|Add1~18\ = CARRY(( (!\CPU|DECODER1|Equal10~0_combout\ & ((!\RAM64|ram~545_combout\) # (\ROM|memROM~10_combout\))) # (\CPU|DECODER1|Equal10~0_combout\ & (!\ROM|memROM~10_combout\)) ) + ( \CPU|REGA|DOUT\(4) ) + ( \CPU|ULA1|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001110111001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER1|ALT_INV_Equal10~0_combout\,
	datab => \ROM|ALT_INV_memROM~10_combout\,
	datad => \RAM64|ALT_INV_ram~545_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(4),
	cin => \CPU|ULA1|Add1~14\,
	sumout => \CPU|ULA1|Add1~17_sumout\,
	cout => \CPU|ULA1|Add1~18\);

\CPU|ULA1|saida[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[4]~4_combout\ = ( \RAM64|ram~545_combout\ & ( \CPU|ULA1|Add1~17_sumout\ & ( (!\CPU|DECODER1|saida[4]~0_combout\) # (!\ROM|memROM~10_combout\ $ (\CPU|DECODER1|Equal10~0_combout\)) ) ) ) # ( !\RAM64|ram~545_combout\ & ( 
-- \CPU|ULA1|Add1~17_sumout\ & ( (!\CPU|DECODER1|saida[4]~0_combout\) # ((\ROM|memROM~10_combout\ & \CPU|DECODER1|Equal10~0_combout\)) ) ) ) # ( \RAM64|ram~545_combout\ & ( !\CPU|ULA1|Add1~17_sumout\ & ( (\CPU|DECODER1|saida[4]~0_combout\ & 
-- (!\ROM|memROM~10_combout\ $ (\CPU|DECODER1|Equal10~0_combout\))) ) ) ) # ( !\RAM64|ram~545_combout\ & ( !\CPU|ULA1|Add1~17_sumout\ & ( (\ROM|memROM~10_combout\ & (\CPU|DECODER1|Equal10~0_combout\ & \CPU|DECODER1|saida[4]~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000010010000100111110001111100011111100111111001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~10_combout\,
	datab => \CPU|DECODER1|ALT_INV_Equal10~0_combout\,
	datac => \CPU|DECODER1|ALT_INV_saida[4]~0_combout\,
	datae => \RAM64|ALT_INV_ram~545_combout\,
	dataf => \CPU|ULA1|ALT_INV_Add1~17_sumout\,
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

\REG_LEDR07|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(4),
	ena => \AND_LEDR07|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_LEDR07|DOUT\(4));

\RAM64|ram~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(5),
	ena => \RAM64|ram~557_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~28_q\);

\RAM64|ram~546\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~546_combout\ = ( !\ROM|memROM~12_combout\ & ( !\ROM|memROM~2_combout\ & ( \RAM64|ram~28_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~28_q\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM64|ram~546_combout\);

\RAM64|ram~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(5),
	ena => \RAM64|ram~558_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~20_q\);

\RAM64|ram~547\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~547_combout\ = ( !\ROM|memROM~12_combout\ & ( !\ROM|memROM~2_combout\ & ( \RAM64|ram~20_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~20_q\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM64|ram~547_combout\);

\RAM64|ram~548\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~548_combout\ = ( \ROM|memROM~4_combout\ & ( !\ROM|memROM~11_combout\ & ( \RAM64|ram~546_combout\ ) ) ) # ( !\ROM|memROM~4_combout\ & ( !\ROM|memROM~11_combout\ & ( \RAM64|ram~547_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~546_combout\,
	datab => \RAM64|ALT_INV_ram~547_combout\,
	datae => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \ROM|ALT_INV_memROM~11_combout\,
	combout => \RAM64|ram~548_combout\);

\RAM64|ram~549\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~549_combout\ = (!\ROM|memROM~10_combout\ & \RAM64|ram~548_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~10_combout\,
	datac => \RAM64|ALT_INV_ram~548_combout\,
	combout => \RAM64|ram~549_combout\);

\CPU|ULA1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~21_sumout\ = SUM(( (!\CPU|DECODER1|Equal10~0_combout\ & ((\RAM64|ram~549_combout\))) # (\CPU|DECODER1|Equal10~0_combout\ & (\ROM|memROM~11_combout\)) ) + ( \CPU|REGA|DOUT\(5) ) + ( \CPU|ULA1|Add0~18\ ))
-- \CPU|ULA1|Add0~22\ = CARRY(( (!\CPU|DECODER1|Equal10~0_combout\ & ((\RAM64|ram~549_combout\))) # (\CPU|DECODER1|Equal10~0_combout\ & (\ROM|memROM~11_combout\)) ) + ( \CPU|REGA|DOUT\(5) ) + ( \CPU|ULA1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER1|ALT_INV_Equal10~0_combout\,
	datac => \ROM|ALT_INV_memROM~11_combout\,
	datad => \RAM64|ALT_INV_ram~549_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(5),
	cin => \CPU|ULA1|Add0~18\,
	sumout => \CPU|ULA1|Add0~21_sumout\,
	cout => \CPU|ULA1|Add0~22\);

\CPU|ULA1|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~21_sumout\ = SUM(( (!\CPU|DECODER1|Equal10~0_combout\ & ((!\RAM64|ram~549_combout\))) # (\CPU|DECODER1|Equal10~0_combout\ & (!\ROM|memROM~11_combout\)) ) + ( \CPU|REGA|DOUT\(5) ) + ( \CPU|ULA1|Add1~18\ ))
-- \CPU|ULA1|Add1~22\ = CARRY(( (!\CPU|DECODER1|Equal10~0_combout\ & ((!\RAM64|ram~549_combout\))) # (\CPU|DECODER1|Equal10~0_combout\ & (!\ROM|memROM~11_combout\)) ) + ( \CPU|REGA|DOUT\(5) ) + ( \CPU|ULA1|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111101001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER1|ALT_INV_Equal10~0_combout\,
	datac => \ROM|ALT_INV_memROM~11_combout\,
	datad => \RAM64|ALT_INV_ram~549_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(5),
	cin => \CPU|ULA1|Add1~18\,
	sumout => \CPU|ULA1|Add1~21_sumout\,
	cout => \CPU|ULA1|Add1~22\);

\CPU|ULA1|saida[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[5]~5_combout\ = ( \CPU|ULA1|Add1~21_sumout\ & ( (!\CPU|DECODER1|saida[4]~0_combout\) # ((!\CPU|DECODER1|Equal10~0_combout\ & ((\RAM64|ram~549_combout\))) # (\CPU|DECODER1|Equal10~0_combout\ & (\ROM|memROM~11_combout\))) ) ) # ( 
-- !\CPU|ULA1|Add1~21_sumout\ & ( (\CPU|DECODER1|saida[4]~0_combout\ & ((!\CPU|DECODER1|Equal10~0_combout\ & ((\RAM64|ram~549_combout\))) # (\CPU|DECODER1|Equal10~0_combout\ & (\ROM|memROM~11_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001101111100011111110100000001000011011111000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~11_combout\,
	datab => \CPU|DECODER1|ALT_INV_Equal10~0_combout\,
	datac => \CPU|DECODER1|ALT_INV_saida[4]~0_combout\,
	datad => \RAM64|ALT_INV_ram~549_combout\,
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

\REG_LEDR07|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(5),
	ena => \AND_LEDR07|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_LEDR07|DOUT\(5));

\RAM64|ram~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(6),
	ena => \RAM64|ram~557_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~29_q\);

\RAM64|ram~550\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~550_combout\ = ( !\ROM|memROM~12_combout\ & ( !\ROM|memROM~2_combout\ & ( \RAM64|ram~29_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~29_q\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM64|ram~550_combout\);

\RAM64|ram~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(6),
	ena => \RAM64|ram~558_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~21_q\);

\RAM64|ram~551\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~551_combout\ = ( !\ROM|memROM~12_combout\ & ( !\ROM|memROM~2_combout\ & ( \RAM64|ram~21_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~21_q\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM64|ram~551_combout\);

\RAM64|ram~552\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~552_combout\ = ( \ROM|memROM~4_combout\ & ( !\ROM|memROM~11_combout\ & ( \RAM64|ram~550_combout\ ) ) ) # ( !\ROM|memROM~4_combout\ & ( !\ROM|memROM~11_combout\ & ( \RAM64|ram~551_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~550_combout\,
	datab => \RAM64|ALT_INV_ram~551_combout\,
	datae => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \ROM|ALT_INV_memROM~11_combout\,
	combout => \RAM64|ram~552_combout\);

\CPU|ULA1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~25_sumout\ = SUM(( (!\CPU|DECODER1|Equal10~0_combout\ & (!\ROM|memROM~10_combout\ & \RAM64|ram~552_combout\)) # (\CPU|DECODER1|Equal10~0_combout\ & (\ROM|memROM~10_combout\)) ) + ( \CPU|REGA|DOUT\(6) ) + ( \CPU|ULA1|Add0~22\ ))
-- \CPU|ULA1|Add0~26\ = CARRY(( (!\CPU|DECODER1|Equal10~0_combout\ & (!\ROM|memROM~10_combout\ & \RAM64|ram~552_combout\)) # (\CPU|DECODER1|Equal10~0_combout\ & (\ROM|memROM~10_combout\)) ) + ( \CPU|REGA|DOUT\(6) ) + ( \CPU|ULA1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000001000110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER1|ALT_INV_Equal10~0_combout\,
	datab => \ROM|ALT_INV_memROM~10_combout\,
	datad => \RAM64|ALT_INV_ram~552_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(6),
	cin => \CPU|ULA1|Add0~22\,
	sumout => \CPU|ULA1|Add0~25_sumout\,
	cout => \CPU|ULA1|Add0~26\);

\CPU|ULA1|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~25_sumout\ = SUM(( (!\CPU|DECODER1|Equal10~0_combout\ & ((!\RAM64|ram~552_combout\) # (\ROM|memROM~10_combout\))) # (\CPU|DECODER1|Equal10~0_combout\ & (!\ROM|memROM~10_combout\)) ) + ( \CPU|REGA|DOUT\(6) ) + ( \CPU|ULA1|Add1~22\ ))
-- \CPU|ULA1|Add1~26\ = CARRY(( (!\CPU|DECODER1|Equal10~0_combout\ & ((!\RAM64|ram~552_combout\) # (\ROM|memROM~10_combout\))) # (\CPU|DECODER1|Equal10~0_combout\ & (!\ROM|memROM~10_combout\)) ) + ( \CPU|REGA|DOUT\(6) ) + ( \CPU|ULA1|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001110111001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER1|ALT_INV_Equal10~0_combout\,
	datab => \ROM|ALT_INV_memROM~10_combout\,
	datad => \RAM64|ALT_INV_ram~552_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(6),
	cin => \CPU|ULA1|Add1~22\,
	sumout => \CPU|ULA1|Add1~25_sumout\,
	cout => \CPU|ULA1|Add1~26\);

\CPU|ULA1|saida[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[6]~6_combout\ = ( \RAM64|ram~552_combout\ & ( \CPU|ULA1|Add1~25_sumout\ & ( (!\CPU|DECODER1|saida[4]~0_combout\) # (!\ROM|memROM~10_combout\ $ (\CPU|DECODER1|Equal10~0_combout\)) ) ) ) # ( !\RAM64|ram~552_combout\ & ( 
-- \CPU|ULA1|Add1~25_sumout\ & ( (!\CPU|DECODER1|saida[4]~0_combout\) # ((\ROM|memROM~10_combout\ & \CPU|DECODER1|Equal10~0_combout\)) ) ) ) # ( \RAM64|ram~552_combout\ & ( !\CPU|ULA1|Add1~25_sumout\ & ( (\CPU|DECODER1|saida[4]~0_combout\ & 
-- (!\ROM|memROM~10_combout\ $ (\CPU|DECODER1|Equal10~0_combout\))) ) ) ) # ( !\RAM64|ram~552_combout\ & ( !\CPU|ULA1|Add1~25_sumout\ & ( (\ROM|memROM~10_combout\ & (\CPU|DECODER1|Equal10~0_combout\ & \CPU|DECODER1|saida[4]~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000010010000100111110001111100011111100111111001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~10_combout\,
	datab => \CPU|DECODER1|ALT_INV_Equal10~0_combout\,
	datac => \CPU|DECODER1|ALT_INV_saida[4]~0_combout\,
	datae => \RAM64|ALT_INV_ram~552_combout\,
	dataf => \CPU|ULA1|ALT_INV_Add1~25_sumout\,
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

\REG_LEDR07|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(6),
	ena => \AND_LEDR07|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_LEDR07|DOUT\(6));

\RAM64|ram~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(7),
	ena => \RAM64|ram~557_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~30_q\);

\RAM64|ram~553\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~553_combout\ = ( !\ROM|memROM~12_combout\ & ( !\ROM|memROM~2_combout\ & ( \RAM64|ram~30_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~30_q\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM64|ram~553_combout\);

\RAM64|ram~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(7),
	ena => \RAM64|ram~558_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM64|ram~22_q\);

\RAM64|ram~554\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~554_combout\ = ( !\ROM|memROM~12_combout\ & ( !\ROM|memROM~2_combout\ & ( \RAM64|ram~22_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~22_q\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM64|ram~554_combout\);

\RAM64|ram~555\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~555_combout\ = ( \ROM|memROM~4_combout\ & ( !\ROM|memROM~11_combout\ & ( \RAM64|ram~553_combout\ ) ) ) # ( !\ROM|memROM~4_combout\ & ( !\ROM|memROM~11_combout\ & ( \RAM64|ram~554_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM64|ALT_INV_ram~553_combout\,
	datab => \RAM64|ALT_INV_ram~554_combout\,
	datae => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \ROM|ALT_INV_memROM~11_combout\,
	combout => \RAM64|ram~555_combout\);

\RAM64|ram~556\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM64|ram~556_combout\ = (!\ROM|memROM~10_combout\ & \RAM64|ram~555_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~10_combout\,
	datac => \RAM64|ALT_INV_ram~555_combout\,
	combout => \RAM64|ram~556_combout\);

\CPU|ULA1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~29_sumout\ = SUM(( (!\CPU|DECODER1|Equal10~0_combout\ & ((\RAM64|ram~556_combout\))) # (\CPU|DECODER1|Equal10~0_combout\ & (\ROM|memROM~11_combout\)) ) + ( \CPU|REGA|DOUT\(7) ) + ( \CPU|ULA1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER1|ALT_INV_Equal10~0_combout\,
	datac => \ROM|ALT_INV_memROM~11_combout\,
	datad => \RAM64|ALT_INV_ram~556_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(7),
	cin => \CPU|ULA1|Add0~26\,
	sumout => \CPU|ULA1|Add0~29_sumout\);

\CPU|ULA1|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~29_sumout\ = SUM(( (!\CPU|DECODER1|Equal10~0_combout\ & ((!\RAM64|ram~556_combout\))) # (\CPU|DECODER1|Equal10~0_combout\ & (!\ROM|memROM~11_combout\)) ) + ( \CPU|REGA|DOUT\(7) ) + ( \CPU|ULA1|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001110111001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER1|ALT_INV_Equal10~0_combout\,
	datab => \ROM|ALT_INV_memROM~11_combout\,
	datad => \RAM64|ALT_INV_ram~556_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(7),
	cin => \CPU|ULA1|Add1~26\,
	sumout => \CPU|ULA1|Add1~29_sumout\);

\CPU|ULA1|saida[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|saida[7]~7_combout\ = ( \CPU|ULA1|Add1~29_sumout\ & ( (!\CPU|DECODER1|saida[4]~0_combout\) # ((!\CPU|DECODER1|Equal10~0_combout\ & ((\RAM64|ram~556_combout\))) # (\CPU|DECODER1|Equal10~0_combout\ & (\ROM|memROM~11_combout\))) ) ) # ( 
-- !\CPU|ULA1|Add1~29_sumout\ & ( (\CPU|DECODER1|saida[4]~0_combout\ & ((!\CPU|DECODER1|Equal10~0_combout\ & ((\RAM64|ram~556_combout\))) # (\CPU|DECODER1|Equal10~0_combout\ & (\ROM|memROM~11_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001101111100011111110100000001000011011111000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~11_combout\,
	datab => \CPU|DECODER1|ALT_INV_Equal10~0_combout\,
	datac => \CPU|DECODER1|ALT_INV_saida[4]~0_combout\,
	datad => \RAM64|ALT_INV_ram~556_combout\,
	datae => \CPU|ULA1|ALT_INV_Add1~29_sumout\,
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

\REG_LEDR07|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REGA|DOUT\(7),
	ena => \AND_LEDR07|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_LEDR07|DOUT\(7));

\AND_LEDR8|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AND_LEDR8|saida~0_combout\ = (!\ROM|memROM~0_combout\ & (\ROM|memROM~1_combout\ & (!\CPU|PC|DOUT\(8) & \ROM|memROM~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000010000000000000001000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \CPU|PC|ALT_INV_DOUT\(8),
	datad => \ROM|ALT_INV_memROM~3_combout\,
	combout => \AND_LEDR8|saida~0_combout\);

\FLIP_FLOP_LED8|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FLIP_FLOP_LED8|DOUT~0_combout\ = ( \RAM64|process_0~2_combout\ & ( \AND_LEDR8|saida~0_combout\ & ( (!\ROM|memROM~6_combout\ & (\FLIP_FLOP_LED8|DOUT~q\)) # (\ROM|memROM~6_combout\ & ((!\RAM64|process_0~0_combout\ & (\FLIP_FLOP_LED8|DOUT~q\)) # 
-- (\RAM64|process_0~0_combout\ & ((\CPU|REGA|DOUT\(0)))))) ) ) ) # ( !\RAM64|process_0~2_combout\ & ( \AND_LEDR8|saida~0_combout\ & ( \FLIP_FLOP_LED8|DOUT~q\ ) ) ) # ( \RAM64|process_0~2_combout\ & ( !\AND_LEDR8|saida~0_combout\ & ( \FLIP_FLOP_LED8|DOUT~q\ 
-- ) ) ) # ( !\RAM64|process_0~2_combout\ & ( !\AND_LEDR8|saida~0_combout\ & ( \FLIP_FLOP_LED8|DOUT~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FLIP_FLOP_LED8|ALT_INV_DOUT~q\,
	datab => \CPU|REGA|ALT_INV_DOUT\(0),
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datad => \RAM64|ALT_INV_process_0~0_combout\,
	datae => \RAM64|ALT_INV_process_0~2_combout\,
	dataf => \AND_LEDR8|ALT_INV_saida~0_combout\,
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

\AND_LEDR07|saida~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \AND_LEDR07|saida~1_combout\ = (!\ROM|memROM~4_combout\ & (\ROM|memROM~6_combout\ & (\RAM64|process_0~0_combout\ & \RAM64|process_0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000001000000000000000100000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~4_combout\,
	datab => \ROM|ALT_INV_memROM~6_combout\,
	datac => \RAM64|ALT_INV_process_0~0_combout\,
	datad => \RAM64|ALT_INV_process_0~2_combout\,
	combout => \AND_LEDR07|saida~1_combout\);

\FLIP_FLOP_LED9|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FLIP_FLOP_LED9|DOUT~0_combout\ = (!\ROM|memROM~2_combout\ & (\FLIP_FLOP_LED9|DOUT~q\)) # (\ROM|memROM~2_combout\ & ((!\AND_LEDR07|saida~1_combout\ & (\FLIP_FLOP_LED9|DOUT~q\)) # (\AND_LEDR07|saida~1_combout\ & ((\CPU|REGA|DOUT\(0))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010011010101010101001101010101010100110101010101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FLIP_FLOP_LED9|ALT_INV_DOUT~q\,
	datab => \CPU|REGA|ALT_INV_DOUT\(0),
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \AND_LEDR07|ALT_INV_saida~1_combout\,
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

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;

ww_LEDR(8) <= \LEDR[8]~output_o\;

ww_LEDR(9) <= \LEDR[9]~output_o\;
END structure;


