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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "09/09/2022 11:52:13"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          TopLevel
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY TopLevel_vhd_vec_tst IS
END TopLevel_vhd_vec_tst;
ARCHITECTURE TopLevel_arch OF TopLevel_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLOCK_50 : STD_LOGIC;
SIGNAL KEY : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL LEDR : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL PC_OUT : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL SW : STD_LOGIC_VECTOR(9 DOWNTO 0);
COMPONENT TopLevel
	PORT (
	CLOCK_50 : IN STD_LOGIC;
	KEY : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	LEDR : BUFFER STD_LOGIC_VECTOR(9 DOWNTO 0);
	PC_OUT : BUFFER STD_LOGIC_VECTOR(2 DOWNTO 0);
	SW : IN STD_LOGIC_VECTOR(9 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : TopLevel
	PORT MAP (
-- list connections between master ports and signals
	CLOCK_50 => CLOCK_50,
	KEY => KEY,
	LEDR => LEDR,
	PC_OUT => PC_OUT,
	SW => SW
	);

-- CLOCK_50
t_prcs_CLOCK_50: PROCESS
BEGIN
LOOP
	CLOCK_50 <= '0';
	WAIT FOR 100000 ps;
	CLOCK_50 <= '1';
	WAIT FOR 100000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLOCK_50;
-- KEY[3]
t_prcs_KEY_3: PROCESS
BEGIN
	KEY(3) <= '0';
WAIT;
END PROCESS t_prcs_KEY_3;
-- KEY[2]
t_prcs_KEY_2: PROCESS
BEGIN
	KEY(2) <= '0';
WAIT;
END PROCESS t_prcs_KEY_2;
-- KEY[1]
t_prcs_KEY_1: PROCESS
BEGIN
	KEY(1) <= '0';
WAIT;
END PROCESS t_prcs_KEY_1;
-- KEY[0]
t_prcs_KEY_0: PROCESS
BEGIN
	KEY(0) <= '0';
WAIT;
END PROCESS t_prcs_KEY_0;
END TopLevel_arch;