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
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "06/06/2024 01:11:59"

-- 
-- Device: Altera 5M1270ZT144C5 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXV;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXV.MAXV_COMPONENTS.ALL;

ENTITY 	SHIFTR IS
    PORT (
	inp : IN std_logic_vector(7 DOWNTO 0);
	enable : IN std_logic;
	oup : OUT std_logic_vector(7 DOWNTO 0)
	);
END SHIFTR;

ARCHITECTURE structure OF SHIFTR IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_inp : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_enable : std_logic;
SIGNAL ww_oup : std_logic_vector(7 DOWNTO 0);
SIGNAL \enable~combout\ : std_logic;
SIGNAL \oup~0_combout\ : std_logic;
SIGNAL \oup~1_combout\ : std_logic;
SIGNAL \oup~2_combout\ : std_logic;
SIGNAL \oup~3_combout\ : std_logic;
SIGNAL \oup~4_combout\ : std_logic;
SIGNAL \oup~5_combout\ : std_logic;
SIGNAL \oup~6_combout\ : std_logic;
SIGNAL \oup~7_combout\ : std_logic;
SIGNAL \inp~combout\ : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_inp <= inp;
ww_enable <= enable;
oup <= ww_oup;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inp[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_inp(7),
	combout => \inp~combout\(7));

\inp[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_inp(0),
	combout => \inp~combout\(0));

\enable~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_enable,
	combout => \enable~combout\);

\oup~0\ : maxv_lcell
-- Equation(s):
-- \oup~0_combout\ = ((\enable~combout\ & (\inp~combout\(7))) # (!\enable~combout\ & ((\inp~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aacc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inp~combout\(7),
	datab => \inp~combout\(0),
	datad => \enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \oup~0_combout\);

\inp[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_inp(6),
	combout => \inp~combout\(6));

\inp[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_inp(1),
	combout => \inp~combout\(1));

\oup~1\ : maxv_lcell
-- Equation(s):
-- \oup~1_combout\ = ((\enable~combout\ & (\inp~combout\(6))) # (!\enable~combout\ & ((\inp~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aacc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inp~combout\(6),
	datab => \inp~combout\(1),
	datad => \enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \oup~1_combout\);

\inp[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_inp(5),
	combout => \inp~combout\(5));

\inp[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_inp(2),
	combout => \inp~combout\(2));

\oup~2\ : maxv_lcell
-- Equation(s):
-- \oup~2_combout\ = ((\enable~combout\ & (\inp~combout\(5))) # (!\enable~combout\ & ((\inp~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aacc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inp~combout\(5),
	datab => \inp~combout\(2),
	datad => \enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \oup~2_combout\);

\inp[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_inp(4),
	combout => \inp~combout\(4));

\inp[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_inp(3),
	combout => \inp~combout\(3));

\oup~3\ : maxv_lcell
-- Equation(s):
-- \oup~3_combout\ = ((\enable~combout\ & (\inp~combout\(4))) # (!\enable~combout\ & ((\inp~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aacc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inp~combout\(4),
	datab => \inp~combout\(3),
	datad => \enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \oup~3_combout\);

\oup~4\ : maxv_lcell
-- Equation(s):
-- \oup~4_combout\ = ((\enable~combout\ & (\inp~combout\(3))) # (!\enable~combout\ & ((\inp~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aacc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inp~combout\(3),
	datab => \inp~combout\(4),
	datad => \enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \oup~4_combout\);

\oup~5\ : maxv_lcell
-- Equation(s):
-- \oup~5_combout\ = ((\enable~combout\ & (\inp~combout\(2))) # (!\enable~combout\ & ((\inp~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aacc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inp~combout\(2),
	datab => \inp~combout\(5),
	datad => \enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \oup~5_combout\);

\oup~6\ : maxv_lcell
-- Equation(s):
-- \oup~6_combout\ = ((\enable~combout\ & (\inp~combout\(1))) # (!\enable~combout\ & ((\inp~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aacc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inp~combout\(1),
	datab => \inp~combout\(6),
	datad => \enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \oup~6_combout\);

\oup~7\ : maxv_lcell
-- Equation(s):
-- \oup~7_combout\ = ((\enable~combout\ & (\inp~combout\(0))) # (!\enable~combout\ & ((\inp~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aacc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inp~combout\(0),
	datab => \inp~combout\(7),
	datad => \enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \oup~7_combout\);

\oup[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \oup~0_combout\,
	oe => VCC,
	padio => ww_oup(0));

\oup[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \oup~1_combout\,
	oe => VCC,
	padio => ww_oup(1));

\oup[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \oup~2_combout\,
	oe => VCC,
	padio => ww_oup(2));

\oup[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \oup~3_combout\,
	oe => VCC,
	padio => ww_oup(3));

\oup[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \oup~4_combout\,
	oe => VCC,
	padio => ww_oup(4));

\oup[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \oup~5_combout\,
	oe => VCC,
	padio => ww_oup(5));

\oup[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \oup~6_combout\,
	oe => VCC,
	padio => ww_oup(6));

\oup[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \oup~7_combout\,
	oe => VCC,
	padio => ww_oup(7));
END structure;


