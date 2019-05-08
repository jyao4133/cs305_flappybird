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

-- DATE "05/02/2019 15:58:44"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Ball1 IS
    PORT (
	pin_name2 : INOUT std_logic;
	red_out : OUT std_logic;
	clk : IN std_logic;
	mouse_data : INOUT std_logic;
	mouse_clk : INOUT std_logic;
	green_out : OUT std_logic;
	blue_out : OUT std_logic;
	horiz_sync_out : OUT std_logic;
	vert_sync_out : OUT std_logic;
	seg1 : OUT std_logic_vector(0 DOWNTO 0)
	);
END Ball1;

-- Design Ports Information
-- red_out	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green_out	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- blue_out	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- horiz_sync_out	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vert_sync_out	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg1[0]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mouse_data	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mouse_clk	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pin_name2	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Ball1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_red_out : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_green_out : std_logic;
SIGNAL ww_blue_out : std_logic;
SIGNAL ww_horiz_sync_out : std_logic;
SIGNAL ww_vert_sync_out : std_logic;
SIGNAL ww_seg1 : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst6|SYNC|vert_sync_out~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|MOUSE_CLK_FILTER~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst6|Add2~2_combout\ : std_logic;
SIGNAL \inst6|Add2~6_combout\ : std_logic;
SIGNAL \inst6|Add3~0_combout\ : std_logic;
SIGNAL \inst6|Add3~2_combout\ : std_logic;
SIGNAL \inst6|Add0~6_combout\ : std_logic;
SIGNAL \inst6|Add0~9\ : std_logic;
SIGNAL \inst6|Add0~10_combout\ : std_logic;
SIGNAL \inst6|Add6~0_combout\ : std_logic;
SIGNAL \inst6|Add6~2_combout\ : std_logic;
SIGNAL \inst6|Add6~4_combout\ : std_logic;
SIGNAL \inst6|Add6~6_combout\ : std_logic;
SIGNAL \inst6|Add6~8_combout\ : std_logic;
SIGNAL \inst6|Ball_Y_pos[4]~18_combout\ : std_logic;
SIGNAL \inst6|SYNC|Add1~6_combout\ : std_logic;
SIGNAL \inst6|SYNC|Add1~8_combout\ : std_logic;
SIGNAL \inst6|SYNC|Add1~11\ : std_logic;
SIGNAL \inst6|SYNC|Add1~13\ : std_logic;
SIGNAL \inst6|SYNC|Add1~12_combout\ : std_logic;
SIGNAL \inst6|SYNC|Add1~15\ : std_logic;
SIGNAL \inst6|SYNC|Add1~14_combout\ : std_logic;
SIGNAL \inst6|SYNC|Add1~17\ : std_logic;
SIGNAL \inst6|SYNC|Add1~16_combout\ : std_logic;
SIGNAL \inst6|SYNC|Add1~18_combout\ : std_logic;
SIGNAL \inst2|inhibit_wait_count[1]~10_combout\ : std_logic;
SIGNAL \inst2|inhibit_wait_count[3]~14_combout\ : std_logic;
SIGNAL \inst2|inhibit_wait_count[4]~16_combout\ : std_logic;
SIGNAL \inst2|PACKET_CHAR1[0]~0_combout\ : std_logic;
SIGNAL \inst2|PACKET_COUNT[0]~3_combout\ : std_logic;
SIGNAL \inst2|MOUSE_CLK_FILTER~1_combout\ : std_logic;
SIGNAL \inst6|SYNC|process_0~7_combout\ : std_logic;
SIGNAL \inst6|SYNC|process_0~8_combout\ : std_logic;
SIGNAL \inst6|SYNC|Equal1~0_combout\ : std_logic;
SIGNAL \inst6|SYNC|Equal0~1_combout\ : std_logic;
SIGNAL \inst6|LessThan4~0_combout\ : std_logic;
SIGNAL \inst6|LessThan4~1_combout\ : std_logic;
SIGNAL \inst6|LessThan4~2_combout\ : std_logic;
SIGNAL \inst2|OUTCNT~1_combout\ : std_logic;
SIGNAL \inst2|PACKET_COUNT[1]~4_combout\ : std_logic;
SIGNAL \inst2|SHIFTIN[0]~2_combout\ : std_logic;
SIGNAL \pin_name2~input_o\ : std_logic;
SIGNAL \inst6|SYNC|vert_sync_out~clkctrl_outclk\ : std_logic;
SIGNAL \inst2|SHIFTIN[1]~feeder_combout\ : std_logic;
SIGNAL \inst2|SHIFTIN[2]~feeder_combout\ : std_logic;
SIGNAL \inst2|SHIFTIN[3]~feeder_combout\ : std_logic;
SIGNAL \inst2|SHIFTIN[4]~feeder_combout\ : std_logic;
SIGNAL \inst2|SHIFTIN[5]~feeder_combout\ : std_logic;
SIGNAL \inst2|SHIFTIN[6]~feeder_combout\ : std_logic;
SIGNAL \inst2|SHIFTIN[7]~feeder_combout\ : std_logic;
SIGNAL \inst2|SHIFTIN[8]~feeder_combout\ : std_logic;
SIGNAL \mouse_clk~input_o\ : std_logic;
SIGNAL \inst2|filter[0]~feeder_combout\ : std_logic;
SIGNAL \inst2|filter[1]~feeder_combout\ : std_logic;
SIGNAL \inst2|filter[2]~feeder_combout\ : std_logic;
SIGNAL \inst2|filter[3]~feeder_combout\ : std_logic;
SIGNAL \inst2|filter[4]~feeder_combout\ : std_logic;
SIGNAL \inst2|filter[5]~feeder_combout\ : std_logic;
SIGNAL \inst2|filter[6]~feeder_combout\ : std_logic;
SIGNAL \inst2|MOUSE_CLK_FILTER~0_combout\ : std_logic;
SIGNAL \inst2|MOUSE_CLK_FILTER~2_combout\ : std_logic;
SIGNAL \inst2|MOUSE_CLK_FILTER~3_combout\ : std_logic;
SIGNAL \inst2|MOUSE_CLK_FILTER~q\ : std_logic;
SIGNAL \inst2|MOUSE_CLK_FILTER~clkctrl_outclk\ : std_logic;
SIGNAL \inst2|SHIFTOUT[9]~feeder_combout\ : std_logic;
SIGNAL \inst2|inhibit_wait_count[0]~30_combout\ : std_logic;
SIGNAL \inst2|inhibit_wait_count[1]~11\ : std_logic;
SIGNAL \inst2|inhibit_wait_count[2]~12_combout\ : std_logic;
SIGNAL \inst2|inhibit_wait_count[2]~13\ : std_logic;
SIGNAL \inst2|inhibit_wait_count[3]~15\ : std_logic;
SIGNAL \inst2|inhibit_wait_count[4]~17\ : std_logic;
SIGNAL \inst2|inhibit_wait_count[5]~18_combout\ : std_logic;
SIGNAL \inst2|inhibit_wait_count[5]~19\ : std_logic;
SIGNAL \inst2|inhibit_wait_count[6]~20_combout\ : std_logic;
SIGNAL \inst2|inhibit_wait_count[6]~21\ : std_logic;
SIGNAL \inst2|inhibit_wait_count[7]~22_combout\ : std_logic;
SIGNAL \inst2|inhibit_wait_count[7]~23\ : std_logic;
SIGNAL \inst2|inhibit_wait_count[8]~24_combout\ : std_logic;
SIGNAL \inst2|inhibit_wait_count[8]~25\ : std_logic;
SIGNAL \inst2|inhibit_wait_count[9]~27\ : std_logic;
SIGNAL \inst2|inhibit_wait_count[10]~28_combout\ : std_logic;
SIGNAL \inst2|Selector0~0_combout\ : std_logic;
SIGNAL \inst2|mouse_state.INHIBIT_TRANS~q\ : std_logic;
SIGNAL \inst2|inhibit_wait_count[9]~26_combout\ : std_logic;
SIGNAL \inst2|Selector1~0_combout\ : std_logic;
SIGNAL \inst2|mouse_state.LOAD_COMMAND~q\ : std_logic;
SIGNAL \inst2|mouse_state.LOAD_COMMAND2~q\ : std_logic;
SIGNAL \inst2|OUTCNT~3_combout\ : std_logic;
SIGNAL \inst2|send_char~0_combout\ : std_logic;
SIGNAL \inst2|send_char~q\ : std_logic;
SIGNAL \inst2|output_ready~0_combout\ : std_logic;
SIGNAL \inst2|OUTCNT~2_combout\ : std_logic;
SIGNAL \inst2|OUTCNT~0_combout\ : std_logic;
SIGNAL \inst2|LessThan0~0_combout\ : std_logic;
SIGNAL \inst2|output_ready~feeder_combout\ : std_logic;
SIGNAL \inst2|output_ready~q\ : std_logic;
SIGNAL \inst2|Selector3~0_combout\ : std_logic;
SIGNAL \inst2|mouse_state.WAIT_OUTPUT_READY~q\ : std_logic;
SIGNAL \mouse_data~input_o\ : std_logic;
SIGNAL \inst2|INCNT~0_combout\ : std_logic;
SIGNAL \inst2|INCNT[3]~1_combout\ : std_logic;
SIGNAL \inst2|INCNT~4_combout\ : std_logic;
SIGNAL \inst2|INCNT~3_combout\ : std_logic;
SIGNAL \inst2|INCNT~2_combout\ : std_logic;
SIGNAL \inst2|LessThan1~0_combout\ : std_logic;
SIGNAL \inst2|READ_CHAR~0_combout\ : std_logic;
SIGNAL \inst2|READ_CHAR~q\ : std_logic;
SIGNAL \inst2|iready_set~0_combout\ : std_logic;
SIGNAL \inst2|iready_set~q\ : std_logic;
SIGNAL \inst2|Selector4~0_combout\ : std_logic;
SIGNAL \inst2|mouse_state.WAIT_CMD_ACK~q\ : std_logic;
SIGNAL \inst2|mouse_state.INPUT_PACKETS~0_combout\ : std_logic;
SIGNAL \inst2|mouse_state.INPUT_PACKETS~q\ : std_logic;
SIGNAL \inst2|Selector6~0_combout\ : std_logic;
SIGNAL \inst2|Selector6~1_combout\ : std_logic;
SIGNAL \inst2|send_data~q\ : std_logic;
SIGNAL \inst2|MOUSE_DATA_BUF~0_combout\ : std_logic;
SIGNAL \inst2|SHIFTOUT[8]~3_combout\ : std_logic;
SIGNAL \inst2|SHIFTOUT[7]~feeder_combout\ : std_logic;
SIGNAL \inst2|SHIFTOUT[6]~feeder_combout\ : std_logic;
SIGNAL \inst2|SHIFTOUT[4]~2_combout\ : std_logic;
SIGNAL \inst2|SHIFTOUT[3]~1_combout\ : std_logic;
SIGNAL \inst2|SHIFTOUT[2]~0_combout\ : std_logic;
SIGNAL \inst2|MOUSE_DATA_BUF~q\ : std_logic;
SIGNAL \inst2|WideOr4~combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \inst|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \inst6|SYNC|Add0~1\ : std_logic;
SIGNAL \inst6|SYNC|Add0~3\ : std_logic;
SIGNAL \inst6|SYNC|Add0~4_combout\ : std_logic;
SIGNAL \inst6|SYNC|Add0~5\ : std_logic;
SIGNAL \inst6|SYNC|Add0~6_combout\ : std_logic;
SIGNAL \inst6|SYNC|Add0~7\ : std_logic;
SIGNAL \inst6|SYNC|Add0~8_combout\ : std_logic;
SIGNAL \inst6|SYNC|Add0~9\ : std_logic;
SIGNAL \inst6|SYNC|Add0~11\ : std_logic;
SIGNAL \inst6|SYNC|Add0~13\ : std_logic;
SIGNAL \inst6|SYNC|Add0~14_combout\ : std_logic;
SIGNAL \inst6|SYNC|Add0~15\ : std_logic;
SIGNAL \inst6|SYNC|Add0~17\ : std_logic;
SIGNAL \inst6|SYNC|Add0~18_combout\ : std_logic;
SIGNAL \inst6|SYNC|h_count~0_combout\ : std_logic;
SIGNAL \inst6|SYNC|Add0~16_combout\ : std_logic;
SIGNAL \inst6|SYNC|Add0~12_combout\ : std_logic;
SIGNAL \inst6|SYNC|Add0~0_combout\ : std_logic;
SIGNAL \inst6|SYNC|Equal0~0_combout\ : std_logic;
SIGNAL \inst6|SYNC|Equal0~2_combout\ : std_logic;
SIGNAL \inst6|SYNC|h_count~1_combout\ : std_logic;
SIGNAL \inst6|SYNC|process_0~0_combout\ : std_logic;
SIGNAL \inst6|SYNC|video_on_h~q\ : std_logic;
SIGNAL \inst6|SYNC|process_0~12_combout\ : std_logic;
SIGNAL \inst6|SYNC|process_0~9_combout\ : std_logic;
SIGNAL \inst6|SYNC|process_0~10_combout\ : std_logic;
SIGNAL \inst6|SYNC|process_0~11_combout\ : std_logic;
SIGNAL \inst6|SYNC|Equal1~1_combout\ : std_logic;
SIGNAL \inst6|SYNC|v_count[5]~1_combout\ : std_logic;
SIGNAL \inst6|SYNC|v_count[2]~0_combout\ : std_logic;
SIGNAL \inst6|SYNC|v_count[9]~2_combout\ : std_logic;
SIGNAL \inst6|SYNC|v_count[7]~5_combout\ : std_logic;
SIGNAL \inst6|SYNC|v_count[4]~7_combout\ : std_logic;
SIGNAL \inst6|SYNC|Add1~0_combout\ : std_logic;
SIGNAL \inst6|SYNC|v_count~11_combout\ : std_logic;
SIGNAL \inst6|SYNC|Add1~1\ : std_logic;
SIGNAL \inst6|SYNC|Add1~3\ : std_logic;
SIGNAL \inst6|SYNC|Add1~4_combout\ : std_logic;
SIGNAL \inst6|SYNC|v_count[2]~9_combout\ : std_logic;
SIGNAL \inst6|SYNC|Add1~5\ : std_logic;
SIGNAL \inst6|SYNC|Add1~7\ : std_logic;
SIGNAL \inst6|SYNC|Add1~9\ : std_logic;
SIGNAL \inst6|SYNC|Add1~10_combout\ : std_logic;
SIGNAL \inst6|SYNC|v_count[5]~3_combout\ : std_logic;
SIGNAL \inst6|SYNC|v_count[6]~4_combout\ : std_logic;
SIGNAL \inst6|SYNC|LessThan7~0_combout\ : std_logic;
SIGNAL \inst6|SYNC|LessThan7~1_combout\ : std_logic;
SIGNAL \inst6|SYNC|video_on_v~q\ : std_logic;
SIGNAL \inst6|SYNC|video_on~0_combout\ : std_logic;
SIGNAL \inst6|SYNC|red_out~feeder_combout\ : std_logic;
SIGNAL \inst6|SYNC|red_out~q\ : std_logic;
SIGNAL \inst2|left_button~1_combout\ : std_logic;
SIGNAL \inst2|PACKET_COUNT[1]~2_combout\ : std_logic;
SIGNAL \inst2|left_button~0_combout\ : std_logic;
SIGNAL \inst2|left_button~q\ : std_logic;
SIGNAL \inst6|Left_Click_Motion[0]~feeder_combout\ : std_logic;
SIGNAL \inst6|spawn_flag~0_combout\ : std_logic;
SIGNAL \inst6|spawn_flag~q\ : std_logic;
SIGNAL \inst6|Ball_Y_pos[0]~11\ : std_logic;
SIGNAL \inst6|Ball_Y_pos[1]~12_combout\ : std_logic;
SIGNAL \inst6|Ball_Y_pos[1]~13\ : std_logic;
SIGNAL \inst6|Ball_Y_pos[2]~15\ : std_logic;
SIGNAL \inst6|Ball_Y_pos[3]~17\ : std_logic;
SIGNAL \inst6|Ball_Y_pos[4]~19\ : std_logic;
SIGNAL \inst6|Ball_Y_pos[5]~20_combout\ : std_logic;
SIGNAL \inst6|Ball_Y_pos[3]~16_combout\ : std_logic;
SIGNAL \inst6|Ball_Y_pos[2]~14_combout\ : std_logic;
SIGNAL \inst6|Add6~1\ : std_logic;
SIGNAL \inst6|Add6~3\ : std_logic;
SIGNAL \inst6|Add6~5\ : std_logic;
SIGNAL \inst6|Add6~7\ : std_logic;
SIGNAL \inst6|Add6~9\ : std_logic;
SIGNAL \inst6|Add6~10_combout\ : std_logic;
SIGNAL \inst6|Ball_Y_pos[5]~21\ : std_logic;
SIGNAL \inst6|Ball_Y_pos[6]~23\ : std_logic;
SIGNAL \inst6|Ball_Y_pos[7]~24_combout\ : std_logic;
SIGNAL \inst6|Add6~11\ : std_logic;
SIGNAL \inst6|Add6~12_combout\ : std_logic;
SIGNAL \inst6|Ball_Y_pos[7]~25\ : std_logic;
SIGNAL \inst6|Ball_Y_pos[8]~26_combout\ : std_logic;
SIGNAL \inst6|Add6~13\ : std_logic;
SIGNAL \inst6|Add6~14_combout\ : std_logic;
SIGNAL \inst6|Ball_Y_pos[8]~27\ : std_logic;
SIGNAL \inst6|Ball_Y_pos[9]~28_combout\ : std_logic;
SIGNAL \inst6|SYNC|v_count[8]~6_combout\ : std_logic;
SIGNAL \inst6|SYNC|pixel_row[8]~feeder_combout\ : std_logic;
SIGNAL \inst6|SYNC|v_count[3]~8_combout\ : std_logic;
SIGNAL \inst6|SYNC|pixel_row[3]~feeder_combout\ : std_logic;
SIGNAL \inst6|Add2~1\ : std_logic;
SIGNAL \inst6|Add2~3\ : std_logic;
SIGNAL \inst6|Add2~5\ : std_logic;
SIGNAL \inst6|Add2~7\ : std_logic;
SIGNAL \inst6|Add2~8_combout\ : std_logic;
SIGNAL \inst6|Add2~4_combout\ : std_logic;
SIGNAL \inst6|Add2~0_combout\ : std_logic;
SIGNAL \inst6|SYNC|Add1~2_combout\ : std_logic;
SIGNAL \inst6|SYNC|v_count~10_combout\ : std_logic;
SIGNAL \inst6|SYNC|pixel_row[1]~feeder_combout\ : std_logic;
SIGNAL \inst6|LessThan2~1_cout\ : std_logic;
SIGNAL \inst6|LessThan2~3_cout\ : std_logic;
SIGNAL \inst6|LessThan2~5_cout\ : std_logic;
SIGNAL \inst6|LessThan2~7_cout\ : std_logic;
SIGNAL \inst6|LessThan2~9_cout\ : std_logic;
SIGNAL \inst6|LessThan2~11_cout\ : std_logic;
SIGNAL \inst6|LessThan2~13_cout\ : std_logic;
SIGNAL \inst6|LessThan2~15_cout\ : std_logic;
SIGNAL \inst6|LessThan2~17_cout\ : std_logic;
SIGNAL \inst6|LessThan2~18_combout\ : std_logic;
SIGNAL \inst6|SYNC|Add0~10_combout\ : std_logic;
SIGNAL \inst6|SYNC|h_count~2_combout\ : std_logic;
SIGNAL \inst6|Add0~1_cout\ : std_logic;
SIGNAL \inst6|Add0~3_cout\ : std_logic;
SIGNAL \inst6|Add0~4_combout\ : std_logic;
SIGNAL \inst6|Add2~9\ : std_logic;
SIGNAL \inst6|Add2~10_combout\ : std_logic;
SIGNAL \inst6|SYNC|pixel_column[0]~feeder_combout\ : std_logic;
SIGNAL \inst6|SYNC|Add0~2_combout\ : std_logic;
SIGNAL \inst6|SYNC|green_out~0_combout\ : std_logic;
SIGNAL \inst6|SYNC|green_out~1_combout\ : std_logic;
SIGNAL \inst6|Add0~5\ : std_logic;
SIGNAL \inst6|Add0~7\ : std_logic;
SIGNAL \inst6|Add0~8_combout\ : std_logic;
SIGNAL \inst6|Ball_Y_pos[6]~22_combout\ : std_logic;
SIGNAL \inst6|Add3~1\ : std_logic;
SIGNAL \inst6|Add3~3\ : std_logic;
SIGNAL \inst6|Add3~5\ : std_logic;
SIGNAL \inst6|Add3~7\ : std_logic;
SIGNAL \inst6|Add3~9\ : std_logic;
SIGNAL \inst6|Add3~10_combout\ : std_logic;
SIGNAL \inst6|SYNC|green_out~2_combout\ : std_logic;
SIGNAL \inst6|SYNC|green_out~3_combout\ : std_logic;
SIGNAL \inst6|SYNC|green_out~4_combout\ : std_logic;
SIGNAL \inst6|Add3~8_combout\ : std_logic;
SIGNAL \inst6|Add3~6_combout\ : std_logic;
SIGNAL \inst6|Add3~4_combout\ : std_logic;
SIGNAL \inst6|Ball_Y_pos[0]~10_combout\ : std_logic;
SIGNAL \inst6|LessThan3~1_cout\ : std_logic;
SIGNAL \inst6|LessThan3~3_cout\ : std_logic;
SIGNAL \inst6|LessThan3~5_cout\ : std_logic;
SIGNAL \inst6|LessThan3~7_cout\ : std_logic;
SIGNAL \inst6|LessThan3~9_cout\ : std_logic;
SIGNAL \inst6|LessThan3~11_cout\ : std_logic;
SIGNAL \inst6|LessThan3~13_cout\ : std_logic;
SIGNAL \inst6|LessThan3~15_cout\ : std_logic;
SIGNAL \inst6|LessThan3~16_combout\ : std_logic;
SIGNAL \inst6|SYNC|green_out~5_combout\ : std_logic;
SIGNAL \inst6|SYNC|green_out~q\ : std_logic;
SIGNAL \inst6|SYNC|blue_out~q\ : std_logic;
SIGNAL \inst6|SYNC|process_0~1_combout\ : std_logic;
SIGNAL \inst6|SYNC|process_0~2_combout\ : std_logic;
SIGNAL \inst6|SYNC|process_0~3_combout\ : std_logic;
SIGNAL \inst6|SYNC|process_0~4_combout\ : std_logic;
SIGNAL \inst6|SYNC|horiz_sync~q\ : std_logic;
SIGNAL \inst6|SYNC|horiz_sync_out~feeder_combout\ : std_logic;
SIGNAL \inst6|SYNC|horiz_sync_out~q\ : std_logic;
SIGNAL \inst6|SYNC|process_0~5_combout\ : std_logic;
SIGNAL \inst6|SYNC|process_0~6_combout\ : std_logic;
SIGNAL \inst6|SYNC|vert_sync~q\ : std_logic;
SIGNAL \inst6|SYNC|vert_sync_out~feeder_combout\ : std_logic;
SIGNAL \inst6|SYNC|vert_sync_out~q\ : std_logic;
SIGNAL \inst2|inhibit_wait_count\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst2|filter\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst2|SHIFTOUT\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst2|SHIFTIN\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst2|PACKET_COUNT\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst2|PACKET_CHAR1\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst2|OUTCNT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|INCNT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst6|SYNC|pixel_column\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst6|Left_Click_Motion\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst6|SYNC|h_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst6|Ball_Y_pos\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst6|Gravity_Motion\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst6|SYNC|pixel_row\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst6|SYNC|v_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst2|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\ : std_logic;
SIGNAL \inst2|ALT_INV_send_data~q\ : std_logic;
SIGNAL \inst6|ALT_INV_spawn_flag~q\ : std_logic;
SIGNAL \inst2|ALT_INV_mouse_state.INHIBIT_TRANS~q\ : std_logic;
SIGNAL \inst2|ALT_INV_mouse_state.WAIT_OUTPUT_READY~q\ : std_logic;

