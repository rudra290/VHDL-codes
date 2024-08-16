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
-- Generated on "06/06/2024 01:11:59"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          SHIFTR
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY SHIFTR_vhd_vec_tst IS
END SHIFTR_vhd_vec_tst;
ARCHITECTURE SHIFTR_arch OF SHIFTR_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL enable : STD_LOGIC;
SIGNAL inp : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL oup : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT SHIFTR
	PORT (
	enable : IN STD_LOGIC;
	inp : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	oup : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : SHIFTR
	PORT MAP (
-- list connections between master ports and signals
	enable => enable,
	inp => inp,
	oup => oup
	);

-- enable
t_prcs_enable: PROCESS
BEGIN
	enable <= '1';
	WAIT FOR 390000 ps;
	enable <= '0';
WAIT;
END PROCESS t_prcs_enable;
-- inp[7]
t_prcs_inp_7: PROCESS
BEGIN
	inp(7) <= '0';
WAIT;
END PROCESS t_prcs_inp_7;
-- inp[6]
t_prcs_inp_6: PROCESS
BEGIN
	inp(6) <= '0';
WAIT;
END PROCESS t_prcs_inp_6;
-- inp[5]
t_prcs_inp_5: PROCESS
BEGIN
	inp(5) <= '0';
WAIT;
END PROCESS t_prcs_inp_5;
-- inp[4]
t_prcs_inp_4: PROCESS
BEGIN
	inp(4) <= '0';
WAIT;
END PROCESS t_prcs_inp_4;
-- inp[3]
t_prcs_inp_3: PROCESS
BEGIN
	inp(3) <= '0';
	WAIT FOR 800000 ps;
	inp(3) <= '1';
WAIT;
END PROCESS t_prcs_inp_3;
-- inp[2]
t_prcs_inp_2: PROCESS
BEGIN
	inp(2) <= '0';
	WAIT FOR 400000 ps;
	inp(2) <= '1';
	WAIT FOR 400000 ps;
	inp(2) <= '0';
WAIT;
END PROCESS t_prcs_inp_2;
-- inp[1]
t_prcs_inp_1: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		inp(1) <= '0';
		WAIT FOR 200000 ps;
		inp(1) <= '1';
		WAIT FOR 200000 ps;
	END LOOP;
	inp(1) <= '0';
WAIT;
END PROCESS t_prcs_inp_1;
-- inp[0]
t_prcs_inp_0: PROCESS
BEGIN
LOOP
	inp(0) <= '0';
	WAIT FOR 100000 ps;
	inp(0) <= '1';
	WAIT FOR 100000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_inp_0;
END SHIFTR_arch;
