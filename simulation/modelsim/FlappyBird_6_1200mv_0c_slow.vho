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
-- VERSION "Version 13.0.0 Build 156 04/24/2013 SJ Full Version"

-- DATE "05/11/2019 15:46:15"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	test IS
    PORT (
	pin_name1 : OUT std_logic_vector(3 DOWNTO 0);
	pin_name2 : IN std_logic_vector(9 DOWNTO 0);
	pin_name3 : OUT std_logic_vector(3 DOWNTO 0);
	pin_name4 : OUT std_logic_vector(3 DOWNTO 0)
	);
END test;

-- Design Ports Information
-- pin_name1[3]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pin_name1[2]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pin_name1[1]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pin_name1[0]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pin_name2[9]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pin_name2[8]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pin_name3[3]	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pin_name3[2]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pin_name3[1]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pin_name3[0]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pin_name4[3]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pin_name4[2]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pin_name4[1]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pin_name4[0]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pin_name2[4]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pin_name2[7]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pin_name2[5]	=>  Location: PIN_P5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pin_name2[6]	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pin_name2[3]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pin_name2[2]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pin_name2[1]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pin_name2[0]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF test IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_pin_name1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_pin_name2 : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_pin_name3 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_pin_name4 : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|bcd_register~11_combout\ : std_logic;
SIGNAL \inst|bcd_register~13_combout\ : std_logic;
SIGNAL \inst|bcd_register~22_combout\ : std_logic;
SIGNAL \inst|bcd_register~23_combout\ : std_logic;
SIGNAL \inst|LessThan7~1_combout\ : std_logic;
SIGNAL \pin_name2[9]~input_o\ : std_logic;
SIGNAL \pin_name2[8]~input_o\ : std_logic;
SIGNAL \pin_name2[3]~input_o\ : std_logic;
SIGNAL \pin_name1[3]~output_o\ : std_logic;
SIGNAL \pin_name1[2]~output_o\ : std_logic;
SIGNAL \pin_name1[1]~output_o\ : std_logic;
SIGNAL \pin_name1[0]~output_o\ : std_logic;
SIGNAL \pin_name3[3]~output_o\ : std_logic;
SIGNAL \pin_name3[2]~output_o\ : std_logic;
SIGNAL \pin_name3[1]~output_o\ : std_logic;
SIGNAL \pin_name3[0]~output_o\ : std_logic;
SIGNAL \pin_name4[3]~output_o\ : std_logic;
SIGNAL \pin_name4[2]~output_o\ : std_logic;
SIGNAL \pin_name4[1]~output_o\ : std_logic;
SIGNAL \pin_name4[0]~output_o\ : std_logic;
SIGNAL \pin_name2[0]~input_o\ : std_logic;
SIGNAL \pin_name2[7]~input_o\ : std_logic;
SIGNAL \pin_name2[6]~input_o\ : std_logic;
SIGNAL \pin_name2[4]~input_o\ : std_logic;
SIGNAL \inst|bcd_register~6_combout\ : std_logic;
SIGNAL \inst|bcd_register~7_combout\ : std_logic;
SIGNAL \inst|bcd_register~8_combout\ : std_logic;
SIGNAL \inst|bcd_register~10_combout\ : std_logic;
SIGNAL \pin_name2[2]~input_o\ : std_logic;
SIGNAL \inst|bcd_register~9_combout\ : std_logic;
SIGNAL \inst|bcd_register~12_combout\ : std_logic;
SIGNAL \pin_name2[1]~input_o\ : std_logic;
SIGNAL \inst|bcd_register~14_combout\ : std_logic;
SIGNAL \inst|bcd_register~17_combout\ : std_logic;
SIGNAL \inst|bcd_register~16_combout\ : std_logic;
SIGNAL \inst|bcd_register~15_combout\ : std_logic;
SIGNAL \inst|ones[3]~0_combout\ : std_logic;
SIGNAL \inst|ones[2]~1_combout\ : std_logic;
SIGNAL \inst|LessThan11~0_combout\ : std_logic;
SIGNAL \pin_name2[5]~input_o\ : std_logic;
SIGNAL \inst|bcd_register~3_combout\ : std_logic;
SIGNAL \inst|bcd_register~32_combout\ : std_logic;
SIGNAL \inst|bcd_register~19_combout\ : std_logic;
SIGNAL \inst|LessThan0~0_combout\ : std_logic;
SIGNAL \inst|bcd_register~18_combout\ : std_logic;
SIGNAL \inst|LessThan5~0_combout\ : std_logic;
SIGNAL \inst|bcd_register~24_combout\ : std_logic;
SIGNAL \inst|bcd_register~21_combout\ : std_logic;
SIGNAL \inst|bcd_register~25_combout\ : std_logic;
SIGNAL \inst|LessThan7~0_combout\ : std_logic;
SIGNAL \inst|bcd_register~26_combout\ : std_logic;
SIGNAL \inst|bcd_register~29_combout\ : std_logic;
SIGNAL \inst|bcd_register~28_combout\ : std_logic;
SIGNAL \inst|bcd_register~27_combout\ : std_logic;
SIGNAL \inst|tens[3]~0_combout\ : std_logic;
SIGNAL \inst|tens[2]~1_combout\ : std_logic;
SIGNAL \inst|tens[1]~2_combout\ : std_logic;
SIGNAL \inst|Add11~0_combout\ : std_logic;
SIGNAL \inst|hundreds[3]~3_combout\ : std_logic;
SIGNAL \inst|bcd_register~20_combout\ : std_logic;
SIGNAL \inst|bcd_register~30_combout\ : std_logic;
SIGNAL \inst|hundreds[3]~2_combout\ : std_logic;
SIGNAL \inst|hundreds[3]~4_combout\ : std_logic;
SIGNAL \inst|hundreds[2]~5_combout\ : std_logic;
SIGNAL \inst|bcd_register~31_combout\ : std_logic;
SIGNAL \inst|hundreds[1]~7_combout\ : std_logic;
SIGNAL \inst|hundreds[0]~6_combout\ : std_logic;
SIGNAL \inst|ALT_INV_hundreds[1]~7_combout\ : std_logic;
SIGNAL \inst|ALT_INV_hundreds[0]~6_combout\ : std_logic;
SIGNAL \inst|ALT_INV_tens[1]~2_combout\ : std_logic;
SIGNAL \inst|ALT_INV_tens[2]~1_combout\ : std_logic;