BEGIN

red_out <= ww_red_out;
ww_clk <= clk;
green_out <= ww_green_out;
blue_out <= ww_blue_out;
horiz_sync_out <= ww_horiz_sync_out;
vert_sync_out <= ww_vert_sync_out;
seg1 <= ww_seg1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \clk~input_o\);

\inst|altpll_component|auto_generated|wire_pll1_clk\(0) <= \inst|altpll_component|auto_generated|pll1_CLK_bus\(0);
\inst|altpll_component|auto_generated|wire_pll1_clk\(1) <= \inst|altpll_component|auto_generated|pll1_CLK_bus\(1);
\inst|altpll_component|auto_generated|wire_pll1_clk\(2) <= \inst|altpll_component|auto_generated|pll1_CLK_bus\(2);
\inst|altpll_component|auto_generated|wire_pll1_clk\(3) <= \inst|altpll_component|auto_generated|pll1_CLK_bus\(3);
\inst|altpll_component|auto_generated|wire_pll1_clk\(4) <= \inst|altpll_component|auto_generated|pll1_CLK_bus\(4);

\inst6|SYNC|vert_sync_out~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst6|SYNC|vert_sync_out~q\);

\inst2|MOUSE_CLK_FILTER~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst2|MOUSE_CLK_FILTER~q\);

\inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst|altpll_component|auto_generated|wire_pll1_clk\(0));
\inst2|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\ <= NOT \inst2|MOUSE_CLK_FILTER~clkctrl_outclk\;
\inst2|ALT_INV_send_data~q\ <= NOT \inst2|send_data~q\;
\inst6|ALT_INV_spawn_flag~q\ <= NOT \inst6|spawn_flag~q\;
\inst2|ALT_INV_mouse_state.INHIBIT_TRANS~q\ <= NOT \inst2|mouse_state.INHIBIT_TRANS~q\;
\inst2|ALT_INV_mouse_state.WAIT_OUTPUT_READY~q\ <= NOT \inst2|mouse_state.WAIT_OUTPUT_READY~q\;

-- Location: LCCOMB_X31_Y24_N22
\inst6|Add2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add2~2_combout\ = (\inst6|SYNC|pixel_row\(5) & (!\inst6|Add2~1\)) # (!\inst6|SYNC|pixel_row\(5) & ((\inst6|Add2~1\) # (GND)))
-- \inst6|Add2~3\ = CARRY((!\inst6|Add2~1\) # (!\inst6|SYNC|pixel_row\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|SYNC|pixel_row\(5),
	datad => VCC,
	cin => \inst6|Add2~1\,
	combout => \inst6|Add2~2_combout\,
	cout => \inst6|Add2~3\);

-- Location: LCCOMB_X31_Y24_N26
\inst6|Add2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add2~6_combout\ = (\inst6|SYNC|pixel_row\(7) & (!\inst6|Add2~5\)) # (!\inst6|SYNC|pixel_row\(7) & ((\inst6|Add2~5\) # (GND)))
-- \inst6|Add2~7\ = CARRY((!\inst6|Add2~5\) # (!\inst6|SYNC|pixel_row\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|SYNC|pixel_row\(7),
	datad => VCC,
	cin => \inst6|Add2~5\,
	combout => \inst6|Add2~6_combout\,
	cout => \inst6|Add2~7\);

-- Location: FF_X29_Y24_N21
\inst6|Ball_Y_pos[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst6|Ball_Y_pos[4]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|Ball_Y_pos\(4));

