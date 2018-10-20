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
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "10/20/2018 16:55:01"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	lcd_example IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	rw : OUT std_logic;
	rs : OUT std_logic;
	e : OUT std_logic;
	lcd_on : OUT std_logic;
	lcd_blon : OUT std_logic;
	lcd_data : OUT std_logic_vector(7 DOWNTO 0);
	ledr : OUT std_logic
	);
END lcd_example;

-- Design Ports Information
-- rw	=>  Location: PIN_K4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- rs	=>  Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- e	=>  Location: PIN_K3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- lcd_on	=>  Location: PIN_L4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- lcd_blon	=>  Location: PIN_K2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- lcd_data[0]	=>  Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- lcd_data[1]	=>  Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- lcd_data[2]	=>  Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- lcd_data[3]	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- lcd_data[4]	=>  Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- lcd_data[5]	=>  Location: PIN_J3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- lcd_data[6]	=>  Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- lcd_data[7]	=>  Location: PIN_H3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ledr	=>  Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset	=>  Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF lcd_example IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_rw : std_logic;
SIGNAL ww_rs : std_logic;
SIGNAL ww_e : std_logic;
SIGNAL ww_lcd_on : std_logic;
SIGNAL ww_lcd_blon : std_logic;
SIGNAL ww_lcd_data : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_ledr : std_logic;
SIGNAL \U1|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \U1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U0|LessThan0~7_combout\ : std_logic;
SIGNAL \U0|LessThan4~0_combout\ : std_logic;
SIGNAL \U0|LessThan4~1_combout\ : std_logic;
SIGNAL \U0|LessThan4~2_combout\ : std_logic;
SIGNAL \U0|Selector46~5_combout\ : std_logic;
SIGNAL \U0|LessThan6~0_combout\ : std_logic;
SIGNAL \U0|LessThan5~0_combout\ : std_logic;
SIGNAL \U0|LessThan5~1_combout\ : std_logic;
SIGNAL \U0|LessThan5~2_combout\ : std_logic;
SIGNAL \U0|Selector46~6_combout\ : std_logic;
SIGNAL \U0|rw~1_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \U0|state~11_combout\ : std_logic;
SIGNAL \U0|clk_count[3]~3_combout\ : std_logic;
SIGNAL \U0|Selector18~0_combout\ : std_logic;
SIGNAL \U0|Selector7~0_combout\ : std_logic;
SIGNAL \U0|Selector2~0_combout\ : std_logic;
SIGNAL \U0|Selector43~6_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \lcd_enable~regout\ : std_logic;
SIGNAL \U0|Selector24~0_combout\ : std_logic;
SIGNAL \U0|Add0~0_combout\ : std_logic;
SIGNAL \U0|Selector32~0_combout\ : std_logic;
SIGNAL \U0|Add0~1\ : std_logic;
SIGNAL \U0|Add0~2_combout\ : std_logic;
SIGNAL \U0|Selector31~0_combout\ : std_logic;
SIGNAL \U0|Add0~3\ : std_logic;
SIGNAL \U0|Add0~4_combout\ : std_logic;
SIGNAL \U0|Selector30~0_combout\ : std_logic;
SIGNAL \U0|Add0~5\ : std_logic;
SIGNAL \U0|Add0~6_combout\ : std_logic;
SIGNAL \U0|Selector29~0_combout\ : std_logic;
SIGNAL \U0|Add0~7\ : std_logic;
SIGNAL \U0|Add0~8_combout\ : std_logic;
SIGNAL \U0|Selector28~0_combout\ : std_logic;
SIGNAL \U0|Add0~9\ : std_logic;
SIGNAL \U0|Add0~10_combout\ : std_logic;
SIGNAL \U0|Selector27~0_combout\ : std_logic;
SIGNAL \U0|Add0~11\ : std_logic;
SIGNAL \U0|Add0~12_combout\ : std_logic;
SIGNAL \U0|Selector26~0_combout\ : std_logic;
SIGNAL \U0|Add0~13\ : std_logic;
SIGNAL \U0|Add0~14_combout\ : std_logic;
SIGNAL \U0|Selector25~0_combout\ : std_logic;
SIGNAL \U0|Add0~15\ : std_logic;
SIGNAL \U0|Add0~16_combout\ : std_logic;
SIGNAL \U0|LessThan6~1_combout\ : std_logic;
SIGNAL \U0|LessThan6~2_combout\ : std_logic;
SIGNAL \U0|Selector17~0_combout\ : std_logic;
SIGNAL \U0|Add0~25\ : std_logic;
SIGNAL \U0|Add0~26_combout\ : std_logic;
SIGNAL \U0|Selector19~0_combout\ : std_logic;
SIGNAL \U0|Add0~27\ : std_logic;
SIGNAL \U0|Add0~29\ : std_logic;
SIGNAL \U0|Add0~30_combout\ : std_logic;
SIGNAL \U0|Add0~28_combout\ : std_logic;
SIGNAL \U0|Add0~31\ : std_logic;
SIGNAL \U0|Add0~32_combout\ : std_logic;
SIGNAL \U0|LessThan8~0_combout\ : std_logic;
SIGNAL \U0|Selector23~0_combout\ : std_logic;
SIGNAL \U0|Add0~17\ : std_logic;
SIGNAL \U0|Add0~18_combout\ : std_logic;
SIGNAL \U0|Add0~19\ : std_logic;
SIGNAL \U0|Add0~20_combout\ : std_logic;
SIGNAL \U0|LessThan1~0_combout\ : std_logic;
SIGNAL \U0|LessThan6~3_combout\ : std_logic;
SIGNAL \U0|LessThan8~1_combout\ : std_logic;
SIGNAL \U0|LessThan8~2_combout\ : std_logic;
SIGNAL \U0|LessThan7~5_combout\ : std_logic;
SIGNAL \U0|LessThan7~6_combout\ : std_logic;
SIGNAL \reset~combout\ : std_logic;
SIGNAL \U0|Selector3~0_combout\ : std_logic;
SIGNAL \U0|Add0~55\ : std_logic;
SIGNAL \U0|Add0~57\ : std_logic;
SIGNAL \U0|Add0~59\ : std_logic;
SIGNAL \U0|Add0~61\ : std_logic;
SIGNAL \U0|Add0~62_combout\ : std_logic;
SIGNAL \U0|rw~2_combout\ : std_logic;
SIGNAL \U0|Selector1~1_combout\ : std_logic;
SIGNAL \U0|Add0~33\ : std_logic;
SIGNAL \U0|Add0~34_combout\ : std_logic;
SIGNAL \U0|Selector15~0_combout\ : std_logic;
SIGNAL \U0|Add0~35\ : std_logic;
SIGNAL \U0|Add0~36_combout\ : std_logic;
SIGNAL \U0|Selector14~0_combout\ : std_logic;
SIGNAL \U0|Add0~37\ : std_logic;
SIGNAL \U0|Add0~38_combout\ : std_logic;
SIGNAL \U0|Selector13~0_combout\ : std_logic;
SIGNAL \U0|Add0~39\ : std_logic;
SIGNAL \U0|Add0~40_combout\ : std_logic;
SIGNAL \U0|Selector12~0_combout\ : std_logic;
SIGNAL \U0|LessThan0~0_combout\ : std_logic;
SIGNAL \U0|Selector16~0_combout\ : std_logic;
SIGNAL \U0|LessThan0~1_combout\ : std_logic;
SIGNAL \U0|LessThan0~2_combout\ : std_logic;
SIGNAL \U0|Add0~22_combout\ : std_logic;
SIGNAL \U0|Selector21~0_combout\ : std_logic;
SIGNAL \U0|LessThan0~3_combout\ : std_logic;
SIGNAL \U0|LessThan0~4_combout\ : std_logic;
SIGNAL \U0|LessThan0~5_combout\ : std_logic;
SIGNAL \U0|LessThan0~6_combout\ : std_logic;
SIGNAL \U0|LessThan0~10_combout\ : std_logic;
SIGNAL \U0|state~14_combout\ : std_logic;
SIGNAL \U0|state.power_up~regout\ : std_logic;
SIGNAL \U0|LessThan3~3_combout\ : std_logic;
SIGNAL \U0|LessThan8~4_combout\ : std_logic;
SIGNAL \U0|LessThan8~5_combout\ : std_logic;
SIGNAL \U0|Add0~60_combout\ : std_logic;
SIGNAL \U0|Selector11~0_combout\ : std_logic;
SIGNAL \U0|Add0~41\ : std_logic;
SIGNAL \U0|Add0~42_combout\ : std_logic;
SIGNAL \U0|Selector10~0_combout\ : std_logic;
SIGNAL \U0|Add0~43\ : std_logic;
SIGNAL \U0|Add0~45\ : std_logic;
SIGNAL \U0|Add0~46_combout\ : std_logic;
SIGNAL \U0|Add0~44_combout\ : std_logic;
SIGNAL \U0|LessThan7~1_combout\ : std_logic;
SIGNAL \U0|Add0~58_combout\ : std_logic;
SIGNAL \U0|Add0~56_combout\ : std_logic;
SIGNAL \U0|busy~4_combout\ : std_logic;
SIGNAL \U0|Add0~50_combout\ : std_logic;
SIGNAL \U0|Add0~52_combout\ : std_logic;
SIGNAL \U0|LessThan7~2_combout\ : std_logic;
SIGNAL \U0|LessThan7~3_combout\ : std_logic;
SIGNAL \U0|LessThan8~6_combout\ : std_logic;
SIGNAL \U0|clk_count[3]~2_combout\ : std_logic;
SIGNAL \U0|clk_count[3]~4_combout\ : std_logic;
SIGNAL \U0|Selector9~0_combout\ : std_logic;
SIGNAL \U0|Add0~47\ : std_logic;
SIGNAL \U0|Add0~48_combout\ : std_logic;
SIGNAL \U0|Selector8~0_combout\ : std_logic;
SIGNAL \U0|Add0~49\ : std_logic;
SIGNAL \U0|Add0~51\ : std_logic;
SIGNAL \U0|Add0~53\ : std_logic;
SIGNAL \U0|Add0~54_combout\ : std_logic;
SIGNAL \U0|Selector5~0_combout\ : std_logic;
SIGNAL \U0|Selector4~0_combout\ : std_logic;
SIGNAL \U0|LessThan0~9_combout\ : std_logic;
SIGNAL \U0|LessThan9~2_combout\ : std_logic;
SIGNAL \U0|LessThan9~3_combout\ : std_logic;
SIGNAL \U0|LessThan9~4_combout\ : std_logic;
SIGNAL \U0|LessThan9~5_combout\ : std_logic;
SIGNAL \U0|state~13_combout\ : std_logic;
SIGNAL \U0|state.send~regout\ : std_logic;
SIGNAL \U0|Selector1~0_combout\ : std_logic;
SIGNAL \U0|Selector44~0_combout\ : std_logic;
SIGNAL \U0|LessThan7~0_combout\ : std_logic;
SIGNAL \U0|LessThan7~4_combout\ : std_logic;
SIGNAL \U0|LessThan3~4_combout\ : std_logic;
SIGNAL \U0|LessThan3~5_combout\ : std_logic;
SIGNAL \U0|LessThan3~6_combout\ : std_logic;
SIGNAL \U0|LessThan3~2_combout\ : std_logic;
SIGNAL \U0|state~6_combout\ : std_logic;
SIGNAL \U0|state~7_combout\ : std_logic;
SIGNAL \U0|busy~7_combout\ : std_logic;
SIGNAL \U0|state~12_combout\ : std_logic;
SIGNAL \U0|state.initialize~regout\ : std_logic;
SIGNAL \U0|clk_count[3]~0_combout\ : std_logic;
SIGNAL \U0|clk_count[3]~1_combout\ : std_logic;
SIGNAL \U0|Selector22~0_combout\ : std_logic;
SIGNAL \U0|Add0~21\ : std_logic;
SIGNAL \U0|Add0~23\ : std_logic;
SIGNAL \U0|Add0~24_combout\ : std_logic;
SIGNAL \U0|Selector20~0_combout\ : std_logic;
SIGNAL \U0|LessThan9~0_combout\ : std_logic;
SIGNAL \U0|Selector6~0_combout\ : std_logic;
SIGNAL \U0|LessThan0~8_combout\ : std_logic;
SIGNAL \U0|LessThan9~1_combout\ : std_logic;
SIGNAL \U0|state~8_combout\ : std_logic;
SIGNAL \U0|state~9_combout\ : std_logic;
SIGNAL \U0|state~10_combout\ : std_logic;
SIGNAL \U0|state.ready~regout\ : std_logic;
SIGNAL \char[1]~5_combout\ : std_logic;
SIGNAL \U0|busy~regout\ : std_logic;
SIGNAL \char[5]~15_combout\ : std_logic;
SIGNAL \char[1]~6\ : std_logic;
SIGNAL \char[2]~8\ : std_logic;
SIGNAL \char[3]~9_combout\ : std_logic;
SIGNAL \char[3]~10\ : std_logic;
SIGNAL \char[4]~11_combout\ : std_logic;
SIGNAL \char[4]~12\ : std_logic;
SIGNAL \char[5]~13_combout\ : std_logic;
SIGNAL \char[0]~16_combout\ : std_logic;
SIGNAL \char[2]~7_combout\ : std_logic;
SIGNAL \U0|Selector37~0_combout\ : std_logic;
SIGNAL \U0|rw~0_combout\ : std_logic;
SIGNAL \U0|rw~regout\ : std_logic;
SIGNAL \U0|Selector36~0_combout\ : std_logic;
SIGNAL \U0|rs~feeder_combout\ : std_logic;
SIGNAL \U0|rs~regout\ : std_logic;
SIGNAL \U0|Selector46~0_combout\ : std_logic;
SIGNAL \U0|LessThan10~3_combout\ : std_logic;
SIGNAL \U0|LessThan9~6_combout\ : std_logic;
SIGNAL \U0|LessThan12~0_combout\ : std_logic;
SIGNAL \U0|LessThan12~1_combout\ : std_logic;
SIGNAL \U0|LessThan12~2_combout\ : std_logic;
SIGNAL \U0|LessThan10~0_combout\ : std_logic;
SIGNAL \U0|Selector46~3_combout\ : std_logic;
SIGNAL \U0|LessThan10~1_combout\ : std_logic;
SIGNAL \U0|LessThan10~2_combout\ : std_logic;
SIGNAL \U0|Selector46~1_combout\ : std_logic;
SIGNAL \U0|LessThan11~0_combout\ : std_logic;
SIGNAL \U0|LessThan11~1_combout\ : std_logic;
SIGNAL \U0|Selector46~2_combout\ : std_logic;
SIGNAL \U0|Selector46~4_combout\ : std_logic;
SIGNAL \U0|LessThan8~3_combout\ : std_logic;
SIGNAL \U0|LessThan7~7_combout\ : std_logic;
SIGNAL \U0|Selector46~8_combout\ : std_logic;
SIGNAL \U0|LessThan4~3_combout\ : std_logic;
SIGNAL \U0|busy~8_combout\ : std_logic;
SIGNAL \U0|Selector46~7_combout\ : std_logic;
SIGNAL \U0|Selector46~9_combout\ : std_logic;
SIGNAL \U0|LessThan2~0_combout\ : std_logic;
SIGNAL \U0|LessThan2~1_combout\ : std_logic;
SIGNAL \U0|LessThan2~2_combout\ : std_logic;
SIGNAL \U0|LessThan3~7_combout\ : std_logic;
SIGNAL \U0|Selector43~2_combout\ : std_logic;
SIGNAL \U0|LessThan7~8_combout\ : std_logic;
SIGNAL \U0|LessThan1~1_combout\ : std_logic;
SIGNAL \U0|LessThan1~2_combout\ : std_logic;
SIGNAL \U0|Selector46~10_combout\ : std_logic;
SIGNAL \U0|Selector46~11_combout\ : std_logic;
SIGNAL \U0|Selector46~12_combout\ : std_logic;
SIGNAL \U0|e~regout\ : std_logic;
SIGNAL \U0|Selector45~4_combout\ : std_logic;
SIGNAL \U0|busy~5_combout\ : std_logic;
SIGNAL \U0|busy~6_combout\ : std_logic;
SIGNAL \U0|Selector45~2_combout\ : std_logic;
SIGNAL \U0|LessThan5~3_combout\ : std_logic;
SIGNAL \U0|Selector45~3_combout\ : std_logic;
SIGNAL \U0|lcd_data[5]~0_combout\ : std_logic;
SIGNAL \U0|LessThan7~9_combout\ : std_logic;
SIGNAL \U0|Selector44~3_combout\ : std_logic;
SIGNAL \U0|Selector44~2_combout\ : std_logic;
SIGNAL \U0|Selector44~4_combout\ : std_logic;
SIGNAL \U0|LessThan2~3_combout\ : std_logic;
SIGNAL \U0|Selector43~3_combout\ : std_logic;
SIGNAL \U0|Selector44~1_combout\ : std_logic;
SIGNAL \U0|Selector43~4_combout\ : std_logic;
SIGNAL \U0|Selector43~5_combout\ : std_logic;
SIGNAL \U0|Selector42~2_combout\ : std_logic;
SIGNAL \U0|Selector41~2_combout\ : std_logic;
SIGNAL \U0|Selector41~3_combout\ : std_logic;
SIGNAL \U0|Selector41~4_combout\ : std_logic;
SIGNAL \U0|Selector40~2_combout\ : std_logic;
SIGNAL \U0|Selector39~0_combout\ : std_logic;
SIGNAL \U0|Selector38~0_combout\ : std_logic;
SIGNAL \ledr~0_combout\ : std_logic;
SIGNAL \ledr~reg0_regout\ : std_logic;
SIGNAL \U0|lcd_data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U0|clk_count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \U1|altsyncram_component|auto_generated|q_a\ : std_logic_vector(9 DOWNTO 0);
SIGNAL char : std_logic_vector(5 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_reset <= reset;
rw <= ww_rw;
rs <= ww_rs;
e <= ww_e;
lcd_on <= ww_lcd_on;
lcd_blon <= ww_lcd_blon;
lcd_data <= ww_lcd_data;
ledr <= ww_ledr;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\U1|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (char(5) & char(4) & char(3) & char(2) & char(1) & char(0));

\U1|altsyncram_component|auto_generated|q_a\(0) <= \U1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\U1|altsyncram_component|auto_generated|q_a\(1) <= \U1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\U1|altsyncram_component|auto_generated|q_a\(2) <= \U1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\U1|altsyncram_component|auto_generated|q_a\(3) <= \U1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\U1|altsyncram_component|auto_generated|q_a\(4) <= \U1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\U1|altsyncram_component|auto_generated|q_a\(5) <= \U1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\U1|altsyncram_component|auto_generated|q_a\(6) <= \U1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\U1|altsyncram_component|auto_generated|q_a\(7) <= \U1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\U1|altsyncram_component|auto_generated|q_a\(8) <= \U1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\U1|altsyncram_component|auto_generated|q_a\(9) <= \U1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

-- Location: LCFF_X29_Y19_N31
\U0|clk_count[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|Selector18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|clk_count\(14));

-- Location: LCFF_X31_Y18_N7
\U0|clk_count[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|clk_count\(25));

-- Location: LCCOMB_X31_Y18_N12
\U0|LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|LessThan0~7_combout\ = (!\U0|clk_count\(25) & (!\U0|clk_count\(24) & (!\U0|clk_count\(22) & !\U0|clk_count\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|clk_count\(25),
	datab => \U0|clk_count\(24),
	datac => \U0|clk_count\(22),
	datad => \U0|clk_count\(23),
	combout => \U0|LessThan0~7_combout\);

-- Location: LCFF_X28_Y19_N17
\U0|clk_count[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|clk_count\(30));

-- Location: LCCOMB_X31_Y19_N6
\U0|LessThan4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|LessThan4~0_combout\ = (!\U0|Add0~14_combout\ & (((!\U0|Add0~12_combout\) # (!\U0|Add0~8_combout\)) # (!\U0|Add0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add0~10_combout\,
	datab => \U0|Add0~8_combout\,
	datac => \U0|Add0~14_combout\,
	datad => \U0|Add0~12_combout\,
	combout => \U0|LessThan4~0_combout\);

-- Location: LCCOMB_X31_Y19_N4
\U0|LessThan4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|LessThan4~1_combout\ = ((!\U0|Add0~16_combout\) # (!\U0|Add0~20_combout\)) # (!\U0|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add0~18_combout\,
	datac => \U0|Add0~20_combout\,
	datad => \U0|Add0~16_combout\,
	combout => \U0|LessThan4~1_combout\);

-- Location: LCCOMB_X31_Y19_N10
\U0|LessThan4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|LessThan4~2_combout\ = ((!\U0|Add0~22_combout\ & ((\U0|LessThan4~0_combout\) # (\U0|LessThan4~1_combout\)))) # (!\U0|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|LessThan4~0_combout\,
	datab => \U0|Add0~22_combout\,
	datac => \U0|LessThan4~1_combout\,
	datad => \U0|Add0~24_combout\,
	combout => \U0|LessThan4~2_combout\);

-- Location: LCCOMB_X28_Y18_N14
\U0|Selector46~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|Selector46~5_combout\ = (!\U0|state.send~regout\ & (!\U0|LessThan4~3_combout\ & (\U0|state.initialize~regout\ & !\U0|LessThan2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|state.send~regout\,
	datab => \U0|LessThan4~3_combout\,
	datac => \U0|state.initialize~regout\,
	datad => \U0|LessThan2~3_combout\,
	combout => \U0|Selector46~5_combout\);

-- Location: LCCOMB_X31_Y19_N20
\U0|LessThan6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|LessThan6~0_combout\ = (!\U0|Add0~6_combout\ & (!\U0|Add0~4_combout\ & !\U0|Add0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add0~6_combout\,
	datac => \U0|Add0~4_combout\,
	datad => \U0|Add0~8_combout\,
	combout => \U0|LessThan6~0_combout\);

-- Location: LCCOMB_X31_Y19_N14
\U0|LessThan5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|LessThan5~0_combout\ = (!\U0|Add0~14_combout\ & (((\U0|LessThan6~0_combout\) # (!\U0|Add0~10_combout\)) # (!\U0|Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add0~12_combout\,
	datab => \U0|Add0~10_combout\,
	datac => \U0|LessThan6~0_combout\,
	datad => \U0|Add0~14_combout\,
	combout => \U0|LessThan5~0_combout\);

-- Location: LCCOMB_X31_Y19_N16
\U0|LessThan5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|LessThan5~1_combout\ = (!\U0|Add0~20_combout\ & (!\U0|Add0~18_combout\ & ((\U0|LessThan5~0_combout\) # (!\U0|Add0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add0~20_combout\,
	datab => \U0|Add0~16_combout\,
	datac => \U0|LessThan5~0_combout\,
	datad => \U0|Add0~18_combout\,
	combout => \U0|LessThan5~1_combout\);

-- Location: LCCOMB_X28_Y18_N16
\U0|LessThan5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|LessThan5~2_combout\ = (!\U0|Add0~60_combout\ & (((\U0|LessThan5~1_combout\) # (!\U0|Add0~22_combout\)) # (!\U0|Add0~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add0~24_combout\,
	datab => \U0|Add0~22_combout\,
	datac => \U0|Add0~60_combout\,
	datad => \U0|LessThan5~1_combout\,
	combout => \U0|LessThan5~2_combout\);

-- Location: LCCOMB_X28_Y18_N20
\U0|Selector46~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|Selector46~6_combout\ = (\U0|Selector46~5_combout\ & \U0|LessThan5~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U0|Selector46~5_combout\,
	datad => \U0|LessThan5~3_combout\,
	combout => \U0|Selector46~6_combout\);

-- Location: LCCOMB_X24_Y18_N18
\U0|rw~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|rw~1_combout\ = (\U0|state.ready~regout\ & \lcd_enable~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U0|state.ready~regout\,
	datad => \lcd_enable~regout\,
	combout => \U0|rw~1_combout\);

-- Location: LCCOMB_X25_Y18_N10
\LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!char(4) & (((!char(1)) # (!char(2))) # (!char(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char(3),
	datab => char(4),
	datac => char(2),
	datad => char(1),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X24_Y18_N6
\U0|state~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|state~11_combout\ = (!\U0|state.power_up~regout\ & (\reset~combout\ & !\U0|LessThan0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|state.power_up~regout\,
	datac => \reset~combout\,
	datad => \U0|LessThan0~10_combout\,
	combout => \U0|state~11_combout\);

-- Location: LCCOMB_X29_Y18_N4
\U0|clk_count[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|clk_count[3]~3_combout\ = (\U0|state.initialize~regout\ & (!\U0|Add0~60_combout\ & (\U0|busy~4_combout\ & \U0|LessThan7~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|state.initialize~regout\,
	datab => \U0|Add0~60_combout\,
	datac => \U0|busy~4_combout\,
	datad => \U0|LessThan7~4_combout\,
	combout => \U0|clk_count[3]~3_combout\);

-- Location: LCCOMB_X29_Y19_N30
\U0|Selector18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|Selector18~0_combout\ = (!\U0|state.ready~regout\ & (\U0|Add0~28_combout\ & ((\U0|clk_count[3]~1_combout\) # (\U0|clk_count[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|state.ready~regout\,
	datab => \U0|Add0~28_combout\,
	datac => \U0|clk_count[3]~1_combout\,
	datad => \U0|clk_count[3]~4_combout\,
	combout => \U0|Selector18~0_combout\);

-- Location: LCCOMB_X31_Y18_N6
\U0|Selector7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|Selector7~0_combout\ = (\U0|Add0~50_combout\ & (!\U0|state.ready~regout\ & ((\U0|clk_count[3]~1_combout\) # (\U0|clk_count[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add0~50_combout\,
	datab => \U0|state.ready~regout\,
	datac => \U0|clk_count[3]~1_combout\,
	datad => \U0|clk_count[3]~4_combout\,
	combout => \U0|Selector7~0_combout\);

-- Location: LCCOMB_X28_Y19_N16
\U0|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|Selector2~0_combout\ = (!\U0|state.ready~regout\ & (\U0|Add0~60_combout\ & ((\U0|clk_count[3]~1_combout\) # (\U0|clk_count[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|state.ready~regout\,
	datab => \U0|clk_count[3]~1_combout\,
	datac => \U0|Add0~60_combout\,
	datad => \U0|clk_count[3]~4_combout\,
	combout => \U0|Selector2~0_combout\);

-- Location: LCCOMB_X27_Y18_N10
\U0|Selector43~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|Selector43~6_combout\ = (\U0|state.initialize~regout\ & (\U0|Add0~62_combout\ & ((!\lcd_enable~regout\) # (!\U0|state.ready~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|state.ready~regout\,
	datab => \lcd_enable~regout\,
	datac => \U0|state.initialize~regout\,
	datad => \U0|Add0~62_combout\,
	combout => \U0|Selector43~6_combout\);

-- Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: CLKCTRL_G2
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: LCCOMB_X25_Y18_N18
\process_0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = (\U0|busy~regout\ & !\lcd_enable~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|busy~regout\,
	datac => \lcd_enable~regout\,
	combout => \process_0~0_combout\);

-- Location: LCFF_X25_Y18_N19
lcd_enable : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_enable~regout\);

-- Location: LCCOMB_X29_Y19_N26
\U0|Selector24~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|Selector24~0_combout\ = (!\U0|state.ready~regout\ & (\U0|Add0~16_combout\ & ((\U0|clk_count[3]~1_combout\) # (\U0|clk_count[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|state.ready~regout\,
	datab => \U0|Add0~16_combout\,
	datac => \U0|clk_count[3]~1_combout\,
	datad => \U0|clk_count[3]~4_combout\,
	combout => \U0|Selector24~0_combout\);

-- Location: LCFF_X29_Y19_N27
\U0|clk_count[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|Selector24~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|clk_count\(8));

-- Location: LCCOMB_X30_Y19_N0
\U0|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|Add0~0_combout\ = \U0|clk_count\(0) $ (VCC)
-- \U0|Add0~1\ = CARRY(\U0|clk_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|clk_count\(0),
	datad => VCC,
	combout => \U0|Add0~0_combout\,
	cout => \U0|Add0~1\);

-- Location: LCCOMB_X29_Y19_N6
\U0|Selector32~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|Selector32~0_combout\ = (!\U0|state.ready~regout\ & (\U0|Add0~0_combout\ & ((\U0|clk_count[3]~1_combout\) # (\U0|clk_count[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|state.ready~regout\,
	datab => \U0|Add0~0_combout\,
	datac => \U0|clk_count[3]~1_combout\,
	datad => \U0|clk_count[3]~4_combout\,
	combout => \U0|Selector32~0_combout\);

-- Location: LCFF_X29_Y19_N7
\U0|clk_count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|Selector32~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|clk_count\(0));

-- Location: LCCOMB_X30_Y19_N2
\U0|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|Add0~2_combout\ = (\U0|clk_count\(1) & (!\U0|Add0~1\)) # (!\U0|clk_count\(1) & ((\U0|Add0~1\) # (GND)))
-- \U0|Add0~3\ = CARRY((!\U0|Add0~1\) # (!\U0|clk_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|clk_count\(1),
	datad => VCC,
	cin => \U0|Add0~1\,
	combout => \U0|Add0~2_combout\,
	cout => \U0|Add0~3\);

-- Location: LCCOMB_X29_Y19_N4
\U0|Selector31~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|Selector31~0_combout\ = (!\U0|state.ready~regout\ & (\U0|Add0~2_combout\ & ((\U0|clk_count[3]~1_combout\) # (\U0|clk_count[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|state.ready~regout\,
	datab => \U0|Add0~2_combout\,
	datac => \U0|clk_count[3]~1_combout\,
	datad => \U0|clk_count[3]~4_combout\,
	combout => \U0|Selector31~0_combout\);

-- Location: LCFF_X29_Y19_N5
\U0|clk_count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|Selector31~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|clk_count\(1));

-- Location: LCCOMB_X30_Y19_N4
\U0|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|Add0~4_combout\ = (\U0|clk_count\(2) & (\U0|Add0~3\ $ (GND))) # (!\U0|clk_count\(2) & (!\U0|Add0~3\ & VCC))
-- \U0|Add0~5\ = CARRY((\U0|clk_count\(2) & !\U0|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|clk_count\(2),
	datad => VCC,
	cin => \U0|Add0~3\,
	combout => \U0|Add0~4_combout\,
	cout => \U0|Add0~5\);

-- Location: LCCOMB_X31_Y19_N8
\U0|Selector30~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|Selector30~0_combout\ = (!\U0|state.ready~regout\ & (\U0|Add0~4_combout\ & ((\U0|clk_count[3]~1_combout\) # (\U0|clk_count[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|state.ready~regout\,
	datab => \U0|Add0~4_combout\,
	datac => \U0|clk_count[3]~1_combout\,
	datad => \U0|clk_count[3]~4_combout\,
	combout => \U0|Selector30~0_combout\);

-- Location: LCFF_X31_Y19_N9
\U0|clk_count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|Selector30~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|clk_count\(2));

-- Location: LCCOMB_X30_Y19_N6
\U0|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|Add0~6_combout\ = (\U0|clk_count\(3) & (!\U0|Add0~5\)) # (!\U0|clk_count\(3) & ((\U0|Add0~5\) # (GND)))
-- \U0|Add0~7\ = CARRY((!\U0|Add0~5\) # (!\U0|clk_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|clk_count\(3),
	datad => VCC,
	cin => \U0|Add0~5\,
	combout => \U0|Add0~6_combout\,
	cout => \U0|Add0~7\);

-- Location: LCCOMB_X31_Y19_N30
\U0|Selector29~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|Selector29~0_combout\ = (!\U0|state.ready~regout\ & (\U0|Add0~6_combout\ & ((\U0|clk_count[3]~1_combout\) # (\U0|clk_count[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|state.ready~regout\,
	datab => \U0|Add0~6_combout\,
	datac => \U0|clk_count[3]~1_combout\,
	datad => \U0|clk_count[3]~4_combout\,
	combout => \U0|Selector29~0_combout\);

-- Location: LCFF_X31_Y19_N31
\U0|clk_count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|Selector29~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|clk_count\(3));

-- Location: LCCOMB_X30_Y19_N8
\U0|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|Add0~8_combout\ = (\U0|clk_count\(4) & (\U0|Add0~7\ $ (GND))) # (!\U0|clk_count\(4) & (!\U0|Add0~7\ & VCC))
-- \U0|Add0~9\ = CARRY((\U0|clk_count\(4) & !\U0|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|clk_count\(4),
	datad => VCC,
	cin => \U0|Add0~7\,
	combout => \U0|Add0~8_combout\,
	cout => \U0|Add0~9\);

-- Location: LCCOMB_X31_Y19_N28
\U0|Selector28~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|Selector28~0_combout\ = (!\U0|state.ready~regout\ & (\U0|Add0~8_combout\ & ((\U0|clk_count[3]~1_combout\) # (\U0|clk_count[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|state.ready~regout\,
	datab => \U0|Add0~8_combout\,
	datac => \U0|clk_count[3]~1_combout\,
	datad => \U0|clk_count[3]~4_combout\,
	combout => \U0|Selector28~0_combout\);

-- Location: LCFF_X31_Y19_N29
\U0|clk_count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|Selector28~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|clk_count\(4));

-- Location: LCCOMB_X30_Y19_N10
\U0|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|Add0~10_combout\ = (\U0|clk_count\(5) & (!\U0|Add0~9\)) # (!\U0|clk_count\(5) & ((\U0|Add0~9\) # (GND)))
-- \U0|Add0~11\ = CARRY((!\U0|Add0~9\) # (!\U0|clk_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|clk_count\(5),
	datad => VCC,
	cin => \U0|Add0~9\,
	combout => \U0|Add0~10_combout\,
	cout => \U0|Add0~11\);

-- Location: LCCOMB_X29_Y19_N28
\U0|Selector27~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|Selector27~0_combout\ = (!\U0|state.ready~regout\ & (\U0|Add0~10_combout\ & ((\U0|clk_count[3]~1_combout\) # (\U0|clk_count[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|state.ready~regout\,
	datab => \U0|Add0~10_combout\,
	datac => \U0|clk_count[3]~1_combout\,
	datad => \U0|clk_count[3]~4_combout\,
	combout => \U0|Selector27~0_combout\);

-- Location: LCFF_X29_Y19_N29
\U0|clk_count[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|Selector27~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|clk_count\(5));

-- Location: LCCOMB_X30_Y19_N12
\U0|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|Add0~12_combout\ = (\U0|clk_count\(6) & (\U0|Add0~11\ $ (GND))) # (!\U0|clk_count\(6) & (!\U0|Add0~11\ & VCC))
-- \U0|Add0~13\ = CARRY((\U0|clk_count\(6) & !\U0|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|clk_count\(6),
	datad => VCC,
	cin => \U0|Add0~11\,
	combout => \U0|Add0~12_combout\,
	cout => \U0|Add0~13\);

-- Location: LCCOMB_X31_Y19_N12
\U0|Selector26~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|Selector26~0_combout\ = (!\U0|state.ready~regout\ & (\U0|Add0~12_combout\ & ((\U0|clk_count[3]~1_combout\) # (\U0|clk_count[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|state.ready~regout\,
	datab => \U0|Add0~12_combout\,
	datac => \U0|clk_count[3]~1_combout\,
	datad => \U0|clk_count[3]~4_combout\,
	combout => \U0|Selector26~0_combout\);

-- Location: LCFF_X31_Y19_N13
\U0|clk_count[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|Selector26~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|clk_count\(6));

-- Location: LCCOMB_X30_Y19_N14
\U0|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|Add0~14_combout\ = (\U0|clk_count\(7) & (!\U0|Add0~13\)) # (!\U0|clk_count\(7) & ((\U0|Add0~13\) # (GND)))
-- \U0|Add0~15\ = CARRY((!\U0|Add0~13\) # (!\U0|clk_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|clk_count\(7),
	datad => VCC,
	cin => \U0|Add0~13\,
	combout => \U0|Add0~14_combout\,
	cout => \U0|Add0~15\);

-- Location: LCCOMB_X31_Y19_N22
\U0|Selector25~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|Selector25~0_combout\ = (!\U0|state.ready~regout\ & (\U0|Add0~14_combout\ & ((\U0|clk_count[3]~1_combout\) # (\U0|clk_count[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|state.ready~regout\,
	datab => \U0|Add0~14_combout\,
	datac => \U0|clk_count[3]~1_combout\,
	datad => \U0|clk_count[3]~4_combout\,
	combout => \U0|Selector25~0_combout\);

-- Location: LCFF_X31_Y19_N23
\U0|clk_count[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|Selector25~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|clk_count\(7));

-- Location: LCCOMB_X30_Y19_N16
\U0|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|Add0~16_combout\ = (\U0|clk_count\(8) & (\U0|Add0~15\ $ (GND))) # (!\U0|clk_count\(8) & (!\U0|Add0~15\ & VCC))
-- \U0|Add0~17\ = CARRY((\U0|clk_count\(8) & !\U0|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|clk_count\(8),
	datad => VCC,
	cin => \U0|Add0~15\,
	combout => \U0|Add0~16_combout\,
	cout => \U0|Add0~17\);

-- Location: LCCOMB_X31_Y19_N26
\U0|LessThan6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|LessThan6~1_combout\ = (!\U0|Add0~8_combout\ & (!\U0|Add0~4_combout\ & (!\U0|Add0~6_combout\ & !\U0|Add0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add0~8_combout\,
	datab => \U0|Add0~4_combout\,
	datac => \U0|Add0~6_combout\,
	datad => \U0|Add0~10_combout\,
	combout => \U0|LessThan6~1_combout\);

-- Location: LCCOMB_X31_Y19_N24
\U0|LessThan6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|LessThan6~2_combout\ = (!\U0|Add0~12_combout\ & (!\U0|Add0~16_combout\ & (!\U0|Add0~14_combout\ & \U0|LessThan6~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add0~12_combout\,
	datab => \U0|Add0~16_combout\,
	datac => \U0|Add0~14_combout\,
	datad => \U0|LessThan6~1_combout\,
	combout => \U0|LessThan6~2_combout\);

-- Location: LCCOMB_X29_Y19_N24
\U0|Selector17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|Selector17~0_combout\ = (!\U0|state.ready~regout\ & (\U0|Add0~30_combout\ & ((\U0|clk_count[3]~1_combout\) # (\U0|clk_count[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|state.ready~regout\,
	datab => \U0|Add0~30_combout\,
	datac => \U0|clk_count[3]~1_combout\,
	datad => \U0|clk_count[3]~4_combout\,
	combout => \U0|Selector17~0_combout\);

-- Location: LCFF_X29_Y19_N25
\U0|clk_count[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|Selector17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|clk_count\(15));

-- Location: LCCOMB_X30_Y19_N24
\U0|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|Add0~24_combout\ = (\U0|clk_count\(12) & (\U0|Add0~23\ $ (GND))) # (!\U0|clk_count\(12) & (!\U0|Add0~23\ & VCC))
-- \U0|Add0~25\ = CARRY((\U0|clk_count\(12) & !\U0|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|clk_count\(12),
	datad => VCC,
	cin => \U0|Add0~23\,
	combout => \U0|Add0~24_combout\,
	cout => \U0|Add0~25\);

-- Location: LCCOMB_X30_Y19_N26
\U0|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|Add0~26_combout\ = (\U0|clk_count\(13) & (!\U0|Add0~25\)) # (!\U0|clk_count\(13) & ((\U0|Add0~25\) # (GND)))
-- \U0|Add0~27\ = CARRY((!\U0|Add0~25\) # (!\U0|clk_count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|clk_count\(13),
	datad => VCC,
	cin => \U0|Add0~25\,
	combout => \U0|Add0~26_combout\,
	cout => \U0|Add0~27\);

-- Location: LCCOMB_X29_Y19_N18
\U0|Selector19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|Selector19~0_combout\ = (!\U0|state.ready~regout\ & (\U0|Add0~26_combout\ & ((\U0|clk_count[3]~1_combout\) # (\U0|clk_count[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|state.ready~regout\,
	datab => \U0|clk_count[3]~1_combout\,
	datac => \U0|Add0~26_combout\,
	datad => \U0|clk_count[3]~4_combout\,
	combout => \U0|Selector19~0_combout\);

-- Location: LCFF_X29_Y19_N19
\U0|clk_count[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|Selector19~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|clk_count\(13));

-- Location: LCCOMB_X30_Y19_N28
\U0|Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|Add0~28_combout\ = (\U0|clk_count\(14) & (\U0|Add0~27\ $ (GND))) # (!\U0|clk_count\(14) & (!\U0|Add0~27\ & VCC))
-- \U0|Add0~29\ = CARRY((\U0|clk_count\(14) & !\U0|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|clk_count\(14),
	datad => VCC,
	cin => \U0|Add0~27\,
	combout => \U0|Add0~28_combout\,
	cout => \U0|Add0~29\);

-- Location: LCCOMB_X30_Y19_N30
\U0|Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|Add0~30_combout\ = (\U0|clk_count\(15) & (!\U0|Add0~29\)) # (!\U0|clk_count\(15) & ((\U0|Add0~29\) # (GND)))
-- \U0|Add0~31\ = CARRY((!\U0|Add0~29\) # (!\U0|clk_count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|clk_count\(15),
	datad => VCC,
	cin => \U0|Add0~29\,
	combout => \U0|Add0~30_combout\,
	cout => \U0|Add0~31\);

-- Location: LCCOMB_X30_Y18_N0
\U0|Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|Add0~32_combout\ = (\U0|clk_count\(16) & (\U0|Add0~31\ $ (GND))) # (!\U0|clk_count\(16) & (!\U0|Add0~31\ & VCC))
-- \U0|Add0~33\ = CARRY((\U0|clk_count\(16) & !\U0|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|clk_count\(16),
	datad => VCC,
	cin => \U0|Add0~31\,
	combout => \U0|Add0~32_combout\,
	cout => \U0|Add0~33\);

-- Location: LCCOMB_X29_Y19_N14
\U0|LessThan8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|LessThan8~0_combout\ = (\U0|Add0~30_combout\ & (\U0|Add0~32_combout\ & ((\U0|Add0~26_combout\) # (\U0|Add0~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add0~26_combout\,
	datab => \U0|Add0~30_combout\,
	datac => \U0|Add0~28_combout\,
	datad => \U0|Add0~32_combout\,
	combout => \U0|LessThan8~0_combout\);

-- Location: LCCOMB_X31_Y19_N18
\U0|Selector23~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|Selector23~0_combout\ = (!\U0|state.ready~regout\ & (\U0|Add0~18_combout\ & ((\U0|clk_count[3]~1_combout\) # (\U0|clk_count[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|state.ready~regout\,
	datab => \U0|Add0~18_combout\,
	datac => \U0|clk_count[3]~1_combout\,
	datad => \U0|clk_count[3]~4_combout\,
	combout => \U0|Selector23~0_combout\);

-- Location: LCFF_X31_Y19_N19
\U0|clk_count[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|Selector23~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|clk_count\(9));

-- Location: LCCOMB_X30_Y19_N18
\U0|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|Add0~18_combout\ = (\U0|clk_count\(9) & (!\U0|Add0~17\)) # (!\U0|clk_count\(9) & ((\U0|Add0~17\) # (GND)))
-- \U0|Add0~19\ = CARRY((!\U0|Add0~17\) # (!\U0|clk_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|clk_count\(9),
	datad => VCC,
	cin => \U0|Add0~17\,
	combout => \U0|Add0~18_combout\,
	cout => \U0|Add0~19\);

-- Location: LCCOMB_X30_Y19_N20
\U0|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|Add0~20_combout\ = (\U0|clk_count\(10) & (\U0|Add0~19\ $ (GND))) # (!\U0|clk_count\(10) & (!\U0|Add0~19\ & VCC))
-- \U0|Add0~21\ = CARRY((\U0|clk_count\(10) & !\U0|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|clk_count\(10),
	datad => VCC,
	cin => \U0|Add0~19\,
	combout => \U0|Add0~20_combout\,
	cout => \U0|Add0~21\);

-- Location: LCCOMB_X29_Y20_N6
\U0|LessThan1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|LessThan1~0_combout\ = (!\U0|Add0~22_combout\ & (!\U0|Add0~24_combout\ & (!\U0|Add0~18_combout\ & !\U0|Add0~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add0~22_combout\,
	datab => \U0|Add0~24_combout\,
	datac => \U0|Add0~18_combout\,
	datad => \U0|Add0~20_combout\,
	combout => \U0|LessThan1~0_combout\);

-- Location: LCCOMB_X28_Y19_N18
\U0|LessThan6~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|LessThan6~3_combout\ = (\U0|LessThan8~0_combout\ & ((\U0|Add0~28_combout\) # ((!\U0|LessThan1~0_combout\) # (!\U0|LessThan6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add0~28_combout\,
	datab => \U0|LessThan6~2_combout\,
	datac => \U0|LessThan8~0_combout\,
	datad => \U0|LessThan1~0_combout\,
	combout => \U0|LessThan6~3_combout\);

-- Location: LCCOMB_X29_Y20_N28
\U0|LessThan8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|LessThan8~1_combout\ = (\U0|Add0~8_combout\ & \U0|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add0~8_combout\,
	datad => \U0|Add0~10_combout\,
	combout => \U0|LessThan8~1_combout\);

-- Location: LCCOMB_X29_Y20_N18
\U0|LessThan8~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|LessThan8~2_combout\ = (\U0|Add0~14_combout\ & \U0|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U0|Add0~14_combout\,
	datad => \U0|Add0~16_combout\,
	combout => \U0|LessThan8~2_combout\);

-- Location: LCCOMB_X29_Y20_N0
\U0|LessThan7~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|LessThan7~5_combout\ = (((!\U0|LessThan8~2_combout\) # (!\U0|Add0~12_combout\)) # (!\U0|LessThan8~1_combout\)) # (!\U0|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add0~6_combout\,
	datab => \U0|LessThan8~1_combout\,
	datac => \U0|Add0~12_combout\,
	datad => \U0|LessThan8~2_combout\,
	combout => \U0|LessThan7~5_combout\);

-- Location: LCCOMB_X29_Y20_N2
\U0|LessThan7~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|LessThan7~6_combout\ = (!\U0|Add0~28_combout\ & (((\U0|LessThan1~0_combout\ & \U0|LessThan7~5_combout\)) # (!\U0|Add0~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|LessThan1~0_combout\,
	datab => \U0|Add0~26_combout\,
	datac => \U0|Add0~28_combout\,
	datad => \U0|LessThan7~5_combout\,
	combout => \U0|LessThan7~6_combout\);

-- Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_reset,
	combout => \reset~combout\);

-- Location: LCCOMB_X28_Y19_N30
\U0|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|Selector3~0_combout\ = (\U0|Add0~58_combout\ & (!\U0|state.ready~regout\ & ((\U0|clk_count[3]~1_combout\) # (\U0|clk_count[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add0~58_combout\,
	datab => \U0|state.ready~regout\,
	datac => \U0|clk_count[3]~1_combout\,
	datad => \U0|clk_count[3]~4_combout\,
	combout => \U0|Selector3~0_combout\);

-- Location: LCFF_X28_Y19_N31
\U0|clk_count[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|clk_count\(29));

-- Location: LCCOMB_X30_Y18_N22
\U0|Add0~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|Add0~54_combout\ = (\U0|clk_count\(27) & (!\U0|Add0~53\)) # (!\U0|clk_count\(27) & ((\U0|Add0~53\) # (GND)))
-- \U0|Add0~55\ = CARRY((!\U0|Add0~53\) # (!\U0|clk_count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|clk_count\(27),
	datad => VCC,
	cin => \U0|Add0~53\,
	combout => \U0|Add0~54_combout\,
	cout => \U0|Add0~55\);

-- Location: LCCOMB_X30_Y18_N24
\U0|Add0~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|Add0~56_combout\ = (\U0|clk_count\(28) & (\U0|Add0~55\ $ (GND))) # (!\U0|clk_count\(28) & (!\U0|Add0~55\ & VCC))
-- \U0|Add0~57\ = CARRY((\U0|clk_count\(28) & !\U0|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|clk_count\(28),
	datad => VCC,
	cin => \U0|Add0~55\,
	combout => \U0|Add0~56_combout\,
	cout => \U0|Add0~57\);

-- Location: LCCOMB_X30_Y18_N26
\U0|Add0~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|Add0~58_combout\ = (\U0|clk_count\(29) & (!\U0|Add0~57\)) # (!\U0|clk_count\(29) & ((\U0|Add0~57\) # (GND)))
-- \U0|Add0~59\ = CARRY((!\U0|Add0~57\) # (!\U0|clk_count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|clk_count\(29),
	datad => VCC,
	cin => \U0|Add0~57\,
	combout => \U0|Add0~58_combout\,
	cout => \U0|Add0~59\);

-- Location: LCCOMB_X30_Y18_N28
\U0|Add0~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|Add0~60_combout\ = (\U0|clk_count\(30) & (\U0|Add0~59\ $ (GND))) # (!\U0|clk_count\(30) & (!\U0|Add0~59\ & VCC))
-- \U0|Add0~61\ = CARRY((\U0|clk_count\(30) & !\U0|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|clk_count\(30),
	datad => VCC,
	cin => \U0|Add0~59\,
	combout => \U0|Add0~60_combout\,
	cout => \U0|Add0~61\);

-- Location: LCCOMB_X30_Y18_N30
\U0|Add0~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|Add0~62_combout\ = \U0|Add0~61\ $ (\U0|clk_count\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U0|clk_count\(31),
	cin => \U0|Add0~61\,
	combout => \U0|Add0~62_combout\);

-- Location: LCCOMB_X27_Y18_N20
\U0|rw~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|rw~2_combout\ = (!\U0|state.power_up~regout\ & \U0|LessThan0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|state.power_up~regout\,
	datad => \U0|LessThan0~10_combout\,
	combout => \U0|rw~2_combout\);

-- Location: LCCOMB_X28_Y19_N24
\U0|Selector1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|Selector1~1_combout\ = (\U0|Add0~62_combout\ & ((\U0|state.initialize~regout\) # ((\U0|rw~2_combout\) # (\U0|Selector1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|state.initialize~regout\,
	datab => \U0|Add0~62_combout\,
	datac => \U0|rw~2_combout\,
	datad => \U0|Selector1~0_combout\,
	combout => \U0|Selector1~1_combout\);

-- Location: LCFF_X28_Y19_N25
\U0|clk_count[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|Selector1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|clk_count\(31));

-- Location: LCCOMB_X30_Y18_N2
\U0|Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|Add0~34_combout\ = (\U0|clk_count\(17) & (!\U0|Add0~33\)) # (!\U0|clk_count\(17) & ((\U0|Add0~33\) # (GND)))
-- \U0|Add0~35\ = CARRY((!\U0|Add0~33\) # (!\U0|clk_count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|clk_count\(17),
	datad => VCC,
	cin => \U0|Add0~33\,
	combout => \U0|Add0~34_combout\,
	cout => \U0|Add0~35\);

-- Location: LCCOMB_X29_Y19_N8
\U0|Selector15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|Selector15~0_combout\ = (!\U0|state.ready~regout\ & (\U0|Add0~34_combout\ & ((\U0|clk_count[3]~1_combout\) # (\U0|clk_count[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|state.ready~regout\,
	datab => \U0|Add0~34_combout\,
	datac => \U0|clk_count[3]~1_combout\,
	datad => \U0|clk_count[3]~4_combout\,
	combout => \U0|Selector15~0_combout\);

-- Location: LCFF_X29_Y19_N9
\U0|clk_count[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|Selector15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|clk_count\(17));

-- Location: LCCOMB_X30_Y18_N4
\U0|Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|Add0~36_combout\ = (\U0|clk_count\(18) & (\U0|Add0~35\ $ (GND))) # (!\U0|clk_count\(18) & (!\U0|Add0~35\ & VCC))
-- \U0|Add0~37\ = CARRY((\U0|clk_count\(18) & !\U0|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|clk_count\(18),
	datad => VCC,
	cin => \U0|Add0~35\,
	combout => \U0|Add0~36_combout\,
	cout => \U0|Add0~37\);

-- Location: LCCOMB_X29_Y19_N22
\U0|Selector14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|Selector14~0_combout\ = (!\U0|state.ready~regout\ & (\U0|Add0~36_combout\ & ((\U0|clk_count[3]~1_combout\) # (\U0|clk_count[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|state.ready~regout\,
	datab => \U0|clk_count[3]~1_combout\,
	datac => \U0|Add0~36_combout\,
	datad => \U0|clk_count[3]~4_combout\,
	combout => \U0|Selector14~0_combout\);

-- Location: LCFF_X29_Y19_N23
\U0|clk_count[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|clk_count\(18));

-- Location: LCCOMB_X30_Y18_N6
\U0|Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|Add0~38_combout\ = (\U0|clk_count\(19) & (!\U0|Add0~37\)) # (!\U0|clk_count\(19) & ((\U0|Add0~37\) # (GND)))
-- \U0|Add0~39\ = CARRY((!\U0|Add0~37\) # (!\U0|clk_count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|clk_count\(19),
	datad => VCC,
	cin => \U0|Add0~37\,
	combout => \U0|Add0~38_combout\,
	cout => \U0|Add0~39\);

-- Location: LCCOMB_X29_Y19_N16
\U0|Selector13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|Selector13~0_combout\ = (!\U0|state.ready~regout\ & (\U0|Add0~38_combout\ & ((\U0|clk_count[3]~1_combout\) # (\U0|clk_count[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|state.ready~regout\,
	datab => \U0|clk_count[3]~1_combout\,
	datac => \U0|Add0~38_combout\,
	datad => \U0|clk_count[3]~4_combout\,
	combout => \U0|Selector13~0_combout\);

-- Location: LCFF_X29_Y19_N17
\U0|clk_count[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|clk_count\(19));

-- Location: LCCOMB_X30_Y18_N8
\U0|Add0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|Add0~40_combout\ = (\U0|clk_count\(20) & (\U0|Add0~39\ $ (GND))) # (!\U0|clk_count\(20) & (!\U0|Add0~39\ & VCC))
-- \U0|Add0~41\ = CARRY((\U0|clk_count\(20) & !\U0|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|clk_count\(20),
	datad => VCC,
	cin => \U0|Add0~39\,
	combout => \U0|Add0~40_combout\,
	cout => \U0|Add0~41\);

-- Location: LCCOMB_X29_Y18_N16
\U0|Selector12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|Selector12~0_combout\ = (!\U0|state.ready~regout\ & (\U0|Add0~40_combout\ & ((\U0|clk_count[3]~1_combout\) # (\U0|clk_count[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|clk_count[3]~1_combout\,
	datab => \U0|state.ready~regout\,
	datac => \U0|Add0~40_combout\,
	datad => \U0|clk_count[3]~4_combout\,
	combout => \U0|Selector12~0_combout\);

-- Location: LCFF_X29_Y18_N17
\U0|clk_count[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|clk_count\(20));

-- Location: LCCOMB_X31_Y18_N4
\U0|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|LessThan0~0_combout\ = (!\U0|clk_count\(20) & (!\U0|clk_count\(19) & ((!\U0|clk_count\(17)) # (!\U0|clk_count\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|clk_count\(18),
	datab => \U0|clk_count\(20),
	datac => \U0|clk_count\(17),
	datad => \U0|clk_count\(19),
	combout => \U0|LessThan0~0_combout\);

-- Location: LCCOMB_X31_Y18_N16
\U0|Selector16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|Selector16~0_combout\ = (\U0|Add0~32_combout\ & (!\U0|state.ready~regout\ & ((\U0|clk_count[3]~1_combout\) # (\U0|clk_count[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add0~32_combout\,
	datab => \U0|state.ready~regout\,
	datac => \U0|clk_count[3]~1_combout\,
	datad => \U0|clk_count[3]~4_combout\,
	combout => \U0|Selector16~0_combout\);

-- Location: LCFF_X31_Y18_N17
\U0|clk_count[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|clk_count\(16));

-- Location: LCCOMB_X31_Y18_N18
\U0|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|LessThan0~1_combout\ = (!\U0|clk_count\(14) & (!\U0|clk_count\(19) & (!\U0|clk_count\(15) & !\U0|clk_count\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|clk_count\(14),
	datab => \U0|clk_count\(19),
	datac => \U0|clk_count\(15),
	datad => \U0|clk_count\(20),
	combout => \U0|LessThan0~1_combout\);

-- Location: LCCOMB_X31_Y18_N14
\U0|LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|LessThan0~2_combout\ = (!\U0|clk_count\(16) & \U0|LessThan0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U0|clk_count\(16),
	datad => \U0|LessThan0~1_combout\,
	combout => \U0|LessThan0~2_combout\);

-- Location: LCCOMB_X30_Y19_N22
\U0|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|Add0~22_combout\ = (\U0|clk_count\(11) & (!\U0|Add0~21\)) # (!\U0|clk_count\(11) & ((\U0|Add0~21\) # (GND)))
-- \U0|Add0~23\ = CARRY((!\U0|Add0~21\) # (!\U0|clk_count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|clk_count\(11),
	datad => VCC,
	cin => \U0|Add0~21\,
	combout => \U0|Add0~22_combout\,
	cout => \U0|Add0~23\);

-- Location: LCCOMB_X29_Y19_N10
\U0|Selector21~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|Selector21~0_combout\ = (!\U0|state.ready~regout\ & (\U0|Add0~22_combout\ & ((\U0|clk_count[3]~1_combout\) # (\U0|clk_count[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|state.ready~regout\,
	datab => \U0|clk_count[3]~1_combout\,
	datac => \U0|Add0~22_combout\,
	datad => \U0|clk_count[3]~4_combout\,
	combout => \U0|Selector21~0_combout\);

-- Location: LCFF_X29_Y19_N11
\U0|clk_count[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|Selector21~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|clk_count\(11));

-- Location: LCCOMB_X32_Y19_N0
\U0|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|LessThan0~3_combout\ = (((!\U0|clk_count\(6) & !\U0|clk_count\(5))) # (!\U0|clk_count\(7))) # (!\U0|clk_count\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|clk_count\(6),
	datab => \U0|clk_count\(5),
	datac => \U0|clk_count\(8),
	datad => \U0|clk_count\(7),
	combout => \U0|LessThan0~3_combout\);

-- Location: LCCOMB_X32_Y19_N2
\U0|LessThan0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|LessThan0~4_combout\ = (\U0|clk_count\(10) & ((\U0|clk_count\(9)) # (!\U0|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|clk_count\(9),
	datac => \U0|clk_count\(10),
	datad => \U0|LessThan0~3_combout\,
	combout => \U0|LessThan0~4_combout\);

-- Location: LCCOMB_X32_Y19_N20
\U0|LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|LessThan0~5_combout\ = (\U0|clk_count\(13) & ((\U0|clk_count\(11)) # ((\U0|clk_count\(12)) # (\U0|LessThan0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|clk_count\(13),
	datab => \U0|clk_count\(11),
	datac => \U0|clk_count\(12),
	datad => \U0|LessThan0~4_combout\,
	combout => \U0|LessThan0~5_combout\);

-- Location: LCCOMB_X31_Y18_N2
\U0|LessThan0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|LessThan0~6_combout\ = ((\U0|LessThan0~0_combout\) # ((\U0|LessThan0~2_combout\ & !\U0|LessThan0~5_combout\))) # (!\U0|clk_count\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|clk_count\(21),
	datab => \U0|LessThan0~0_combout\,
	datac => \U0|LessThan0~2_combout\,
	datad => \U0|LessThan0~5_combout\,
	combout => \U0|LessThan0~6_combout\);

-- Location: LCCOMB_X31_Y18_N22
\U0|LessThan0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|LessThan0~10_combout\ = (\U0|clk_count\(31)) # ((\U0|LessThan0~8_combout\ & (\U0|LessThan0~9_combout\ & \U0|LessThan0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|LessThan0~8_combout\,
	datab => \U0|clk_count\(31),
	datac => \U0|LessThan0~9_combout\,
	datad => \U0|LessThan0~6_combout\,
	combout => \U0|LessThan0~10_combout\);

-- Location: LCCOMB_X24_Y18_N2
\U0|state~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|state~14_combout\ = (\reset~combout\ & ((\U0|state.power_up~regout\) # (!\U0|LessThan0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~combout\,
	datac => \U0|state.power_up~regout\,
	datad => \U0|LessThan0~10_combout\,
	combout => \U0|state~14_combout\);

-- Location: LCFF_X24_Y18_N3
\U0|state.power_up\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|state~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|state.power_up~regout\);

-- Location: LCCOMB_X29_Y19_N12
\U0|LessThan3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|LessThan3~3_combout\ = (\U0|Add0~22_combout\ & \U0|Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U0|Add0~22_combout\,
	datad => \U0|Add0~20_combout\,
	combout => \U0|LessThan3~3_combout\);

-- Location: LCCOMB_X29_Y20_N12
\U0|LessThan8~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|LessThan8~4_combout\ = (!\U0|Add0~18_combout\ & (((!\U0|LessThan8~1_combout\ & !\U0|Add0~12_combout\)) # (!\U0|LessThan8~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add0~18_combout\,
	datab => \U0|LessThan8~1_combout\,
	datac => \U0|Add0~12_combout\,
	datad => \U0|LessThan8~2_combout\,
	combout => \U0|LessThan8~4_combout\);

-- Location: LCCOMB_X29_Y18_N30
\U0|LessThan8~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|LessThan8~5_combout\ = (!\U0|Add0~24_combout\ & (!\U0|Add0~28_combout\ & ((\U0|LessThan8~4_combout\) # (!\U0|LessThan3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add0~24_combout\,
	datab => \U0|Add0~28_combout\,
	datac => \U0|LessThan3~3_combout\,
	datad => \U0|LessThan8~4_combout\,
	combout => \U0|LessThan8~5_combout\);

-- Location: LCCOMB_X31_Y18_N20
\U0|Selector11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|Selector11~0_combout\ = (\U0|Add0~42_combout\ & (!\U0|state.ready~regout\ & ((\U0|clk_count[3]~1_combout\) # (\U0|clk_count[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add0~42_combout\,
	datab => \U0|state.ready~regout\,
	datac => \U0|clk_count[3]~1_combout\,
	datad => \U0|clk_count[3]~4_combout\,
	combout => \U0|Selector11~0_combout\);

-- Location: LCFF_X31_Y18_N21
\U0|clk_count[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|clk_count\(21));

-- Location: LCCOMB_X30_Y18_N10
\U0|Add0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|Add0~42_combout\ = (\U0|clk_count\(21) & (!\U0|Add0~41\)) # (!\U0|clk_count\(21) & ((\U0|Add0~41\) # (GND)))
-- \U0|Add0~43\ = CARRY((!\U0|Add0~41\) # (!\U0|clk_count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|clk_count\(21),
	datad => VCC,
	cin => \U0|Add0~41\,
	combout => \U0|Add0~42_combout\,
	cout => \U0|Add0~43\);

-- Location: LCCOMB_X31_Y18_N24
\U0|Selector10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|Selector10~0_combout\ = (\U0|Add0~44_combout\ & (!\U0|state.ready~regout\ & ((\U0|clk_count[3]~1_combout\) # (\U0|clk_count[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add0~44_combout\,
	datab => \U0|state.ready~regout\,
	datac => \U0|clk_count[3]~1_combout\,
	datad => \U0|clk_count[3]~4_combout\,
	combout => \U0|Selector10~0_combout\);

-- Location: LCFF_X31_Y18_N25
\U0|clk_count[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|clk_count\(22));

-- Location: LCCOMB_X30_Y18_N12
\U0|Add0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|Add0~44_combout\ = (\U0|clk_count\(22) & (\U0|Add0~43\ $ (GND))) # (!\U0|clk_count\(22) & (!\U0|Add0~43\ & VCC))
-- \U0|Add0~45\ = CARRY((\U0|clk_count\(22) & !\U0|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|clk_count\(22),
	datad => VCC,
	cin => \U0|Add0~43\,
	combout => \U0|Add0~44_combout\,
	cout => \U0|Add0~45\);

-- Location: LCCOMB_X30_Y18_N14
\U0|Add0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|Add0~46_combout\ = (\U0|clk_count\(23) & (!\U0|Add0~45\)) # (!\U0|clk_count\(23) & ((\U0|Add0~45\) # (GND)))
-- \U0|Add0~47\ = CARRY((!\U0|Add0~45\) # (!\U0|clk_count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|clk_count\(23),
	datad => VCC,
	cin => \U0|Add0~45\,
	combout => \U0|Add0~46_combout\,
	cout => \U0|Add0~47\);

-- Location: LCCOMB_X29_Y18_N22
\U0|LessThan7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|LessThan7~1_combout\ = (!\U0|Add0~48_combout\ & (!\U0|Add0~42_combout\ & (!\U0|Add0~46_combout\ & !\U0|Add0~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add0~48_combout\,
	datab => \U0|Add0~42_combout\,
	datac => \U0|Add0~46_combout\,
	datad => \U0|Add0~44_combout\,
	combout => \U0|LessThan7~1_combout\);

-- Location: LCCOMB_X29_Y18_N14
\U0|busy~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|busy~4_combout\ = (!\U0|Add0~58_combout\ & !\U0|Add0~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U0|Add0~58_combout\,
	datad => \U0|Add0~56_combout\,
	combout => \U0|busy~4_combout\);

-- Location: LCCOMB_X30_Y18_N18
\U0|Add0~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|Add0~50_combout\ = (\U0|clk_count\(25) & (!\U0|Add0~49\)) # (!\U0|clk_count\(25) & ((\U0|Add0~49\) # (GND)))
-- \U0|Add0~51\ = CARRY((!\U0|Add0~49\) # (!\U0|clk_count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|clk_count\(25),
	datad => VCC,
	cin => \U0|Add0~49\,
	combout => \U0|Add0~50_combout\,
	cout => \U0|Add0~51\);

-- Location: LCCOMB_X30_Y18_N20
\U0|Add0~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|Add0~52_combout\ = (\U0|clk_count\(26) & (\U0|Add0~51\ $ (GND))) # (!\U0|clk_count\(26) & (!\U0|Add0~51\ & VCC))
-- \U0|Add0~53\ = CARRY((\U0|clk_count\(26) & !\U0|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|clk_count\(26),
	datad => VCC,
	cin => \U0|Add0~51\,
	combout => \U0|Add0~52_combout\,
	cout => \U0|Add0~53\);

-- Location: LCCOMB_X29_Y18_N28
\U0|LessThan7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|LessThan7~2_combout\ = (!\U0|Add0~50_combout\ & (!\U0|Add0~54_combout\ & !\U0|Add0~52_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add0~50_combout\,
	datac => \U0|Add0~54_combout\,
	datad => \U0|Add0~52_combout\,
	combout => \U0|LessThan7~2_combout\);

-- Location: LCCOMB_X29_Y18_N2
\U0|LessThan7~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|LessThan7~3_combout\ = (\U0|LessThan7~0_combout\ & (\U0|LessThan7~1_combout\ & (\U0|busy~4_combout\ & \U0|LessThan7~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|LessThan7~0_combout\,
	datab => \U0|LessThan7~1_combout\,
	datac => \U0|busy~4_combout\,
	datad => \U0|LessThan7~2_combout\,
	combout => \U0|LessThan7~3_combout\);

-- Location: LCCOMB_X29_Y18_N24
\U0|LessThan8~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|LessThan8~6_combout\ = (!\U0|Add0~60_combout\ & (\U0|LessThan7~3_combout\ & ((\U0|LessThan8~5_combout\) # (!\U0|LessThan8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|LessThan8~0_combout\,
	datab => \U0|LessThan8~5_combout\,
	datac => \U0|Add0~60_combout\,
	datad => \U0|LessThan7~3_combout\,
	combout => \U0|LessThan8~6_combout\);

-- Location: LCCOMB_X28_Y18_N12
\U0|clk_count[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|clk_count[3]~2_combout\ = (!\U0|state.send~regout\ & (\U0|state.power_up~regout\ & \U0|LessThan8~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|state.send~regout\,
	datac => \U0|state.power_up~regout\,
	datad => \U0|LessThan8~6_combout\,
	combout => \U0|clk_count[3]~2_combout\);

-- Location: LCCOMB_X28_Y18_N22
\U0|clk_count[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|clk_count[3]~4_combout\ = (\U0|clk_count[3]~2_combout\) # ((\U0|clk_count[3]~3_combout\ & ((\U0|LessThan7~6_combout\) # (!\U0|LessThan6~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|clk_count[3]~3_combout\,
	datab => \U0|LessThan6~3_combout\,
	datac => \U0|LessThan7~6_combout\,
	datad => \U0|clk_count[3]~2_combout\,
	combout => \U0|clk_count[3]~4_combout\);

-- Location: LCCOMB_X31_Y18_N30
\U0|Selector9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|Selector9~0_combout\ = (\U0|Add0~46_combout\ & (!\U0|state.ready~regout\ & ((\U0|clk_count[3]~1_combout\) # (\U0|clk_count[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add0~46_combout\,
	datab => \U0|state.ready~regout\,
	datac => \U0|clk_count[3]~1_combout\,
	datad => \U0|clk_count[3]~4_combout\,
	combout => \U0|Selector9~0_combout\);

-- Location: LCFF_X31_Y18_N31
\U0|clk_count[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|clk_count\(23));

-- Location: LCCOMB_X30_Y18_N16
\U0|Add0~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|Add0~48_combout\ = (\U0|clk_count\(24) & (\U0|Add0~47\ $ (GND))) # (!\U0|clk_count\(24) & (!\U0|Add0~47\ & VCC))
-- \U0|Add0~49\ = CARRY((\U0|clk_count\(24) & !\U0|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|clk_count\(24),
	datad => VCC,
	cin => \U0|Add0~47\,
	combout => \U0|Add0~48_combout\,
	cout => \U0|Add0~49\);

-- Location: LCCOMB_X31_Y18_N8
\U0|Selector8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|Selector8~0_combout\ = (!\U0|state.ready~regout\ & (\U0|Add0~48_combout\ & ((\U0|clk_count[3]~1_combout\) # (\U0|clk_count[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|state.ready~regout\,
	datab => \U0|Add0~48_combout\,
	datac => \U0|clk_count[3]~1_combout\,
	datad => \U0|clk_count[3]~4_combout\,
	combout => \U0|Selector8~0_combout\);

-- Location: LCFF_X31_Y18_N9
\U0|clk_count[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|Selector8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|clk_count\(24));

-- Location: LCCOMB_X28_Y19_N26
\U0|Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|Selector5~0_combout\ = (!\U0|state.ready~regout\ & (\U0|Add0~54_combout\ & ((\U0|clk_count[3]~1_combout\) # (\U0|clk_count[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|state.ready~regout\,
	datab => \U0|Add0~54_combout\,
	datac => \U0|clk_count[3]~1_combout\,
	datad => \U0|clk_count[3]~4_combout\,
	combout => \U0|Selector5~0_combout\);

-- Location: LCFF_X28_Y19_N27
\U0|clk_count[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|clk_count\(27));

-- Location: LCCOMB_X28_Y19_N20
\U0|Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|Selector4~0_combout\ = (!\U0|state.ready~regout\ & (\U0|Add0~56_combout\ & ((\U0|clk_count[3]~1_combout\) # (\U0|clk_count[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|state.ready~regout\,
	datab => \U0|Add0~56_combout\,
	datac => \U0|clk_count[3]~1_combout\,
	datad => \U0|clk_count[3]~4_combout\,
	combout => \U0|Selector4~0_combout\);

-- Location: LCFF_X28_Y19_N21
\U0|clk_count[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|Selector4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|clk_count\(28));

-- Location: LCCOMB_X28_Y19_N14
\U0|LessThan0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|LessThan0~9_combout\ = (!\U0|clk_count\(30) & (!\U0|clk_count\(27) & (!\U0|clk_count\(28) & !\U0|clk_count\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|clk_count\(30),
	datab => \U0|clk_count\(27),
	datac => \U0|clk_count\(28),
	datad => \U0|clk_count\(29),
	combout => \U0|LessThan0~9_combout\);

-- Location: LCCOMB_X30_Y20_N22
\U0|LessThan9~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|LessThan9~2_combout\ = (!\U0|clk_count\(3) & (!\U0|clk_count\(4) & (!\U0|clk_count\(2) & !\U0|clk_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|clk_count\(3),
	datab => \U0|clk_count\(4),
	datac => \U0|clk_count\(2),
	datad => \U0|clk_count\(5),
	combout => \U0|LessThan9~2_combout\);

-- Location: LCCOMB_X30_Y20_N0
\U0|LessThan9~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|LessThan9~3_combout\ = (((\U0|LessThan9~2_combout\) # (!\U0|clk_count\(7))) # (!\U0|clk_count\(6))) # (!\U0|clk_count\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|clk_count\(8),
	datab => \U0|clk_count\(6),
	datac => \U0|clk_count\(7),
	datad => \U0|LessThan9~2_combout\,
	combout => \U0|LessThan9~3_combout\);

-- Location: LCCOMB_X29_Y20_N4
\U0|LessThan9~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|LessThan9~4_combout\ = ((!\U0|clk_count\(10) & (\U0|LessThan9~3_combout\ & !\U0|clk_count\(9)))) # (!\U0|clk_count\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|clk_count\(11),
	datab => \U0|clk_count\(10),
	datac => \U0|LessThan9~3_combout\,
	datad => \U0|clk_count\(9),
	combout => \U0|LessThan9~4_combout\);

-- Location: LCCOMB_X28_Y20_N16
\U0|LessThan9~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|LessThan9~5_combout\ = (\U0|LessThan9~1_combout\ & (\U0|LessThan0~9_combout\ & \U0|LessThan9~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|LessThan9~1_combout\,
	datac => \U0|LessThan0~9_combout\,
	datad => \U0|LessThan9~4_combout\,
	combout => \U0|LessThan9~5_combout\);

-- Location: LCCOMB_X24_Y18_N12
\U0|state~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|state~13_combout\ = (\reset~combout\ & ((\U0|rw~1_combout\) # ((\U0|state.send~regout\ & !\U0|state~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|rw~1_combout\,
	datab => \reset~combout\,
	datac => \U0|state.send~regout\,
	datad => \U0|state~8_combout\,
	combout => \U0|state~13_combout\);

-- Location: LCFF_X24_Y18_N13
\U0|state.send\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|state~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|state.send~regout\);

-- Location: LCCOMB_X28_Y19_N28
\U0|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|Selector1~0_combout\ = (\U0|state.send~regout\ & ((\U0|clk_count\(31)) # (\U0|LessThan9~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|clk_count\(31),
	datac => \U0|LessThan9~5_combout\,
	datad => \U0|state.send~regout\,
	combout => \U0|Selector1~0_combout\);

-- Location: LCCOMB_X29_Y18_N12
\U0|Selector44~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|Selector44~0_combout\ = (!\U0|Add0~62_combout\ & ((\U0|Add0~60_combout\) # ((\U0|LessThan6~3_combout\) # (!\U0|LessThan7~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add0~60_combout\,
	datab => \U0|Add0~62_combout\,
	datac => \U0|LessThan6~3_combout\,
	datad => \U0|LessThan7~3_combout\,
	combout => \U0|Selector44~0_combout\);

-- Location: LCCOMB_X29_Y18_N20
\U0|LessThan7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|LessThan7~0_combout\ = (!\U0|Add0~34_combout\ & (!\U0|Add0~40_combout\ & (!\U0|Add0~38_combout\ & !\U0|Add0~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add0~34_combout\,
	datab => \U0|Add0~40_combout\,
	datac => \U0|Add0~38_combout\,
	datad => \U0|Add0~36_combout\,
	combout => \U0|LessThan7~0_combout\);

-- Location: LCCOMB_X29_Y18_N0
\U0|LessThan7~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|LessThan7~4_combout\ = (\U0|LessThan7~1_combout\ & (\U0|LessThan7~0_combout\ & \U0|LessThan7~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|LessThan7~1_combout\,
	datac => \U0|LessThan7~0_combout\,
	datad => \U0|LessThan7~2_combout\,
	combout => \U0|LessThan7~4_combout\);

-- Location: LCCOMB_X31_Y19_N2
\U0|LessThan3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|LessThan3~4_combout\ = ((!\U0|Add0~8_combout\ & ((!\U0|Add0~6_combout\) # (!\U0|Add0~4_combout\)))) # (!\U0|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add0~8_combout\,
	datab => \U0|Add0~4_combout\,
	datac => \U0|Add0~6_combout\,
	datad => \U0|Add0~10_combout\,
	combout => \U0|LessThan3~4_combout\);

-- Location: LCCOMB_X30_Y20_N2
\U0|LessThan3~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|LessThan3~5_combout\ = (\U0|Add0~14_combout\ & (\U0|Add0~16_combout\ & ((\U0|Add0~12_combout\) # (!\U0|LessThan3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add0~14_combout\,
	datab => \U0|Add0~16_combout\,
	datac => \U0|Add0~12_combout\,
	datad => \U0|LessThan3~4_combout\,
	combout => \U0|LessThan3~5_combout\);

-- Location: LCCOMB_X30_Y20_N16
\U0|LessThan3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|LessThan3~6_combout\ = (((!\U0|Add0~18_combout\ & !\U0|LessThan3~5_combout\)) # (!\U0|Add0~20_combout\)) # (!\U0|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add0~22_combout\,
	datab => \U0|Add0~20_combout\,
	datac => \U0|Add0~18_combout\,
	datad => \U0|LessThan3~5_combout\,
	combout => \U0|LessThan3~6_combout\);

-- Location: LCCOMB_X29_Y19_N20
\U0|LessThan3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|LessThan3~2_combout\ = (!\U0|Add0~26_combout\ & (!\U0|Add0~30_combout\ & (!\U0|Add0~28_combout\ & !\U0|Add0~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add0~26_combout\,
	datab => \U0|Add0~30_combout\,
	datac => \U0|Add0~28_combout\,
	datad => \U0|Add0~32_combout\,
	combout => \U0|LessThan3~2_combout\);

-- Location: LCCOMB_X29_Y19_N2
\U0|state~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|state~6_combout\ = (!\U0|Add0~24_combout\ & (\U0|LessThan3~2_combout\ & !\U0|Add0~60_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|Add0~24_combout\,
	datac => \U0|LessThan3~2_combout\,
	datad => \U0|Add0~60_combout\,
	combout => \U0|state~6_combout\);

-- Location: LCCOMB_X29_Y18_N10
\U0|state~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|state~7_combout\ = (\U0|busy~4_combout\ & (\U0|LessThan7~4_combout\ & (\U0|LessThan3~6_combout\ & \U0|state~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|busy~4_combout\,
	datab => \U0|LessThan7~4_combout\,
	datac => \U0|LessThan3~6_combout\,
	datad => \U0|state~6_combout\,
	combout => \U0|state~7_combout\);

-- Location: LCCOMB_X28_Y18_N24
\U0|busy~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|busy~7_combout\ = (!\U0|LessThan7~7_combout\ & (\U0|Selector44~0_combout\ & (!\U0|state~7_combout\ & !\U0|LessThan8~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|LessThan7~7_combout\,
	datab => \U0|Selector44~0_combout\,
	datac => \U0|state~7_combout\,
	datad => \U0|LessThan8~6_combout\,
	combout => \U0|busy~7_combout\);

-- Location: LCCOMB_X24_Y18_N14
\U0|state~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|state~12_combout\ = (\U0|state~11_combout\) # ((\reset~combout\ & (\U0|state.initialize~regout\ & !\U0|busy~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|state~11_combout\,
	datab => \reset~combout\,
	datac => \U0|state.initialize~regout\,
	datad => \U0|busy~7_combout\,
	combout => \U0|state~12_combout\);

-- Location: LCFF_X24_Y18_N15
\U0|state.initialize\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|state~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|state.initialize~regout\);

-- Location: LCCOMB_X28_Y19_N10
\U0|clk_count[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|clk_count[3]~0_combout\ = (\U0|Add0~62_combout\ & ((\U0|state.initialize~regout\) # ((!\U0|state.send~regout\ & \U0|state.power_up~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|state.send~regout\,
	datab => \U0|state.initialize~regout\,
	datac => \U0|state.power_up~regout\,
	datad => \U0|Add0~62_combout\,
	combout => \U0|clk_count[3]~0_combout\);

-- Location: LCCOMB_X28_Y19_N8
\U0|clk_count[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|clk_count[3]~1_combout\ = (\U0|clk_count[3]~0_combout\) # ((\U0|state.power_up~regout\ & (\U0|Selector1~0_combout\)) # (!\U0|state.power_up~regout\ & ((\U0|LessThan0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|state.power_up~regout\,
	datab => \U0|Selector1~0_combout\,
	datac => \U0|LessThan0~10_combout\,
	datad => \U0|clk_count[3]~0_combout\,
	combout => \U0|clk_count[3]~1_combout\);

-- Location: LCCOMB_X31_Y19_N0
\U0|Selector22~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|Selector22~0_combout\ = (!\U0|state.ready~regout\ & (\U0|Add0~20_combout\ & ((\U0|clk_count[3]~1_combout\) # (\U0|clk_count[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|state.ready~regout\,
	datab => \U0|clk_count[3]~1_combout\,
	datac => \U0|Add0~20_combout\,
	datad => \U0|clk_count[3]~4_combout\,
	combout => \U0|Selector22~0_combout\);

-- Location: LCFF_X31_Y19_N1
\U0|clk_count[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|Selector22~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|clk_count\(10));

-- Location: LCCOMB_X29_Y19_N0
\U0|Selector20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|Selector20~0_combout\ = (!\U0|state.ready~regout\ & (\U0|Add0~24_combout\ & ((\U0|clk_count[3]~1_combout\) # (\U0|clk_count[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|state.ready~regout\,
	datab => \U0|Add0~24_combout\,
	datac => \U0|clk_count[3]~1_combout\,
	datad => \U0|clk_count[3]~4_combout\,
	combout => \U0|Selector20~0_combout\);

-- Location: LCFF_X29_Y19_N1
\U0|clk_count[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|Selector20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|clk_count\(12));

-- Location: LCCOMB_X28_Y19_N0
\U0|LessThan9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|LessThan9~0_combout\ = (!\U0|clk_count\(13) & (!\U0|clk_count\(12) & (!\U0|clk_count\(17) & !\U0|clk_count\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|clk_count\(13),
	datab => \U0|clk_count\(12),
	datac => \U0|clk_count\(17),
	datad => \U0|clk_count\(18),
	combout => \U0|LessThan9~0_combout\);

-- Location: LCCOMB_X31_Y18_N26
\U0|Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|Selector6~0_combout\ = (\U0|Add0~52_combout\ & (!\U0|state.ready~regout\ & ((\U0|clk_count[3]~1_combout\) # (\U0|clk_count[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add0~52_combout\,
	datab => \U0|state.ready~regout\,
	datac => \U0|clk_count[3]~1_combout\,
	datad => \U0|clk_count[3]~4_combout\,
	combout => \U0|Selector6~0_combout\);

-- Location: LCFF_X31_Y18_N27
\U0|clk_count[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|clk_count\(26));

-- Location: LCCOMB_X31_Y18_N28
\U0|LessThan0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|LessThan0~8_combout\ = (\U0|LessThan0~7_combout\ & !\U0|clk_count\(26))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|LessThan0~7_combout\,
	datad => \U0|clk_count\(26),
	combout => \U0|LessThan0~8_combout\);

-- Location: LCCOMB_X28_Y20_N2
\U0|LessThan9~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|LessThan9~1_combout\ = (!\U0|clk_count\(21) & (\U0|LessThan9~0_combout\ & (\U0|LessThan0~8_combout\ & \U0|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|clk_count\(21),
	datab => \U0|LessThan9~0_combout\,
	datac => \U0|LessThan0~8_combout\,
	datad => \U0|LessThan0~2_combout\,
	combout => \U0|LessThan9~1_combout\);

-- Location: LCCOMB_X28_Y20_N22
\U0|state~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|state~8_combout\ = (!\U0|clk_count\(31) & (((!\U0|LessThan9~4_combout\) # (!\U0|LessThan0~9_combout\)) # (!\U0|LessThan9~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|clk_count\(31),
	datab => \U0|LessThan9~1_combout\,
	datac => \U0|LessThan0~9_combout\,
	datad => \U0|LessThan9~4_combout\,
	combout => \U0|state~8_combout\);

-- Location: LCCOMB_X24_Y18_N0
\U0|state~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|state~9_combout\ = (\U0|state.ready~regout\ & (((\U0|state.initialize~regout\ & \U0|busy~7_combout\)) # (!\lcd_enable~regout\))) # (!\U0|state.ready~regout\ & (((\U0|state.initialize~regout\ & \U0|busy~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|state.ready~regout\,
	datab => \lcd_enable~regout\,
	datac => \U0|state.initialize~regout\,
	datad => \U0|busy~7_combout\,
	combout => \U0|state~9_combout\);

-- Location: LCCOMB_X24_Y18_N4
\U0|state~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|state~10_combout\ = (\reset~combout\ & ((\U0|state~9_combout\) # ((\U0|state.send~regout\ & \U0|state~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|state.send~regout\,
	datab => \U0|state~8_combout\,
	datac => \reset~combout\,
	datad => \U0|state~9_combout\,
	combout => \U0|state~10_combout\);

-- Location: LCFF_X24_Y18_N5
\U0|state.ready\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|state~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|state.ready~regout\);

-- Location: LCCOMB_X25_Y18_N22
\char[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \char[1]~5_combout\ = (char(0) & (char(1) $ (VCC))) # (!char(0) & (char(1) & VCC))
-- \char[1]~6\ = CARRY((char(0) & char(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char(0),
	datab => char(1),
	datad => VCC,
	combout => \char[1]~5_combout\,
	cout => \char[1]~6\);

-- Location: LCFF_X24_Y18_N1
\U0|busy\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|state~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|busy~regout\);

-- Location: LCCOMB_X25_Y18_N14
\char[5]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \char[5]~15_combout\ = (\U0|busy~regout\ & (!\lcd_enable~regout\ & ((\LessThan0~0_combout\) # (!char(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~0_combout\,
	datab => char(5),
	datac => \U0|busy~regout\,
	datad => \lcd_enable~regout\,
	combout => \char[5]~15_combout\);

-- Location: LCFF_X25_Y18_N23
\char[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \char[1]~5_combout\,
	ena => \char[5]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => char(1));

-- Location: LCCOMB_X25_Y18_N24
\char[2]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \char[2]~7_combout\ = (char(2) & (!\char[1]~6\)) # (!char(2) & ((\char[1]~6\) # (GND)))
-- \char[2]~8\ = CARRY((!\char[1]~6\) # (!char(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => char(2),
	datad => VCC,
	cin => \char[1]~6\,
	combout => \char[2]~7_combout\,
	cout => \char[2]~8\);

-- Location: LCCOMB_X25_Y18_N26
\char[3]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \char[3]~9_combout\ = (char(3) & (\char[2]~8\ $ (GND))) # (!char(3) & (!\char[2]~8\ & VCC))
-- \char[3]~10\ = CARRY((char(3) & !\char[2]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => char(3),
	datad => VCC,
	cin => \char[2]~8\,
	combout => \char[3]~9_combout\,
	cout => \char[3]~10\);

-- Location: LCFF_X25_Y18_N27
\char[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \char[3]~9_combout\,
	ena => \char[5]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => char(3));

-- Location: LCCOMB_X25_Y18_N28
\char[4]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \char[4]~11_combout\ = (char(4) & (!\char[3]~10\)) # (!char(4) & ((\char[3]~10\) # (GND)))
-- \char[4]~12\ = CARRY((!\char[3]~10\) # (!char(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => char(4),
	datad => VCC,
	cin => \char[3]~10\,
	combout => \char[4]~11_combout\,
	cout => \char[4]~12\);

-- Location: LCFF_X25_Y18_N29
\char[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \char[4]~11_combout\,
	ena => \char[5]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => char(4));

-- Location: LCCOMB_X25_Y18_N30
\char[5]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \char[5]~13_combout\ = char(5) $ (!\char[4]~12\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => char(5),
	cin => \char[4]~12\,
	combout => \char[5]~13_combout\);

-- Location: LCFF_X25_Y18_N31
\char[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \char[5]~13_combout\,
	ena => \char[5]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => char(5));

-- Location: LCCOMB_X25_Y18_N16
\char[0]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \char[0]~16_combout\ = char(0) $ (((\process_0~0_combout\ & ((\LessThan0~0_combout\) # (!char(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~0_combout\,
	datab => char(5),
	datac => char(0),
	datad => \process_0~0_combout\,
	combout => \char[0]~16_combout\);

-- Location: LCFF_X25_Y18_N17
\char[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \char[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => char(0));

-- Location: LCFF_X25_Y18_N25
\char[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \char[2]~7_combout\,
	ena => \char[5]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => char(2));

-- Location: M4K_X26_Y18
\U1|altsyncram_component|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000000000000000000000000000000009CA6F9D26995A6F886218862188621886219CA6F886218862188621886219CA6F9D26995A20882208822088220882208E2318C2309364791400",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../MIF.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ROM:U1|altsyncram:altsyncram_component|altsyncram_ht61:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 10,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 10,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 6,
	port_b_data_width => 10,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \clk~clkctrl_outclk\,
	portaaddr => \U1|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X24_Y18_N20
\U0|Selector37~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|Selector37~0_combout\ = (\lcd_enable~regout\ & (\U0|state.ready~regout\ & \U1|altsyncram_component|auto_generated|q_a\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd_enable~regout\,
	datac => \U0|state.ready~regout\,
	datad => \U1|altsyncram_component|auto_generated|q_a\(8),
	combout => \U0|Selector37~0_combout\);

-- Location: LCCOMB_X24_Y18_N8
\U0|rw~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|rw~0_combout\ = (!\U0|state.send~regout\ & (!\U0|state.initialize~regout\ & ((\U0|state.power_up~regout\) # (!\U0|LessThan0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|state.send~regout\,
	datab => \U0|state.power_up~regout\,
	datac => \U0|state.initialize~regout\,
	datad => \U0|LessThan0~10_combout\,
	combout => \U0|rw~0_combout\);

-- Location: LCFF_X24_Y18_N21
\U0|rw\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|Selector37~0_combout\,
	ena => \U0|rw~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|rw~regout\);

-- Location: LCCOMB_X25_Y18_N4
\U0|Selector36~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|Selector36~0_combout\ = (\lcd_enable~regout\ & (\U0|state.ready~regout\ & \U1|altsyncram_component|auto_generated|q_a\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd_enable~regout\,
	datac => \U0|state.ready~regout\,
	datad => \U1|altsyncram_component|auto_generated|q_a\(9),
	combout => \U0|Selector36~0_combout\);

-- Location: LCCOMB_X24_Y18_N22
\U0|rs~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|rs~feeder_combout\ = \U0|Selector36~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|Selector36~0_combout\,
	combout => \U0|rs~feeder_combout\);

-- Location: LCFF_X24_Y18_N23
\U0|rs\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|rs~feeder_combout\,
	ena => \U0|rw~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|rs~regout\);

-- Location: LCCOMB_X28_Y20_N0
\U0|Selector46~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|Selector46~0_combout\ = (!\U0|clk_count\(31) & \U0|state.send~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|clk_count\(31),
	datac => \U0|state.send~regout\,
	combout => \U0|Selector46~0_combout\);

-- Location: LCCOMB_X29_Y20_N24
\U0|LessThan10~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|LessThan10~3_combout\ = (!\U0|clk_count\(6) & (!\U0|clk_count\(9) & (!\U0|clk_count\(7) & !\U0|clk_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|clk_count\(6),
	datab => \U0|clk_count\(9),
	datac => \U0|clk_count\(7),
	datad => \U0|clk_count\(8),
	combout => \U0|LessThan10~3_combout\);

-- Location: LCCOMB_X30_Y20_N18
\U0|LessThan9~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|LessThan9~6_combout\ = (!\U0|clk_count\(4) & (!\U0|clk_count\(3) & !\U0|clk_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|clk_count\(4),
	datac => \U0|clk_count\(3),
	datad => \U0|clk_count\(5),
	combout => \U0|LessThan9~6_combout\);

-- Location: LCCOMB_X30_Y20_N4
\U0|LessThan12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|LessThan12~0_combout\ = ((\U0|LessThan9~6_combout\ & ((!\U0|clk_count\(2)) # (!\U0|clk_count\(1))))) # (!\U0|clk_count\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|clk_count\(1),
	datab => \U0|clk_count\(2),
	datac => \U0|clk_count\(6),
	datad => \U0|LessThan9~6_combout\,
	combout => \U0|LessThan12~0_combout\);

-- Location: LCCOMB_X29_Y20_N14
\U0|LessThan12~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|LessThan12~1_combout\ = (!\U0|clk_count\(9) & (((!\U0|clk_count\(7) & \U0|LessThan12~0_combout\)) # (!\U0|clk_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|clk_count\(8),
	datab => \U0|clk_count\(9),
	datac => \U0|clk_count\(7),
	datad => \U0|LessThan12~0_combout\,
	combout => \U0|LessThan12~1_combout\);

-- Location: LCCOMB_X28_Y20_N20
\U0|LessThan12~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|LessThan12~2_combout\ = (!\U0|clk_count\(11) & (\U0|LessThan9~1_combout\ & ((\U0|LessThan12~1_combout\) # (!\U0|clk_count\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|clk_count\(11),
	datab => \U0|clk_count\(10),
	datac => \U0|LessThan12~1_combout\,
	datad => \U0|LessThan9~1_combout\,
	combout => \U0|LessThan12~2_combout\);

-- Location: LCCOMB_X28_Y20_N28
\U0|LessThan10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|LessThan10~0_combout\ = (!\U0|clk_count\(10) & (!\U0|clk_count\(11) & \U0|LessThan9~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|clk_count\(10),
	datac => \U0|clk_count\(11),
	datad => \U0|LessThan9~1_combout\,
	combout => \U0|LessThan10~0_combout\);

-- Location: LCCOMB_X28_Y20_N14
\U0|Selector46~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|Selector46~3_combout\ = (!\U0|LessThan12~2_combout\ & (((!\U0|LessThan10~0_combout\) # (!\U0|LessThan10~3_combout\)) # (!\U0|LessThan10~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|LessThan10~2_combout\,
	datab => \U0|LessThan10~3_combout\,
	datac => \U0|LessThan12~2_combout\,
	datad => \U0|LessThan10~0_combout\,
	combout => \U0|Selector46~3_combout\);

-- Location: LCCOMB_X30_Y20_N12
\U0|LessThan10~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|LessThan10~1_combout\ = (\U0|clk_count\(4) & \U0|clk_count\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U0|clk_count\(4),
	datad => \U0|clk_count\(5),
	combout => \U0|LessThan10~1_combout\);

-- Location: LCCOMB_X30_Y20_N6
\U0|LessThan10~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|LessThan10~2_combout\ = ((!\U0|clk_count\(1) & (!\U0|clk_count\(2) & !\U0|clk_count\(3)))) # (!\U0|LessThan10~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|clk_count\(1),
	datab => \U0|clk_count\(2),
	datac => \U0|clk_count\(3),
	datad => \U0|LessThan10~1_combout\,
	combout => \U0|LessThan10~2_combout\);

-- Location: LCCOMB_X28_Y20_N18
\U0|Selector46~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|Selector46~1_combout\ = (\U0|LessThan10~0_combout\ & ((!\U0|LessThan10~2_combout\) # (!\U0|LessThan10~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|LessThan10~3_combout\,
	datac => \U0|LessThan10~2_combout\,
	datad => \U0|LessThan10~0_combout\,
	combout => \U0|Selector46~1_combout\);

-- Location: LCCOMB_X30_Y20_N28
\U0|LessThan11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|LessThan11~0_combout\ = (!\U0|clk_count\(6) & (((!\U0|LessThan10~1_combout\) # (!\U0|clk_count\(2))) # (!\U0|clk_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|clk_count\(3),
	datab => \U0|clk_count\(2),
	datac => \U0|clk_count\(6),
	datad => \U0|LessThan10~1_combout\,
	combout => \U0|LessThan11~0_combout\);

-- Location: LCCOMB_X29_Y20_N30
\U0|LessThan11~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|LessThan11~1_combout\ = ((!\U0|clk_count\(8) & ((\U0|LessThan11~0_combout\) # (!\U0|clk_count\(7))))) # (!\U0|clk_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|clk_count\(8),
	datab => \U0|clk_count\(9),
	datac => \U0|clk_count\(7),
	datad => \U0|LessThan11~0_combout\,
	combout => \U0|LessThan11~1_combout\);

-- Location: LCCOMB_X28_Y20_N10
\U0|Selector46~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|Selector46~2_combout\ = (\U0|LessThan9~5_combout\ & (((\U0|Selector46~1_combout\ & \U0|LessThan11~1_combout\)))) # (!\U0|LessThan9~5_combout\ & (\U0|e~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|e~regout\,
	datab => \U0|Selector46~1_combout\,
	datac => \U0|LessThan9~5_combout\,
	datad => \U0|LessThan11~1_combout\,
	combout => \U0|Selector46~2_combout\);

-- Location: LCCOMB_X28_Y20_N24
\U0|Selector46~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|Selector46~4_combout\ = (\U0|Selector46~0_combout\ & ((\U0|Selector46~2_combout\) # ((\U0|e~regout\ & \U0|Selector46~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|e~regout\,
	datab => \U0|Selector46~0_combout\,
	datac => \U0|Selector46~3_combout\,
	datad => \U0|Selector46~2_combout\,
	combout => \U0|Selector46~4_combout\);

-- Location: LCCOMB_X28_Y19_N4
\U0|LessThan8~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|LessThan8~3_combout\ = (\U0|Add0~30_combout\ & \U0|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U0|Add0~30_combout\,
	datad => \U0|Add0~32_combout\,
	combout => \U0|LessThan8~3_combout\);

-- Location: LCCOMB_X28_Y18_N28
\U0|LessThan7~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|LessThan7~7_combout\ = (!\U0|Add0~60_combout\ & (\U0|LessThan7~3_combout\ & ((\U0|LessThan7~6_combout\) # (!\U0|LessThan8~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add0~60_combout\,
	datab => \U0|LessThan8~3_combout\,
	datac => \U0|LessThan7~6_combout\,
	datad => \U0|LessThan7~3_combout\,
	combout => \U0|LessThan7~7_combout\);

-- Location: LCCOMB_X28_Y18_N18
\U0|Selector46~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|Selector46~8_combout\ = (\U0|LessThan7~7_combout\) # ((\U0|e~regout\ & (!\U0|Add0~62_combout\ & !\U0|LessThan8~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|e~regout\,
	datab => \U0|Add0~62_combout\,
	datac => \U0|LessThan8~6_combout\,
	datad => \U0|LessThan7~7_combout\,
	combout => \U0|Selector46~8_combout\);

-- Location: LCCOMB_X28_Y18_N0
\U0|LessThan4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|LessThan4~3_combout\ = (\U0|LessThan4~2_combout\ & (\U0|busy~4_combout\ & (\U0|LessThan7~4_combout\ & \U0|LessThan3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|LessThan4~2_combout\,
	datab => \U0|busy~4_combout\,
	datac => \U0|LessThan7~4_combout\,
	datad => \U0|LessThan3~2_combout\,
	combout => \U0|LessThan4~3_combout\);

-- Location: LCCOMB_X28_Y19_N22
\U0|busy~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|busy~8_combout\ = (!\U0|Add0~58_combout\ & (!\U0|LessThan6~3_combout\ & (!\U0|Add0~56_combout\ & \U0|LessThan7~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add0~58_combout\,
	datab => \U0|LessThan6~3_combout\,
	datac => \U0|Add0~56_combout\,
	datad => \U0|LessThan7~4_combout\,
	combout => \U0|busy~8_combout\);

-- Location: LCCOMB_X28_Y18_N26
\U0|Selector46~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|Selector46~7_combout\ = (!\U0|Add0~60_combout\ & ((\U0|LessThan2~3_combout\) # ((\U0|LessThan4~3_combout\) # (\U0|busy~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|LessThan2~3_combout\,
	datab => \U0|LessThan4~3_combout\,
	datac => \U0|Add0~60_combout\,
	datad => \U0|busy~8_combout\,
	combout => \U0|Selector46~7_combout\);

-- Location: LCCOMB_X28_Y18_N4
\U0|Selector46~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|Selector46~9_combout\ = (!\U0|state.send~regout\ & (\U0|Selector46~8_combout\ & (\U0|state.initialize~regout\ & !\U0|Selector46~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|state.send~regout\,
	datab => \U0|Selector46~8_combout\,
	datac => \U0|state.initialize~regout\,
	datad => \U0|Selector46~7_combout\,
	combout => \U0|Selector46~9_combout\);

-- Location: LCCOMB_X29_Y20_N16
\U0|LessThan2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|LessThan2~0_combout\ = (!\U0|Add0~12_combout\ & (((!\U0|Add0~10_combout\) # (!\U0|Add0~6_combout\)) # (!\U0|Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add0~8_combout\,
	datab => \U0|Add0~12_combout\,
	datac => \U0|Add0~6_combout\,
	datad => \U0|Add0~10_combout\,
	combout => \U0|LessThan2~0_combout\);

-- Location: LCCOMB_X29_Y20_N10
\U0|LessThan2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|LessThan2~1_combout\ = ((!\U0|Add0~16_combout\) # (!\U0|Add0~18_combout\)) # (!\U0|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add0~14_combout\,
	datac => \U0|Add0~18_combout\,
	datad => \U0|Add0~16_combout\,
	combout => \U0|LessThan2~1_combout\);

-- Location: LCCOMB_X29_Y20_N20
\U0|LessThan2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|LessThan2~2_combout\ = ((!\U0|Add0~20_combout\ & ((\U0|LessThan2~0_combout\) # (\U0|LessThan2~1_combout\)))) # (!\U0|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add0~22_combout\,
	datab => \U0|Add0~20_combout\,
	datac => \U0|LessThan2~0_combout\,
	datad => \U0|LessThan2~1_combout\,
	combout => \U0|LessThan2~2_combout\);

-- Location: LCCOMB_X29_Y18_N18
\U0|LessThan3~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|LessThan3~7_combout\ = (\U0|LessThan3~2_combout\ & (!\U0|Add0~56_combout\ & (!\U0|Add0~58_combout\ & \U0|LessThan7~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|LessThan3~2_combout\,
	datab => \U0|Add0~56_combout\,
	datac => \U0|Add0~58_combout\,
	datad => \U0|LessThan7~4_combout\,
	combout => \U0|LessThan3~7_combout\);

-- Location: LCCOMB_X29_Y18_N8
\U0|Selector43~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|Selector43~2_combout\ = (!\U0|Add0~24_combout\ & (\U0|LessThan3~6_combout\ & (!\U0|LessThan2~2_combout\ & \U0|LessThan3~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add0~24_combout\,
	datab => \U0|LessThan3~6_combout\,
	datac => \U0|LessThan2~2_combout\,
	datad => \U0|LessThan3~7_combout\,
	combout => \U0|Selector43~2_combout\);

-- Location: LCCOMB_X29_Y20_N22
\U0|LessThan7~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|LessThan7~8_combout\ = (\U0|Add0~14_combout\ & (\U0|Add0~16_combout\ & (\U0|Add0~12_combout\ & \U0|LessThan8~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add0~14_combout\,
	datab => \U0|Add0~16_combout\,
	datac => \U0|Add0~12_combout\,
	datad => \U0|LessThan8~1_combout\,
	combout => \U0|LessThan7~8_combout\);

-- Location: LCCOMB_X29_Y20_N8
\U0|LessThan1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|LessThan1~1_combout\ = (\U0|LessThan1~0_combout\ & (((!\U0|Add0~4_combout\ & !\U0|Add0~6_combout\)) # (!\U0|LessThan7~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|LessThan1~0_combout\,
	datab => \U0|Add0~4_combout\,
	datac => \U0|Add0~6_combout\,
	datad => \U0|LessThan7~8_combout\,
	combout => \U0|LessThan1~1_combout\);

-- Location: LCCOMB_X29_Y18_N26
\U0|LessThan1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|LessThan1~2_combout\ = (\U0|busy~4_combout\ & (\U0|LessThan7~4_combout\ & (\U0|LessThan3~2_combout\ & \U0|LessThan1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|busy~4_combout\,
	datab => \U0|LessThan7~4_combout\,
	datac => \U0|LessThan3~2_combout\,
	datad => \U0|LessThan1~1_combout\,
	combout => \U0|LessThan1~2_combout\);

-- Location: LCCOMB_X29_Y18_N6
\U0|Selector46~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|Selector46~10_combout\ = (\U0|Add0~62_combout\) # ((!\U0|Add0~60_combout\ & ((\U0|Selector43~2_combout\) # (\U0|LessThan1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add0~62_combout\,
	datab => \U0|Add0~60_combout\,
	datac => \U0|Selector43~2_combout\,
	datad => \U0|LessThan1~2_combout\,
	combout => \U0|Selector46~10_combout\);

-- Location: LCCOMB_X28_Y18_N6
\U0|Selector46~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|Selector46~11_combout\ = (!\U0|state.send~regout\ & ((\U0|state.initialize~regout\ & ((\U0|Selector46~10_combout\))) # (!\U0|state.initialize~regout\ & (\U0|e~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|state.initialize~regout\,
	datab => \U0|state.send~regout\,
	datac => \U0|e~regout\,
	datad => \U0|Selector46~10_combout\,
	combout => \U0|Selector46~11_combout\);

-- Location: LCCOMB_X28_Y18_N8
\U0|Selector46~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|Selector46~12_combout\ = (\U0|Selector46~6_combout\) # ((\U0|Selector46~4_combout\) # ((\U0|Selector46~9_combout\) # (\U0|Selector46~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Selector46~6_combout\,
	datab => \U0|Selector46~4_combout\,
	datac => \U0|Selector46~9_combout\,
	datad => \U0|Selector46~11_combout\,
	combout => \U0|Selector46~12_combout\);

-- Location: LCFF_X28_Y18_N9
\U0|e\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|Selector46~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|e~regout\);

-- Location: LCCOMB_X25_Y18_N12
\U0|Selector45~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|Selector45~4_combout\ = (\U0|state.initialize~regout\ & (!\U0|Add0~62_combout\ & ((!\lcd_enable~regout\) # (!\U0|state.ready~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|state.initialize~regout\,
	datab => \U0|state.ready~regout\,
	datac => \U0|Add0~62_combout\,
	datad => \lcd_enable~regout\,
	combout => \U0|Selector45~4_combout\);

-- Location: LCCOMB_X31_Y18_N0
\U0|busy~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|busy~5_combout\ = (\U0|LessThan7~0_combout\ & (!\U0|Add0~24_combout\ & \U0|LessThan3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|LessThan7~0_combout\,
	datac => \U0|Add0~24_combout\,
	datad => \U0|LessThan3~2_combout\,
	combout => \U0|busy~5_combout\);

-- Location: LCCOMB_X31_Y18_N10
\U0|busy~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|busy~6_combout\ = (\U0|LessThan7~1_combout\ & (\U0|busy~5_combout\ & (\U0|LessThan3~6_combout\ & \U0|LessThan7~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|LessThan7~1_combout\,
	datab => \U0|busy~5_combout\,
	datac => \U0|LessThan3~6_combout\,
	datad => \U0|LessThan7~2_combout\,
	combout => \U0|busy~6_combout\);

-- Location: LCCOMB_X27_Y18_N24
\U0|Selector45~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|Selector45~2_combout\ = (\U0|Selector45~4_combout\ & (!\U0|busy~6_combout\ & ((\U0|Add0~60_combout\) # (!\U0|LessThan4~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|LessThan4~3_combout\,
	datab => \U0|Selector45~4_combout\,
	datac => \U0|busy~6_combout\,
	datad => \U0|Add0~60_combout\,
	combout => \U0|Selector45~2_combout\);

-- Location: LCCOMB_X28_Y18_N30
\U0|LessThan5~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|LessThan5~3_combout\ = (\U0|LessThan5~2_combout\ & (\U0|busy~4_combout\ & (\U0|LessThan7~4_combout\ & \U0|LessThan3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|LessThan5~2_combout\,
	datab => \U0|busy~4_combout\,
	datac => \U0|LessThan7~4_combout\,
	datad => \U0|LessThan3~2_combout\,
	combout => \U0|LessThan5~3_combout\);

-- Location: LCCOMB_X27_Y18_N12
\U0|Selector45~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|Selector45~3_combout\ = (\U0|rw~1_combout\ & ((\U1|altsyncram_component|auto_generated|q_a\(0)) # ((\U0|Selector45~2_combout\ & \U0|LessThan5~3_combout\)))) # (!\U0|rw~1_combout\ & (((\U0|Selector45~2_combout\ & \U0|LessThan5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|rw~1_combout\,
	datab => \U1|altsyncram_component|auto_generated|q_a\(0),
	datac => \U0|Selector45~2_combout\,
	datad => \U0|LessThan5~3_combout\,
	combout => \U0|Selector45~3_combout\);

-- Location: LCCOMB_X27_Y18_N30
\U0|lcd_data[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|lcd_data[5]~0_combout\ = (!\U0|state.send~regout\ & (!\U0|rw~2_combout\ & ((!\U0|busy~7_combout\) # (!\U0|state.initialize~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|state.send~regout\,
	datab => \U0|state.initialize~regout\,
	datac => \U0|rw~2_combout\,
	datad => \U0|busy~7_combout\,
	combout => \U0|lcd_data[5]~0_combout\);

-- Location: LCFF_X27_Y18_N13
\U0|lcd_data[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|Selector45~3_combout\,
	ena => \U0|lcd_data[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|lcd_data\(0));

-- Location: LCCOMB_X28_Y19_N6
\U0|LessThan7~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|LessThan7~9_combout\ = (\U0|busy~4_combout\ & (\U0|LessThan7~4_combout\ & ((\U0|LessThan7~6_combout\) # (!\U0|LessThan8~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|LessThan7~6_combout\,
	datab => \U0|LessThan8~3_combout\,
	datac => \U0|busy~4_combout\,
	datad => \U0|LessThan7~4_combout\,
	combout => \U0|LessThan7~9_combout\);

-- Location: LCCOMB_X27_Y18_N4
\U0|Selector44~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|Selector44~3_combout\ = (\U0|Selector44~0_combout\ & (\U0|LessThan7~9_combout\ & ((!\U0|busy~6_combout\) # (!\U0|busy~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|busy~4_combout\,
	datab => \U0|busy~6_combout\,
	datac => \U0|Selector44~0_combout\,
	datad => \U0|LessThan7~9_combout\,
	combout => \U0|Selector44~3_combout\);

-- Location: LCCOMB_X27_Y18_N6
\U0|Selector44~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|Selector44~2_combout\ = (\U0|Selector44~1_combout\ & (!\U0|LessThan5~3_combout\ & ((\U0|Add0~60_combout\) # (!\U0|LessThan4~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Selector44~1_combout\,
	datab => \U0|Add0~60_combout\,
	datac => \U0|LessThan4~3_combout\,
	datad => \U0|LessThan5~3_combout\,
	combout => \U0|Selector44~2_combout\);

-- Location: LCCOMB_X27_Y18_N18
\U0|Selector44~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|Selector44~4_combout\ = (\U0|rw~1_combout\ & ((\U1|altsyncram_component|auto_generated|q_a\(1)) # ((\U0|Selector44~3_combout\ & \U0|Selector44~2_combout\)))) # (!\U0|rw~1_combout\ & (((\U0|Selector44~3_combout\ & \U0|Selector44~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|rw~1_combout\,
	datab => \U1|altsyncram_component|auto_generated|q_a\(1),
	datac => \U0|Selector44~3_combout\,
	datad => \U0|Selector44~2_combout\,
	combout => \U0|Selector44~4_combout\);

-- Location: LCFF_X27_Y18_N19
\U0|lcd_data[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|Selector44~4_combout\,
	ena => \U0|lcd_data[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|lcd_data\(1));

-- Location: LCCOMB_X28_Y18_N10
\U0|LessThan2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|LessThan2~3_combout\ = (!\U0|Add0~24_combout\ & (\U0|LessThan3~2_combout\ & (\U0|LessThan2~2_combout\ & \U0|LessThan7~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add0~24_combout\,
	datab => \U0|LessThan3~2_combout\,
	datac => \U0|LessThan2~2_combout\,
	datad => \U0|LessThan7~3_combout\,
	combout => \U0|LessThan2~3_combout\);

-- Location: LCCOMB_X27_Y18_N14
\U0|Selector43~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|Selector43~3_combout\ = (!\U0|busy~8_combout\ & (\U0|LessThan7~7_combout\ & (!\U0|LessThan2~3_combout\ & \U0|Selector44~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|busy~8_combout\,
	datab => \U0|LessThan7~7_combout\,
	datac => \U0|LessThan2~3_combout\,
	datad => \U0|Selector44~2_combout\,
	combout => \U0|Selector43~3_combout\);

-- Location: LCCOMB_X27_Y18_N16
\U0|Selector44~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|Selector44~1_combout\ = (\U0|state.initialize~regout\ & (!\U0|Add0~60_combout\ & ((!\lcd_enable~regout\) # (!\U0|state.ready~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|state.ready~regout\,
	datab => \lcd_enable~regout\,
	datac => \U0|state.initialize~regout\,
	datad => \U0|Add0~60_combout\,
	combout => \U0|Selector44~1_combout\);

-- Location: LCCOMB_X28_Y18_N2
\U0|Selector43~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|Selector43~4_combout\ = (!\U0|Selector43~6_combout\ & (((!\U0|LessThan1~2_combout\ & !\U0|Selector43~2_combout\)) # (!\U0|Selector44~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Selector43~6_combout\,
	datab => \U0|Selector44~1_combout\,
	datac => \U0|LessThan1~2_combout\,
	datad => \U0|Selector43~2_combout\,
	combout => \U0|Selector43~4_combout\);

-- Location: LCCOMB_X27_Y18_N8
\U0|Selector43~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|Selector43~5_combout\ = (\U0|Selector43~3_combout\) # (((\U0|rw~1_combout\ & \U1|altsyncram_component|auto_generated|q_a\(2))) # (!\U0|Selector43~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|rw~1_combout\,
	datab => \U1|altsyncram_component|auto_generated|q_a\(2),
	datac => \U0|Selector43~3_combout\,
	datad => \U0|Selector43~4_combout\,
	combout => \U0|Selector43~5_combout\);

-- Location: LCFF_X27_Y18_N9
\U0|lcd_data[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|Selector43~5_combout\,
	ena => \U0|lcd_data[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|lcd_data\(2));

-- Location: LCCOMB_X27_Y18_N26
\U0|Selector42~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|Selector42~2_combout\ = ((\U0|state.ready~regout\ & (\lcd_enable~regout\ & \U1|altsyncram_component|auto_generated|q_a\(3)))) # (!\U0|Selector43~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|state.ready~regout\,
	datab => \lcd_enable~regout\,
	datac => \U1|altsyncram_component|auto_generated|q_a\(3),
	datad => \U0|Selector43~4_combout\,
	combout => \U0|Selector42~2_combout\);

-- Location: LCFF_X27_Y18_N27
\U0|lcd_data[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|Selector42~2_combout\,
	ena => \U0|lcd_data[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|lcd_data\(3));

-- Location: LCCOMB_X27_Y18_N2
\U0|Selector41~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|Selector41~2_combout\ = (!\U0|state.ready~regout\ & ((\U0|Add0~62_combout\) # (!\U0|state.initialize~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|state.ready~regout\,
	datab => \U0|state.initialize~regout\,
	datad => \U0|Add0~62_combout\,
	combout => \U0|Selector41~2_combout\);

-- Location: LCCOMB_X27_Y18_N0
\U0|Selector41~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|Selector41~3_combout\ = (\U0|Selector41~2_combout\) # ((!\U0|state.ready~regout\ & (\U0|LessThan1~2_combout\ & !\U0|Add0~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|state.ready~regout\,
	datab => \U0|Selector41~2_combout\,
	datac => \U0|LessThan1~2_combout\,
	datad => \U0|Add0~60_combout\,
	combout => \U0|Selector41~3_combout\);

-- Location: LCCOMB_X27_Y18_N28
\U0|Selector41~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|Selector41~4_combout\ = (\U0|Selector41~3_combout\) # ((\U0|state.ready~regout\ & (\lcd_enable~regout\ & \U1|altsyncram_component|auto_generated|q_a\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|state.ready~regout\,
	datab => \lcd_enable~regout\,
	datac => \U1|altsyncram_component|auto_generated|q_a\(4),
	datad => \U0|Selector41~3_combout\,
	combout => \U0|Selector41~4_combout\);

-- Location: LCFF_X27_Y18_N29
\U0|lcd_data[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|Selector41~4_combout\,
	ena => \U0|lcd_data[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|lcd_data\(4));

-- Location: LCCOMB_X27_Y18_N22
\U0|Selector40~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|Selector40~2_combout\ = (\U0|Selector41~3_combout\) # ((\U0|state.ready~regout\ & (\lcd_enable~regout\ & \U1|altsyncram_component|auto_generated|q_a\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|state.ready~regout\,
	datab => \lcd_enable~regout\,
	datac => \U1|altsyncram_component|auto_generated|q_a\(5),
	datad => \U0|Selector41~3_combout\,
	combout => \U0|Selector40~2_combout\);

-- Location: LCFF_X27_Y18_N23
\U0|lcd_data[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \U0|Selector40~2_combout\,
	ena => \U0|lcd_data[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|lcd_data\(5));

-- Location: LCCOMB_X25_Y18_N6
\U0|Selector39~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|Selector39~0_combout\ = (\U0|state.ready~regout\ & (\U1|altsyncram_component|auto_generated|q_a\(6) & \lcd_enable~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|state.ready~regout\,
	datac => \U1|altsyncram_component|auto_generated|q_a\(6),
	datad => \lcd_enable~regout\,
	combout => \U0|Selector39~0_combout\);

-- Location: LCFF_X27_Y18_N21
\U0|lcd_data[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \U0|Selector39~0_combout\,
	sload => VCC,
	ena => \U0|lcd_data[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|lcd_data\(6));

-- Location: LCCOMB_X25_Y18_N8
\U0|Selector38~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \U0|Selector38~0_combout\ = (\U0|state.ready~regout\ & (\U1|altsyncram_component|auto_generated|q_a\(7) & \lcd_enable~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|state.ready~regout\,
	datac => \U1|altsyncram_component|auto_generated|q_a\(7),
	datad => \lcd_enable~regout\,
	combout => \U0|Selector38~0_combout\);

-- Location: LCFF_X27_Y18_N3
\U0|lcd_data[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \U0|Selector38~0_combout\,
	sload => VCC,
	ena => \U0|lcd_data[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U0|lcd_data\(7));

-- Location: LCCOMB_X25_Y18_N20
\ledr~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ledr~0_combout\ = (\process_0~0_combout\ & (!\LessThan0~0_combout\ & (char(5)))) # (!\process_0~0_combout\ & (((\ledr~reg0_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~0_combout\,
	datab => char(5),
	datac => \ledr~reg0_regout\,
	datad => \process_0~0_combout\,
	combout => \ledr~0_combout\);

-- Location: LCFF_X25_Y18_N21
\ledr~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ledr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ledr~reg0_regout\);

-- Location: PIN_K4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\rw~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \U0|rw~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_rw);

-- Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\rs~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \U0|rs~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_rs);

-- Location: PIN_K3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\e~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \U0|e~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_e);

-- Location: PIN_L4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\lcd_on~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_lcd_on);

-- Location: PIN_K2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\lcd_blon~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_lcd_blon);

-- Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\lcd_data[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \U0|lcd_data\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_lcd_data(0));

-- Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\lcd_data[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \U0|lcd_data\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_lcd_data(1));

-- Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\lcd_data[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \U0|lcd_data\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_lcd_data(2));

-- Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\lcd_data[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \U0|lcd_data\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_lcd_data(3));

-- Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\lcd_data[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \U0|lcd_data\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_lcd_data(4));

-- Location: PIN_J3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\lcd_data[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \U0|lcd_data\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_lcd_data(5));

-- Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\lcd_data[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \U0|lcd_data\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_lcd_data(6));

-- Location: PIN_H3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\lcd_data[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \U0|lcd_data\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_lcd_data(7));

-- Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ledr~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ledr~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ledr);
END structure;