BEGIN

pin_name1 <= ww_pin_name1;
ww_pin_name2 <= pin_name2;
pin_name3 <= ww_pin_name3;
pin_name4 <= ww_pin_name4;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\inst|ALT_INV_hundreds[1]~7_combout\ <= NOT \inst|hundreds[1]~7_combout\;
\inst|ALT_INV_hundreds[0]~6_combout\ <= NOT \inst|hundreds[0]~6_combout\;
\inst|ALT_INV_tens[1]~2_combout\ <= NOT \inst|tens[1]~2_combout\;
\inst|ALT_INV_tens[2]~1_combout\ <= NOT \inst|tens[2]~1_combout\;

-- Location: LCCOMB_X1_Y8_N10
\inst|bcd_register~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|bcd_register~11_combout\ = (\pin_name2[3]~input_o\ & (\inst|bcd_register~6_combout\)) # (!\pin_name2[3]~input_o\ & ((\inst|bcd_register~6_combout\ & (!\inst|bcd_register~7_combout\ & !\inst|bcd_register~8_combout\)) # (!\inst|bcd_register~6_combout\ 
-- & (\inst|bcd_register~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pin_name2[3]~input_o\,
	datab => \inst|bcd_register~6_combout\,
	datac => \inst|bcd_register~7_combout\,
	datad => \inst|bcd_register~8_combout\,
	combout => \inst|bcd_register~11_combout\);

-- Location: LCCOMB_X1_Y8_N14
\inst|bcd_register~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|bcd_register~13_combout\ = (\inst|bcd_register~11_combout\ & (((!\pin_name2[2]~input_o\ & !\inst|bcd_register~9_combout\)))) # (!\inst|bcd_register~11_combout\ & (\inst|bcd_register~10_combout\ & ((\pin_name2[2]~input_o\) # 
-- (\inst|bcd_register~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|bcd_register~11_combout\,
	datab => \inst|bcd_register~10_combout\,
	datac => \pin_name2[2]~input_o\,
	datad => \inst|bcd_register~9_combout\,
	combout => \inst|bcd_register~13_combout\);