-- Location: LCCOMB_X29_Y24_N0
\inst6|Add3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add3~0_combout\ = (\inst6|Ball_Y_pos\(4) & (\inst6|Ball_Y_pos\(3) $ (VCC))) # (!\inst6|Ball_Y_pos\(4) & (\inst6|Ball_Y_pos\(3) & VCC))
-- \inst6|Add3~1\ = CARRY((\inst6|Ball_Y_pos\(4) & \inst6|Ball_Y_pos\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Ball_Y_pos\(4),
	datab => \inst6|Ball_Y_pos\(3),
	datad => VCC,
	combout => \inst6|Add3~0_combout\,
	cout => \inst6|Add3~1\);

-- Location: LCCOMB_X29_Y24_N2
\inst6|Add3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add3~2_combout\ = (\inst6|Ball_Y_pos\(5) & (!\inst6|Add3~1\)) # (!\inst6|Ball_Y_pos\(5) & ((\inst6|Add3~1\) # (GND)))
-- \inst6|Add3~3\ = CARRY((!\inst6|Add3~1\) # (!\inst6|Ball_Y_pos\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Ball_Y_pos\(5),
	datad => VCC,
	cin => \inst6|Add3~1\,
	combout => \inst6|Add3~2_combout\,
	cout => \inst6|Add3~3\);

-- Location: LCCOMB_X30_Y25_N12
\inst6|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add0~6_combout\ = (\inst6|SYNC|pixel_column\(7) & (!\inst6|Add0~5\)) # (!\inst6|SYNC|pixel_column\(7) & ((\inst6|Add0~5\) # (GND)))
-- \inst6|Add0~7\ = CARRY((!\inst6|Add0~5\) # (!\inst6|SYNC|pixel_column\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|SYNC|pixel_column\(7),
	datad => VCC,
	cin => \inst6|Add0~5\,
	combout => \inst6|Add0~6_combout\,
	cout => \inst6|Add0~7\);

-- Location: LCCOMB_X30_Y25_N14
\inst6|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add0~8_combout\ = (\inst6|SYNC|pixel_column\(8) & (\inst6|Add0~7\ $ (GND))) # (!\inst6|SYNC|pixel_column\(8) & (!\inst6|Add0~7\ & VCC))
-- \inst6|Add0~9\ = CARRY((\inst6|SYNC|pixel_column\(8) & !\inst6|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|SYNC|pixel_column\(8),
	datad => VCC,
	cin => \inst6|Add0~7\,
	combout => \inst6|Add0~8_combout\,
	cout => \inst6|Add0~9\);

-- Location: LCCOMB_X30_Y25_N16
\inst6|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add0~10_combout\ = \inst6|Add0~9\ $ (\inst6|SYNC|pixel_column\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst6|SYNC|pixel_column\(9),
	cin => \inst6|Add0~9\,
	combout => \inst6|Add0~10_combout\);

-- Location: LCCOMB_X28_Y24_N8
\inst6|Add6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add6~0_combout\ = (\inst6|Gravity_Motion\(2) & (\inst6|Ball_Y_pos\(2) $ (VCC))) # (!\inst6|Gravity_Motion\(2) & (\inst6|Ball_Y_pos\(2) & VCC))
-- \inst6|Add6~1\ = CARRY((\inst6|Gravity_Motion\(2) & \inst6|Ball_Y_pos\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Gravity_Motion\(2),
	datab => \inst6|Ball_Y_pos\(2),
	datad => VCC,
	combout => \inst6|Add6~0_combout\,
	cout => \inst6|Add6~1\);

-- Location: LCCOMB_X28_Y24_N10
\inst6|Add6~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add6~2_combout\ = (\inst6|Ball_Y_pos\(3) & (!\inst6|Add6~1\)) # (!\inst6|Ball_Y_pos\(3) & ((\inst6|Add6~1\) # (GND)))
-- \inst6|Add6~3\ = CARRY((!\inst6|Add6~1\) # (!\inst6|Ball_Y_pos\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Ball_Y_pos\(3),
	datad => VCC,
	cin => \inst6|Add6~1\,
	combout => \inst6|Add6~2_combout\,
	cout => \inst6|Add6~3\);

-- Location: LCCOMB_X28_Y24_N12
\inst6|Add6~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add6~4_combout\ = (\inst6|Ball_Y_pos\(4) & (\inst6|Add6~3\ $ (GND))) # (!\inst6|Ball_Y_pos\(4) & (!\inst6|Add6~3\ & VCC))
-- \inst6|Add6~5\ = CARRY((\inst6|Ball_Y_pos\(4) & !\inst6|Add6~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Ball_Y_pos\(4),
	datad => VCC,
	cin => \inst6|Add6~3\,
	combout => \inst6|Add6~4_combout\,
	cout => \inst6|Add6~5\);

-- Location: LCCOMB_X28_Y24_N14
\inst6|Add6~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add6~6_combout\ = (\inst6|Ball_Y_pos\(5) & (!\inst6|Add6~5\)) # (!\inst6|Ball_Y_pos\(5) & ((\inst6|Add6~5\) # (GND)))
-- \inst6|Add6~7\ = CARRY((!\inst6|Add6~5\) # (!\inst6|Ball_Y_pos\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Ball_Y_pos\(5),
	datad => VCC,
	cin => \inst6|Add6~5\,
	combout => \inst6|Add6~6_combout\,
	cout => \inst6|Add6~7\);

-- Location: LCCOMB_X28_Y24_N16
\inst6|Add6~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add6~8_combout\ = (\inst6|Ball_Y_pos\(6) & (\inst6|Add6~7\ $ (GND))) # (!\inst6|Ball_Y_pos\(6) & (!\inst6|Add6~7\ & VCC))
-- \inst6|Add6~9\ = CARRY((\inst6|Ball_Y_pos\(6) & !\inst6|Add6~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Ball_Y_pos\(6),
	datad => VCC,
	cin => \inst6|Add6~7\,
	combout => \inst6|Add6~8_combout\,
	cout => \inst6|Add6~9\);

-- Location: LCCOMB_X29_Y24_N20
\inst6|Ball_Y_pos[4]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Ball_Y_pos[4]~18_combout\ = ((\inst6|Add6~4_combout\ $ (\inst6|Left_Click_Motion\(0) $ (!\inst6|Ball_Y_pos[3]~17\)))) # (GND)
-- \inst6|Ball_Y_pos[4]~19\ = CARRY((\inst6|Add6~4_combout\ & ((\inst6|Left_Click_Motion\(0)) # (!\inst6|Ball_Y_pos[3]~17\))) # (!\inst6|Add6~4_combout\ & (\inst6|Left_Click_Motion\(0) & !\inst6|Ball_Y_pos[3]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add6~4_combout\,
	datab => \inst6|Left_Click_Motion\(0),
	datad => VCC,
	cin => \inst6|Ball_Y_pos[3]~17\,
	combout => \inst6|Ball_Y_pos[4]~18_combout\,
	cout => \inst6|Ball_Y_pos[4]~19\);

-- Location: LCCOMB_X28_Y25_N18
\inst6|SYNC|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|SYNC|Add1~6_combout\ = (\inst6|SYNC|v_count\(3) & (!\inst6|SYNC|Add1~5\)) # (!\inst6|SYNC|v_count\(3) & ((\inst6|SYNC|Add1~5\) # (GND)))
-- \inst6|SYNC|Add1~7\ = CARRY((!\inst6|SYNC|Add1~5\) # (!\inst6|SYNC|v_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|SYNC|v_count\(3),
	datad => VCC,
	cin => \inst6|SYNC|Add1~5\,
	combout => \inst6|SYNC|Add1~6_combout\,
	cout => \inst6|SYNC|Add1~7\);

-- Location: LCCOMB_X28_Y25_N20
\inst6|SYNC|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|SYNC|Add1~8_combout\ = (\inst6|SYNC|v_count\(4) & (\inst6|SYNC|Add1~7\ $ (GND))) # (!\inst6|SYNC|v_count\(4) & (!\inst6|SYNC|Add1~7\ & VCC))
-- \inst6|SYNC|Add1~9\ = CARRY((\inst6|SYNC|v_count\(4) & !\inst6|SYNC|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|SYNC|v_count\(4),
	datad => VCC,
	cin => \inst6|SYNC|Add1~7\,
	combout => \inst6|SYNC|Add1~8_combout\,
	cout => \inst6|SYNC|Add1~9\);

-- Location: LCCOMB_X28_Y25_N22
\inst6|SYNC|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|SYNC|Add1~10_combout\ = (\inst6|SYNC|v_count\(5) & (!\inst6|SYNC|Add1~9\)) # (!\inst6|SYNC|v_count\(5) & ((\inst6|SYNC|Add1~9\) # (GND)))
-- \inst6|SYNC|Add1~11\ = CARRY((!\inst6|SYNC|Add1~9\) # (!\inst6|SYNC|v_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|SYNC|v_count\(5),
	datad => VCC,
	cin => \inst6|SYNC|Add1~9\,
	combout => \inst6|SYNC|Add1~10_combout\,
	cout => \inst6|SYNC|Add1~11\);

-- Location: LCCOMB_X28_Y25_N24
\inst6|SYNC|Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|SYNC|Add1~12_combout\ = (\inst6|SYNC|v_count\(6) & (\inst6|SYNC|Add1~11\ $ (GND))) # (!\inst6|SYNC|v_count\(6) & (!\inst6|SYNC|Add1~11\ & VCC))
-- \inst6|SYNC|Add1~13\ = CARRY((\inst6|SYNC|v_count\(6) & !\inst6|SYNC|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|SYNC|v_count\(6),
	datad => VCC,
	cin => \inst6|SYNC|Add1~11\,
	combout => \inst6|SYNC|Add1~12_combout\,
	cout => \inst6|SYNC|Add1~13\);

-- Location: LCCOMB_X28_Y25_N26
\inst6|SYNC|Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|SYNC|Add1~14_combout\ = (\inst6|SYNC|v_count\(7) & (!\inst6|SYNC|Add1~13\)) # (!\inst6|SYNC|v_count\(7) & ((\inst6|SYNC|Add1~13\) # (GND)))
-- \inst6|SYNC|Add1~15\ = CARRY((!\inst6|SYNC|Add1~13\) # (!\inst6|SYNC|v_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|SYNC|v_count\(7),
	datad => VCC,
	cin => \inst6|SYNC|Add1~13\,
	combout => \inst6|SYNC|Add1~14_combout\,
	cout => \inst6|SYNC|Add1~15\);

-- Location: LCCOMB_X28_Y25_N28
\inst6|SYNC|Add1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|SYNC|Add1~16_combout\ = (\inst6|SYNC|v_count\(8) & (\inst6|SYNC|Add1~15\ $ (GND))) # (!\inst6|SYNC|v_count\(8) & (!\inst6|SYNC|Add1~15\ & VCC))
-- \inst6|SYNC|Add1~17\ = CARRY((\inst6|SYNC|v_count\(8) & !\inst6|SYNC|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|SYNC|v_count\(8),
	datad => VCC,
	cin => \inst6|SYNC|Add1~15\,
	combout => \inst6|SYNC|Add1~16_combout\,
	cout => \inst6|SYNC|Add1~17\);

-- Location: LCCOMB_X28_Y25_N30
\inst6|SYNC|Add1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|SYNC|Add1~18_combout\ = \inst6|SYNC|v_count\(9) $ (\inst6|SYNC|Add1~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|SYNC|v_count\(9),
	cin => \inst6|SYNC|Add1~17\,
	combout => \inst6|SYNC|Add1~18_combout\);

-- Location: FF_X37_Y11_N13
\inst2|inhibit_wait_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|inhibit_wait_count[4]~16_combout\,
	ena => \inst2|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inhibit_wait_count\(4));

-- Location: FF_X37_Y11_N11
\inst2|inhibit_wait_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|inhibit_wait_count[3]~14_combout\,
	ena => \inst2|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inhibit_wait_count\(3));

-- Location: FF_X37_Y11_N7
\inst2|inhibit_wait_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|inhibit_wait_count[1]~10_combout\,
	ena => \inst2|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inhibit_wait_count\(1));

-- Location: LCCOMB_X37_Y11_N6
\inst2|inhibit_wait_count[1]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inhibit_wait_count[1]~10_combout\ = (\inst2|inhibit_wait_count\(1) & (\inst2|inhibit_wait_count\(0) $ (VCC))) # (!\inst2|inhibit_wait_count\(1) & (\inst2|inhibit_wait_count\(0) & VCC))
-- \inst2|inhibit_wait_count[1]~11\ = CARRY((\inst2|inhibit_wait_count\(1) & \inst2|inhibit_wait_count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inhibit_wait_count\(1),
	datab => \inst2|inhibit_wait_count\(0),
	datad => VCC,
	combout => \inst2|inhibit_wait_count[1]~10_combout\,
	cout => \inst2|inhibit_wait_count[1]~11\);

-- Location: LCCOMB_X37_Y11_N10
\inst2|inhibit_wait_count[3]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inhibit_wait_count[3]~14_combout\ = (\inst2|inhibit_wait_count\(3) & (\inst2|inhibit_wait_count[2]~13\ $ (GND))) # (!\inst2|inhibit_wait_count\(3) & (!\inst2|inhibit_wait_count[2]~13\ & VCC))
-- \inst2|inhibit_wait_count[3]~15\ = CARRY((\inst2|inhibit_wait_count\(3) & !\inst2|inhibit_wait_count[2]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inhibit_wait_count\(3),
	datad => VCC,
	cin => \inst2|inhibit_wait_count[2]~13\,
	combout => \inst2|inhibit_wait_count[3]~14_combout\,
	cout => \inst2|inhibit_wait_count[3]~15\);

-- Location: LCCOMB_X37_Y11_N12
\inst2|inhibit_wait_count[4]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inhibit_wait_count[4]~16_combout\ = (\inst2|inhibit_wait_count\(4) & (!\inst2|inhibit_wait_count[3]~15\)) # (!\inst2|inhibit_wait_count\(4) & ((\inst2|inhibit_wait_count[3]~15\) # (GND)))
-- \inst2|inhibit_wait_count[4]~17\ = CARRY((!\inst2|inhibit_wait_count[3]~15\) # (!\inst2|inhibit_wait_count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inhibit_wait_count\(4),
	datad => VCC,
	cin => \inst2|inhibit_wait_count[3]~15\,
	combout => \inst2|inhibit_wait_count[4]~16_combout\,
	cout => \inst2|inhibit_wait_count[4]~17\);

-- Location: FF_X30_Y24_N13
\inst6|SYNC|pixel_row[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst6|SYNC|v_count\(7),
	sload => VCC,
	ena => \inst6|SYNC|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|SYNC|pixel_row\(7));

-- Location: FF_X31_Y24_N11
\inst6|SYNC|pixel_row[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst6|SYNC|v_count\(6),
	sload => VCC,
	ena => \inst6|SYNC|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|SYNC|pixel_row\(6));

-- Location: FF_X30_Y25_N11
\inst6|SYNC|pixel_column[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst6|SYNC|h_count\(6),
	sload => VCC,
	ena => \inst6|SYNC|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|SYNC|pixel_column\(6));

-- Location: FF_X30_Y25_N23
\inst6|SYNC|pixel_column[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst6|SYNC|h_count\(2),
	sload => VCC,
	ena => \inst6|SYNC|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|SYNC|pixel_column\(2));

-- Location: FF_X39_Y13_N31
\inst2|PACKET_CHAR1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst2|PACKET_CHAR1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|PACKET_CHAR1\(0));

-- Location: FF_X39_Y13_N27
\inst2|PACKET_COUNT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst2|PACKET_COUNT[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|PACKET_COUNT\(0));

-- Location: FF_X28_Y24_N29
\inst6|Gravity_Motion[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst6|LessThan4~2_combout\,
	ena => \inst6|ALT_INV_spawn_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|Gravity_Motion\(2));

-- Location: FF_X39_Y13_N13
\inst2|SHIFTIN[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|MOUSE_CLK_FILTER~clkctrl_outclk\,
	asdata => \inst2|SHIFTIN\(1),
	sload => VCC,
	ena => \inst2|SHIFTIN[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|SHIFTIN\(0));

-- Location: LCCOMB_X39_Y13_N30
\inst2|PACKET_CHAR1[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|PACKET_CHAR1[0]~0_combout\ = (\inst2|left_button~1_combout\ & ((\inst2|PACKET_COUNT\(1) & ((\inst2|PACKET_CHAR1\(0)))) # (!\inst2|PACKET_COUNT\(1) & (\inst2|SHIFTIN\(0))))) # (!\inst2|left_button~1_combout\ & (((\inst2|PACKET_CHAR1\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|SHIFTIN\(0),
	datab => \inst2|left_button~1_combout\,
	datac => \inst2|PACKET_CHAR1\(0),
	datad => \inst2|PACKET_COUNT\(1),
	combout => \inst2|PACKET_CHAR1[0]~0_combout\);

-- Location: LCCOMB_X39_Y13_N26
\inst2|PACKET_COUNT[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|PACKET_COUNT[0]~3_combout\ = (\inst2|PACKET_COUNT[1]~4_combout\ & ((\inst2|PACKET_COUNT\(1)) # (!\inst2|PACKET_COUNT\(0)))) # (!\inst2|PACKET_COUNT[1]~4_combout\ & (\inst2|PACKET_COUNT\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|PACKET_COUNT[1]~4_combout\,
	datac => \inst2|PACKET_COUNT\(0),
	datad => \inst2|PACKET_COUNT\(1),
	combout => \inst2|PACKET_COUNT[0]~3_combout\);

-- Location: LCCOMB_X20_Y27_N22
\inst2|MOUSE_CLK_FILTER~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|MOUSE_CLK_FILTER~1_combout\ = (\inst2|filter\(3) & ((\inst2|MOUSE_CLK_FILTER~q\) # ((\inst2|filter\(2) & \inst2|filter\(5))))) # (!\inst2|filter\(3) & (\inst2|MOUSE_CLK_FILTER~q\ & ((\inst2|filter\(2)) # (\inst2|filter\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|filter\(3),
	datab => \inst2|filter\(2),
	datac => \inst2|filter\(5),
	datad => \inst2|MOUSE_CLK_FILTER~q\,
	combout => \inst2|MOUSE_CLK_FILTER~1_combout\);

-- Location: LCCOMB_X29_Y25_N24
\inst6|SYNC|process_0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|SYNC|process_0~7_combout\ = (!\inst6|SYNC|v_count\(5) & (!\inst6|SYNC|v_count\(4) & ((!\inst6|SYNC|v_count\(3)) # (!\inst6|SYNC|v_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|SYNC|v_count\(2),
	datab => \inst6|SYNC|v_count\(3),
	datac => \inst6|SYNC|v_count\(5),
	datad => \inst6|SYNC|v_count\(4),
	combout => \inst6|SYNC|process_0~7_combout\);

-- Location: LCCOMB_X29_Y25_N26
\inst6|SYNC|process_0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|SYNC|process_0~8_combout\ = (!\inst6|SYNC|v_count\(8) & (\inst6|SYNC|process_0~7_combout\ & (!\inst6|SYNC|v_count\(7) & !\inst6|SYNC|v_count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|SYNC|v_count\(8),
	datab => \inst6|SYNC|process_0~7_combout\,
	datac => \inst6|SYNC|v_count\(7),
	datad => \inst6|SYNC|v_count\(6),
	combout => \inst6|SYNC|process_0~8_combout\);

-- Location: LCCOMB_X30_Y25_N4
\inst6|SYNC|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|SYNC|Equal1~0_combout\ = (\inst6|SYNC|h_count\(8)) # ((\inst6|SYNC|h_count\(2)) # ((!\inst6|SYNC|h_count\(7)) # (!\inst6|SYNC|h_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|SYNC|h_count\(8),
	datab => \inst6|SYNC|h_count\(2),
	datac => \inst6|SYNC|h_count\(5),
	datad => \inst6|SYNC|h_count\(7),
	combout => \inst6|SYNC|Equal1~0_combout\);

-- Location: LCCOMB_X30_Y26_N2
\inst6|SYNC|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|SYNC|Equal0~1_combout\ = (!\inst6|SYNC|h_count\(5) & (!\inst6|SYNC|h_count\(7) & (\inst6|SYNC|h_count\(2) & \inst6|SYNC|h_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|SYNC|h_count\(5),
	datab => \inst6|SYNC|h_count\(7),
	datac => \inst6|SYNC|h_count\(2),
	datad => \inst6|SYNC|h_count\(8),
	combout => \inst6|SYNC|Equal0~1_combout\);

-- Location: LCCOMB_X28_Y24_N26
\inst6|LessThan4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan4~0_combout\ = (\inst6|Ball_Y_pos\(1)) # ((\inst6|Ball_Y_pos\(3)) # ((\inst6|Ball_Y_pos\(0)) # (\inst6|Ball_Y_pos\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Ball_Y_pos\(1),
	datab => \inst6|Ball_Y_pos\(3),
	datac => \inst6|Ball_Y_pos\(0),
	datad => \inst6|Ball_Y_pos\(2),
	combout => \inst6|LessThan4~0_combout\);

-- Location: LCCOMB_X28_Y24_N4
\inst6|LessThan4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan4~1_combout\ = (\inst6|Ball_Y_pos\(6) & ((\inst6|Ball_Y_pos\(5)) # ((\inst6|LessThan4~0_combout\ & \inst6|Ball_Y_pos\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan4~0_combout\,
	datab => \inst6|Ball_Y_pos\(6),
	datac => \inst6|Ball_Y_pos\(4),
	datad => \inst6|Ball_Y_pos\(5),
	combout => \inst6|LessThan4~1_combout\);

-- Location: LCCOMB_X28_Y24_N28
\inst6|LessThan4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan4~2_combout\ = (!\inst6|Ball_Y_pos\(9) & (((!\inst6|Ball_Y_pos\(7)) # (!\inst6|LessThan4~1_combout\)) # (!\inst6|Ball_Y_pos\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Ball_Y_pos\(9),
	datab => \inst6|Ball_Y_pos\(8),
	datac => \inst6|LessThan4~1_combout\,
	datad => \inst6|Ball_Y_pos\(7),
	combout => \inst6|LessThan4~2_combout\);

-- Location: FF_X39_Y13_N23
\inst2|SHIFTIN[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst2|SHIFTIN[1]~feeder_combout\,
	ena => \inst2|SHIFTIN[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|SHIFTIN\(1));

-- Location: FF_X37_Y13_N31
\inst2|OUTCNT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst2|OUTCNT~1_combout\,
	clrn => \inst2|ALT_INV_send_data~q\,
	ena => \inst2|output_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|OUTCNT\(2));

-- Location: FF_X39_Y13_N5
\inst2|SHIFTIN[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst2|SHIFTIN[2]~feeder_combout\,
	ena => \inst2|SHIFTIN[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|SHIFTIN\(2));

-- Location: LCCOMB_X37_Y13_N30
\inst2|OUTCNT~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|OUTCNT~1_combout\ = (!\inst2|OUTCNT\(3) & (\inst2|OUTCNT\(2) $ (((\inst2|OUTCNT\(1) & \inst2|OUTCNT\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|OUTCNT\(3),
	datab => \inst2|OUTCNT\(1),
	datac => \inst2|OUTCNT\(2),
	datad => \inst2|OUTCNT\(0),
	combout => \inst2|OUTCNT~1_combout\);

-- Location: FF_X39_Y13_N15
\inst2|SHIFTIN[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst2|SHIFTIN[3]~feeder_combout\,
	ena => \inst2|SHIFTIN[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|SHIFTIN\(3));

-- Location: FF_X39_Y13_N21
\inst2|SHIFTIN[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst2|SHIFTIN[4]~feeder_combout\,
	ena => \inst2|SHIFTIN[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|SHIFTIN\(4));

-- Location: FF_X39_Y13_N19
\inst2|SHIFTIN[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst2|SHIFTIN[5]~feeder_combout\,
	ena => \inst2|SHIFTIN[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|SHIFTIN\(5));

-- Location: FF_X39_Y13_N1
\inst2|SHIFTIN[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst2|SHIFTIN[6]~feeder_combout\,
	ena => \inst2|SHIFTIN[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|SHIFTIN\(6));

-- Location: FF_X39_Y13_N11
\inst2|SHIFTIN[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst2|SHIFTIN[7]~feeder_combout\,
	ena => \inst2|SHIFTIN[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|SHIFTIN\(7));

-- Location: FF_X39_Y13_N25
\inst2|SHIFTIN[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst2|SHIFTIN[8]~feeder_combout\,
	ena => \inst2|SHIFTIN[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|SHIFTIN\(8));

-- Location: LCCOMB_X39_Y13_N6
\inst2|PACKET_COUNT[1]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|PACKET_COUNT[1]~4_combout\ = (!\inst2|mouse_state.WAIT_OUTPUT_READY~q\ & (\inst2|READ_CHAR~q\ & !\inst2|LessThan1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|mouse_state.WAIT_OUTPUT_READY~q\,
	datac => \inst2|READ_CHAR~q\,
	datad => \inst2|LessThan1~0_combout\,
	combout => \inst2|PACKET_COUNT[1]~4_combout\);

-- Location: LCCOMB_X39_Y13_N12
\inst2|SHIFTIN[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|SHIFTIN[0]~2_combout\ = (!\inst2|mouse_state.WAIT_OUTPUT_READY~q\ & (\inst2|READ_CHAR~q\ & \inst2|LessThan1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|mouse_state.WAIT_OUTPUT_READY~q\,
	datab => \inst2|READ_CHAR~q\,
	datad => \inst2|LessThan1~0_combout\,
	combout => \inst2|SHIFTIN[0]~2_combout\);

-- Location: CLKCTRL_G11
\inst6|SYNC|vert_sync_out~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst6|SYNC|vert_sync_out~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst6|SYNC|vert_sync_out~clkctrl_outclk\);

-- Location: LCCOMB_X39_Y13_N22
\inst2|SHIFTIN[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|SHIFTIN[1]~feeder_combout\ = \inst2|SHIFTIN\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|SHIFTIN\(2),
	combout => \inst2|SHIFTIN[1]~feeder_combout\);

-- Location: LCCOMB_X39_Y13_N4
\inst2|SHIFTIN[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|SHIFTIN[2]~feeder_combout\ = \inst2|SHIFTIN\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|SHIFTIN\(3),
	combout => \inst2|SHIFTIN[2]~feeder_combout\);

-- Location: LCCOMB_X39_Y13_N14
\inst2|SHIFTIN[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|SHIFTIN[3]~feeder_combout\ = \inst2|SHIFTIN\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|SHIFTIN\(4),
	combout => \inst2|SHIFTIN[3]~feeder_combout\);

-- Location: LCCOMB_X39_Y13_N20
\inst2|SHIFTIN[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|SHIFTIN[4]~feeder_combout\ = \inst2|SHIFTIN\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|SHIFTIN\(5),
	combout => \inst2|SHIFTIN[4]~feeder_combout\);

-- Location: LCCOMB_X39_Y13_N18
\inst2|SHIFTIN[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|SHIFTIN[5]~feeder_combout\ = \inst2|SHIFTIN\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|SHIFTIN\(6),
	combout => \inst2|SHIFTIN[5]~feeder_combout\);

-- Location: LCCOMB_X39_Y13_N0
\inst2|SHIFTIN[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|SHIFTIN[6]~feeder_combout\ = \inst2|SHIFTIN\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|SHIFTIN\(7),
	combout => \inst2|SHIFTIN[6]~feeder_combout\);

-- Location: LCCOMB_X39_Y13_N10
\inst2|SHIFTIN[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|SHIFTIN[7]~feeder_combout\ = \inst2|SHIFTIN\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|SHIFTIN\(8),
	combout => \inst2|SHIFTIN[7]~feeder_combout\);

-- Location: LCCOMB_X39_Y13_N24
\inst2|SHIFTIN[8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|SHIFTIN[8]~feeder_combout\ = \mouse_data~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mouse_data~input_o\,
	combout => \inst2|SHIFTIN[8]~feeder_combout\);

-- Location: IOOBUF_X41_Y25_N2
\red_out~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|SYNC|red_out~q\,
	devoe => ww_devoe,
	o => ww_red_out);

-- Location: IOOBUF_X41_Y24_N23
\green_out~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|SYNC|green_out~q\,
	devoe => ww_devoe,
	o => ww_green_out);

-- Location: IOOBUF_X41_Y19_N9
\blue_out~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|SYNC|blue_out~q\,
	devoe => ww_devoe,
	o => ww_blue_out);

-- Location: IOOBUF_X41_Y18_N16
\horiz_sync_out~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|SYNC|horiz_sync_out~q\,
	devoe => ww_devoe,
	o => ww_horiz_sync_out);

-- Location: IOOBUF_X41_Y18_N23
\vert_sync_out~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|SYNC|vert_sync_out~q\,
	devoe => ww_devoe,
	o => ww_vert_sync_out);

-- Location: IOOBUF_X21_Y29_N2
\seg1[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|left_button~q\,
	devoe => ww_devoe,
	o => ww_seg1(0));

-- Location: IOOBUF_X41_Y12_N23
\mouse_data~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|MOUSE_DATA_BUF~q\,
	oe => \inst2|mouse_state.WAIT_OUTPUT_READY~q\,
	devoe => ww_devoe,
	o => mouse_data);

-- Location: IOOBUF_X41_Y11_N2
\mouse_clk~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|mouse_state.INHIBIT_TRANS~q\,
	oe => \inst2|WideOr4~combout\,
	devoe => ww_devoe,
	o => mouse_clk);

-- Location: IOOBUF_X5_Y29_N30
\pin_name2~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => pin_name2);

-- Location: IOIBUF_X41_Y11_N1
\mouse_clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => mouse_clk,
	o => \mouse_clk~input_o\);

-- Location: LCCOMB_X21_Y27_N6
\inst2|filter[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|filter[0]~feeder_combout\ = \mouse_clk~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mouse_clk~input_o\,
	combout => \inst2|filter[0]~feeder_combout\);

-- Location: FF_X21_Y27_N7
\inst2|filter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|filter[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|filter\(0));

-- Location: LCCOMB_X21_Y27_N16
\inst2|filter[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|filter[1]~feeder_combout\ = \inst2|filter\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|filter\(0),
	combout => \inst2|filter[1]~feeder_combout\);

-- Location: FF_X21_Y27_N17
\inst2|filter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|filter[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|filter\(1));

-- Location: LCCOMB_X21_Y27_N28
\inst2|filter[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|filter[2]~feeder_combout\ = \inst2|filter\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|filter\(1),
	combout => \inst2|filter[2]~feeder_combout\);

-- Location: FF_X21_Y27_N29
\inst2|filter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|filter[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|filter\(2));

-- Location: LCCOMB_X21_Y27_N2
\inst2|filter[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|filter[3]~feeder_combout\ = \inst2|filter\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|filter\(2),
	combout => \inst2|filter[3]~feeder_combout\);

-- Location: FF_X21_Y27_N3
\inst2|filter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|filter[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|filter\(3));

-- Location: LCCOMB_X21_Y27_N10
\inst2|filter[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|filter[4]~feeder_combout\ = \inst2|filter\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|filter\(3),
	combout => \inst2|filter[4]~feeder_combout\);

-- Location: FF_X21_Y27_N11
\inst2|filter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|filter[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|filter\(4));

-- Location: LCCOMB_X21_Y27_N12
\inst2|filter[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|filter[5]~feeder_combout\ = \inst2|filter\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|filter\(4),
	combout => \inst2|filter[5]~feeder_combout\);

-- Location: FF_X21_Y27_N13
\inst2|filter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|filter[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|filter\(5));

-- Location: LCCOMB_X21_Y27_N26
\inst2|filter[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|filter[6]~feeder_combout\ = \inst2|filter\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|filter\(5),
	combout => \inst2|filter[6]~feeder_combout\);

-- Location: FF_X21_Y27_N27
\inst2|filter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|filter[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|filter\(6));

-- Location: FF_X21_Y27_N5
\inst2|filter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst2|filter\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|filter\(7));

-- Location: LCCOMB_X21_Y27_N4
\inst2|MOUSE_CLK_FILTER~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|MOUSE_CLK_FILTER~0_combout\ = (\inst2|filter\(4) & ((\inst2|filter\(7)) # (!\inst2|filter\(2)))) # (!\inst2|filter\(4) & (\inst2|filter\(7) & !\inst2|filter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|filter\(4),
	datac => \inst2|filter\(7),
	datad => \inst2|filter\(2),
	combout => \inst2|MOUSE_CLK_FILTER~0_combout\);

-- Location: LCCOMB_X20_Y27_N12
\inst2|MOUSE_CLK_FILTER~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|MOUSE_CLK_FILTER~2_combout\ = (\inst2|filter\(0) & ((\inst2|MOUSE_CLK_FILTER~q\) # ((\inst2|filter\(1) & \inst2|filter\(6))))) # (!\inst2|filter\(0) & (\inst2|MOUSE_CLK_FILTER~q\ & ((\inst2|filter\(1)) # (\inst2|filter\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|filter\(0),
	datab => \inst2|filter\(1),
	datac => \inst2|filter\(6),
	datad => \inst2|MOUSE_CLK_FILTER~q\,
	combout => \inst2|MOUSE_CLK_FILTER~2_combout\);

-- Location: LCCOMB_X20_Y27_N0
\inst2|MOUSE_CLK_FILTER~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|MOUSE_CLK_FILTER~3_combout\ = (\inst2|MOUSE_CLK_FILTER~1_combout\ & ((\inst2|MOUSE_CLK_FILTER~q\) # ((\inst2|MOUSE_CLK_FILTER~0_combout\ & \inst2|MOUSE_CLK_FILTER~2_combout\)))) # (!\inst2|MOUSE_CLK_FILTER~1_combout\ & (\inst2|MOUSE_CLK_FILTER~q\ & 
-- ((\inst2|MOUSE_CLK_FILTER~0_combout\) # (\inst2|MOUSE_CLK_FILTER~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|MOUSE_CLK_FILTER~1_combout\,
	datab => \inst2|MOUSE_CLK_FILTER~0_combout\,
	datac => \inst2|MOUSE_CLK_FILTER~q\,
	datad => \inst2|MOUSE_CLK_FILTER~2_combout\,
	combout => \inst2|MOUSE_CLK_FILTER~3_combout\);

-- Location: FF_X20_Y27_N1
\inst2|MOUSE_CLK_FILTER\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|MOUSE_CLK_FILTER~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|MOUSE_CLK_FILTER~q\);

-- Location: CLKCTRL_G13
\inst2|MOUSE_CLK_FILTER~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst2|MOUSE_CLK_FILTER~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst2|MOUSE_CLK_FILTER~clkctrl_outclk\);

-- Location: LCCOMB_X37_Y13_N24
\inst2|SHIFTOUT[9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|SHIFTOUT[9]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst2|SHIFTOUT[9]~feeder_combout\);

-- Location: LCCOMB_X37_Y11_N28
\inst2|inhibit_wait_count[0]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inhibit_wait_count[0]~30_combout\ = \inst2|inhibit_wait_count\(0) $ (!\inst2|mouse_state.INHIBIT_TRANS~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inhibit_wait_count\(0),
	datad => \inst2|mouse_state.INHIBIT_TRANS~q\,
	combout => \inst2|inhibit_wait_count[0]~30_combout\);

-- Location: FF_X37_Y11_N29
\inst2|inhibit_wait_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|inhibit_wait_count[0]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inhibit_wait_count\(0));

-- Location: LCCOMB_X37_Y11_N8
\inst2|inhibit_wait_count[2]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inhibit_wait_count[2]~12_combout\ = (\inst2|inhibit_wait_count\(2) & (!\inst2|inhibit_wait_count[1]~11\)) # (!\inst2|inhibit_wait_count\(2) & ((\inst2|inhibit_wait_count[1]~11\) # (GND)))
-- \inst2|inhibit_wait_count[2]~13\ = CARRY((!\inst2|inhibit_wait_count[1]~11\) # (!\inst2|inhibit_wait_count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inhibit_wait_count\(2),
	datad => VCC,
	cin => \inst2|inhibit_wait_count[1]~11\,
	combout => \inst2|inhibit_wait_count[2]~12_combout\,
	cout => \inst2|inhibit_wait_count[2]~13\);

-- Location: FF_X37_Y11_N9
\inst2|inhibit_wait_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|inhibit_wait_count[2]~12_combout\,
	ena => \inst2|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inhibit_wait_count\(2));

-- Location: LCCOMB_X37_Y11_N14
\inst2|inhibit_wait_count[5]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inhibit_wait_count[5]~18_combout\ = (\inst2|inhibit_wait_count\(5) & (\inst2|inhibit_wait_count[4]~17\ $ (GND))) # (!\inst2|inhibit_wait_count\(5) & (!\inst2|inhibit_wait_count[4]~17\ & VCC))
-- \inst2|inhibit_wait_count[5]~19\ = CARRY((\inst2|inhibit_wait_count\(5) & !\inst2|inhibit_wait_count[4]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inhibit_wait_count\(5),
	datad => VCC,
	cin => \inst2|inhibit_wait_count[4]~17\,
	combout => \inst2|inhibit_wait_count[5]~18_combout\,
	cout => \inst2|inhibit_wait_count[5]~19\);

-- Location: FF_X37_Y11_N15
\inst2|inhibit_wait_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|inhibit_wait_count[5]~18_combout\,
	ena => \inst2|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inhibit_wait_count\(5));

-- Location: LCCOMB_X37_Y11_N16
\inst2|inhibit_wait_count[6]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inhibit_wait_count[6]~20_combout\ = (\inst2|inhibit_wait_count\(6) & (!\inst2|inhibit_wait_count[5]~19\)) # (!\inst2|inhibit_wait_count\(6) & ((\inst2|inhibit_wait_count[5]~19\) # (GND)))
-- \inst2|inhibit_wait_count[6]~21\ = CARRY((!\inst2|inhibit_wait_count[5]~19\) # (!\inst2|inhibit_wait_count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inhibit_wait_count\(6),
	datad => VCC,
	cin => \inst2|inhibit_wait_count[5]~19\,
	combout => \inst2|inhibit_wait_count[6]~20_combout\,
	cout => \inst2|inhibit_wait_count[6]~21\);

-- Location: FF_X37_Y11_N17
\inst2|inhibit_wait_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|inhibit_wait_count[6]~20_combout\,
	ena => \inst2|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inhibit_wait_count\(6));

-- Location: LCCOMB_X37_Y11_N18
\inst2|inhibit_wait_count[7]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inhibit_wait_count[7]~22_combout\ = (\inst2|inhibit_wait_count\(7) & (\inst2|inhibit_wait_count[6]~21\ $ (GND))) # (!\inst2|inhibit_wait_count\(7) & (!\inst2|inhibit_wait_count[6]~21\ & VCC))
-- \inst2|inhibit_wait_count[7]~23\ = CARRY((\inst2|inhibit_wait_count\(7) & !\inst2|inhibit_wait_count[6]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inhibit_wait_count\(7),
	datad => VCC,
	cin => \inst2|inhibit_wait_count[6]~21\,
	combout => \inst2|inhibit_wait_count[7]~22_combout\,
	cout => \inst2|inhibit_wait_count[7]~23\);

-- Location: FF_X37_Y11_N19
\inst2|inhibit_wait_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|inhibit_wait_count[7]~22_combout\,
	ena => \inst2|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inhibit_wait_count\(7));

-- Location: LCCOMB_X37_Y11_N20
\inst2|inhibit_wait_count[8]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inhibit_wait_count[8]~24_combout\ = (\inst2|inhibit_wait_count\(8) & (!\inst2|inhibit_wait_count[7]~23\)) # (!\inst2|inhibit_wait_count\(8) & ((\inst2|inhibit_wait_count[7]~23\) # (GND)))
-- \inst2|inhibit_wait_count[8]~25\ = CARRY((!\inst2|inhibit_wait_count[7]~23\) # (!\inst2|inhibit_wait_count\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inhibit_wait_count\(8),
	datad => VCC,
	cin => \inst2|inhibit_wait_count[7]~23\,
	combout => \inst2|inhibit_wait_count[8]~24_combout\,
	cout => \inst2|inhibit_wait_count[8]~25\);

-- Location: FF_X37_Y11_N21
\inst2|inhibit_wait_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|inhibit_wait_count[8]~24_combout\,
	ena => \inst2|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inhibit_wait_count\(8));

-- Location: LCCOMB_X37_Y11_N22
\inst2|inhibit_wait_count[9]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inhibit_wait_count[9]~26_combout\ = (\inst2|inhibit_wait_count\(9) & (\inst2|inhibit_wait_count[8]~25\ $ (GND))) # (!\inst2|inhibit_wait_count\(9) & (!\inst2|inhibit_wait_count[8]~25\ & VCC))
-- \inst2|inhibit_wait_count[9]~27\ = CARRY((\inst2|inhibit_wait_count\(9) & !\inst2|inhibit_wait_count[8]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inhibit_wait_count\(9),
	datad => VCC,
	cin => \inst2|inhibit_wait_count[8]~25\,
	combout => \inst2|inhibit_wait_count[9]~26_combout\,
	cout => \inst2|inhibit_wait_count[9]~27\);

-- Location: LCCOMB_X37_Y11_N24
\inst2|inhibit_wait_count[10]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inhibit_wait_count[10]~28_combout\ = \inst2|inhibit_wait_count[9]~27\ $ (\inst2|inhibit_wait_count\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inhibit_wait_count\(10),
	cin => \inst2|inhibit_wait_count[9]~27\,
	combout => \inst2|inhibit_wait_count[10]~28_combout\);

-- Location: FF_X37_Y11_N25
\inst2|inhibit_wait_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|inhibit_wait_count[10]~28_combout\,
	ena => \inst2|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inhibit_wait_count\(10));

-- Location: LCCOMB_X37_Y11_N2
\inst2|Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Selector0~0_combout\ = (\inst2|mouse_state.INHIBIT_TRANS~q\) # ((\inst2|inhibit_wait_count\(9) & \inst2|inhibit_wait_count\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inhibit_wait_count\(9),
	datac => \inst2|mouse_state.INHIBIT_TRANS~q\,
	datad => \inst2|inhibit_wait_count\(10),
	combout => \inst2|Selector0~0_combout\);

-- Location: FF_X37_Y11_N3
\inst2|mouse_state.INHIBIT_TRANS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|mouse_state.INHIBIT_TRANS~q\);

-- Location: FF_X37_Y11_N23
\inst2|inhibit_wait_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|inhibit_wait_count[9]~26_combout\,
	ena => \inst2|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inhibit_wait_count\(9));

-- Location: LCCOMB_X37_Y11_N30
\inst2|Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Selector1~0_combout\ = (\inst2|inhibit_wait_count\(10) & (\inst2|inhibit_wait_count\(9) & !\inst2|mouse_state.INHIBIT_TRANS~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inhibit_wait_count\(10),
	datac => \inst2|inhibit_wait_count\(9),
	datad => \inst2|mouse_state.INHIBIT_TRANS~q\,
	combout => \inst2|Selector1~0_combout\);

-- Location: FF_X37_Y11_N31
\inst2|mouse_state.LOAD_COMMAND\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|mouse_state.LOAD_COMMAND~q\);

-- Location: FF_X37_Y11_N27
\inst2|mouse_state.LOAD_COMMAND2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst2|mouse_state.LOAD_COMMAND~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|mouse_state.LOAD_COMMAND2~q\);

-- Location: LCCOMB_X37_Y13_N18
\inst2|OUTCNT~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|OUTCNT~3_combout\ = (!\inst2|OUTCNT\(0) & (((!\inst2|OUTCNT\(2) & !\inst2|OUTCNT\(1))) # (!\inst2|OUTCNT\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|OUTCNT\(2),
	datab => \inst2|OUTCNT\(3),
	datac => \inst2|OUTCNT\(0),
	datad => \inst2|OUTCNT\(1),
	combout => \inst2|OUTCNT~3_combout\);

-- Location: LCCOMB_X36_Y13_N14
\inst2|send_char~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|send_char~0_combout\ = (\inst2|send_char~q\) # ((\inst2|mouse_state.WAIT_OUTPUT_READY~q\ & \inst2|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|mouse_state.WAIT_OUTPUT_READY~q\,
	datac => \inst2|send_char~q\,
	datad => \inst2|LessThan0~0_combout\,
	combout => \inst2|send_char~0_combout\);

-- Location: FF_X36_Y13_N15
\inst2|send_char\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst2|send_char~0_combout\,
	clrn => \inst2|ALT_INV_send_data~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|send_char~q\);

-- Location: LCCOMB_X37_Y13_N4
\inst2|output_ready~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|output_ready~0_combout\ = (\inst2|mouse_state.WAIT_OUTPUT_READY~q\ & !\inst2|send_char~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|mouse_state.WAIT_OUTPUT_READY~q\,
	datad => \inst2|send_char~q\,
	combout => \inst2|output_ready~0_combout\);

-- Location: FF_X37_Y13_N19
\inst2|OUTCNT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst2|OUTCNT~3_combout\,
	clrn => \inst2|ALT_INV_send_data~q\,
	ena => \inst2|output_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|OUTCNT\(0));

-- Location: LCCOMB_X37_Y13_N28
\inst2|OUTCNT~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|OUTCNT~2_combout\ = (\inst2|OUTCNT\(3) & (!\inst2|OUTCNT\(2) & (!\inst2|OUTCNT\(1) & \inst2|OUTCNT\(0)))) # (!\inst2|OUTCNT\(3) & ((\inst2|OUTCNT\(1) $ (\inst2|OUTCNT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|OUTCNT\(2),
	datab => \inst2|OUTCNT\(3),
	datac => \inst2|OUTCNT\(1),
	datad => \inst2|OUTCNT\(0),
	combout => \inst2|OUTCNT~2_combout\);

-- Location: FF_X37_Y13_N29
\inst2|OUTCNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst2|OUTCNT~2_combout\,
	clrn => \inst2|ALT_INV_send_data~q\,
	ena => \inst2|output_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|OUTCNT\(1));

-- Location: LCCOMB_X37_Y13_N20
\inst2|OUTCNT~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|OUTCNT~0_combout\ = (\inst2|OUTCNT\(2) & (\inst2|OUTCNT\(1) & (!\inst2|OUTCNT\(3) & \inst2|OUTCNT\(0)))) # (!\inst2|OUTCNT\(2) & (!\inst2|OUTCNT\(1) & (\inst2|OUTCNT\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|OUTCNT\(2),
	datab => \inst2|OUTCNT\(1),
	datac => \inst2|OUTCNT\(3),
	datad => \inst2|OUTCNT\(0),
	combout => \inst2|OUTCNT~0_combout\);

-- Location: FF_X37_Y13_N21
\inst2|OUTCNT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst2|OUTCNT~0_combout\,
	clrn => \inst2|ALT_INV_send_data~q\,
	ena => \inst2|output_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|OUTCNT\(3));

-- Location: LCCOMB_X37_Y13_N2
\inst2|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~0_combout\ = (\inst2|OUTCNT\(3) & ((\inst2|OUTCNT\(2)) # (\inst2|OUTCNT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|OUTCNT\(2),
	datab => \inst2|OUTCNT\(3),
	datad => \inst2|OUTCNT\(1),
	combout => \inst2|LessThan0~0_combout\);

-- Location: LCCOMB_X37_Y13_N14
\inst2|output_ready~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|output_ready~feeder_combout\ = \inst2|LessThan0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|LessThan0~0_combout\,
	combout => \inst2|output_ready~feeder_combout\);

-- Location: FF_X37_Y13_N15
\inst2|output_ready\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst2|output_ready~feeder_combout\,
	clrn => \inst2|ALT_INV_send_data~q\,
	ena => \inst2|output_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|output_ready~q\);

-- Location: LCCOMB_X38_Y13_N24
\inst2|Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Selector3~0_combout\ = (\inst2|mouse_state.LOAD_COMMAND2~q\) # ((\inst2|mouse_state.WAIT_OUTPUT_READY~q\ & !\inst2|output_ready~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|mouse_state.LOAD_COMMAND2~q\,
	datac => \inst2|mouse_state.WAIT_OUTPUT_READY~q\,
	datad => \inst2|output_ready~q\,
	combout => \inst2|Selector3~0_combout\);

-- Location: FF_X38_Y13_N25
\inst2|mouse_state.WAIT_OUTPUT_READY\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|mouse_state.WAIT_OUTPUT_READY~q\);

-- Location: IOIBUF_X41_Y12_N22
\mouse_data~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => mouse_data,
	o => \mouse_data~input_o\);

-- Location: LCCOMB_X40_Y13_N30
\inst2|INCNT~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|INCNT~0_combout\ = (!\inst2|INCNT\(3) & (\inst2|INCNT\(2) $ (((\inst2|INCNT\(0) & \inst2|INCNT\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|INCNT\(3),
	datab => \inst2|INCNT\(0),
	datac => \inst2|INCNT\(2),
	datad => \inst2|INCNT\(1),
	combout => \inst2|INCNT~0_combout\);

-- Location: LCCOMB_X40_Y13_N8
\inst2|INCNT[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|INCNT[3]~1_combout\ = (!\inst2|mouse_state.WAIT_OUTPUT_READY~q\ & \inst2|READ_CHAR~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|mouse_state.WAIT_OUTPUT_READY~q\,
	datad => \inst2|READ_CHAR~q\,
	combout => \inst2|INCNT[3]~1_combout\);

-- Location: FF_X40_Y13_N31
\inst2|INCNT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst2|INCNT~0_combout\,
	ena => \inst2|INCNT[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|INCNT\(2));

-- Location: LCCOMB_X40_Y13_N28
\inst2|INCNT~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|INCNT~4_combout\ = (\inst2|INCNT\(1) & (\inst2|INCNT\(0) & (!\inst2|INCNT\(3) & \inst2|INCNT\(2)))) # (!\inst2|INCNT\(1) & (!\inst2|INCNT\(0) & (\inst2|INCNT\(3) & !\inst2|INCNT\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|INCNT\(1),
	datab => \inst2|INCNT\(0),
	datac => \inst2|INCNT\(3),
	datad => \inst2|INCNT\(2),
	combout => \inst2|INCNT~4_combout\);

-- Location: FF_X40_Y13_N29
\inst2|INCNT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst2|INCNT~4_combout\,
	ena => \inst2|INCNT[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|INCNT\(3));

-- Location: LCCOMB_X40_Y13_N26
\inst2|INCNT~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|INCNT~3_combout\ = (!\inst2|INCNT\(0) & (((!\inst2|INCNT\(1) & !\inst2|INCNT\(2))) # (!\inst2|INCNT\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|INCNT\(1),
	datab => \inst2|INCNT\(3),
	datac => \inst2|INCNT\(0),
	datad => \inst2|INCNT\(2),
	combout => \inst2|INCNT~3_combout\);

-- Location: FF_X40_Y13_N27
\inst2|INCNT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst2|INCNT~3_combout\,
	ena => \inst2|INCNT[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|INCNT\(0));

-- Location: LCCOMB_X40_Y13_N20
\inst2|INCNT~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|INCNT~2_combout\ = (!\inst2|INCNT\(3) & (\inst2|INCNT\(1) $ (\inst2|INCNT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|INCNT\(3),
	datac => \inst2|INCNT\(1),
	datad => \inst2|INCNT\(0),
	combout => \inst2|INCNT~2_combout\);

-- Location: FF_X40_Y13_N21
\inst2|INCNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst2|INCNT~2_combout\,
	ena => \inst2|INCNT[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|INCNT\(1));

-- Location: LCCOMB_X40_Y13_N18
\inst2|LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|LessThan1~0_combout\ = ((!\inst2|INCNT\(2) & (!\inst2|INCNT\(1) & !\inst2|INCNT\(0)))) # (!\inst2|INCNT\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|INCNT\(2),
	datab => \inst2|INCNT\(1),
	datac => \inst2|INCNT\(0),
	datad => \inst2|INCNT\(3),
	combout => \inst2|LessThan1~0_combout\);

-- Location: LCCOMB_X40_Y13_N12
\inst2|READ_CHAR~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|READ_CHAR~0_combout\ = (\inst2|READ_CHAR~q\ & ((\inst2|LessThan1~0_combout\))) # (!\inst2|READ_CHAR~q\ & (!\mouse_data~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mouse_data~input_o\,
	datac => \inst2|READ_CHAR~q\,
	datad => \inst2|LessThan1~0_combout\,
	combout => \inst2|READ_CHAR~0_combout\);

-- Location: FF_X40_Y13_N13
\inst2|READ_CHAR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst2|READ_CHAR~0_combout\,
	ena => \inst2|ALT_INV_mouse_state.WAIT_OUTPUT_READY~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|READ_CHAR~q\);

-- Location: LCCOMB_X38_Y13_N20
\inst2|iready_set~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|iready_set~0_combout\ = (\inst2|READ_CHAR~q\ & (((!\inst2|LessThan1~0_combout\)))) # (!\inst2|READ_CHAR~q\ & (\mouse_data~input_o\ & (\inst2|iready_set~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse_data~input_o\,
	datab => \inst2|READ_CHAR~q\,
	datac => \inst2|iready_set~q\,
	datad => \inst2|LessThan1~0_combout\,
	combout => \inst2|iready_set~0_combout\);

-- Location: FF_X38_Y13_N21
\inst2|iready_set\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst2|iready_set~0_combout\,
	ena => \inst2|ALT_INV_mouse_state.WAIT_OUTPUT_READY~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|iready_set~q\);

-- Location: LCCOMB_X38_Y13_N18
\inst2|Selector4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Selector4~0_combout\ = (\inst2|output_ready~q\ & ((\inst2|mouse_state.WAIT_OUTPUT_READY~q\) # ((\inst2|mouse_state.WAIT_CMD_ACK~q\ & !\inst2|iready_set~q\)))) # (!\inst2|output_ready~q\ & (((\inst2|mouse_state.WAIT_CMD_ACK~q\ & 
-- !\inst2|iready_set~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|output_ready~q\,
	datab => \inst2|mouse_state.WAIT_OUTPUT_READY~q\,
	datac => \inst2|mouse_state.WAIT_CMD_ACK~q\,
	datad => \inst2|iready_set~q\,
	combout => \inst2|Selector4~0_combout\);

-- Location: FF_X38_Y13_N19
\inst2|mouse_state.WAIT_CMD_ACK\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|Selector4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|mouse_state.WAIT_CMD_ACK~q\);

-- Location: LCCOMB_X38_Y13_N14
\inst2|mouse_state.INPUT_PACKETS~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|mouse_state.INPUT_PACKETS~0_combout\ = (\inst2|mouse_state.INPUT_PACKETS~q\) # ((\inst2|mouse_state.WAIT_CMD_ACK~q\ & \inst2|iready_set~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|mouse_state.WAIT_CMD_ACK~q\,
	datac => \inst2|mouse_state.INPUT_PACKETS~q\,
	datad => \inst2|iready_set~q\,
	combout => \inst2|mouse_state.INPUT_PACKETS~0_combout\);

-- Location: FF_X38_Y13_N15
\inst2|mouse_state.INPUT_PACKETS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|mouse_state.INPUT_PACKETS~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|mouse_state.INPUT_PACKETS~q\);

-- Location: LCCOMB_X37_Y11_N4
\inst2|Selector6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Selector6~0_combout\ = (\inst2|send_data~q\ & ((\inst2|mouse_state.INPUT_PACKETS~q\) # (!\inst2|mouse_state.INHIBIT_TRANS~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|mouse_state.INHIBIT_TRANS~q\,
	datac => \inst2|send_data~q\,
	datad => \inst2|mouse_state.INPUT_PACKETS~q\,
	combout => \inst2|Selector6~0_combout\);

-- Location: LCCOMB_X37_Y11_N0
\inst2|Selector6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Selector6~1_combout\ = (\inst2|mouse_state.LOAD_COMMAND~q\) # ((\inst2|Selector6~0_combout\) # (\inst2|mouse_state.LOAD_COMMAND2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|mouse_state.LOAD_COMMAND~q\,
	datab => \inst2|Selector6~0_combout\,
	datac => \inst2|mouse_state.LOAD_COMMAND2~q\,
	combout => \inst2|Selector6~1_combout\);

-- Location: FF_X36_Y13_N17
\inst2|send_data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst2|Selector6~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|send_data~q\);

-- Location: LCCOMB_X37_Y13_N6
\inst2|MOUSE_DATA_BUF~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|MOUSE_DATA_BUF~0_combout\ = (!\inst2|send_char~q\ & (\inst2|mouse_state.WAIT_OUTPUT_READY~q\ & !\inst2|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|send_char~q\,
	datab => \inst2|mouse_state.WAIT_OUTPUT_READY~q\,
	datad => \inst2|LessThan0~0_combout\,
	combout => \inst2|MOUSE_DATA_BUF~0_combout\);

-- Location: FF_X37_Y13_N25
\inst2|SHIFTOUT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst2|SHIFTOUT[9]~feeder_combout\,
	clrn => \inst2|ALT_INV_send_data~q\,
	ena => \inst2|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|SHIFTOUT\(9));

-- Location: LCCOMB_X37_Y13_N10
\inst2|SHIFTOUT[8]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|SHIFTOUT[8]~3_combout\ = !\inst2|SHIFTOUT\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|SHIFTOUT\(9),
	combout => \inst2|SHIFTOUT[8]~3_combout\);

-- Location: FF_X37_Y13_N11
\inst2|SHIFTOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst2|SHIFTOUT[8]~3_combout\,
	clrn => \inst2|ALT_INV_send_data~q\,
	ena => \inst2|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|SHIFTOUT\(8));

-- Location: LCCOMB_X37_Y13_N12
\inst2|SHIFTOUT[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|SHIFTOUT[7]~feeder_combout\ = \inst2|SHIFTOUT\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|SHIFTOUT\(8),
	combout => \inst2|SHIFTOUT[7]~feeder_combout\);

-- Location: FF_X37_Y13_N13
\inst2|SHIFTOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst2|SHIFTOUT[7]~feeder_combout\,
	clrn => \inst2|ALT_INV_send_data~q\,
	ena => \inst2|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|SHIFTOUT\(7));

-- Location: LCCOMB_X37_Y13_N26
\inst2|SHIFTOUT[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|SHIFTOUT[6]~feeder_combout\ = \inst2|SHIFTOUT\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|SHIFTOUT\(7),
	combout => \inst2|SHIFTOUT[6]~feeder_combout\);

-- Location: FF_X37_Y13_N27
\inst2|SHIFTOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst2|SHIFTOUT[6]~feeder_combout\,
	clrn => \inst2|ALT_INV_send_data~q\,
	ena => \inst2|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|SHIFTOUT\(6));

-- Location: FF_X37_Y13_N5
\inst2|SHIFTOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	asdata => \inst2|SHIFTOUT\(6),
	clrn => \inst2|ALT_INV_send_data~q\,
	sload => VCC,
	ena => \inst2|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|SHIFTOUT\(5));

-- Location: LCCOMB_X37_Y13_N16
\inst2|SHIFTOUT[4]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|SHIFTOUT[4]~2_combout\ = !\inst2|SHIFTOUT\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|SHIFTOUT\(5),
	combout => \inst2|SHIFTOUT[4]~2_combout\);

-- Location: FF_X37_Y13_N17
\inst2|SHIFTOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst2|SHIFTOUT[4]~2_combout\,
	clrn => \inst2|ALT_INV_send_data~q\,
	ena => \inst2|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|SHIFTOUT\(4));

