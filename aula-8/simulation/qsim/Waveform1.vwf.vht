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
-- Generated on "10/19/2022 20:26:26"
                                                             
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
SIGNAL DATA_OUT : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL FLAG_DEBUG_0 : STD_LOGIC;
SIGNAL FLAG_FLIPFLOP_0 : STD_LOGIC;
SIGNAL FPGA_RESET_N : STD_LOGIC;
SIGNAL HEX0 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX1 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX2 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX3 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX4 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX5 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL KEY : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL LEDR : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL PCOUT_DEBUG : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL SW : STD_LOGIC_VECTOR(9 DOWNTO 0);
COMPONENT TopLevel
	PORT (
	CLOCK_50 : IN STD_LOGIC;
	DATA_OUT : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	FLAG_DEBUG_0 : OUT STD_LOGIC;
	FLAG_FLIPFLOP_0 : OUT STD_LOGIC;
	FPGA_RESET_N : IN STD_LOGIC;
	HEX0 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX1 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX2 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX3 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX4 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX5 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	KEY : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	LEDR : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
	PCOUT_DEBUG : OUT STD_LOGIC_VECTOR(8 DOWNTO 0);
	SW : IN STD_LOGIC_VECTOR(9 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : TopLevel
	PORT MAP (
-- list connections between master ports and signals
	CLOCK_50 => CLOCK_50,
	DATA_OUT => DATA_OUT,
	FLAG_DEBUG_0 => FLAG_DEBUG_0,
	FLAG_FLIPFLOP_0 => FLAG_FLIPFLOP_0,
	FPGA_RESET_N => FPGA_RESET_N,
	HEX0 => HEX0,
	HEX1 => HEX1,
	HEX2 => HEX2,
	HEX3 => HEX3,
	HEX4 => HEX4,
	HEX5 => HEX5,
	KEY => KEY,
	LEDR => LEDR,
	PCOUT_DEBUG => PCOUT_DEBUG,
	SW => SW
	);

-- CLOCK_50
t_prcs_CLOCK_50: PROCESS
BEGIN
	CLOCK_50 <= '1';
	WAIT FOR 10000 ps;
	CLOCK_50 <= '0';
	WAIT FOR 10000 ps;
	FOR i IN 1 TO 48
	LOOP
		CLOCK_50 <= '1';
		WAIT FOR 10000 ps;
		CLOCK_50 <= '0';
		WAIT FOR 10000 ps;
	END LOOP;
	CLOCK_50 <= '1';
	WAIT FOR 10000 ps;
	CLOCK_50 <= '0';
WAIT;
END PROCESS t_prcs_CLOCK_50;

-- KEY[0]
t_prcs_KEY_0: PROCESS
BEGIN
	KEY(0) <= '0';
WAIT;
END PROCESS t_prcs_KEY_0;
END TopLevel_arch;
