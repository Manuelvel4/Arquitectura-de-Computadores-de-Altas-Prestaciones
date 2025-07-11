-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "10/16/2024 19:54:46"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	S4bits IS
    PORT (
	A : IN std_logic_vector(3 DOWNTO 0);
	B : IN std_logic_vector(3 DOWNTO 0);
	cen : IN std_logic;
	SUM : BUFFER std_logic_vector(3 DOWNTO 0);
	csal : BUFFER std_logic
	);
END S4bits;

-- Design Ports Information
-- SUM[0]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SUM[1]	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SUM[2]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SUM[3]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- csal	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cen	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF S4bits IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_cen : std_logic;
SIGNAL ww_SUM : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_csal : std_logic;
SIGNAL \SUM[0]~output_o\ : std_logic;
SIGNAL \SUM[1]~output_o\ : std_logic;
SIGNAL \SUM[2]~output_o\ : std_logic;
SIGNAL \SUM[3]~output_o\ : std_logic;
SIGNAL \csal~output_o\ : std_logic;
SIGNAL \cen~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \S1bit0|s~0_combout\ : std_logic;
SIGNAL \S1bit0|csal~0_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \S1bit1|s~combout\ : std_logic;
SIGNAL \S1bit1|csal~0_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \S1bit2|s~combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \S1bit2|csal~0_combout\ : std_logic;
SIGNAL \S1bit3|s~combout\ : std_logic;
SIGNAL \S1bit3|csal~0_combout\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
ww_cen <= cen;
SUM <= ww_SUM;
csal <= ww_csal;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X14_Y0_N9
\SUM[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S1bit0|s~0_combout\,
	devoe => ww_devoe,
	o => \SUM[0]~output_o\);

-- Location: IOOBUF_X33_Y10_N9
\SUM[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S1bit1|s~combout\,
	devoe => ww_devoe,
	o => \SUM[1]~output_o\);

-- Location: IOOBUF_X8_Y0_N9
\SUM[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S1bit2|s~combout\,
	devoe => ww_devoe,
	o => \SUM[2]~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\SUM[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S1bit3|s~combout\,
	devoe => ww_devoe,
	o => \SUM[3]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\csal~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S1bit3|csal~0_combout\,
	devoe => ww_devoe,
	o => \csal~output_o\);

-- Location: IOIBUF_X22_Y0_N1
\cen~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cen,
	o => \cen~input_o\);

-- Location: IOIBUF_X12_Y0_N1
\A[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X26_Y0_N1
\B[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: LCCOMB_X14_Y1_N8
\S1bit0|s~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \S1bit0|s~0_combout\ = \cen~input_o\ $ (\A[0]~input_o\ $ (\B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cen~input_o\,
	datac => \A[0]~input_o\,
	datad => \B[0]~input_o\,
	combout => \S1bit0|s~0_combout\);

-- Location: LCCOMB_X14_Y1_N10
\S1bit0|csal~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \S1bit0|csal~0_combout\ = (\cen~input_o\ & ((\A[0]~input_o\) # (\B[0]~input_o\))) # (!\cen~input_o\ & (\A[0]~input_o\ & \B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cen~input_o\,
	datac => \A[0]~input_o\,
	datad => \B[0]~input_o\,
	combout => \S1bit0|csal~0_combout\);

-- Location: IOIBUF_X14_Y0_N1
\A[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X24_Y0_N8
\B[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LCCOMB_X14_Y1_N12
\S1bit1|s\ : cycloneiv_lcell_comb
-- Equation(s):
-- \S1bit1|s~combout\ = \S1bit0|csal~0_combout\ $ (\A[1]~input_o\ $ (\B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S1bit0|csal~0_combout\,
	datab => \A[1]~input_o\,
	datad => \B[1]~input_o\,
	combout => \S1bit1|s~combout\);

-- Location: LCCOMB_X14_Y1_N22
\S1bit1|csal~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \S1bit1|csal~0_combout\ = (\S1bit0|csal~0_combout\ & ((\A[1]~input_o\) # (\B[1]~input_o\))) # (!\S1bit0|csal~0_combout\ & (\A[1]~input_o\ & \B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S1bit0|csal~0_combout\,
	datab => \A[1]~input_o\,
	datad => \B[1]~input_o\,
	combout => \S1bit1|csal~0_combout\);

-- Location: IOIBUF_X8_Y0_N1
\B[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X20_Y0_N1
\A[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LCCOMB_X14_Y1_N24
\S1bit2|s\ : cycloneiv_lcell_comb
-- Equation(s):
-- \S1bit2|s~combout\ = \S1bit1|csal~0_combout\ $ (\B[2]~input_o\ $ (\A[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S1bit1|csal~0_combout\,
	datac => \B[2]~input_o\,
	datad => \A[2]~input_o\,
	combout => \S1bit2|s~combout\);

-- Location: IOIBUF_X12_Y0_N8
\B[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X10_Y0_N8
\A[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LCCOMB_X14_Y1_N2
\S1bit2|csal~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \S1bit2|csal~0_combout\ = (\S1bit1|csal~0_combout\ & ((\B[2]~input_o\) # (\A[2]~input_o\))) # (!\S1bit1|csal~0_combout\ & (\B[2]~input_o\ & \A[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S1bit1|csal~0_combout\,
	datac => \B[2]~input_o\,
	datad => \A[2]~input_o\,
	combout => \S1bit2|csal~0_combout\);

-- Location: LCCOMB_X14_Y1_N20
\S1bit3|s\ : cycloneiv_lcell_comb
-- Equation(s):
-- \S1bit3|s~combout\ = \B[3]~input_o\ $ (\A[3]~input_o\ $ (\S1bit2|csal~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \A[3]~input_o\,
	datad => \S1bit2|csal~0_combout\,
	combout => \S1bit3|s~combout\);

-- Location: LCCOMB_X14_Y1_N6
\S1bit3|csal~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \S1bit3|csal~0_combout\ = (\B[3]~input_o\ & ((\A[3]~input_o\) # (\S1bit2|csal~0_combout\))) # (!\B[3]~input_o\ & (\A[3]~input_o\ & \S1bit2|csal~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \A[3]~input_o\,
	datad => \S1bit2|csal~0_combout\,
	combout => \S1bit3|csal~0_combout\);

ww_SUM(0) <= \SUM[0]~output_o\;

ww_SUM(1) <= \SUM[1]~output_o\;

ww_SUM(2) <= \SUM[2]~output_o\;

ww_SUM(3) <= \SUM[3]~output_o\;

ww_csal <= \csal~output_o\;
END structure;