-- Location: LCCOMB_X37_Y13_N8
\inst2|SHIFTOUT[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|SHIFTOUT[3]~1_combout\ = !\inst2|SHIFTOUT\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|SHIFTOUT\(4),
	combout => \inst2|SHIFTOUT[3]~1_combout\);

-- Location: FF_X37_Y13_N9
\inst2|SHIFTOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst2|SHIFTOUT[3]~1_combout\,
	clrn => \inst2|ALT_INV_send_data~q\,
	ena => \inst2|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|SHIFTOUT\(3));

-- Location: LCCOMB_X37_Y13_N22
\inst2|SHIFTOUT[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|SHIFTOUT[2]~0_combout\ = !\inst2|SHIFTOUT\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|SHIFTOUT\(3),
	combout => \inst2|SHIFTOUT[2]~0_combout\);

-- Location: FF_X37_Y13_N23
\inst2|SHIFTOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst2|SHIFTOUT[2]~0_combout\,
	clrn => \inst2|ALT_INV_send_data~q\,
	ena => \inst2|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|SHIFTOUT\(2));

-- Location: FF_X37_Y13_N7
\inst2|SHIFTOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	asdata => \inst2|SHIFTOUT\(2),
	clrn => \inst2|ALT_INV_send_data~q\,
	sload => VCC,
	ena => \inst2|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|SHIFTOUT\(1));