-- Location: LCCOMB_X1_Y8_N18
\inst|bcd_register~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|bcd_register~22_combout\ = (\pin_name2[5]~input_o\ & (\pin_name2[7]~input_o\ & (\pin_name2[6]~input_o\ & \pin_name2[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pin_name2[5]~input_o\,
	datab => \pin_name2[7]~input_o\,
	datac => \pin_name2[6]~input_o\,
	datad => \pin_name2[4]~input_o\,
	combout => \inst|bcd_register~22_combout\);

-- Location: LCCOMB_X1_Y7_N26
\inst|bcd_register~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|bcd_register~23_combout\ = (\inst|bcd_register~22_combout\) # ((!\inst|bcd_register~20_combout\ & !\inst|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|bcd_register~20_combout\,
	datab => \inst|bcd_register~22_combout\,
	datac => \inst|LessThan0~0_combout\,
	combout => \inst|bcd_register~23_combout\);

-- Location: LCCOMB_X1_Y7_N6
\inst|LessThan7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan7~1_combout\ = (\inst|bcd_register~21_combout\) # ((\inst|bcd_register~24_combout\ & \inst|LessThan7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bcd_register~24_combout\,
	datac => \inst|bcd_register~21_combout\,
	datad => \inst|LessThan7~0_combout\,
	combout => \inst|LessThan7~1_combout\);

-- Location: IOIBUF_X0_Y8_N1
\pin_name2[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pin_name2(3),
	o => \pin_name2[3]~input_o\);

-- Location: IOOBUF_X0_Y11_N16
\pin_name1[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ones[3]~0_combout\,
	devoe => ww_devoe,
	o => \pin_name1[3]~output_o\);

-- Location: IOOBUF_X0_Y12_N23
\pin_name1[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ones[2]~1_combout\,
	devoe => ww_devoe,
	o => \pin_name1[2]~output_o\);

-- Location: IOOBUF_X0_Y13_N9
\pin_name1[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LessThan11~0_combout\,
	devoe => ww_devoe,
	o => \pin_name1[1]~output_o\);

-- Location: IOOBUF_X23_Y0_N30
\pin_name1[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \pin_name1[0]~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\pin_name3[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|tens[3]~0_combout\,
	devoe => ww_devoe,
	o => \pin_name3[3]~output_o\);

-- Location: IOOBUF_X0_Y11_N23
\pin_name3[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_tens[2]~1_combout\,
	devoe => ww_devoe,
	o => \pin_name3[2]~output_o\);

-- Location: IOOBUF_X0_Y10_N2
\pin_name3[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_tens[1]~2_combout\,
	devoe => ww_devoe,
	o => \pin_name3[1]~output_o\);

-- Location: IOOBUF_X0_Y10_N9
\pin_name3[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Add11~0_combout\,
	devoe => ww_devoe,
	o => \pin_name3[0]~output_o\);

-- Location: IOOBUF_X0_Y8_N16
\pin_name4[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|hundreds[3]~4_combout\,
	devoe => ww_devoe,
	o => \pin_name4[3]~output_o\);

-- Location: IOOBUF_X28_Y0_N9
\pin_name4[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|hundreds[2]~5_combout\,
	devoe => ww_devoe,
	o => \pin_name4[2]~output_o\);

-- Location: IOOBUF_X0_Y6_N9
\pin_name4[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_hundreds[1]~7_combout\,
	devoe => ww_devoe,
	o => \pin_name4[1]~output_o\);

-- Location: IOOBUF_X0_Y7_N23
\pin_name4[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_hundreds[0]~6_combout\,
	devoe => ww_devoe,
	o => \pin_name4[0]~output_o\);

-- Location: IOIBUF_X0_Y10_N15
\pin_name2[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pin_name2(0),
	o => \pin_name2[0]~input_o\);

-- Location: IOIBUF_X0_Y8_N22
\pin_name2[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pin_name2(7),
	o => \pin_name2[7]~input_o\);

-- Location: IOIBUF_X0_Y6_N22
\pin_name2[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pin_name2(6),
	o => \pin_name2[6]~input_o\);

-- Location: IOIBUF_X3_Y0_N22
\pin_name2[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pin_name2(4),
	o => \pin_name2[4]~input_o\);

-- Location: LCCOMB_X1_Y8_N16
\inst|bcd_register~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|bcd_register~6_combout\ = (\pin_name2[6]~input_o\ & ((\pin_name2[5]~input_o\ & (!\pin_name2[7]~input_o\ & !\pin_name2[4]~input_o\)) # (!\pin_name2[5]~input_o\ & (\pin_name2[7]~input_o\ & \pin_name2[4]~input_o\)))) # (!\pin_name2[6]~input_o\ & 
-- (\pin_name2[4]~input_o\ $ (((!\pin_name2[5]~input_o\ & \pin_name2[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pin_name2[5]~input_o\,
	datab => \pin_name2[7]~input_o\,
	datac => \pin_name2[6]~input_o\,
	datad => \pin_name2[4]~input_o\,
	combout => \inst|bcd_register~6_combout\);

-- Location: LCCOMB_X1_Y8_N26
\inst|bcd_register~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|bcd_register~7_combout\ = (\pin_name2[6]~input_o\ & (!\pin_name2[4]~input_o\ & (\pin_name2[5]~input_o\ $ (!\pin_name2[7]~input_o\)))) # (!\pin_name2[6]~input_o\ & (!\pin_name2[5]~input_o\ & (\pin_name2[7]~input_o\ & \pin_name2[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pin_name2[5]~input_o\,
	datab => \pin_name2[7]~input_o\,
	datac => \pin_name2[6]~input_o\,
	datad => \pin_name2[4]~input_o\,
	combout => \inst|bcd_register~7_combout\);

-- Location: LCCOMB_X1_Y8_N20
\inst|bcd_register~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|bcd_register~8_combout\ = (\pin_name2[5]~input_o\ & (!\pin_name2[7]~input_o\ & ((\pin_name2[4]~input_o\) # (!\pin_name2[6]~input_o\)))) # (!\pin_name2[5]~input_o\ & (\pin_name2[7]~input_o\ & ((\pin_name2[6]~input_o\) # (!\pin_name2[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pin_name2[5]~input_o\,
	datab => \pin_name2[7]~input_o\,
	datac => \pin_name2[6]~input_o\,
	datad => \pin_name2[4]~input_o\,
	combout => \inst|bcd_register~8_combout\);

-- Location: LCCOMB_X1_Y8_N8
\inst|bcd_register~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|bcd_register~10_combout\ = (\inst|bcd_register~8_combout\ & (!\pin_name2[3]~input_o\ & (!\inst|bcd_register~6_combout\))) # (!\inst|bcd_register~8_combout\ & (\inst|bcd_register~7_combout\ & ((\pin_name2[3]~input_o\) # 
-- (\inst|bcd_register~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pin_name2[3]~input_o\,
	datab => \inst|bcd_register~6_combout\,
	datac => \inst|bcd_register~7_combout\,
	datad => \inst|bcd_register~8_combout\,
	combout => \inst|bcd_register~10_combout\);

-- Location: IOIBUF_X0_Y5_N1
\pin_name2[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pin_name2(2),
	o => \pin_name2[2]~input_o\);

-- Location: LCCOMB_X1_Y8_N6
\inst|bcd_register~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|bcd_register~9_combout\ = (\pin_name2[3]~input_o\ & (((!\inst|bcd_register~7_combout\ & !\inst|bcd_register~8_combout\)))) # (!\pin_name2[3]~input_o\ & ((\inst|bcd_register~7_combout\) # ((\inst|bcd_register~6_combout\ & 
-- \inst|bcd_register~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pin_name2[3]~input_o\,
	datab => \inst|bcd_register~6_combout\,
	datac => \inst|bcd_register~7_combout\,
	datad => \inst|bcd_register~8_combout\,
	combout => \inst|bcd_register~9_combout\);

-- Location: LCCOMB_X1_Y8_N12
\inst|bcd_register~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|bcd_register~12_combout\ = (\inst|bcd_register~11_combout\ & (!\pin_name2[2]~input_o\ & ((\inst|bcd_register~10_combout\) # (\inst|bcd_register~9_combout\)))) # (!\inst|bcd_register~11_combout\ & (\inst|bcd_register~10_combout\ $ 
-- ((\pin_name2[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|bcd_register~11_combout\,
	datab => \inst|bcd_register~10_combout\,
	datac => \pin_name2[2]~input_o\,
	datad => \inst|bcd_register~9_combout\,
	combout => \inst|bcd_register~12_combout\);

-- Location: IOIBUF_X0_Y11_N8
\pin_name2[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pin_name2(1),
	o => \pin_name2[1]~input_o\);

-- Location: LCCOMB_X1_Y8_N24
\inst|bcd_register~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|bcd_register~14_combout\ = (\inst|bcd_register~10_combout\ & ((\pin_name2[2]~input_o\ $ (!\inst|bcd_register~9_combout\)))) # (!\inst|bcd_register~10_combout\ & (\inst|bcd_register~9_combout\ & ((\pin_name2[2]~input_o\) # 
-- (!\inst|bcd_register~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|bcd_register~11_combout\,
	datab => \inst|bcd_register~10_combout\,
	datac => \pin_name2[2]~input_o\,
	datad => \inst|bcd_register~9_combout\,
	combout => \inst|bcd_register~14_combout\);

-- Location: LCCOMB_X1_Y10_N28
\inst|bcd_register~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|bcd_register~17_combout\ = (\inst|bcd_register~13_combout\ & (\inst|bcd_register~12_combout\ $ ((!\pin_name2[1]~input_o\)))) # (!\inst|bcd_register~13_combout\ & (\inst|bcd_register~12_combout\ & ((\pin_name2[1]~input_o\) # 
-- (!\inst|bcd_register~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|bcd_register~13_combout\,
	datab => \inst|bcd_register~12_combout\,
	datac => \pin_name2[1]~input_o\,
	datad => \inst|bcd_register~14_combout\,
	combout => \inst|bcd_register~17_combout\);

-- Location: LCCOMB_X1_Y10_N26
\inst|bcd_register~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|bcd_register~16_combout\ = (\inst|bcd_register~14_combout\ & (((!\inst|bcd_register~12_combout\ & !\pin_name2[1]~input_o\)))) # (!\inst|bcd_register~14_combout\ & (\inst|bcd_register~13_combout\ & ((\inst|bcd_register~12_combout\) # 
-- (\pin_name2[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|bcd_register~13_combout\,
	datab => \inst|bcd_register~12_combout\,
	datac => \pin_name2[1]~input_o\,
	datad => \inst|bcd_register~14_combout\,
	combout => \inst|bcd_register~16_combout\);

-- Location: LCCOMB_X1_Y10_N24
\inst|bcd_register~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|bcd_register~15_combout\ = (\inst|bcd_register~13_combout\ & (((!\pin_name2[1]~input_o\)))) # (!\inst|bcd_register~13_combout\ & ((\pin_name2[1]~input_o\ & ((!\inst|bcd_register~14_combout\))) # (!\pin_name2[1]~input_o\ & 
-- (\inst|bcd_register~12_combout\ & \inst|bcd_register~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|bcd_register~13_combout\,
	datab => \inst|bcd_register~12_combout\,
	datac => \pin_name2[1]~input_o\,
	datad => \inst|bcd_register~14_combout\,
	combout => \inst|bcd_register~15_combout\);

-- Location: LCCOMB_X1_Y10_N30
\inst|ones[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|ones[3]~0_combout\ = (\inst|bcd_register~15_combout\ & ((\pin_name2[0]~input_o\ & ((\inst|bcd_register~17_combout\) # (\inst|bcd_register~16_combout\))) # (!\pin_name2[0]~input_o\ & (!\inst|bcd_register~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pin_name2[0]~input_o\,
	datab => \inst|bcd_register~17_combout\,
	datac => \inst|bcd_register~16_combout\,
	datad => \inst|bcd_register~15_combout\,
	combout => \inst|ones[3]~0_combout\);

-- Location: LCCOMB_X1_Y10_N8
\inst|ones[2]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|ones[2]~1_combout\ = (\pin_name2[0]~input_o\ & (!\inst|bcd_register~17_combout\ & ((\inst|bcd_register~16_combout\) # (!\inst|bcd_register~15_combout\)))) # (!\pin_name2[0]~input_o\ & (\inst|bcd_register~17_combout\ & 
-- ((\inst|bcd_register~15_combout\) # (!\inst|bcd_register~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pin_name2[0]~input_o\,
	datab => \inst|bcd_register~17_combout\,
	datac => \inst|bcd_register~16_combout\,
	datad => \inst|bcd_register~15_combout\,
	combout => \inst|ones[2]~1_combout\);

-- Location: LCCOMB_X1_Y10_N10
\inst|LessThan11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan11~0_combout\ = (\inst|bcd_register~17_combout\ & (!\pin_name2[0]~input_o\ & ((!\inst|bcd_register~15_combout\)))) # (!\inst|bcd_register~17_combout\ & ((\inst|bcd_register~16_combout\) # ((\pin_name2[0]~input_o\ & 
-- \inst|bcd_register~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pin_name2[0]~input_o\,
	datab => \inst|bcd_register~17_combout\,
	datac => \inst|bcd_register~16_combout\,
	datad => \inst|bcd_register~15_combout\,
	combout => \inst|LessThan11~0_combout\);

-- Location: IOIBUF_X0_Y8_N8
\pin_name2[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pin_name2(5),
	o => \pin_name2[5]~input_o\);

-- Location: LCCOMB_X1_Y8_N28
\inst|bcd_register~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|bcd_register~3_combout\ = (\pin_name2[4]~input_o\ & (((!\pin_name2[3]~input_o\ & !\pin_name2[2]~input_o\)) # (!\pin_name2[5]~input_o\))) # (!\pin_name2[4]~input_o\ & ((\pin_name2[5]~input_o\) # ((\pin_name2[3]~input_o\ & \pin_name2[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pin_name2[3]~input_o\,
	datab => \pin_name2[4]~input_o\,
	datac => \pin_name2[2]~input_o\,
	datad => \pin_name2[5]~input_o\,
	combout => \inst|bcd_register~3_combout\);

-- Location: LCCOMB_X1_Y8_N22
\inst|bcd_register~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|bcd_register~32_combout\ = (\pin_name2[7]~input_o\ & (!\pin_name2[6]~input_o\ & \inst|bcd_register~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pin_name2[7]~input_o\,
	datac => \pin_name2[6]~input_o\,
	datad => \inst|bcd_register~3_combout\,
	combout => \inst|bcd_register~32_combout\);

-- Location: LCCOMB_X1_Y8_N4
\inst|bcd_register~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|bcd_register~19_combout\ = (\pin_name2[5]~input_o\ & (\pin_name2[6]~input_o\ & ((\pin_name2[4]~input_o\) # (!\pin_name2[7]~input_o\)))) # (!\pin_name2[5]~input_o\ & ((\pin_name2[7]~input_o\ & (!\pin_name2[6]~input_o\)) # (!\pin_name2[7]~input_o\ & 
-- (\pin_name2[6]~input_o\ & \pin_name2[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pin_name2[5]~input_o\,
	datab => \pin_name2[7]~input_o\,
	datac => \pin_name2[6]~input_o\,
	datad => \pin_name2[4]~input_o\,
	combout => \inst|bcd_register~19_combout\);

-- Location: LCCOMB_X1_Y8_N30
\inst|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~0_combout\ = (\pin_name2[7]~input_o\ & ((\pin_name2[5]~input_o\) # (\pin_name2[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pin_name2[5]~input_o\,
	datac => \pin_name2[6]~input_o\,
	datad => \pin_name2[7]~input_o\,
	combout => \inst|LessThan0~0_combout\);

-- Location: LCCOMB_X1_Y8_N2
\inst|bcd_register~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|bcd_register~18_combout\ = \inst|bcd_register~10_combout\ $ ((((!\pin_name2[2]~input_o\ & !\inst|bcd_register~9_combout\)) # (!\inst|bcd_register~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|bcd_register~11_combout\,
	datab => \inst|bcd_register~10_combout\,
	datac => \pin_name2[2]~input_o\,
	datad => \inst|bcd_register~9_combout\,
	combout => \inst|bcd_register~18_combout\);

-- Location: LCCOMB_X1_Y7_N12
\inst|LessThan5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan5~0_combout\ = (\inst|bcd_register~20_combout\ & ((\inst|bcd_register~19_combout\ & (!\inst|LessThan0~0_combout\ & !\inst|bcd_register~18_combout\)) # (!\inst|bcd_register~19_combout\ & (\inst|LessThan0~0_combout\)))) # 
-- (!\inst|bcd_register~20_combout\ & (\inst|bcd_register~19_combout\ & ((!\inst|bcd_register~18_combout\) # (!\inst|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|bcd_register~20_combout\,
	datab => \inst|bcd_register~19_combout\,
	datac => \inst|LessThan0~0_combout\,
	datad => \inst|bcd_register~18_combout\,
	combout => \inst|LessThan5~0_combout\);

-- Location: LCCOMB_X1_Y7_N14
\inst|bcd_register~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|bcd_register~24_combout\ = (\inst|bcd_register~32_combout\) # ((\inst|bcd_register~23_combout\ & !\inst|LessThan5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|bcd_register~23_combout\,
	datac => \inst|bcd_register~32_combout\,
	datad => \inst|LessThan5~0_combout\,
	combout => \inst|bcd_register~24_combout\);

-- Location: LCCOMB_X1_Y7_N8
\inst|bcd_register~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|bcd_register~21_combout\ = (\inst|bcd_register~19_combout\ & (\inst|bcd_register~18_combout\ & (\inst|bcd_register~20_combout\ $ (\inst|LessThan0~0_combout\)))) # (!\inst|bcd_register~19_combout\ & (\inst|bcd_register~20_combout\ & 
-- (\inst|LessThan0~0_combout\ & !\inst|bcd_register~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|bcd_register~20_combout\,
	datab => \inst|bcd_register~19_combout\,
	datac => \inst|LessThan0~0_combout\,
	datad => \inst|bcd_register~18_combout\,
	combout => \inst|bcd_register~21_combout\);

-- Location: LCCOMB_X1_Y10_N4
\inst|bcd_register~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|bcd_register~25_combout\ = \inst|bcd_register~13_combout\ $ ((((!\inst|bcd_register~12_combout\ & !\pin_name2[1]~input_o\)) # (!\inst|bcd_register~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|bcd_register~13_combout\,
	datab => \inst|bcd_register~12_combout\,
	datac => \pin_name2[1]~input_o\,
	datad => \inst|bcd_register~14_combout\,
	combout => \inst|bcd_register~25_combout\);

-- Location: LCCOMB_X1_Y7_N16
\inst|LessThan7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan7~0_combout\ = (\inst|LessThan5~0_combout\ $ (!\inst|bcd_register~18_combout\)) # (!\inst|bcd_register~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan5~0_combout\,
	datab => \inst|bcd_register~18_combout\,
	datad => \inst|bcd_register~25_combout\,
	combout => \inst|LessThan7~0_combout\);

-- Location: LCCOMB_X1_Y7_N2
\inst|bcd_register~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|bcd_register~26_combout\ = (\inst|bcd_register~24_combout\ & ((!\inst|LessThan7~0_combout\))) # (!\inst|bcd_register~24_combout\ & (\inst|bcd_register~21_combout\ & \inst|LessThan7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bcd_register~24_combout\,
	datac => \inst|bcd_register~21_combout\,
	datad => \inst|LessThan7~0_combout\,
	combout => \inst|bcd_register~26_combout\);

-- Location: LCCOMB_X1_Y7_N24
\inst|bcd_register~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|bcd_register~29_combout\ = \inst|bcd_register~18_combout\ $ (\inst|LessThan5~0_combout\ $ (((\inst|LessThan7~1_combout\ & \inst|bcd_register~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan7~1_combout\,
	datab => \inst|bcd_register~18_combout\,
	datac => \inst|LessThan5~0_combout\,
	datad => \inst|bcd_register~25_combout\,
	combout => \inst|bcd_register~29_combout\);

-- Location: LCCOMB_X1_Y7_N4
\inst|bcd_register~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|bcd_register~28_combout\ = \inst|bcd_register~25_combout\ $ (((\inst|bcd_register~21_combout\) # ((\inst|bcd_register~24_combout\ & \inst|LessThan7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|bcd_register~25_combout\,
	datab => \inst|bcd_register~24_combout\,
	datac => \inst|bcd_register~21_combout\,
	datad => \inst|LessThan7~0_combout\,
	combout => \inst|bcd_register~28_combout\);

-- Location: LCCOMB_X1_Y10_N6
\inst|bcd_register~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|bcd_register~27_combout\ = \inst|bcd_register~16_combout\ $ ((((!\pin_name2[0]~input_o\ & !\inst|bcd_register~15_combout\)) # (!\inst|bcd_register~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pin_name2[0]~input_o\,
	datab => \inst|bcd_register~17_combout\,
	datac => \inst|bcd_register~16_combout\,
	datad => \inst|bcd_register~15_combout\,
	combout => \inst|bcd_register~27_combout\);

-- Location: LCCOMB_X1_Y10_N16
\inst|tens[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|tens[3]~0_combout\ = (\inst|bcd_register~29_combout\ & (\inst|bcd_register~26_combout\ & ((!\inst|bcd_register~27_combout\) # (!\inst|bcd_register~28_combout\)))) # (!\inst|bcd_register~29_combout\ & (((\inst|bcd_register~28_combout\ & 
-- \inst|bcd_register~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|bcd_register~26_combout\,
	datab => \inst|bcd_register~29_combout\,
	datac => \inst|bcd_register~28_combout\,
	datad => \inst|bcd_register~27_combout\,
	combout => \inst|tens[3]~0_combout\);

-- Location: LCCOMB_X1_Y10_N2
\inst|tens[2]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|tens[2]~1_combout\ = (\inst|bcd_register~26_combout\ & ((\inst|bcd_register~28_combout\ $ (\inst|bcd_register~27_combout\)))) # (!\inst|bcd_register~26_combout\ & ((\inst|bcd_register~28_combout\) # ((!\inst|bcd_register~29_combout\ & 
-- \inst|bcd_register~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|bcd_register~26_combout\,
	datab => \inst|bcd_register~29_combout\,
	datac => \inst|bcd_register~28_combout\,
	datad => \inst|bcd_register~27_combout\,
	combout => \inst|tens[2]~1_combout\);

-- Location: LCCOMB_X1_Y10_N20
\inst|tens[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|tens[1]~2_combout\ = (\inst|bcd_register~26_combout\ & (((!\inst|bcd_register~27_combout\)))) # (!\inst|bcd_register~26_combout\ & ((\inst|bcd_register~29_combout\ & ((\inst|bcd_register~27_combout\))) # (!\inst|bcd_register~29_combout\ & 
-- ((\inst|bcd_register~28_combout\) # (!\inst|bcd_register~27_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|bcd_register~26_combout\,
	datab => \inst|bcd_register~29_combout\,
	datac => \inst|bcd_register~28_combout\,
	datad => \inst|bcd_register~27_combout\,
	combout => \inst|tens[1]~2_combout\);

-- Location: LCCOMB_X1_Y10_N14
\inst|Add11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add11~0_combout\ = (\inst|bcd_register~17_combout\ & (!\pin_name2[0]~input_o\ & (!\inst|bcd_register~16_combout\ & !\inst|bcd_register~15_combout\))) # (!\inst|bcd_register~17_combout\ & ((\inst|bcd_register~16_combout\) # ((\pin_name2[0]~input_o\ & 
-- \inst|bcd_register~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pin_name2[0]~input_o\,
	datab => \inst|bcd_register~17_combout\,
	datac => \inst|bcd_register~16_combout\,
	datad => \inst|bcd_register~15_combout\,
	combout => \inst|Add11~0_combout\);

-- Location: LCCOMB_X1_Y7_N22
\inst|hundreds[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|hundreds[3]~3_combout\ = (\inst|bcd_register~20_combout\ & ((\inst|bcd_register~19_combout\ & ((\inst|LessThan0~0_combout\) # (\inst|bcd_register~18_combout\))) # (!\inst|bcd_register~19_combout\ & (!\inst|LessThan0~0_combout\)))) # 
-- (!\inst|bcd_register~20_combout\ & (((\inst|LessThan0~0_combout\ & \inst|bcd_register~18_combout\)) # (!\inst|bcd_register~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101110010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|bcd_register~20_combout\,
	datab => \inst|bcd_register~19_combout\,
	datac => \inst|LessThan0~0_combout\,
	datad => \inst|bcd_register~18_combout\,
	combout => \inst|hundreds[3]~3_combout\);

-- Location: LCCOMB_X1_Y8_N0
\inst|bcd_register~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|bcd_register~20_combout\ = \inst|bcd_register~7_combout\ $ ((((!\pin_name2[3]~input_o\ & !\inst|bcd_register~6_combout\)) # (!\inst|bcd_register~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pin_name2[3]~input_o\,
	datab => \inst|bcd_register~6_combout\,
	datac => \inst|bcd_register~7_combout\,
	datad => \inst|bcd_register~8_combout\,
	combout => \inst|bcd_register~20_combout\);

-- Location: LCCOMB_X1_Y7_N18
\inst|bcd_register~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|bcd_register~30_combout\ = (\inst|bcd_register~19_combout\) # (!\inst|bcd_register~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|bcd_register~20_combout\,
	datad => \inst|bcd_register~19_combout\,
	combout => \inst|bcd_register~30_combout\);

-- Location: LCCOMB_X1_Y7_N28
\inst|hundreds[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|hundreds[3]~2_combout\ = (\inst|bcd_register~30_combout\ & (\inst|bcd_register~21_combout\ $ (((!\inst|bcd_register~24_combout\) # (!\inst|LessThan7~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|bcd_register~21_combout\,
	datab => \inst|LessThan7~0_combout\,
	datac => \inst|bcd_register~24_combout\,
	datad => \inst|bcd_register~30_combout\,
	combout => \inst|hundreds[3]~2_combout\);

-- Location: LCCOMB_X1_Y7_N0
\inst|hundreds[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|hundreds[3]~4_combout\ = (\inst|hundreds[3]~3_combout\ & (\inst|hundreds[3]~2_combout\ & \inst|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|hundreds[3]~3_combout\,
	datab => \inst|hundreds[3]~2_combout\,
	datac => \inst|LessThan0~0_combout\,
	combout => \inst|hundreds[3]~4_combout\);

-- Location: LCCOMB_X1_Y7_N10
\inst|hundreds[2]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|hundreds[2]~5_combout\ = (!\inst|hundreds[3]~3_combout\ & (((!\inst|hundreds[3]~2_combout\) # (!\inst|LessThan0~0_combout\)) # (!\inst|bcd_register~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|hundreds[3]~3_combout\,
	datab => \inst|bcd_register~30_combout\,
	datac => \inst|LessThan0~0_combout\,
	datad => \inst|hundreds[3]~2_combout\,
	combout => \inst|hundreds[2]~5_combout\);

-- Location: LCCOMB_X1_Y7_N20
\inst|bcd_register~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|bcd_register~31_combout\ = \inst|bcd_register~21_combout\ $ (((!\inst|LessThan7~0_combout\) # (!\inst|bcd_register~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bcd_register~24_combout\,
	datac => \inst|bcd_register~21_combout\,
	datad => \inst|LessThan7~0_combout\,
	combout => \inst|bcd_register~31_combout\);

-- Location: LCCOMB_X1_Y7_N30
\inst|hundreds[1]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|hundreds[1]~7_combout\ = (\inst|bcd_register~31_combout\) # ((\inst|LessThan0~0_combout\ & ((\inst|bcd_register~19_combout\) # (!\inst|bcd_register~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|bcd_register~20_combout\,
	datab => \inst|bcd_register~31_combout\,
	datac => \inst|LessThan0~0_combout\,
	datad => \inst|bcd_register~19_combout\,
	combout => \inst|hundreds[1]~7_combout\);

-- Location: LCCOMB_X1_Y10_N0
\inst|hundreds[0]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|hundreds[0]~6_combout\ = \inst|bcd_register~26_combout\ $ (((\inst|bcd_register~29_combout\) # ((\inst|bcd_register~28_combout\ & \inst|bcd_register~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|bcd_register~26_combout\,
	datab => \inst|bcd_register~29_combout\,
	datac => \inst|bcd_register~28_combout\,
	datad => \inst|bcd_register~27_combout\,
	combout => \inst|hundreds[0]~6_combout\);

-- Location: IOIBUF_X11_Y0_N22
\pin_name2[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pin_name2(9),
	o => \pin_name2[9]~input_o\);

-- Location: IOIBUF_X1_Y0_N15
\pin_name2[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pin_name2(8),
	o => \pin_name2[8]~input_o\);

ww_pin_name1(3) <= \pin_name1[3]~output_o\;

ww_pin_name1(2) <= \pin_name1[2]~output_o\;

ww_pin_name1(1) <= \pin_name1[1]~output_o\;

ww_pin_name1(0) <= \pin_name1[0]~output_o\;

ww_pin_name3(3) <= \pin_name3[3]~output_o\;

ww_pin_name3(2) <= \pin_name3[2]~output_o\;

ww_pin_name3(1) <= \pin_name3[1]~output_o\;

ww_pin_name3(0) <= \pin_name3[0]~output_o\;

ww_pin_name4(3) <= \pin_name4[3]~output_o\;

ww_pin_name4(2) <= \pin_name4[2]~output_o\;

ww_pin_name4(1) <= \pin_name4[1]~output_o\;

ww_pin_name4(0) <= \pin_name4[0]~output_o\;
END structure;