-- Location: FF_X37_Y13_N3
\inst2|MOUSE_DATA_BUF\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	asdata => \inst2|SHIFTOUT\(1),
	clrn => \inst2|ALT_INV_send_data~q\,
	sload => VCC,
	ena => \inst2|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|MOUSE_DATA_BUF~q\);

-- Location: LCCOMB_X37_Y11_N26
\inst2|WideOr4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|WideOr4~combout\ = (\inst2|mouse_state.LOAD_COMMAND~q\) # ((\inst2|mouse_state.LOAD_COMMAND2~q\) # (!\inst2|mouse_state.INHIBIT_TRANS~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|mouse_state.LOAD_COMMAND~q\,
	datac => \inst2|mouse_state.LOAD_COMMAND2~q\,
	datad => \inst2|mouse_state.INHIBIT_TRANS~q\,
	combout => \inst2|WideOr4~combout\);

-- Location: IOIBUF_X41_Y15_N1
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: PLL_2
\inst|altpll_component|auto_generated|pll1\ : cycloneiii_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 12,
	c0_initial => 1,
	c0_low => 12,
	c0_mode => "even",
	c0_ph => 0,
	c1_high => 0,
	c1_initial => 0,
	c1_low => 0,
	c1_mode => "bypass",
	c1_ph => 0,
	c1_use_casc_in => "off",
	c2_high => 0,
	c2_initial => 0,
	c2_low => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	c2_use_casc_in => "off",
	c3_high => 0,
	c3_initial => 0,
	c3_low => 0,
	c3_mode => "bypass",
	c3_ph => 0,
	c3_use_casc_in => "off",
	c4_high => 0,
	c4_initial => 0,
	c4_low => 0,
	c4_mode => "bypass",
	c4_ph => 0,
	c4_use_casc_in => "off",
	charge_pump_current_bits => 1,
	clk0_counter => "c0",
	clk0_divide_by => 2,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 1,
	clk0_phase_shift => "0",
	clk1_counter => "unused",
	clk1_divide_by => 0,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 0,
	clk1_phase_shift => "0",
	clk2_counter => "unused",
	clk2_divide_by => 0,
	clk2_duty_cycle => 50,
	clk2_multiply_by => 0,
	clk2_phase_shift => "0",
	clk3_counter => "unused",
	clk3_divide_by => 0,
	clk3_duty_cycle => 50,
	clk3_multiply_by => 0,
	clk3_phase_shift => "0",
	clk4_counter => "unused",
	clk4_divide_by => 0,
	clk4_duty_cycle => 50,
	clk4_multiply_by => 0,
	clk4_phase_shift => "0",
	compensate_clock => "clock0",
	inclk0_input_frequency => 20000,
	inclk1_input_frequency => 0,
	loop_filter_c_bits => 0,
	loop_filter_r_bits => 27,
	m => 12,
	m_initial => 1,
	m_ph => 0,
	n => 1,
	operation_mode => "normal",
	pfd_max => 200000,
	pfd_min => 3076,
	pll_compensation_delay => 3403,
	self_reset_on_loss_lock => "off",
	simulation_type => "timing",
	switch_over_type => "auto",
	vco_center => 1538,
	vco_divide_by => 0,
	vco_frequency_control => "auto",
	vco_max => 3333,
	vco_min => 1538,
	vco_multiply_by => 0,
	vco_phase_shift_step => 208,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	fbin => \inst|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \inst|altpll_component|auto_generated|pll1_INCLK_bus\,
	fbout => \inst|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \inst|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: CLKCTRL_G8
\inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\);

-- Location: LCCOMB_X30_Y26_N10
\inst6|SYNC|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|SYNC|Add0~0_combout\ = \inst6|SYNC|h_count\(0) $ (VCC)
-- \inst6|SYNC|Add0~1\ = CARRY(\inst6|SYNC|h_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|SYNC|h_count\(0),
	datad => VCC,
	combout => \inst6|SYNC|Add0~0_combout\,
	cout => \inst6|SYNC|Add0~1\);

-- Location: LCCOMB_X30_Y26_N12
\inst6|SYNC|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|SYNC|Add0~2_combout\ = (\inst6|SYNC|h_count\(1) & (!\inst6|SYNC|Add0~1\)) # (!\inst6|SYNC|h_count\(1) & ((\inst6|SYNC|Add0~1\) # (GND)))
-- \inst6|SYNC|Add0~3\ = CARRY((!\inst6|SYNC|Add0~1\) # (!\inst6|SYNC|h_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|SYNC|h_count\(1),
	datad => VCC,
	cin => \inst6|SYNC|Add0~1\,
	combout => \inst6|SYNC|Add0~2_combout\,
	cout => \inst6|SYNC|Add0~3\);

-- Location: LCCOMB_X30_Y26_N14
\inst6|SYNC|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|SYNC|Add0~4_combout\ = (\inst6|SYNC|h_count\(2) & (\inst6|SYNC|Add0~3\ $ (GND))) # (!\inst6|SYNC|h_count\(2) & (!\inst6|SYNC|Add0~3\ & VCC))
-- \inst6|SYNC|Add0~5\ = CARRY((\inst6|SYNC|h_count\(2) & !\inst6|SYNC|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|SYNC|h_count\(2),
	datad => VCC,
	cin => \inst6|SYNC|Add0~3\,
	combout => \inst6|SYNC|Add0~4_combout\,
	cout => \inst6|SYNC|Add0~5\);

-- Location: FF_X30_Y26_N15
\inst6|SYNC|h_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|SYNC|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|SYNC|h_count\(2));

-- Location: LCCOMB_X30_Y26_N16
\inst6|SYNC|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|SYNC|Add0~6_combout\ = (\inst6|SYNC|h_count\(3) & (!\inst6|SYNC|Add0~5\)) # (!\inst6|SYNC|h_count\(3) & ((\inst6|SYNC|Add0~5\) # (GND)))
-- \inst6|SYNC|Add0~7\ = CARRY((!\inst6|SYNC|Add0~5\) # (!\inst6|SYNC|h_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|SYNC|h_count\(3),
	datad => VCC,
	cin => \inst6|SYNC|Add0~5\,
	combout => \inst6|SYNC|Add0~6_combout\,
	cout => \inst6|SYNC|Add0~7\);

-- Location: FF_X30_Y26_N17
\inst6|SYNC|h_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|SYNC|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|SYNC|h_count\(3));

-- Location: LCCOMB_X30_Y26_N18
\inst6|SYNC|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|SYNC|Add0~8_combout\ = (\inst6|SYNC|h_count\(4) & (\inst6|SYNC|Add0~7\ $ (GND))) # (!\inst6|SYNC|h_count\(4) & (!\inst6|SYNC|Add0~7\ & VCC))
-- \inst6|SYNC|Add0~9\ = CARRY((\inst6|SYNC|h_count\(4) & !\inst6|SYNC|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|SYNC|h_count\(4),
	datad => VCC,
	cin => \inst6|SYNC|Add0~7\,
	combout => \inst6|SYNC|Add0~8_combout\,
	cout => \inst6|SYNC|Add0~9\);

-- Location: FF_X30_Y26_N19
\inst6|SYNC|h_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|SYNC|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|SYNC|h_count\(4));

-- Location: LCCOMB_X30_Y26_N20
\inst6|SYNC|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|SYNC|Add0~10_combout\ = (\inst6|SYNC|h_count\(5) & (!\inst6|SYNC|Add0~9\)) # (!\inst6|SYNC|h_count\(5) & ((\inst6|SYNC|Add0~9\) # (GND)))
-- \inst6|SYNC|Add0~11\ = CARRY((!\inst6|SYNC|Add0~9\) # (!\inst6|SYNC|h_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|SYNC|h_count\(5),
	datad => VCC,
	cin => \inst6|SYNC|Add0~9\,
	combout => \inst6|SYNC|Add0~10_combout\,
	cout => \inst6|SYNC|Add0~11\);

-- Location: LCCOMB_X30_Y26_N22
\inst6|SYNC|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|SYNC|Add0~12_combout\ = (\inst6|SYNC|h_count\(6) & (\inst6|SYNC|Add0~11\ $ (GND))) # (!\inst6|SYNC|h_count\(6) & (!\inst6|SYNC|Add0~11\ & VCC))
-- \inst6|SYNC|Add0~13\ = CARRY((\inst6|SYNC|h_count\(6) & !\inst6|SYNC|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|SYNC|h_count\(6),
	datad => VCC,
	cin => \inst6|SYNC|Add0~11\,
	combout => \inst6|SYNC|Add0~12_combout\,
	cout => \inst6|SYNC|Add0~13\);

-- Location: LCCOMB_X30_Y26_N24
\inst6|SYNC|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|SYNC|Add0~14_combout\ = (\inst6|SYNC|h_count\(7) & (!\inst6|SYNC|Add0~13\)) # (!\inst6|SYNC|h_count\(7) & ((\inst6|SYNC|Add0~13\) # (GND)))
-- \inst6|SYNC|Add0~15\ = CARRY((!\inst6|SYNC|Add0~13\) # (!\inst6|SYNC|h_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|SYNC|h_count\(7),
	datad => VCC,
	cin => \inst6|SYNC|Add0~13\,
	combout => \inst6|SYNC|Add0~14_combout\,
	cout => \inst6|SYNC|Add0~15\);

-- Location: FF_X30_Y26_N25
\inst6|SYNC|h_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|SYNC|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|SYNC|h_count\(7));

-- Location: LCCOMB_X30_Y26_N26
\inst6|SYNC|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|SYNC|Add0~16_combout\ = (\inst6|SYNC|h_count\(8) & (\inst6|SYNC|Add0~15\ $ (GND))) # (!\inst6|SYNC|h_count\(8) & (!\inst6|SYNC|Add0~15\ & VCC))
-- \inst6|SYNC|Add0~17\ = CARRY((\inst6|SYNC|h_count\(8) & !\inst6|SYNC|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|SYNC|h_count\(8),
	datad => VCC,
	cin => \inst6|SYNC|Add0~15\,
	combout => \inst6|SYNC|Add0~16_combout\,
	cout => \inst6|SYNC|Add0~17\);

-- Location: LCCOMB_X30_Y26_N28
\inst6|SYNC|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|SYNC|Add0~18_combout\ = \inst6|SYNC|Add0~17\ $ (\inst6|SYNC|h_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst6|SYNC|h_count\(9),
	cin => \inst6|SYNC|Add0~17\,
	combout => \inst6|SYNC|Add0~18_combout\);

-- Location: LCCOMB_X30_Y26_N6
\inst6|SYNC|h_count~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|SYNC|h_count~0_combout\ = (!\inst6|SYNC|Equal0~2_combout\ & \inst6|SYNC|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|SYNC|Equal0~2_combout\,
	datad => \inst6|SYNC|Add0~18_combout\,
	combout => \inst6|SYNC|h_count~0_combout\);

-- Location: FF_X30_Y26_N7
\inst6|SYNC|h_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|SYNC|h_count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|SYNC|h_count\(9));

-- Location: FF_X30_Y26_N23
\inst6|SYNC|h_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|SYNC|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|SYNC|h_count\(6));

-- Location: FF_X30_Y26_N11
\inst6|SYNC|h_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|SYNC|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|SYNC|h_count\(0));

-- Location: LCCOMB_X30_Y25_N2
\inst6|SYNC|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|SYNC|Equal0~0_combout\ = (\inst6|SYNC|h_count\(1) & (\inst6|SYNC|h_count\(3) & (\inst6|SYNC|h_count\(4) & \inst6|SYNC|h_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|SYNC|h_count\(1),
	datab => \inst6|SYNC|h_count\(3),
	datac => \inst6|SYNC|h_count\(4),
	datad => \inst6|SYNC|h_count\(0),
	combout => \inst6|SYNC|Equal0~0_combout\);

-- Location: LCCOMB_X29_Y26_N14
\inst6|SYNC|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|SYNC|Equal0~2_combout\ = (\inst6|SYNC|Equal0~1_combout\ & (!\inst6|SYNC|h_count\(6) & (\inst6|SYNC|Equal0~0_combout\ & \inst6|SYNC|h_count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|SYNC|Equal0~1_combout\,
	datab => \inst6|SYNC|h_count\(6),
	datac => \inst6|SYNC|Equal0~0_combout\,
	datad => \inst6|SYNC|h_count\(9),
	combout => \inst6|SYNC|Equal0~2_combout\);

-- Location: LCCOMB_X30_Y26_N8
\inst6|SYNC|h_count~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|SYNC|h_count~1_combout\ = (\inst6|SYNC|Add0~16_combout\ & !\inst6|SYNC|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|SYNC|Add0~16_combout\,
	datad => \inst6|SYNC|Equal0~2_combout\,
	combout => \inst6|SYNC|h_count~1_combout\);

-- Location: FF_X30_Y26_N9
\inst6|SYNC|h_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|SYNC|h_count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|SYNC|h_count\(8));

-- Location: LCCOMB_X29_Y25_N14
\inst6|SYNC|process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|SYNC|process_0~0_combout\ = ((!\inst6|SYNC|h_count\(7) & !\inst6|SYNC|h_count\(8))) # (!\inst6|SYNC|h_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|SYNC|h_count\(7),
	datac => \inst6|SYNC|h_count\(9),
	datad => \inst6|SYNC|h_count\(8),
	combout => \inst6|SYNC|process_0~0_combout\);

-- Location: FF_X29_Y25_N19
\inst6|SYNC|video_on_h\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst6|SYNC|process_0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|SYNC|video_on_h~q\);

-- Location: LCCOMB_X29_Y25_N8
\inst6|SYNC|process_0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|SYNC|process_0~12_combout\ = (((!\inst6|SYNC|h_count\(7) & !\inst6|SYNC|h_count\(8))) # (!\inst6|SYNC|v_count\(9))) # (!\inst6|SYNC|h_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|SYNC|h_count\(9),
	datab => \inst6|SYNC|h_count\(7),
	datac => \inst6|SYNC|v_count\(9),
	datad => \inst6|SYNC|h_count\(8),
	combout => \inst6|SYNC|process_0~12_combout\);

-- Location: LCCOMB_X30_Y25_N0
\inst6|SYNC|process_0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|SYNC|process_0~9_combout\ = ((!\inst6|SYNC|h_count\(2) & ((!\inst6|SYNC|h_count\(0)) # (!\inst6|SYNC|h_count\(1))))) # (!\inst6|SYNC|h_count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|SYNC|h_count\(1),
	datab => \inst6|SYNC|h_count\(3),
	datac => \inst6|SYNC|h_count\(2),
	datad => \inst6|SYNC|h_count\(0),
	combout => \inst6|SYNC|process_0~9_combout\);

-- Location: LCCOMB_X30_Y25_N20
\inst6|SYNC|process_0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|SYNC|process_0~10_combout\ = (\inst6|SYNC|h_count\(5) & \inst6|SYNC|h_count\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|SYNC|h_count\(5),
	datab => \inst6|SYNC|h_count\(4),
	combout => \inst6|SYNC|process_0~10_combout\);

-- Location: LCCOMB_X30_Y25_N30
\inst6|SYNC|process_0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|SYNC|process_0~11_combout\ = (!\inst6|SYNC|h_count\(6) & (!\inst6|SYNC|h_count\(8) & ((\inst6|SYNC|process_0~9_combout\) # (!\inst6|SYNC|process_0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|SYNC|h_count\(6),
	datab => \inst6|SYNC|process_0~9_combout\,
	datac => \inst6|SYNC|h_count\(8),
	datad => \inst6|SYNC|process_0~10_combout\,
	combout => \inst6|SYNC|process_0~11_combout\);

-- Location: LCCOMB_X29_Y25_N10
\inst6|SYNC|Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|SYNC|Equal1~1_combout\ = (\inst6|SYNC|Equal1~0_combout\) # ((\inst6|SYNC|h_count\(6)) # ((!\inst6|SYNC|Equal0~0_combout\) # (!\inst6|SYNC|h_count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|SYNC|Equal1~0_combout\,
	datab => \inst6|SYNC|h_count\(6),
	datac => \inst6|SYNC|h_count\(9),
	datad => \inst6|SYNC|Equal0~0_combout\,
	combout => \inst6|SYNC|Equal1~1_combout\);

-- Location: LCCOMB_X29_Y25_N22
\inst6|SYNC|v_count[5]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|SYNC|v_count[5]~1_combout\ = ((!\inst6|SYNC|process_0~8_combout\ & (!\inst6|SYNC|process_0~12_combout\ & !\inst6|SYNC|process_0~11_combout\))) # (!\inst6|SYNC|Equal1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|SYNC|process_0~8_combout\,
	datab => \inst6|SYNC|process_0~12_combout\,
	datac => \inst6|SYNC|process_0~11_combout\,
	datad => \inst6|SYNC|Equal1~1_combout\,
	combout => \inst6|SYNC|v_count[5]~1_combout\);

-- Location: LCCOMB_X29_Y25_N28
\inst6|SYNC|v_count[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|SYNC|v_count[2]~0_combout\ = (!\inst6|SYNC|Equal1~1_combout\ & ((\inst6|SYNC|process_0~8_combout\) # ((\inst6|SYNC|process_0~12_combout\) # (\inst6|SYNC|process_0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|SYNC|process_0~8_combout\,
	datab => \inst6|SYNC|process_0~12_combout\,
	datac => \inst6|SYNC|process_0~11_combout\,
	datad => \inst6|SYNC|Equal1~1_combout\,
	combout => \inst6|SYNC|v_count[2]~0_combout\);

-- Location: LCCOMB_X28_Y25_N4
\inst6|SYNC|v_count[9]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|SYNC|v_count[9]~2_combout\ = (\inst6|SYNC|Add1~18_combout\ & ((\inst6|SYNC|v_count[2]~0_combout\) # ((!\inst6|SYNC|v_count[5]~1_combout\ & \inst6|SYNC|v_count\(9))))) # (!\inst6|SYNC|Add1~18_combout\ & (!\inst6|SYNC|v_count[5]~1_combout\ & 
-- (\inst6|SYNC|v_count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|SYNC|Add1~18_combout\,
	datab => \inst6|SYNC|v_count[5]~1_combout\,
	datac => \inst6|SYNC|v_count\(9),
	datad => \inst6|SYNC|v_count[2]~0_combout\,
	combout => \inst6|SYNC|v_count[9]~2_combout\);

-- Location: FF_X28_Y25_N5
\inst6|SYNC|v_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|SYNC|v_count[9]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|SYNC|v_count\(9));

-- Location: LCCOMB_X28_Y25_N0
\inst6|SYNC|v_count[7]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|SYNC|v_count[7]~5_combout\ = (\inst6|SYNC|Add1~14_combout\ & ((\inst6|SYNC|v_count[2]~0_combout\) # ((!\inst6|SYNC|v_count[5]~1_combout\ & \inst6|SYNC|v_count\(7))))) # (!\inst6|SYNC|Add1~14_combout\ & (!\inst6|SYNC|v_count[5]~1_combout\ & 
-- (\inst6|SYNC|v_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|SYNC|Add1~14_combout\,
	datab => \inst6|SYNC|v_count[5]~1_combout\,
	datac => \inst6|SYNC|v_count\(7),
	datad => \inst6|SYNC|v_count[2]~0_combout\,
	combout => \inst6|SYNC|v_count[7]~5_combout\);

-- Location: FF_X28_Y25_N1
\inst6|SYNC|v_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|SYNC|v_count[7]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|SYNC|v_count\(7));

-- Location: LCCOMB_X28_Y25_N8
\inst6|SYNC|v_count[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|SYNC|v_count[4]~7_combout\ = (\inst6|SYNC|Add1~8_combout\ & ((\inst6|SYNC|v_count[2]~0_combout\) # ((!\inst6|SYNC|v_count[5]~1_combout\ & \inst6|SYNC|v_count\(4))))) # (!\inst6|SYNC|Add1~8_combout\ & (!\inst6|SYNC|v_count[5]~1_combout\ & 
-- (\inst6|SYNC|v_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|SYNC|Add1~8_combout\,
	datab => \inst6|SYNC|v_count[5]~1_combout\,
	datac => \inst6|SYNC|v_count\(4),
	datad => \inst6|SYNC|v_count[2]~0_combout\,
	combout => \inst6|SYNC|v_count[4]~7_combout\);

-- Location: FF_X28_Y25_N9
\inst6|SYNC|v_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|SYNC|v_count[4]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|SYNC|v_count\(4));

-- Location: LCCOMB_X28_Y25_N12
\inst6|SYNC|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|SYNC|Add1~0_combout\ = \inst6|SYNC|v_count\(0) $ (VCC)
-- \inst6|SYNC|Add1~1\ = CARRY(\inst6|SYNC|v_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|SYNC|v_count\(0),
	datad => VCC,
	combout => \inst6|SYNC|Add1~0_combout\,
	cout => \inst6|SYNC|Add1~1\);

-- Location: LCCOMB_X29_Y25_N12
\inst6|SYNC|v_count~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|SYNC|v_count~11_combout\ = (\inst6|SYNC|Add1~0_combout\ & ((\inst6|SYNC|process_0~8_combout\) # ((\inst6|SYNC|process_0~12_combout\) # (\inst6|SYNC|process_0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|SYNC|process_0~8_combout\,
	datab => \inst6|SYNC|process_0~12_combout\,
	datac => \inst6|SYNC|process_0~11_combout\,
	datad => \inst6|SYNC|Add1~0_combout\,
	combout => \inst6|SYNC|v_count~11_combout\);

-- Location: FF_X29_Y25_N13
\inst6|SYNC|v_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|SYNC|v_count~11_combout\,
	ena => \inst6|SYNC|v_count[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|SYNC|v_count\(0));

-- Location: LCCOMB_X28_Y25_N14
\inst6|SYNC|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|SYNC|Add1~2_combout\ = (\inst6|SYNC|v_count\(1) & (!\inst6|SYNC|Add1~1\)) # (!\inst6|SYNC|v_count\(1) & ((\inst6|SYNC|Add1~1\) # (GND)))
-- \inst6|SYNC|Add1~3\ = CARRY((!\inst6|SYNC|Add1~1\) # (!\inst6|SYNC|v_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|SYNC|v_count\(1),
	datad => VCC,
	cin => \inst6|SYNC|Add1~1\,
	combout => \inst6|SYNC|Add1~2_combout\,
	cout => \inst6|SYNC|Add1~3\);

-- Location: LCCOMB_X28_Y25_N16
\inst6|SYNC|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|SYNC|Add1~4_combout\ = (\inst6|SYNC|v_count\(2) & (\inst6|SYNC|Add1~3\ $ (GND))) # (!\inst6|SYNC|v_count\(2) & (!\inst6|SYNC|Add1~3\ & VCC))
-- \inst6|SYNC|Add1~5\ = CARRY((\inst6|SYNC|v_count\(2) & !\inst6|SYNC|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|SYNC|v_count\(2),
	datad => VCC,
	cin => \inst6|SYNC|Add1~3\,
	combout => \inst6|SYNC|Add1~4_combout\,
	cout => \inst6|SYNC|Add1~5\);

-- Location: LCCOMB_X29_Y25_N0
\inst6|SYNC|v_count[2]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|SYNC|v_count[2]~9_combout\ = (\inst6|SYNC|v_count[5]~1_combout\ & (\inst6|SYNC|v_count[2]~0_combout\ & ((\inst6|SYNC|Add1~4_combout\)))) # (!\inst6|SYNC|v_count[5]~1_combout\ & ((\inst6|SYNC|v_count\(2)) # ((\inst6|SYNC|v_count[2]~0_combout\ & 
-- \inst6|SYNC|Add1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|SYNC|v_count[5]~1_combout\,
	datab => \inst6|SYNC|v_count[2]~0_combout\,
	datac => \inst6|SYNC|v_count\(2),
	datad => \inst6|SYNC|Add1~4_combout\,
	combout => \inst6|SYNC|v_count[2]~9_combout\);

-- Location: FF_X29_Y25_N1
\inst6|SYNC|v_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|SYNC|v_count[2]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|SYNC|v_count\(2));

-- Location: LCCOMB_X29_Y25_N30
\inst6|SYNC|v_count[5]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|SYNC|v_count[5]~3_combout\ = (\inst6|SYNC|v_count[5]~1_combout\ & (\inst6|SYNC|Add1~10_combout\ & ((\inst6|SYNC|v_count[2]~0_combout\)))) # (!\inst6|SYNC|v_count[5]~1_combout\ & ((\inst6|SYNC|v_count\(5)) # ((\inst6|SYNC|Add1~10_combout\ & 
-- \inst6|SYNC|v_count[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|SYNC|v_count[5]~1_combout\,
	datab => \inst6|SYNC|Add1~10_combout\,
	datac => \inst6|SYNC|v_count\(5),
	datad => \inst6|SYNC|v_count[2]~0_combout\,
	combout => \inst6|SYNC|v_count[5]~3_combout\);

-- Location: FF_X29_Y25_N31
\inst6|SYNC|v_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|SYNC|v_count[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|SYNC|v_count\(5));

-- Location: LCCOMB_X28_Y25_N2
\inst6|SYNC|v_count[6]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|SYNC|v_count[6]~4_combout\ = (\inst6|SYNC|Add1~12_combout\ & ((\inst6|SYNC|v_count[2]~0_combout\) # ((!\inst6|SYNC|v_count[5]~1_combout\ & \inst6|SYNC|v_count\(6))))) # (!\inst6|SYNC|Add1~12_combout\ & (!\inst6|SYNC|v_count[5]~1_combout\ & 
-- (\inst6|SYNC|v_count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|SYNC|Add1~12_combout\,
	datab => \inst6|SYNC|v_count[5]~1_combout\,
	datac => \inst6|SYNC|v_count\(6),
	datad => \inst6|SYNC|v_count[2]~0_combout\,
	combout => \inst6|SYNC|v_count[6]~4_combout\);

-- Location: FF_X28_Y25_N3
\inst6|SYNC|v_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|SYNC|v_count[6]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|SYNC|v_count\(6));

-- Location: LCCOMB_X29_Y25_N16
\inst6|SYNC|LessThan7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|SYNC|LessThan7~0_combout\ = (\inst6|SYNC|v_count\(8) & (\inst6|SYNC|v_count\(7) & (\inst6|SYNC|v_count\(5) & \inst6|SYNC|v_count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|SYNC|v_count\(8),
	datab => \inst6|SYNC|v_count\(7),
	datac => \inst6|SYNC|v_count\(5),
	datad => \inst6|SYNC|v_count\(6),
	combout => \inst6|SYNC|LessThan7~0_combout\);

-- Location: LCCOMB_X29_Y25_N20
\inst6|SYNC|LessThan7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|SYNC|LessThan7~1_combout\ = (!\inst6|SYNC|v_count\(9) & !\inst6|SYNC|LessThan7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|SYNC|v_count\(9),
	datad => \inst6|SYNC|LessThan7~0_combout\,
	combout => \inst6|SYNC|LessThan7~1_combout\);

-- Location: FF_X29_Y25_N21
\inst6|SYNC|video_on_v\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|SYNC|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|SYNC|video_on_v~q\);

-- Location: LCCOMB_X29_Y25_N18
\inst6|SYNC|video_on~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|SYNC|video_on~0_combout\ = (\inst6|SYNC|video_on_h~q\ & \inst6|SYNC|video_on_v~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|SYNC|video_on_h~q\,
	datad => \inst6|SYNC|video_on_v~q\,
	combout => \inst6|SYNC|video_on~0_combout\);

-- Location: LCCOMB_X40_Y25_N16
\inst6|SYNC|red_out~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|SYNC|red_out~feeder_combout\ = \inst6|SYNC|video_on~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|SYNC|video_on~0_combout\,
	combout => \inst6|SYNC|red_out~feeder_combout\);

-- Location: FF_X40_Y25_N17
\inst6|SYNC|red_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|SYNC|red_out~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|SYNC|red_out~q\);

-- Location: LCCOMB_X39_Y13_N28
\inst2|left_button~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|left_button~1_combout\ = (\inst2|PACKET_COUNT\(0) & (!\inst2|mouse_state.WAIT_OUTPUT_READY~q\ & (\inst2|READ_CHAR~q\ & !\inst2|LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|PACKET_COUNT\(0),
	datab => \inst2|mouse_state.WAIT_OUTPUT_READY~q\,
	datac => \inst2|READ_CHAR~q\,
	datad => \inst2|LessThan1~0_combout\,
	combout => \inst2|left_button~1_combout\);

-- Location: LCCOMB_X39_Y13_N16
\inst2|PACKET_COUNT[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|PACKET_COUNT[1]~2_combout\ = \inst2|left_button~1_combout\ $ (\inst2|PACKET_COUNT\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|left_button~1_combout\,
	datac => \inst2|PACKET_COUNT\(1),
	combout => \inst2|PACKET_COUNT[1]~2_combout\);

-- Location: FF_X39_Y13_N17
\inst2|PACKET_COUNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst2|PACKET_COUNT[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|PACKET_COUNT\(1));

-- Location: LCCOMB_X39_Y13_N8
\inst2|left_button~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|left_button~0_combout\ = (\inst2|left_button~1_combout\ & ((\inst2|PACKET_COUNT\(1) & (\inst2|PACKET_CHAR1\(0))) # (!\inst2|PACKET_COUNT\(1) & ((\inst2|left_button~q\))))) # (!\inst2|left_button~1_combout\ & (((\inst2|left_button~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|PACKET_CHAR1\(0),
	datab => \inst2|left_button~1_combout\,
	datac => \inst2|left_button~q\,
	datad => \inst2|PACKET_COUNT\(1),
	combout => \inst2|left_button~0_combout\);

-- Location: FF_X39_Y13_N9
\inst2|left_button\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst2|left_button~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|left_button~q\);

-- Location: LCCOMB_X32_Y24_N20
\inst6|Left_Click_Motion[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Left_Click_Motion[0]~feeder_combout\ = \inst2|left_button~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|left_button~q\,
	combout => \inst6|Left_Click_Motion[0]~feeder_combout\);

-- Location: LCCOMB_X28_Y24_N6
\inst6|spawn_flag~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|spawn_flag~0_combout\ = !\inst6|spawn_flag~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|spawn_flag~q\,
	combout => \inst6|spawn_flag~0_combout\);

-- Location: FF_X28_Y24_N7
\inst6|spawn_flag\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst6|spawn_flag~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|spawn_flag~q\);

-- Location: FF_X32_Y24_N21
\inst6|Left_Click_Motion[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst6|Left_Click_Motion[0]~feeder_combout\,
	ena => \inst6|ALT_INV_spawn_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|Left_Click_Motion\(0));

-- Location: LCCOMB_X29_Y24_N12
\inst6|Ball_Y_pos[0]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Ball_Y_pos[0]~10_combout\ = (\inst6|Ball_Y_pos\(0) & (\inst6|Left_Click_Motion\(0) $ (VCC))) # (!\inst6|Ball_Y_pos\(0) & (\inst6|Left_Click_Motion\(0) & VCC))
-- \inst6|Ball_Y_pos[0]~11\ = CARRY((\inst6|Ball_Y_pos\(0) & \inst6|Left_Click_Motion\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Ball_Y_pos\(0),
	datab => \inst6|Left_Click_Motion\(0),
	datad => VCC,
	combout => \inst6|Ball_Y_pos[0]~10_combout\,
	cout => \inst6|Ball_Y_pos[0]~11\);

-- Location: LCCOMB_X29_Y24_N14
\inst6|Ball_Y_pos[1]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Ball_Y_pos[1]~12_combout\ = (\inst6|Ball_Y_pos\(1) & (!\inst6|Ball_Y_pos[0]~11\)) # (!\inst6|Ball_Y_pos\(1) & ((\inst6|Ball_Y_pos[0]~11\) # (GND)))
-- \inst6|Ball_Y_pos[1]~13\ = CARRY((!\inst6|Ball_Y_pos[0]~11\) # (!\inst6|Ball_Y_pos\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Ball_Y_pos\(1),
	datad => VCC,
	cin => \inst6|Ball_Y_pos[0]~11\,
	combout => \inst6|Ball_Y_pos[1]~12_combout\,
	cout => \inst6|Ball_Y_pos[1]~13\);

-- Location: FF_X29_Y24_N15
\inst6|Ball_Y_pos[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst6|Ball_Y_pos[1]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|Ball_Y_pos\(1));

-- Location: LCCOMB_X29_Y24_N16
\inst6|Ball_Y_pos[2]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Ball_Y_pos[2]~14_combout\ = (\inst6|Add6~0_combout\ & (\inst6|Ball_Y_pos[1]~13\ $ (GND))) # (!\inst6|Add6~0_combout\ & (!\inst6|Ball_Y_pos[1]~13\ & VCC))
-- \inst6|Ball_Y_pos[2]~15\ = CARRY((\inst6|Add6~0_combout\ & !\inst6|Ball_Y_pos[1]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add6~0_combout\,
	datad => VCC,
	cin => \inst6|Ball_Y_pos[1]~13\,
	combout => \inst6|Ball_Y_pos[2]~14_combout\,
	cout => \inst6|Ball_Y_pos[2]~15\);

-- Location: LCCOMB_X29_Y24_N18
\inst6|Ball_Y_pos[3]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Ball_Y_pos[3]~16_combout\ = (\inst6|Add6~2_combout\ & (!\inst6|Ball_Y_pos[2]~15\)) # (!\inst6|Add6~2_combout\ & ((\inst6|Ball_Y_pos[2]~15\) # (GND)))
-- \inst6|Ball_Y_pos[3]~17\ = CARRY((!\inst6|Ball_Y_pos[2]~15\) # (!\inst6|Add6~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add6~2_combout\,
	datad => VCC,
	cin => \inst6|Ball_Y_pos[2]~15\,
	combout => \inst6|Ball_Y_pos[3]~16_combout\,
	cout => \inst6|Ball_Y_pos[3]~17\);

-- Location: LCCOMB_X29_Y24_N22
\inst6|Ball_Y_pos[5]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Ball_Y_pos[5]~20_combout\ = (\inst6|Add6~6_combout\ & ((\inst6|Left_Click_Motion\(0) & (\inst6|Ball_Y_pos[4]~19\ & VCC)) # (!\inst6|Left_Click_Motion\(0) & (!\inst6|Ball_Y_pos[4]~19\)))) # (!\inst6|Add6~6_combout\ & ((\inst6|Left_Click_Motion\(0) & 
-- (!\inst6|Ball_Y_pos[4]~19\)) # (!\inst6|Left_Click_Motion\(0) & ((\inst6|Ball_Y_pos[4]~19\) # (GND)))))
-- \inst6|Ball_Y_pos[5]~21\ = CARRY((\inst6|Add6~6_combout\ & (!\inst6|Left_Click_Motion\(0) & !\inst6|Ball_Y_pos[4]~19\)) # (!\inst6|Add6~6_combout\ & ((!\inst6|Ball_Y_pos[4]~19\) # (!\inst6|Left_Click_Motion\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add6~6_combout\,
	datab => \inst6|Left_Click_Motion\(0),
	datad => VCC,
	cin => \inst6|Ball_Y_pos[4]~19\,
	combout => \inst6|Ball_Y_pos[5]~20_combout\,
	cout => \inst6|Ball_Y_pos[5]~21\);

-- Location: FF_X29_Y24_N23
\inst6|Ball_Y_pos[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst6|Ball_Y_pos[5]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|Ball_Y_pos\(5));

-- Location: FF_X29_Y24_N19
\inst6|Ball_Y_pos[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst6|Ball_Y_pos[3]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|Ball_Y_pos\(3));

-- Location: FF_X29_Y24_N17
\inst6|Ball_Y_pos[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst6|Ball_Y_pos[2]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|Ball_Y_pos\(2));

-- Location: LCCOMB_X28_Y24_N18
\inst6|Add6~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add6~10_combout\ = (\inst6|Ball_Y_pos\(7) & (!\inst6|Add6~9\)) # (!\inst6|Ball_Y_pos\(7) & ((\inst6|Add6~9\) # (GND)))
-- \inst6|Add6~11\ = CARRY((!\inst6|Add6~9\) # (!\inst6|Ball_Y_pos\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Ball_Y_pos\(7),
	datad => VCC,
	cin => \inst6|Add6~9\,
	combout => \inst6|Add6~10_combout\,
	cout => \inst6|Add6~11\);

-- Location: LCCOMB_X29_Y24_N24
\inst6|Ball_Y_pos[6]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Ball_Y_pos[6]~22_combout\ = ((\inst6|Add6~8_combout\ $ (\inst6|Left_Click_Motion\(0) $ (!\inst6|Ball_Y_pos[5]~21\)))) # (GND)
-- \inst6|Ball_Y_pos[6]~23\ = CARRY((\inst6|Add6~8_combout\ & ((\inst6|Left_Click_Motion\(0)) # (!\inst6|Ball_Y_pos[5]~21\))) # (!\inst6|Add6~8_combout\ & (\inst6|Left_Click_Motion\(0) & !\inst6|Ball_Y_pos[5]~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add6~8_combout\,
	datab => \inst6|Left_Click_Motion\(0),
	datad => VCC,
	cin => \inst6|Ball_Y_pos[5]~21\,
	combout => \inst6|Ball_Y_pos[6]~22_combout\,
	cout => \inst6|Ball_Y_pos[6]~23\);

-- Location: LCCOMB_X29_Y24_N26
\inst6|Ball_Y_pos[7]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Ball_Y_pos[7]~24_combout\ = (\inst6|Left_Click_Motion\(0) & ((\inst6|Add6~10_combout\ & (\inst6|Ball_Y_pos[6]~23\ & VCC)) # (!\inst6|Add6~10_combout\ & (!\inst6|Ball_Y_pos[6]~23\)))) # (!\inst6|Left_Click_Motion\(0) & ((\inst6|Add6~10_combout\ & 
-- (!\inst6|Ball_Y_pos[6]~23\)) # (!\inst6|Add6~10_combout\ & ((\inst6|Ball_Y_pos[6]~23\) # (GND)))))
-- \inst6|Ball_Y_pos[7]~25\ = CARRY((\inst6|Left_Click_Motion\(0) & (!\inst6|Add6~10_combout\ & !\inst6|Ball_Y_pos[6]~23\)) # (!\inst6|Left_Click_Motion\(0) & ((!\inst6|Ball_Y_pos[6]~23\) # (!\inst6|Add6~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Left_Click_Motion\(0),
	datab => \inst6|Add6~10_combout\,
	datad => VCC,
	cin => \inst6|Ball_Y_pos[6]~23\,
	combout => \inst6|Ball_Y_pos[7]~24_combout\,
	cout => \inst6|Ball_Y_pos[7]~25\);

-- Location: FF_X29_Y24_N27
\inst6|Ball_Y_pos[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst6|Ball_Y_pos[7]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|Ball_Y_pos\(7));

-- Location: LCCOMB_X28_Y24_N20
\inst6|Add6~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add6~12_combout\ = (\inst6|Ball_Y_pos\(8) & (\inst6|Add6~11\ $ (GND))) # (!\inst6|Ball_Y_pos\(8) & (!\inst6|Add6~11\ & VCC))
-- \inst6|Add6~13\ = CARRY((\inst6|Ball_Y_pos\(8) & !\inst6|Add6~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Ball_Y_pos\(8),
	datad => VCC,
	cin => \inst6|Add6~11\,
	combout => \inst6|Add6~12_combout\,
	cout => \inst6|Add6~13\);

-- Location: LCCOMB_X29_Y24_N28
\inst6|Ball_Y_pos[8]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Ball_Y_pos[8]~26_combout\ = ((\inst6|Left_Click_Motion\(0) $ (\inst6|Add6~12_combout\ $ (!\inst6|Ball_Y_pos[7]~25\)))) # (GND)
-- \inst6|Ball_Y_pos[8]~27\ = CARRY((\inst6|Left_Click_Motion\(0) & ((\inst6|Add6~12_combout\) # (!\inst6|Ball_Y_pos[7]~25\))) # (!\inst6|Left_Click_Motion\(0) & (\inst6|Add6~12_combout\ & !\inst6|Ball_Y_pos[7]~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Left_Click_Motion\(0),
	datab => \inst6|Add6~12_combout\,
	datad => VCC,
	cin => \inst6|Ball_Y_pos[7]~25\,
	combout => \inst6|Ball_Y_pos[8]~26_combout\,
	cout => \inst6|Ball_Y_pos[8]~27\);

-- Location: FF_X29_Y24_N29
\inst6|Ball_Y_pos[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst6|Ball_Y_pos[8]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|Ball_Y_pos\(8));

-- Location: LCCOMB_X28_Y24_N22
\inst6|Add6~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add6~14_combout\ = \inst6|Ball_Y_pos\(9) $ (\inst6|Add6~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Ball_Y_pos\(9),
	cin => \inst6|Add6~13\,
	combout => \inst6|Add6~14_combout\);

-- Location: LCCOMB_X29_Y24_N30
\inst6|Ball_Y_pos[9]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Ball_Y_pos[9]~28_combout\ = \inst6|Left_Click_Motion\(0) $ (\inst6|Ball_Y_pos[8]~27\ $ (\inst6|Add6~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Left_Click_Motion\(0),
	datad => \inst6|Add6~14_combout\,
	cin => \inst6|Ball_Y_pos[8]~27\,
	combout => \inst6|Ball_Y_pos[9]~28_combout\);

-- Location: FF_X29_Y24_N31
\inst6|Ball_Y_pos[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst6|Ball_Y_pos[9]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|Ball_Y_pos\(9));

-- Location: LCCOMB_X28_Y25_N10
\inst6|SYNC|v_count[8]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|SYNC|v_count[8]~6_combout\ = (\inst6|SYNC|Add1~16_combout\ & ((\inst6|SYNC|v_count[2]~0_combout\) # ((!\inst6|SYNC|v_count[5]~1_combout\ & \inst6|SYNC|v_count\(8))))) # (!\inst6|SYNC|Add1~16_combout\ & (!\inst6|SYNC|v_count[5]~1_combout\ & 
-- (\inst6|SYNC|v_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|SYNC|Add1~16_combout\,
	datab => \inst6|SYNC|v_count[5]~1_combout\,
	datac => \inst6|SYNC|v_count\(8),
	datad => \inst6|SYNC|v_count[2]~0_combout\,
	combout => \inst6|SYNC|v_count[8]~6_combout\);

-- Location: FF_X28_Y25_N11
\inst6|SYNC|v_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|SYNC|v_count[8]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|SYNC|v_count\(8));

-- Location: LCCOMB_X30_Y24_N28
\inst6|SYNC|pixel_row[8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|SYNC|pixel_row[8]~feeder_combout\ = \inst6|SYNC|v_count\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|SYNC|v_count\(8),
	combout => \inst6|SYNC|pixel_row[8]~feeder_combout\);

-- Location: FF_X30_Y24_N29
\inst6|SYNC|pixel_row[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|SYNC|pixel_row[8]~feeder_combout\,
	ena => \inst6|SYNC|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|SYNC|pixel_row\(8));

-- Location: LCCOMB_X28_Y25_N6
\inst6|SYNC|v_count[3]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|SYNC|v_count[3]~8_combout\ = (\inst6|SYNC|Add1~6_combout\ & ((\inst6|SYNC|v_count[2]~0_combout\) # ((!\inst6|SYNC|v_count[5]~1_combout\ & \inst6|SYNC|v_count\(3))))) # (!\inst6|SYNC|Add1~6_combout\ & (!\inst6|SYNC|v_count[5]~1_combout\ & 
-- (\inst6|SYNC|v_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|SYNC|Add1~6_combout\,
	datab => \inst6|SYNC|v_count[5]~1_combout\,
	datac => \inst6|SYNC|v_count\(3),
	datad => \inst6|SYNC|v_count[2]~0_combout\,
	combout => \inst6|SYNC|v_count[3]~8_combout\);

-- Location: FF_X28_Y25_N7
\inst6|SYNC|v_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|SYNC|v_count[3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|SYNC|v_count\(3));

-- Location: LCCOMB_X30_Y24_N22
\inst6|SYNC|pixel_row[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|SYNC|pixel_row[3]~feeder_combout\ = \inst6|SYNC|v_count\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|SYNC|v_count\(3),
	combout => \inst6|SYNC|pixel_row[3]~feeder_combout\);

-- Location: FF_X30_Y24_N23
\inst6|SYNC|pixel_row[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|SYNC|pixel_row[3]~feeder_combout\,
	ena => \inst6|SYNC|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|SYNC|pixel_row\(3));

-- Location: LCCOMB_X31_Y24_N20
\inst6|Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add2~0_combout\ = (\inst6|SYNC|pixel_row\(4) & (\inst6|SYNC|pixel_row\(3) $ (VCC))) # (!\inst6|SYNC|pixel_row\(4) & (\inst6|SYNC|pixel_row\(3) & VCC))
-- \inst6|Add2~1\ = CARRY((\inst6|SYNC|pixel_row\(4) & \inst6|SYNC|pixel_row\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|SYNC|pixel_row\(4),
	datab => \inst6|SYNC|pixel_row\(3),
	datad => VCC,
	combout => \inst6|Add2~0_combout\,
	cout => \inst6|Add2~1\);

-- Location: LCCOMB_X31_Y24_N24
\inst6|Add2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add2~4_combout\ = (\inst6|SYNC|pixel_row\(6) & (\inst6|Add2~3\ $ (GND))) # (!\inst6|SYNC|pixel_row\(6) & (!\inst6|Add2~3\ & VCC))
-- \inst6|Add2~5\ = CARRY((\inst6|SYNC|pixel_row\(6) & !\inst6|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|SYNC|pixel_row\(6),
	datad => VCC,
	cin => \inst6|Add2~3\,
	combout => \inst6|Add2~4_combout\,
	cout => \inst6|Add2~5\);

-- Location: LCCOMB_X31_Y24_N28
\inst6|Add2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add2~8_combout\ = (\inst6|SYNC|pixel_row\(8) & (\inst6|Add2~7\ $ (GND))) # (!\inst6|SYNC|pixel_row\(8) & (!\inst6|Add2~7\ & VCC))
-- \inst6|Add2~9\ = CARRY((\inst6|SYNC|pixel_row\(8) & !\inst6|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|SYNC|pixel_row\(8),
	datad => VCC,
	cin => \inst6|Add2~7\,
	combout => \inst6|Add2~8_combout\,
	cout => \inst6|Add2~9\);

-- Location: FF_X31_Y24_N27
\inst6|SYNC|pixel_row[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst6|SYNC|v_count\(2),
	sload => VCC,
	ena => \inst6|SYNC|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|SYNC|pixel_row\(2));

-- Location: LCCOMB_X29_Y25_N6
\inst6|SYNC|v_count~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|SYNC|v_count~10_combout\ = (\inst6|SYNC|Add1~2_combout\ & ((\inst6|SYNC|process_0~8_combout\) # ((\inst6|SYNC|process_0~12_combout\) # (\inst6|SYNC|process_0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|SYNC|process_0~8_combout\,
	datab => \inst6|SYNC|process_0~12_combout\,
	datac => \inst6|SYNC|process_0~11_combout\,
	datad => \inst6|SYNC|Add1~2_combout\,
	combout => \inst6|SYNC|v_count~10_combout\);

-- Location: FF_X29_Y25_N7
\inst6|SYNC|v_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|SYNC|v_count~10_combout\,
	ena => \inst6|SYNC|v_count[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|SYNC|v_count\(1));

-- Location: LCCOMB_X30_Y24_N24
\inst6|SYNC|pixel_row[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|SYNC|pixel_row[1]~feeder_combout\ = \inst6|SYNC|v_count\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|SYNC|v_count\(1),
	combout => \inst6|SYNC|pixel_row[1]~feeder_combout\);

-- Location: FF_X30_Y24_N25
\inst6|SYNC|pixel_row[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|SYNC|pixel_row[1]~feeder_combout\,
	ena => \inst6|SYNC|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|SYNC|pixel_row\(1));

-- Location: FF_X31_Y24_N29
\inst6|SYNC|pixel_row[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst6|SYNC|v_count\(0),
	sload => VCC,
	ena => \inst6|SYNC|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|SYNC|pixel_row\(0));

-- Location: LCCOMB_X31_Y24_N0
\inst6|LessThan2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan2~1_cout\ = CARRY((\inst6|Ball_Y_pos\(0) & !\inst6|SYNC|pixel_row\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Ball_Y_pos\(0),
	datab => \inst6|SYNC|pixel_row\(0),
	datad => VCC,
	cout => \inst6|LessThan2~1_cout\);

-- Location: LCCOMB_X31_Y24_N2
\inst6|LessThan2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan2~3_cout\ = CARRY((\inst6|Ball_Y_pos\(1) & (\inst6|SYNC|pixel_row\(1) & !\inst6|LessThan2~1_cout\)) # (!\inst6|Ball_Y_pos\(1) & ((\inst6|SYNC|pixel_row\(1)) # (!\inst6|LessThan2~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Ball_Y_pos\(1),
	datab => \inst6|SYNC|pixel_row\(1),
	datad => VCC,
	cin => \inst6|LessThan2~1_cout\,
	cout => \inst6|LessThan2~3_cout\);

-- Location: LCCOMB_X31_Y24_N4
\inst6|LessThan2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan2~5_cout\ = CARRY((\inst6|Ball_Y_pos\(2) & ((!\inst6|LessThan2~3_cout\) # (!\inst6|SYNC|pixel_row\(2)))) # (!\inst6|Ball_Y_pos\(2) & (!\inst6|SYNC|pixel_row\(2) & !\inst6|LessThan2~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Ball_Y_pos\(2),
	datab => \inst6|SYNC|pixel_row\(2),
	datad => VCC,
	cin => \inst6|LessThan2~3_cout\,
	cout => \inst6|LessThan2~5_cout\);

-- Location: LCCOMB_X31_Y24_N6
\inst6|LessThan2~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan2~7_cout\ = CARRY((\inst6|SYNC|pixel_row\(3) & (!\inst6|Ball_Y_pos\(3) & !\inst6|LessThan2~5_cout\)) # (!\inst6|SYNC|pixel_row\(3) & ((!\inst6|LessThan2~5_cout\) # (!\inst6|Ball_Y_pos\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|SYNC|pixel_row\(3),
	datab => \inst6|Ball_Y_pos\(3),
	datad => VCC,
	cin => \inst6|LessThan2~5_cout\,
	cout => \inst6|LessThan2~7_cout\);

-- Location: LCCOMB_X31_Y24_N8
\inst6|LessThan2~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan2~9_cout\ = CARRY((\inst6|Ball_Y_pos\(4) & ((!\inst6|LessThan2~7_cout\) # (!\inst6|Add2~0_combout\))) # (!\inst6|Ball_Y_pos\(4) & (!\inst6|Add2~0_combout\ & !\inst6|LessThan2~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Ball_Y_pos\(4),
	datab => \inst6|Add2~0_combout\,
	datad => VCC,
	cin => \inst6|LessThan2~7_cout\,
	cout => \inst6|LessThan2~9_cout\);

-- Location: LCCOMB_X31_Y24_N10
\inst6|LessThan2~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan2~11_cout\ = CARRY((\inst6|Add2~2_combout\ & ((!\inst6|LessThan2~9_cout\) # (!\inst6|Ball_Y_pos\(5)))) # (!\inst6|Add2~2_combout\ & (!\inst6|Ball_Y_pos\(5) & !\inst6|LessThan2~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add2~2_combout\,
	datab => \inst6|Ball_Y_pos\(5),
	datad => VCC,
	cin => \inst6|LessThan2~9_cout\,
	cout => \inst6|LessThan2~11_cout\);

-- Location: LCCOMB_X31_Y24_N12
\inst6|LessThan2~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan2~13_cout\ = CARRY((\inst6|Ball_Y_pos\(6) & ((!\inst6|LessThan2~11_cout\) # (!\inst6|Add2~4_combout\))) # (!\inst6|Ball_Y_pos\(6) & (!\inst6|Add2~4_combout\ & !\inst6|LessThan2~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Ball_Y_pos\(6),
	datab => \inst6|Add2~4_combout\,
	datad => VCC,
	cin => \inst6|LessThan2~11_cout\,
	cout => \inst6|LessThan2~13_cout\);

-- Location: LCCOMB_X31_Y24_N14
\inst6|LessThan2~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan2~15_cout\ = CARRY((\inst6|Add2~6_combout\ & ((!\inst6|LessThan2~13_cout\) # (!\inst6|Ball_Y_pos\(7)))) # (!\inst6|Add2~6_combout\ & (!\inst6|Ball_Y_pos\(7) & !\inst6|LessThan2~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add2~6_combout\,
	datab => \inst6|Ball_Y_pos\(7),
	datad => VCC,
	cin => \inst6|LessThan2~13_cout\,
	cout => \inst6|LessThan2~15_cout\);

-- Location: LCCOMB_X31_Y24_N16
\inst6|LessThan2~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan2~17_cout\ = CARRY((\inst6|Ball_Y_pos\(8) & ((!\inst6|LessThan2~15_cout\) # (!\inst6|Add2~8_combout\))) # (!\inst6|Ball_Y_pos\(8) & (!\inst6|Add2~8_combout\ & !\inst6|LessThan2~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Ball_Y_pos\(8),
	datab => \inst6|Add2~8_combout\,
	datad => VCC,
	cin => \inst6|LessThan2~15_cout\,
	cout => \inst6|LessThan2~17_cout\);

-- Location: LCCOMB_X31_Y24_N18
\inst6|LessThan2~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan2~18_combout\ = (\inst6|Add2~10_combout\ & (\inst6|LessThan2~17_cout\ & \inst6|Ball_Y_pos\(9))) # (!\inst6|Add2~10_combout\ & ((\inst6|LessThan2~17_cout\) # (\inst6|Ball_Y_pos\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add2~10_combout\,
	datad => \inst6|Ball_Y_pos\(9),
	cin => \inst6|LessThan2~17_cout\,
	combout => \inst6|LessThan2~18_combout\);

-- Location: LCCOMB_X30_Y26_N30
\inst6|SYNC|h_count~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|SYNC|h_count~2_combout\ = (!\inst6|SYNC|Equal0~2_combout\ & \inst6|SYNC|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|SYNC|Equal0~2_combout\,
	datad => \inst6|SYNC|Add0~10_combout\,
	combout => \inst6|SYNC|h_count~2_combout\);

-- Location: FF_X30_Y26_N31
\inst6|SYNC|h_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|SYNC|h_count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|SYNC|h_count\(5));

-- Location: FF_X30_Y25_N9
\inst6|SYNC|pixel_column[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst6|SYNC|h_count\(5),
	sload => VCC,
	ena => \inst6|SYNC|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|SYNC|pixel_column\(5));

-- Location: FF_X30_Y25_N21
\inst6|SYNC|pixel_column[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst6|SYNC|h_count\(3),
	sload => VCC,
	ena => \inst6|SYNC|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|SYNC|pixel_column\(3));

-- Location: LCCOMB_X30_Y25_N6
\inst6|Add0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add0~1_cout\ = CARRY((\inst6|SYNC|pixel_column\(4) & \inst6|SYNC|pixel_column\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|SYNC|pixel_column\(4),
	datab => \inst6|SYNC|pixel_column\(3),
	datad => VCC,
	cout => \inst6|Add0~1_cout\);

-- Location: LCCOMB_X30_Y25_N8
\inst6|Add0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add0~3_cout\ = CARRY((!\inst6|Add0~1_cout\) # (!\inst6|SYNC|pixel_column\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|SYNC|pixel_column\(5),
	datad => VCC,
	cin => \inst6|Add0~1_cout\,
	cout => \inst6|Add0~3_cout\);

-- Location: LCCOMB_X30_Y25_N10
\inst6|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add0~4_combout\ = (\inst6|SYNC|pixel_column\(6) & (\inst6|Add0~3_cout\ $ (GND))) # (!\inst6|SYNC|pixel_column\(6) & (!\inst6|Add0~3_cout\ & VCC))
-- \inst6|Add0~5\ = CARRY((\inst6|SYNC|pixel_column\(6) & !\inst6|Add0~3_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|SYNC|pixel_column\(6),
	datad => VCC,
	cin => \inst6|Add0~3_cout\,
	combout => \inst6|Add0~4_combout\,
	cout => \inst6|Add0~5\);

-- Location: LCCOMB_X31_Y24_N30
\inst6|Add2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add2~10_combout\ = \inst6|Add2~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst6|Add2~9\,
	combout => \inst6|Add2~10_combout\);

-- Location: FF_X30_Y25_N13
\inst6|SYNC|pixel_column[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst6|SYNC|h_count\(7),
	sload => VCC,
	ena => \inst6|SYNC|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|SYNC|pixel_column\(7));

-- Location: LCCOMB_X30_Y25_N18
\inst6|SYNC|pixel_column[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|SYNC|pixel_column[0]~feeder_combout\ = \inst6|SYNC|h_count\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|SYNC|h_count\(0),
	combout => \inst6|SYNC|pixel_column[0]~feeder_combout\);

-- Location: FF_X30_Y25_N19
\inst6|SYNC|pixel_column[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|SYNC|pixel_column[0]~feeder_combout\,
	ena => \inst6|SYNC|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|SYNC|pixel_column\(0));

-- Location: FF_X30_Y26_N13
\inst6|SYNC|h_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|SYNC|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|SYNC|h_count\(1));

-- Location: FF_X30_Y25_N29
\inst6|SYNC|pixel_column[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst6|SYNC|h_count\(1),
	sload => VCC,
	ena => \inst6|SYNC|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|SYNC|pixel_column\(1));

-- Location: LCCOMB_X30_Y25_N28
\inst6|SYNC|green_out~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|SYNC|green_out~0_combout\ = (\inst6|SYNC|pixel_column\(3) & ((\inst6|SYNC|pixel_column\(2)) # ((\inst6|SYNC|pixel_column\(0)) # (\inst6|SYNC|pixel_column\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|SYNC|pixel_column\(2),
	datab => \inst6|SYNC|pixel_column\(0),
	datac => \inst6|SYNC|pixel_column\(1),
	datad => \inst6|SYNC|pixel_column\(3),
	combout => \inst6|SYNC|green_out~0_combout\);

-- Location: FF_X30_Y25_N7
\inst6|SYNC|pixel_column[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst6|SYNC|h_count\(4),
	sload => VCC,
	ena => \inst6|SYNC|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|SYNC|pixel_column\(4));

-- Location: LCCOMB_X30_Y25_N24
\inst6|SYNC|green_out~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|SYNC|green_out~1_combout\ = (\inst6|SYNC|pixel_column\(6) & ((\inst6|SYNC|green_out~0_combout\) # ((\inst6|SYNC|pixel_column\(5)) # (\inst6|SYNC|pixel_column\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|SYNC|pixel_column\(6),
	datab => \inst6|SYNC|green_out~0_combout\,
	datac => \inst6|SYNC|pixel_column\(5),
	datad => \inst6|SYNC|pixel_column\(4),
	combout => \inst6|SYNC|green_out~1_combout\);

-- Location: FF_X30_Y25_N17
\inst6|SYNC|pixel_column[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst6|SYNC|h_count\(9),
	sload => VCC,
	ena => \inst6|SYNC|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|SYNC|pixel_column\(9));

-- Location: FF_X30_Y25_N15
\inst6|SYNC|pixel_column[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst6|SYNC|h_count\(8),
	sload => VCC,
	ena => \inst6|SYNC|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|SYNC|pixel_column\(8));

-- Location: FF_X29_Y24_N25
\inst6|Ball_Y_pos[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst6|Ball_Y_pos[6]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|Ball_Y_pos\(6));

-- Location: LCCOMB_X29_Y24_N4
\inst6|Add3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add3~4_combout\ = (\inst6|Ball_Y_pos\(6) & (\inst6|Add3~3\ $ (GND))) # (!\inst6|Ball_Y_pos\(6) & (!\inst6|Add3~3\ & VCC))
-- \inst6|Add3~5\ = CARRY((\inst6|Ball_Y_pos\(6) & !\inst6|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Ball_Y_pos\(6),
	datad => VCC,
	cin => \inst6|Add3~3\,
	combout => \inst6|Add3~4_combout\,
	cout => \inst6|Add3~5\);

-- Location: LCCOMB_X29_Y24_N6
\inst6|Add3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add3~6_combout\ = (\inst6|Ball_Y_pos\(7) & (!\inst6|Add3~5\)) # (!\inst6|Ball_Y_pos\(7) & ((\inst6|Add3~5\) # (GND)))
-- \inst6|Add3~7\ = CARRY((!\inst6|Add3~5\) # (!\inst6|Ball_Y_pos\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Ball_Y_pos\(7),
	datad => VCC,
	cin => \inst6|Add3~5\,
	combout => \inst6|Add3~6_combout\,
	cout => \inst6|Add3~7\);

-- Location: LCCOMB_X29_Y24_N8
\inst6|Add3~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add3~8_combout\ = (\inst6|Ball_Y_pos\(8) & (\inst6|Add3~7\ $ (GND))) # (!\inst6|Ball_Y_pos\(8) & (!\inst6|Add3~7\ & VCC))
-- \inst6|Add3~9\ = CARRY((\inst6|Ball_Y_pos\(8) & !\inst6|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Ball_Y_pos\(8),
	datad => VCC,
	cin => \inst6|Add3~7\,
	combout => \inst6|Add3~8_combout\,
	cout => \inst6|Add3~9\);

-- Location: LCCOMB_X29_Y24_N10
\inst6|Add3~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Add3~10_combout\ = \inst6|Ball_Y_pos\(9) $ (\inst6|Add3~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Ball_Y_pos\(9),
	cin => \inst6|Add3~9\,
	combout => \inst6|Add3~10_combout\);

-- Location: LCCOMB_X30_Y24_N18
\inst6|SYNC|green_out~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|SYNC|green_out~2_combout\ = (!\inst6|Add0~10_combout\ & (!\inst6|SYNC|pixel_column\(9) & (\inst6|Add0~8_combout\ & !\inst6|Add3~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add0~10_combout\,
	datab => \inst6|SYNC|pixel_column\(9),
	datac => \inst6|Add0~8_combout\,
	datad => \inst6|Add3~10_combout\,
	combout => \inst6|SYNC|green_out~2_combout\);

-- Location: LCCOMB_X30_Y24_N20
\inst6|SYNC|green_out~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|SYNC|green_out~3_combout\ = (\inst6|SYNC|green_out~2_combout\ & (((!\inst6|SYNC|pixel_column\(7) & !\inst6|SYNC|green_out~1_combout\)) # (!\inst6|SYNC|pixel_column\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|SYNC|pixel_column\(8),
	datab => \inst6|SYNC|pixel_column\(7),
	datac => \inst6|SYNC|green_out~1_combout\,
	datad => \inst6|SYNC|green_out~2_combout\,
	combout => \inst6|SYNC|green_out~3_combout\);

-- Location: LCCOMB_X30_Y24_N26
\inst6|SYNC|green_out~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|SYNC|green_out~4_combout\ = (\inst6|Add2~10_combout\) # (((!\inst6|Add0~6_combout\ & !\inst6|Add0~4_combout\)) # (!\inst6|SYNC|green_out~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add0~6_combout\,
	datab => \inst6|Add0~4_combout\,
	datac => \inst6|Add2~10_combout\,
	datad => \inst6|SYNC|green_out~3_combout\,
	combout => \inst6|SYNC|green_out~4_combout\);

-- Location: FF_X30_Y24_N1
\inst6|SYNC|pixel_row[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst6|SYNC|v_count\(5),
	sload => VCC,
	ena => \inst6|SYNC|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|SYNC|pixel_row\(5));

-- Location: FF_X31_Y24_N21
\inst6|SYNC|pixel_row[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst6|SYNC|v_count\(4),
	sload => VCC,
	ena => \inst6|SYNC|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|SYNC|pixel_row\(4));

-- Location: FF_X29_Y24_N13
\inst6|Ball_Y_pos[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst6|Ball_Y_pos[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|Ball_Y_pos\(0));

-- Location: LCCOMB_X30_Y24_N0
\inst6|LessThan3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan3~1_cout\ = CARRY((\inst6|SYNC|pixel_row\(0) & !\inst6|Ball_Y_pos\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|SYNC|pixel_row\(0),
	datab => \inst6|Ball_Y_pos\(0),
	datad => VCC,
	cout => \inst6|LessThan3~1_cout\);

-- Location: LCCOMB_X30_Y24_N2
\inst6|LessThan3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan3~3_cout\ = CARRY((\inst6|Ball_Y_pos\(1) & ((!\inst6|LessThan3~1_cout\) # (!\inst6|SYNC|pixel_row\(1)))) # (!\inst6|Ball_Y_pos\(1) & (!\inst6|SYNC|pixel_row\(1) & !\inst6|LessThan3~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Ball_Y_pos\(1),
	datab => \inst6|SYNC|pixel_row\(1),
	datad => VCC,
	cin => \inst6|LessThan3~1_cout\,
	cout => \inst6|LessThan3~3_cout\);

-- Location: LCCOMB_X30_Y24_N4
\inst6|LessThan3~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan3~5_cout\ = CARRY((\inst6|Ball_Y_pos\(2) & (\inst6|SYNC|pixel_row\(2) & !\inst6|LessThan3~3_cout\)) # (!\inst6|Ball_Y_pos\(2) & ((\inst6|SYNC|pixel_row\(2)) # (!\inst6|LessThan3~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Ball_Y_pos\(2),
	datab => \inst6|SYNC|pixel_row\(2),
	datad => VCC,
	cin => \inst6|LessThan3~3_cout\,
	cout => \inst6|LessThan3~5_cout\);

-- Location: LCCOMB_X30_Y24_N6
\inst6|LessThan3~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan3~7_cout\ = CARRY((\inst6|SYNC|pixel_row\(3) & (!\inst6|Ball_Y_pos\(3) & !\inst6|LessThan3~5_cout\)) # (!\inst6|SYNC|pixel_row\(3) & ((!\inst6|LessThan3~5_cout\) # (!\inst6|Ball_Y_pos\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|SYNC|pixel_row\(3),
	datab => \inst6|Ball_Y_pos\(3),
	datad => VCC,
	cin => \inst6|LessThan3~5_cout\,
	cout => \inst6|LessThan3~7_cout\);

-- Location: LCCOMB_X30_Y24_N8
\inst6|LessThan3~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan3~9_cout\ = CARRY((\inst6|Add3~0_combout\ & (\inst6|SYNC|pixel_row\(4) & !\inst6|LessThan3~7_cout\)) # (!\inst6|Add3~0_combout\ & ((\inst6|SYNC|pixel_row\(4)) # (!\inst6|LessThan3~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add3~0_combout\,
	datab => \inst6|SYNC|pixel_row\(4),
	datad => VCC,
	cin => \inst6|LessThan3~7_cout\,
	cout => \inst6|LessThan3~9_cout\);

-- Location: LCCOMB_X30_Y24_N10
\inst6|LessThan3~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan3~11_cout\ = CARRY((\inst6|Add3~2_combout\ & ((!\inst6|LessThan3~9_cout\) # (!\inst6|SYNC|pixel_row\(5)))) # (!\inst6|Add3~2_combout\ & (!\inst6|SYNC|pixel_row\(5) & !\inst6|LessThan3~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add3~2_combout\,
	datab => \inst6|SYNC|pixel_row\(5),
	datad => VCC,
	cin => \inst6|LessThan3~9_cout\,
	cout => \inst6|LessThan3~11_cout\);

-- Location: LCCOMB_X30_Y24_N12
\inst6|LessThan3~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan3~13_cout\ = CARRY((\inst6|SYNC|pixel_row\(6) & ((!\inst6|LessThan3~11_cout\) # (!\inst6|Add3~4_combout\))) # (!\inst6|SYNC|pixel_row\(6) & (!\inst6|Add3~4_combout\ & !\inst6|LessThan3~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|SYNC|pixel_row\(6),
	datab => \inst6|Add3~4_combout\,
	datad => VCC,
	cin => \inst6|LessThan3~11_cout\,
	cout => \inst6|LessThan3~13_cout\);

-- Location: LCCOMB_X30_Y24_N14
\inst6|LessThan3~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan3~15_cout\ = CARRY((\inst6|SYNC|pixel_row\(7) & (\inst6|Add3~6_combout\ & !\inst6|LessThan3~13_cout\)) # (!\inst6|SYNC|pixel_row\(7) & ((\inst6|Add3~6_combout\) # (!\inst6|LessThan3~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|SYNC|pixel_row\(7),
	datab => \inst6|Add3~6_combout\,
	datad => VCC,
	cin => \inst6|LessThan3~13_cout\,
	cout => \inst6|LessThan3~15_cout\);

-- Location: LCCOMB_X30_Y24_N16
\inst6|LessThan3~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LessThan3~16_combout\ = (\inst6|SYNC|pixel_row\(8) & ((!\inst6|Add3~8_combout\) # (!\inst6|LessThan3~15_cout\))) # (!\inst6|SYNC|pixel_row\(8) & (!\inst6|LessThan3~15_cout\ & !\inst6|Add3~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|SYNC|pixel_row\(8),
	datad => \inst6|Add3~8_combout\,
	cin => \inst6|LessThan3~15_cout\,
	combout => \inst6|LessThan3~16_combout\);

-- Location: LCCOMB_X30_Y24_N30
\inst6|SYNC|green_out~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|SYNC|green_out~5_combout\ = (\inst6|SYNC|video_on~0_combout\ & ((\inst6|LessThan2~18_combout\) # ((\inst6|SYNC|green_out~4_combout\) # (\inst6|LessThan3~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|SYNC|video_on~0_combout\,
	datab => \inst6|LessThan2~18_combout\,
	datac => \inst6|SYNC|green_out~4_combout\,
	datad => \inst6|LessThan3~16_combout\,
	combout => \inst6|SYNC|green_out~5_combout\);

-- Location: FF_X30_Y24_N3
\inst6|SYNC|green_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst6|SYNC|green_out~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|SYNC|green_out~q\);

-- Location: FF_X30_Y24_N31
\inst6|SYNC|blue_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|SYNC|green_out~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|SYNC|blue_out~q\);

-- Location: LCCOMB_X30_Y26_N0
\inst6|SYNC|process_0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|SYNC|process_0~1_combout\ = (\inst6|SYNC|h_count\(9) & (\inst6|SYNC|h_count\(7) & !\inst6|SYNC|h_count\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|SYNC|h_count\(9),
	datab => \inst6|SYNC|h_count\(7),
	datad => \inst6|SYNC|h_count\(8),
	combout => \inst6|SYNC|process_0~1_combout\);

-- Location: LCCOMB_X30_Y25_N26
\inst6|SYNC|process_0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|SYNC|process_0~2_combout\ = (\inst6|SYNC|h_count\(2)) # ((\inst6|SYNC|h_count\(1) & (!\inst6|SYNC|h_count\(5) & \inst6|SYNC|h_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|SYNC|h_count\(1),
	datab => \inst6|SYNC|h_count\(2),
	datac => \inst6|SYNC|h_count\(5),
	datad => \inst6|SYNC|h_count\(0),
	combout => \inst6|SYNC|process_0~2_combout\);

-- Location: LCCOMB_X29_Y26_N12
\inst6|SYNC|process_0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|SYNC|process_0~3_combout\ = (\inst6|SYNC|h_count\(4) & ((\inst6|SYNC|h_count\(3)) # (\inst6|SYNC|process_0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|SYNC|h_count\(3),
	datac => \inst6|SYNC|process_0~2_combout\,
	datad => \inst6|SYNC|h_count\(4),
	combout => \inst6|SYNC|process_0~3_combout\);

-- Location: LCCOMB_X30_Y26_N4
\inst6|SYNC|process_0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|SYNC|process_0~4_combout\ = ((\inst6|SYNC|h_count\(6) & (\inst6|SYNC|h_count\(5) & \inst6|SYNC|process_0~3_combout\)) # (!\inst6|SYNC|h_count\(6) & (!\inst6|SYNC|h_count\(5) & !\inst6|SYNC|process_0~3_combout\))) # 
-- (!\inst6|SYNC|process_0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|SYNC|h_count\(6),
	datab => \inst6|SYNC|process_0~1_combout\,
	datac => \inst6|SYNC|h_count\(5),
	datad => \inst6|SYNC|process_0~3_combout\,
	combout => \inst6|SYNC|process_0~4_combout\);

-- Location: FF_X30_Y26_N5
\inst6|SYNC|horiz_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|SYNC|process_0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|SYNC|horiz_sync~q\);

-- Location: LCCOMB_X37_Y22_N8
\inst6|SYNC|horiz_sync_out~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|SYNC|horiz_sync_out~feeder_combout\ = \inst6|SYNC|horiz_sync~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|SYNC|horiz_sync~q\,
	combout => \inst6|SYNC|horiz_sync_out~feeder_combout\);

-- Location: FF_X37_Y22_N9
\inst6|SYNC|horiz_sync_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|SYNC|horiz_sync_out~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|SYNC|horiz_sync_out~q\);

-- Location: LCCOMB_X29_Y25_N2
\inst6|SYNC|process_0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|SYNC|process_0~5_combout\ = ((\inst6|SYNC|v_count\(0) $ (!\inst6|SYNC|v_count\(1))) # (!\inst6|SYNC|v_count\(2))) # (!\inst6|SYNC|v_count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|SYNC|v_count\(0),
	datab => \inst6|SYNC|v_count\(3),
	datac => \inst6|SYNC|v_count\(2),
	datad => \inst6|SYNC|v_count\(1),
	combout => \inst6|SYNC|process_0~5_combout\);

-- Location: LCCOMB_X29_Y25_N4
\inst6|SYNC|process_0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|SYNC|process_0~6_combout\ = (\inst6|SYNC|v_count\(4)) # ((\inst6|SYNC|process_0~5_combout\) # ((\inst6|SYNC|v_count\(9)) # (!\inst6|SYNC|LessThan7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|SYNC|v_count\(4),
	datab => \inst6|SYNC|process_0~5_combout\,
	datac => \inst6|SYNC|v_count\(9),
	datad => \inst6|SYNC|LessThan7~0_combout\,
	combout => \inst6|SYNC|process_0~6_combout\);

-- Location: FF_X29_Y25_N5
\inst6|SYNC|vert_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|SYNC|process_0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|SYNC|vert_sync~q\);

-- Location: LCCOMB_X19_Y25_N8
\inst6|SYNC|vert_sync_out~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|SYNC|vert_sync_out~feeder_combout\ = \inst6|SYNC|vert_sync~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|SYNC|vert_sync~q\,
	combout => \inst6|SYNC|vert_sync_out~feeder_combout\);

-- Location: FF_X19_Y25_N9
\inst6|SYNC|vert_sync_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst6|SYNC|vert_sync_out~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|SYNC|vert_sync_out~q\);

-- Location: IOIBUF_X5_Y29_N29
\pin_name2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => pin_name2,
	o => \pin_name2~input_o\);
END structure;


