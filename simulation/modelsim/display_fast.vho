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
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "09/06/2018 19:01:12"

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
	rw : OUT std_logic;
	rs : OUT std_logic;
	e : OUT std_logic;
	lcd_on : OUT std_logic;
	lcd_blon : OUT std_logic;
	lcd_data : OUT std_logic_vector(7 DOWNTO 0)
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
-- clk	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL ww_rw : std_logic;
SIGNAL ww_rs : std_logic;
SIGNAL ww_e : std_logic;
SIGNAL ww_lcd_on : std_logic;
SIGNAL ww_lcd_blon : std_logic;
SIGNAL ww_lcd_data : std_logic_vector(7 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dut|Add0~2_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~8\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~13_combout\ : std_logic;
SIGNAL \dut|Selector46~0_combout\ : std_logic;
SIGNAL \dut|LessThan10~0_combout\ : std_logic;
SIGNAL \dut|LessThan10~1_combout\ : std_logic;
SIGNAL \dut|LessThan10~2_combout\ : std_logic;
SIGNAL \dut|LessThan10~3_combout\ : std_logic;
SIGNAL \dut|Selector46~1_combout\ : std_logic;
SIGNAL \dut|LessThan11~0_combout\ : std_logic;
SIGNAL \dut|LessThan11~1_combout\ : std_logic;
SIGNAL \dut|LessThan9~2_combout\ : std_logic;
SIGNAL \dut|LessThan9~3_combout\ : std_logic;
SIGNAL \dut|LessThan9~4_combout\ : std_logic;
SIGNAL \dut|Selector46~2_combout\ : std_logic;
SIGNAL \dut|LessThan9~6_combout\ : std_logic;
SIGNAL \dut|LessThan12~0_combout\ : std_logic;
SIGNAL \dut|LessThan12~1_combout\ : std_logic;
SIGNAL \dut|LessThan12~2_combout\ : std_logic;
SIGNAL \dut|Selector46~3_combout\ : std_logic;
SIGNAL \dut|Selector46~4_combout\ : std_logic;
SIGNAL \dut|Selector41~2_combout\ : std_logic;
SIGNAL \dut|Selector22~0_combout\ : std_logic;
SIGNAL \dut|Selector8~0_combout\ : std_logic;
SIGNAL \dut|Selector6~0_combout\ : std_logic;
SIGNAL \dut|Selector28~0_combout\ : std_logic;
SIGNAL \Mux9~2_combout\ : std_logic;
SIGNAL \Mux9~3_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux9~4_combout\ : std_logic;
SIGNAL \Mux8~1_combout\ : std_logic;
SIGNAL \Mux8~2_combout\ : std_logic;
SIGNAL \Mux8~3_combout\ : std_logic;
SIGNAL \Mux7~2_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \Mux5~3_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \dut|Selector45~5_combout\ : std_logic;
SIGNAL \Mux9~5_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \dut|Selector18~0_combout\ : std_logic;
SIGNAL \dut|Selector29~0_combout\ : std_logic;
SIGNAL \dut|Selector31~0_combout\ : std_logic;
SIGNAL \dut|Add0~0_combout\ : std_logic;
SIGNAL \dut|Selector32~0_combout\ : std_logic;
SIGNAL \dut|Add0~1\ : std_logic;
SIGNAL \dut|Add0~3\ : std_logic;
SIGNAL \dut|Add0~4_combout\ : std_logic;
SIGNAL \dut|Selector30~0_combout\ : std_logic;
SIGNAL \dut|Add0~5\ : std_logic;
SIGNAL \dut|Add0~7\ : std_logic;
SIGNAL \dut|Add0~9\ : std_logic;
SIGNAL \dut|Add0~10_combout\ : std_logic;
SIGNAL \dut|Selector27~0_combout\ : std_logic;
SIGNAL \dut|Add0~11\ : std_logic;
SIGNAL \dut|Add0~12_combout\ : std_logic;
SIGNAL \dut|Selector26~0_combout\ : std_logic;
SIGNAL \dut|Add0~13\ : std_logic;
SIGNAL \dut|Add0~14_combout\ : std_logic;
SIGNAL \dut|Selector25~0_combout\ : std_logic;
SIGNAL \dut|Add0~15\ : std_logic;
SIGNAL \dut|Add0~16_combout\ : std_logic;
SIGNAL \dut|Selector24~0_combout\ : std_logic;
SIGNAL \dut|Add0~17\ : std_logic;
SIGNAL \dut|Add0~19\ : std_logic;
SIGNAL \dut|Add0~21\ : std_logic;
SIGNAL \dut|Add0~22_combout\ : std_logic;
SIGNAL \dut|Selector21~0_combout\ : std_logic;
SIGNAL \dut|Add0~23\ : std_logic;
SIGNAL \dut|Add0~24_combout\ : std_logic;
SIGNAL \dut|Selector20~0_combout\ : std_logic;
SIGNAL \dut|Add0~25\ : std_logic;
SIGNAL \dut|Add0~27\ : std_logic;
SIGNAL \dut|Add0~28_combout\ : std_logic;
SIGNAL \dut|Add0~18_combout\ : std_logic;
SIGNAL \dut|LessThan8~1_combout\ : std_logic;
SIGNAL \dut|LessThan8~2_combout\ : std_logic;
SIGNAL \dut|LessThan8~4_combout\ : std_logic;
SIGNAL \dut|LessThan8~5_combout\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \dut|Selector16~0_combout\ : std_logic;
SIGNAL \dut|Add0~29\ : std_logic;
SIGNAL \dut|Add0~30_combout\ : std_logic;
SIGNAL \dut|Selector17~0_combout\ : std_logic;
SIGNAL \dut|Add0~31\ : std_logic;
SIGNAL \dut|Add0~32_combout\ : std_logic;
SIGNAL \dut|LessThan8~3_combout\ : std_logic;
SIGNAL \dut|Add0~20_combout\ : std_logic;
SIGNAL \dut|LessThan1~0_combout\ : std_logic;
SIGNAL \dut|Add0~26_combout\ : std_logic;
SIGNAL \dut|Add0~6_combout\ : std_logic;
SIGNAL \dut|LessThan7~6_combout\ : std_logic;
SIGNAL \dut|LessThan7~7_combout\ : std_logic;
SIGNAL \dut|Add0~33\ : std_logic;
SIGNAL \dut|Add0~34_combout\ : std_logic;
SIGNAL \dut|Selector15~0_combout\ : std_logic;
SIGNAL \dut|Add0~35\ : std_logic;
SIGNAL \dut|Add0~36_combout\ : std_logic;
SIGNAL \dut|Selector14~0_combout\ : std_logic;
SIGNAL \dut|Add0~37\ : std_logic;
SIGNAL \dut|Add0~38_combout\ : std_logic;
SIGNAL \dut|Selector13~0_combout\ : std_logic;
SIGNAL \dut|Add0~39\ : std_logic;
SIGNAL \dut|Add0~40_combout\ : std_logic;
SIGNAL \dut|Selector12~0_combout\ : std_logic;
SIGNAL \dut|Add0~41\ : std_logic;
SIGNAL \dut|Add0~43\ : std_logic;
SIGNAL \dut|Add0~44_combout\ : std_logic;
SIGNAL \dut|Selector10~0_combout\ : std_logic;
SIGNAL \dut|Add0~45\ : std_logic;
SIGNAL \dut|Add0~46_combout\ : std_logic;
SIGNAL \dut|Selector9~0_combout\ : std_logic;
SIGNAL \dut|Add0~47\ : std_logic;
SIGNAL \dut|Add0~48_combout\ : std_logic;
SIGNAL \dut|Add0~42_combout\ : std_logic;
SIGNAL \dut|LessThan7~0_combout\ : std_logic;
SIGNAL \dut|Selector3~0_combout\ : std_logic;
SIGNAL \dut|Add0~57\ : std_logic;
SIGNAL \dut|Add0~58_combout\ : std_logic;
SIGNAL \dut|busy~2_combout\ : std_logic;
SIGNAL \dut|Add0~49\ : std_logic;
SIGNAL \dut|Add0~50_combout\ : std_logic;
SIGNAL \dut|Add0~52_combout\ : std_logic;
SIGNAL \dut|LessThan7~1_combout\ : std_logic;
SIGNAL \dut|LessThan7~5_combout\ : std_logic;
SIGNAL \dut|LessThan7~8_combout\ : std_logic;
SIGNAL \dut|Selector2~0_combout\ : std_logic;
SIGNAL \dut|Add0~59\ : std_logic;
SIGNAL \dut|Add0~60_combout\ : std_logic;
SIGNAL \dut|LessThan6~1_combout\ : std_logic;
SIGNAL \dut|LessThan6~2_combout\ : std_logic;
SIGNAL \dut|LessThan8~0_combout\ : std_logic;
SIGNAL \dut|LessThan6~3_combout\ : std_logic;
SIGNAL \dut|Selector44~0_combout\ : std_logic;
SIGNAL \dut|LessThan3~0_combout\ : std_logic;
SIGNAL \dut|LessThan3~4_combout\ : std_logic;
SIGNAL \dut|LessThan3~1_combout\ : std_logic;
SIGNAL \dut|LessThan3~3_combout\ : std_logic;
SIGNAL \dut|LessThan3~5_combout\ : std_logic;
SIGNAL \dut|LessThan7~2_combout\ : std_logic;
SIGNAL \dut|LessThan7~3_combout\ : std_logic;
SIGNAL \dut|busy~4_combout\ : std_logic;
SIGNAL \dut|state~8_combout\ : std_logic;
SIGNAL \dut|busy~5_combout\ : std_logic;
SIGNAL \dut|Selector34~5_combout\ : std_logic;
SIGNAL \dut|busy~regout\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~7_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \lcd_bus[6]~0_combout\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \Add0~15_combout\ : std_logic;
SIGNAL \Add0~9_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \lcd_bus[9]~1_combout\ : std_logic;
SIGNAL \lcd_enable~1_combout\ : std_logic;
SIGNAL \lcd_enable~regout\ : std_logic;
SIGNAL \dut|lcd_data[3]~0_combout\ : std_logic;
SIGNAL \dut|Selector35~1_combout\ : std_logic;
SIGNAL \dut|state.send~regout\ : std_logic;
SIGNAL \dut|clk_count[23]~2_combout\ : std_logic;
SIGNAL \dut|clk_count[23]~3_combout\ : std_logic;
SIGNAL \dut|LessThan0~7_combout\ : std_logic;
SIGNAL \dut|LessThan0~8_combout\ : std_logic;
SIGNAL \dut|LessThan0~0_combout\ : std_logic;
SIGNAL \dut|Selector23~0_combout\ : std_logic;
SIGNAL \dut|LessThan0~3_combout\ : std_logic;
SIGNAL \dut|LessThan0~4_combout\ : std_logic;
SIGNAL \dut|LessThan0~5_combout\ : std_logic;
SIGNAL \dut|LessThan0~1_combout\ : std_logic;
SIGNAL \dut|LessThan0~2_combout\ : std_logic;
SIGNAL \dut|LessThan0~6_combout\ : std_logic;
SIGNAL \dut|LessThan0~10_combout\ : std_logic;
SIGNAL \dut|state.power_up~regout\ : std_logic;
SIGNAL \dut|lcd_data[3]~1_combout\ : std_logic;
SIGNAL \dut|Selector33~0_combout\ : std_logic;
SIGNAL \dut|state.initialize~regout\ : std_logic;
SIGNAL \dut|Selector1~0_combout\ : std_logic;
SIGNAL \dut|Selector35~0_combout\ : std_logic;
SIGNAL \dut|Add0~61\ : std_logic;
SIGNAL \dut|Add0~62_combout\ : std_logic;
SIGNAL \dut|clk_count[23]~0_combout\ : std_logic;
SIGNAL \dut|clk_count[23]~1_combout\ : std_logic;
SIGNAL \dut|clk_count[23]~4_combout\ : std_logic;
SIGNAL \dut|clk_count[23]~5_combout\ : std_logic;
SIGNAL \dut|clk_count[23]~6_combout\ : std_logic;
SIGNAL \dut|Selector7~0_combout\ : std_logic;
SIGNAL \dut|Add0~51\ : std_logic;
SIGNAL \dut|Add0~53\ : std_logic;
SIGNAL \dut|Add0~54_combout\ : std_logic;
SIGNAL \dut|Selector5~0_combout\ : std_logic;
SIGNAL \dut|Add0~55\ : std_logic;
SIGNAL \dut|Add0~56_combout\ : std_logic;
SIGNAL \dut|Selector4~0_combout\ : std_logic;
SIGNAL \dut|LessThan0~9_combout\ : std_logic;
SIGNAL \dut|Selector19~0_combout\ : std_logic;
SIGNAL \dut|LessThan9~0_combout\ : std_logic;
SIGNAL \dut|Selector11~0_combout\ : std_logic;
SIGNAL \dut|LessThan9~1_combout\ : std_logic;
SIGNAL \dut|LessThan9~5_combout\ : std_logic;
SIGNAL \dut|Selector34~2_combout\ : std_logic;
SIGNAL \dut|Selector34~3_combout\ : std_logic;
SIGNAL \dut|Selector34~4_combout\ : std_logic;
SIGNAL \dut|state.ready~regout\ : std_logic;
SIGNAL \dut|rs~0_combout\ : std_logic;
SIGNAL \dut|rs~1_combout\ : std_logic;
SIGNAL \dut|rs~regout\ : std_logic;
SIGNAL \dut|LessThan2~1_combout\ : std_logic;
SIGNAL \dut|Add0~8_combout\ : std_logic;
SIGNAL \dut|LessThan2~0_combout\ : std_logic;
SIGNAL \dut|LessThan2~2_combout\ : std_logic;
SIGNAL \dut|LessThan7~4_combout\ : std_logic;
SIGNAL \dut|LessThan3~2_combout\ : std_logic;
SIGNAL \dut|Selector43~0_combout\ : std_logic;
SIGNAL \dut|Selector46~10_combout\ : std_logic;
SIGNAL \dut|Selector46~11_combout\ : std_logic;
SIGNAL \dut|LessThan6~0_combout\ : std_logic;
SIGNAL \dut|LessThan5~0_combout\ : std_logic;
SIGNAL \dut|LessThan5~1_combout\ : std_logic;
SIGNAL \dut|LessThan5~2_combout\ : std_logic;
SIGNAL \dut|LessThan5~3_combout\ : std_logic;
SIGNAL \dut|LessThan4~1_combout\ : std_logic;
SIGNAL \dut|LessThan4~0_combout\ : std_logic;
SIGNAL \dut|LessThan4~2_combout\ : std_logic;
SIGNAL \dut|LessThan4~3_combout\ : std_logic;
SIGNAL \dut|LessThan2~3_combout\ : std_logic;
SIGNAL \dut|LessThan2~4_combout\ : std_logic;
SIGNAL \dut|Selector46~5_combout\ : std_logic;
SIGNAL \dut|Selector46~6_combout\ : std_logic;
SIGNAL \dut|LessThan8~6_combout\ : std_logic;
SIGNAL \dut|Selector46~8_combout\ : std_logic;
SIGNAL \dut|busy~3_combout\ : std_logic;
SIGNAL \dut|Selector46~7_combout\ : std_logic;
SIGNAL \dut|Selector46~9_combout\ : std_logic;
SIGNAL \dut|Selector46~12_combout\ : std_logic;
SIGNAL \dut|e~regout\ : std_logic;
SIGNAL \dut|Selector45~3_combout\ : std_logic;
SIGNAL \dut|Selector45~4_combout\ : std_logic;
SIGNAL \dut|lcd_data[3]~2_combout\ : std_logic;
SIGNAL \dut|Selector45~2_combout\ : std_logic;
SIGNAL \dut|Selector44~1_combout\ : std_logic;
SIGNAL \dut|LessThan7~10_combout\ : std_logic;
SIGNAL \dut|Selector44~2_combout\ : std_logic;
SIGNAL \dut|Selector44~3_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \Mux7~3_combout\ : std_logic;
SIGNAL \lcd_enable~0_combout\ : std_logic;
SIGNAL \lcd_bus[0]~2_combout\ : std_logic;
SIGNAL \dut|Selector43~1_combout\ : std_logic;
SIGNAL \dut|LessThan7~9_combout\ : std_logic;
SIGNAL \dut|LessThan1~1_combout\ : std_logic;
SIGNAL \dut|LessThan1~2_combout\ : std_logic;
SIGNAL \dut|Selector43~2_combout\ : std_logic;
SIGNAL \dut|Selector43~3_combout\ : std_logic;
SIGNAL \dut|Selector43~4_combout\ : std_logic;
SIGNAL \dut|Selector42~2_combout\ : std_logic;
SIGNAL \dut|Selector41~3_combout\ : std_logic;
SIGNAL \dut|Selector41~4_combout\ : std_logic;
SIGNAL \dut|Selector40~2_combout\ : std_logic;
SIGNAL \lcd_bus[6]~feeder_combout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \dut|Selector39~0_combout\ : std_logic;
SIGNAL lcd_bus : std_logic_vector(9 DOWNTO 0);
SIGNAL char : std_logic_vector(5 DOWNTO 0);
SIGNAL \dut|clk_count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \dut|lcd_data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_Add0~15_combout\ : std_logic;

BEGIN

ww_clk <= clk;
rw <= ww_rw;
rs <= ww_rs;
e <= ww_e;
lcd_on <= ww_lcd_on;
lcd_blon <= ww_lcd_blon;
lcd_data <= ww_lcd_data;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);
\ALT_INV_Add0~15_combout\ <= NOT \Add0~15_combout\;

-- Location: LCCOMB_X28_Y22_N2
\dut|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|Add0~2_combout\ = (\dut|clk_count\(1) & (!\dut|Add0~1\)) # (!\dut|clk_count\(1) & ((\dut|Add0~1\) # (GND)))
-- \dut|Add0~3\ = CARRY((!\dut|Add0~1\) # (!\dut|clk_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dut|clk_count\(1),
	datad => VCC,
	cin => \dut|Add0~1\,
	combout => \dut|Add0~2_combout\,
	cout => \dut|Add0~3\);

-- Location: LCCOMB_X35_Y21_N2
\Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = char(0) $ (VCC)
-- \Add0~1\ = CARRY(char(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => char(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X35_Y21_N4
\Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (char(1) & (!\Add0~1\)) # (!char(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!char(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => char(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X35_Y21_N6
\Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (char(2) & (\Add0~3\ $ (GND))) # (!char(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((char(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => char(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X35_Y21_N8
\Add0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~7_combout\ = (char(3) & (!\Add0~5\)) # (!char(3) & ((\Add0~5\) # (GND)))
-- \Add0~8\ = CARRY((!\Add0~5\) # (!char(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => char(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~7_combout\,
	cout => \Add0~8\);

-- Location: LCCOMB_X35_Y21_N10
\Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (char(4) & (\Add0~8\ $ (GND))) # (!char(4) & (!\Add0~8\ & VCC))
-- \Add0~11\ = CARRY((char(4) & !\Add0~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => char(4),
	datad => VCC,
	cin => \Add0~8\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X35_Y21_N12
\Add0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~13_combout\ = \Add0~11\ $ (char(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => char(5),
	cin => \Add0~11\,
	combout => \Add0~13_combout\);

-- Location: LCFF_X27_Y22_N9
\dut|clk_count[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \dut|Selector22~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|clk_count\(10));

-- Location: LCFF_X27_Y22_N13
\dut|clk_count[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \dut|Selector8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|clk_count\(24));

-- Location: LCFF_X27_Y21_N31
\dut|clk_count[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \dut|Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|clk_count\(26));

-- Location: LCCOMB_X31_Y20_N12
\dut|Selector46~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|Selector46~0_combout\ = (!\dut|clk_count\(31) & \dut|state.send~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dut|clk_count\(31),
	datad => \dut|state.send~regout\,
	combout => \dut|Selector46~0_combout\);

-- Location: LCCOMB_X31_Y20_N18
\dut|LessThan10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|LessThan10~0_combout\ = (!\dut|clk_count\(10) & (!\dut|clk_count\(11) & \dut|LessThan9~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|clk_count\(10),
	datac => \dut|clk_count\(11),
	datad => \dut|LessThan9~1_combout\,
	combout => \dut|LessThan10~0_combout\);

-- Location: LCFF_X29_Y20_N7
\dut|clk_count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \dut|Selector28~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|clk_count\(4));

-- Location: LCCOMB_X28_Y20_N12
\dut|LessThan10~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|LessThan10~1_combout\ = (\dut|clk_count\(5) & \dut|clk_count\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dut|clk_count\(5),
	datad => \dut|clk_count\(4),
	combout => \dut|LessThan10~1_combout\);

-- Location: LCCOMB_X28_Y20_N26
\dut|LessThan10~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|LessThan10~2_combout\ = ((!\dut|clk_count\(1) & (!\dut|clk_count\(3) & !\dut|clk_count\(2)))) # (!\dut|LessThan10~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|clk_count\(1),
	datab => \dut|clk_count\(3),
	datac => \dut|clk_count\(2),
	datad => \dut|LessThan10~1_combout\,
	combout => \dut|LessThan10~2_combout\);

-- Location: LCCOMB_X31_Y20_N4
\dut|LessThan10~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|LessThan10~3_combout\ = (!\dut|clk_count\(7) & (!\dut|clk_count\(6) & (!\dut|clk_count\(8) & !\dut|clk_count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|clk_count\(7),
	datab => \dut|clk_count\(6),
	datac => \dut|clk_count\(8),
	datad => \dut|clk_count\(9),
	combout => \dut|LessThan10~3_combout\);

-- Location: LCCOMB_X31_Y20_N6
\dut|Selector46~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|Selector46~1_combout\ = (\dut|LessThan10~0_combout\ & ((!\dut|LessThan10~2_combout\) # (!\dut|LessThan10~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut|LessThan10~3_combout\,
	datac => \dut|LessThan10~2_combout\,
	datad => \dut|LessThan10~0_combout\,
	combout => \dut|Selector46~1_combout\);

-- Location: LCCOMB_X28_Y20_N28
\dut|LessThan11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|LessThan11~0_combout\ = (!\dut|clk_count\(6) & (((!\dut|LessThan10~1_combout\) # (!\dut|clk_count\(2))) # (!\dut|clk_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|clk_count\(6),
	datab => \dut|clk_count\(3),
	datac => \dut|clk_count\(2),
	datad => \dut|LessThan10~1_combout\,
	combout => \dut|LessThan11~0_combout\);

-- Location: LCCOMB_X28_Y20_N18
\dut|LessThan11~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|LessThan11~1_combout\ = ((!\dut|clk_count\(8) & ((\dut|LessThan11~0_combout\) # (!\dut|clk_count\(7))))) # (!\dut|clk_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|clk_count\(7),
	datab => \dut|clk_count\(8),
	datac => \dut|clk_count\(9),
	datad => \dut|LessThan11~0_combout\,
	combout => \dut|LessThan11~1_combout\);

-- Location: LCCOMB_X29_Y20_N16
\dut|LessThan9~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|LessThan9~2_combout\ = (!\dut|clk_count\(4) & (!\dut|clk_count\(2) & (!\dut|clk_count\(3) & !\dut|clk_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|clk_count\(4),
	datab => \dut|clk_count\(2),
	datac => \dut|clk_count\(3),
	datad => \dut|clk_count\(5),
	combout => \dut|LessThan9~2_combout\);

-- Location: LCCOMB_X30_Y20_N0
\dut|LessThan9~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|LessThan9~3_combout\ = (((\dut|LessThan9~2_combout\) # (!\dut|clk_count\(7))) # (!\dut|clk_count\(6))) # (!\dut|clk_count\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|clk_count\(8),
	datab => \dut|clk_count\(6),
	datac => \dut|clk_count\(7),
	datad => \dut|LessThan9~2_combout\,
	combout => \dut|LessThan9~3_combout\);

-- Location: LCCOMB_X30_Y20_N10
\dut|LessThan9~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|LessThan9~4_combout\ = ((!\dut|clk_count\(9) & (!\dut|clk_count\(10) & \dut|LessThan9~3_combout\))) # (!\dut|clk_count\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|clk_count\(9),
	datab => \dut|clk_count\(11),
	datac => \dut|clk_count\(10),
	datad => \dut|LessThan9~3_combout\,
	combout => \dut|LessThan9~4_combout\);

-- Location: LCCOMB_X31_Y20_N28
\dut|Selector46~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|Selector46~2_combout\ = (\dut|LessThan9~5_combout\ & (((\dut|LessThan11~1_combout\ & \dut|Selector46~1_combout\)))) # (!\dut|LessThan9~5_combout\ & (\dut|e~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|e~regout\,
	datab => \dut|LessThan11~1_combout\,
	datac => \dut|LessThan9~5_combout\,
	datad => \dut|Selector46~1_combout\,
	combout => \dut|Selector46~2_combout\);

-- Location: LCCOMB_X28_Y20_N0
\dut|LessThan9~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|LessThan9~6_combout\ = (!\dut|clk_count\(3) & (!\dut|clk_count\(5) & !\dut|clk_count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut|clk_count\(3),
	datac => \dut|clk_count\(5),
	datad => \dut|clk_count\(4),
	combout => \dut|LessThan9~6_combout\);

-- Location: LCCOMB_X28_Y20_N2
\dut|LessThan12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|LessThan12~0_combout\ = ((\dut|LessThan9~6_combout\ & ((!\dut|clk_count\(1)) # (!\dut|clk_count\(2))))) # (!\dut|clk_count\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|clk_count\(6),
	datab => \dut|clk_count\(2),
	datac => \dut|clk_count\(1),
	datad => \dut|LessThan9~6_combout\,
	combout => \dut|LessThan12~0_combout\);

-- Location: LCCOMB_X28_Y20_N8
\dut|LessThan12~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|LessThan12~1_combout\ = (!\dut|clk_count\(9) & (((!\dut|clk_count\(7) & \dut|LessThan12~0_combout\)) # (!\dut|clk_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|clk_count\(7),
	datab => \dut|clk_count\(8),
	datac => \dut|clk_count\(9),
	datad => \dut|LessThan12~0_combout\,
	combout => \dut|LessThan12~1_combout\);

-- Location: LCCOMB_X31_Y20_N2
\dut|LessThan12~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|LessThan12~2_combout\ = (!\dut|clk_count\(11) & (\dut|LessThan9~1_combout\ & ((\dut|LessThan12~1_combout\) # (!\dut|clk_count\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|clk_count\(10),
	datab => \dut|clk_count\(11),
	datac => \dut|LessThan12~1_combout\,
	datad => \dut|LessThan9~1_combout\,
	combout => \dut|LessThan12~2_combout\);

-- Location: LCCOMB_X31_Y20_N0
\dut|Selector46~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|Selector46~3_combout\ = (!\dut|LessThan12~2_combout\ & (((!\dut|LessThan10~0_combout\) # (!\dut|LessThan10~3_combout\)) # (!\dut|LessThan10~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|LessThan10~2_combout\,
	datab => \dut|LessThan12~2_combout\,
	datac => \dut|LessThan10~3_combout\,
	datad => \dut|LessThan10~0_combout\,
	combout => \dut|Selector46~3_combout\);

-- Location: LCCOMB_X31_Y20_N10
\dut|Selector46~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|Selector46~4_combout\ = (\dut|Selector46~0_combout\ & ((\dut|Selector46~2_combout\) # ((\dut|Selector46~3_combout\ & \dut|e~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Selector46~0_combout\,
	datab => \dut|Selector46~3_combout\,
	datac => \dut|e~regout\,
	datad => \dut|Selector46~2_combout\,
	combout => \dut|Selector46~4_combout\);

-- Location: LCFF_X33_Y21_N3
\lcd_bus[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Mux9~4_combout\,
	ena => \lcd_bus[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => lcd_bus(0));

-- Location: LCFF_X33_Y21_N9
\lcd_bus[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Mux8~3_combout\,
	ena => \lcd_bus[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => lcd_bus(1));

-- Location: LCFF_X33_Y21_N29
\lcd_bus[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Mux6~2_combout\,
	ena => \lcd_bus[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => lcd_bus(3));

-- Location: LCCOMB_X32_Y21_N10
\dut|Selector41~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|Selector41~2_combout\ = (!\dut|state.ready~regout\ & ((\dut|Add0~62_combout\) # (!\dut|state.initialize~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|state.initialize~regout\,
	datab => \dut|state.ready~regout\,
	datac => \dut|Add0~62_combout\,
	combout => \dut|Selector41~2_combout\);

-- Location: LCFF_X33_Y21_N23
\lcd_bus[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Mux5~3_combout\,
	ena => \lcd_bus[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => lcd_bus(4));

-- Location: LCFF_X33_Y21_N1
\lcd_bus[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Mux4~1_combout\,
	ena => \lcd_bus[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => lcd_bus(5));

-- Location: LCCOMB_X27_Y22_N8
\dut|Selector22~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|Selector22~0_combout\ = (\dut|Add0~20_combout\ & !\dut|clk_count[23]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut|Add0~20_combout\,
	datad => \dut|clk_count[23]~6_combout\,
	combout => \dut|Selector22~0_combout\);

-- Location: LCCOMB_X27_Y22_N12
\dut|Selector8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|Selector8~0_combout\ = (\dut|Add0~48_combout\ & !\dut|clk_count[23]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dut|Add0~48_combout\,
	datad => \dut|clk_count[23]~6_combout\,
	combout => \dut|Selector8~0_combout\);

-- Location: LCCOMB_X27_Y21_N30
\dut|Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|Selector6~0_combout\ = (\dut|Add0~52_combout\ & !\dut|clk_count[23]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dut|Add0~52_combout\,
	datad => \dut|clk_count[23]~6_combout\,
	combout => \dut|Selector6~0_combout\);

-- Location: LCCOMB_X29_Y20_N6
\dut|Selector28~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|Selector28~0_combout\ = (\dut|Add0~8_combout\ & !\dut|clk_count[23]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dut|Add0~8_combout\,
	datad => \dut|clk_count[23]~6_combout\,
	combout => \dut|Selector28~0_combout\);

-- Location: LCCOMB_X33_Y21_N26
\Mux9~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux9~2_combout\ = (\Add0~16_combout\ & ((\Add0~6_combout\ & (\Add0~9_combout\ & \Add0~12_combout\)) # (!\Add0~6_combout\ & ((!\Add0~12_combout\))))) # (!\Add0~16_combout\ & ((\Add0~9_combout\) # (\Add0~6_combout\ $ (!\Add0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001001110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \Add0~16_combout\,
	datac => \Add0~9_combout\,
	datad => \Add0~12_combout\,
	combout => \Mux9~2_combout\);

-- Location: LCCOMB_X32_Y21_N0
\Mux9~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux9~3_combout\ = (\lcd_bus[6]~0_combout\ & (!\Add0~16_combout\ & ((\Add0~15_combout\)))) # (!\lcd_bus[6]~0_combout\ & (((\Mux9~2_combout\) # (\Add0~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_bus[6]~0_combout\,
	datab => \Add0~16_combout\,
	datac => \Mux9~2_combout\,
	datad => \Add0~15_combout\,
	combout => \Mux9~3_combout\);

-- Location: LCCOMB_X34_Y21_N16
\Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\Add0~6_combout\ & (\Add0~9_combout\ & \Add0~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datac => \Add0~9_combout\,
	datad => \Add0~16_combout\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X33_Y21_N2
\Mux9~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux9~4_combout\ = (\Mux9~3_combout\) # ((!\Mux5~0_combout\ & (\Mux9~5_combout\ & \lcd_bus[6]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~0_combout\,
	datab => \Mux9~5_combout\,
	datac => \Mux9~3_combout\,
	datad => \lcd_bus[6]~0_combout\,
	combout => \Mux9~4_combout\);

-- Location: LCCOMB_X33_Y21_N12
\Mux8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux8~1_combout\ = (\Add0~9_combout\ & (\Add0~6_combout\ & (\Add0~12_combout\ & !\Add0~15_combout\))) # (!\Add0~9_combout\ & (((\Add0~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \Add0~12_combout\,
	datac => \Add0~9_combout\,
	datad => \Add0~15_combout\,
	combout => \Mux8~1_combout\);

-- Location: LCCOMB_X33_Y21_N14
\Mux8~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux8~2_combout\ = (\Add0~12_combout\ & (!\Add0~9_combout\ & ((\Add0~6_combout\) # (\Add0~16_combout\)))) # (!\Add0~12_combout\ & (!\Add0~6_combout\ & (\Add0~9_combout\ & !\Add0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \Add0~12_combout\,
	datac => \Add0~9_combout\,
	datad => \Add0~16_combout\,
	combout => \Mux8~2_combout\);

-- Location: LCCOMB_X33_Y21_N8
\Mux8~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux8~3_combout\ = (\lcd_bus[6]~0_combout\ & (\Mux8~1_combout\)) # (!\lcd_bus[6]~0_combout\ & (((!\Add0~15_combout\ & \Mux8~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~1_combout\,
	datab => \Add0~15_combout\,
	datac => \Mux8~2_combout\,
	datad => \lcd_bus[6]~0_combout\,
	combout => \Mux8~3_combout\);

-- Location: LCCOMB_X33_Y21_N20
\Mux7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~2_combout\ = (\Add0~9_combout\ & ((\Add0~16_combout\))) # (!\Add0~9_combout\ & ((!\Add0~16_combout\) # (!\Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~9_combout\,
	datac => \Add0~6_combout\,
	datad => \Add0~16_combout\,
	combout => \Mux7~2_combout\);

-- Location: LCCOMB_X33_Y21_N30
\Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\Add0~16_combout\ & (!\Add0~15_combout\ & ((!\Add0~12_combout\)))) # (!\Add0~16_combout\ & ((\Add0~15_combout\) # ((!\Add0~6_combout\ & \Add0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~16_combout\,
	datab => \Add0~15_combout\,
	datac => \Add0~6_combout\,
	datad => \Add0~12_combout\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X33_Y21_N16
\Mux6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (!\Add0~16_combout\ & ((\Add0~15_combout\) # ((\Add0~6_combout\ & \Add0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~16_combout\,
	datab => \Add0~15_combout\,
	datac => \Add0~6_combout\,
	datad => \Add0~12_combout\,
	combout => \Mux6~1_combout\);

-- Location: LCCOMB_X33_Y21_N28
\Mux6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~2_combout\ = (\Mux6~1_combout\ & (\lcd_bus[6]~0_combout\ $ (((!\Add0~9_combout\ & !\Mux6~0_combout\))))) # (!\Mux6~1_combout\ & (!\lcd_bus[6]~0_combout\ & (\Add0~9_combout\ & \Mux6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~1_combout\,
	datab => \lcd_bus[6]~0_combout\,
	datac => \Add0~9_combout\,
	datad => \Mux6~0_combout\,
	combout => \Mux6~2_combout\);

-- Location: LCCOMB_X33_Y21_N10
\Mux5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (\Add0~15_combout\ & (\Add0~16_combout\)) # (!\Add0~15_combout\ & (((\Mux5~0_combout\ & \Add0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~16_combout\,
	datab => \Add0~15_combout\,
	datac => \Mux5~0_combout\,
	datad => \Add0~12_combout\,
	combout => \Mux5~1_combout\);

-- Location: LCCOMB_X33_Y21_N4
\Mux5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~2_combout\ = (\Add0~12_combout\ & (\Add0~16_combout\ & ((!\Add0~9_combout\) # (!\Add0~6_combout\)))) # (!\Add0~12_combout\ & (\Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \Add0~12_combout\,
	datac => \Add0~9_combout\,
	datad => \Add0~16_combout\,
	combout => \Mux5~2_combout\);

-- Location: LCCOMB_X33_Y21_N22
\Mux5~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~3_combout\ = (\lcd_bus[6]~0_combout\ & (\Mux5~1_combout\)) # (!\lcd_bus[6]~0_combout\ & (((!\Add0~15_combout\ & \Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~1_combout\,
	datab => \Add0~15_combout\,
	datac => \Mux5~2_combout\,
	datad => \lcd_bus[6]~0_combout\,
	combout => \Mux5~3_combout\);

-- Location: LCCOMB_X33_Y21_N6
\Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\Add0~16_combout\ & (\Add0~9_combout\ & ((\Add0~15_combout\) # (\Add0~12_combout\)))) # (!\Add0~16_combout\ & ((\Add0~15_combout\) # ((\Add0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~16_combout\,
	datab => \Add0~15_combout\,
	datac => \Add0~9_combout\,
	datad => \Add0~12_combout\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X33_Y21_N0
\Mux4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (\Mux4~0_combout\) # ((\Add0~6_combout\) # (\Add0~15_combout\ $ (\lcd_bus[6]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~0_combout\,
	datab => \Add0~15_combout\,
	datac => \Add0~6_combout\,
	datad => \lcd_bus[6]~0_combout\,
	combout => \Mux4~1_combout\);

-- Location: LCCOMB_X34_Y21_N22
\Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = ((\Add0~9_combout\) # (\Add0~16_combout\)) # (!\Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~12_combout\,
	datac => \Add0~9_combout\,
	datad => \Add0~16_combout\,
	combout => \Mux3~1_combout\);

-- Location: LCCOMB_X32_Y21_N6
\dut|Selector45~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|Selector45~5_combout\ = (!\dut|Add0~62_combout\ & (\dut|state.initialize~regout\ & ((!\dut|state.ready~regout\) # (!\lcd_enable~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_enable~regout\,
	datab => \dut|state.ready~regout\,
	datac => \dut|Add0~62_combout\,
	datad => \dut|state.initialize~regout\,
	combout => \dut|Selector45~5_combout\);

-- Location: LCCOMB_X34_Y21_N30
\Mux9~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux9~5_combout\ = (\Add0~12_combout\ & (!\Add0~13_combout\ & ((\LessThan0~0_combout\) # (!char(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~0_combout\,
	datab => \Add0~12_combout\,
	datac => \Add0~13_combout\,
	datad => char(5),
	combout => \Mux9~5_combout\);

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

-- Location: LCCOMB_X29_Y22_N30
\dut|Selector18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|Selector18~0_combout\ = (\dut|Add0~28_combout\ & !\dut|clk_count[23]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut|Add0~28_combout\,
	datad => \dut|clk_count[23]~6_combout\,
	combout => \dut|Selector18~0_combout\);

-- Location: LCFF_X29_Y22_N31
\dut|clk_count[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \dut|Selector18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|clk_count\(14));

-- Location: LCCOMB_X29_Y20_N24
\dut|Selector29~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|Selector29~0_combout\ = (\dut|Add0~6_combout\ & !\dut|clk_count[23]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Add0~6_combout\,
	datad => \dut|clk_count[23]~6_combout\,
	combout => \dut|Selector29~0_combout\);

-- Location: LCFF_X29_Y20_N25
\dut|clk_count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \dut|Selector29~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|clk_count\(3));

-- Location: LCCOMB_X27_Y22_N28
\dut|Selector31~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|Selector31~0_combout\ = (\dut|Add0~2_combout\ & !\dut|clk_count[23]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Add0~2_combout\,
	datad => \dut|clk_count[23]~6_combout\,
	combout => \dut|Selector31~0_combout\);

-- Location: LCFF_X27_Y22_N29
\dut|clk_count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \dut|Selector31~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|clk_count\(1));

-- Location: LCCOMB_X28_Y22_N0
\dut|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|Add0~0_combout\ = \dut|clk_count\(0) $ (VCC)
-- \dut|Add0~1\ = CARRY(\dut|clk_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut|clk_count\(0),
	datad => VCC,
	combout => \dut|Add0~0_combout\,
	cout => \dut|Add0~1\);

-- Location: LCCOMB_X30_Y22_N22
\dut|Selector32~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|Selector32~0_combout\ = (\dut|Add0~0_combout\ & !\dut|clk_count[23]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dut|Add0~0_combout\,
	datad => \dut|clk_count[23]~6_combout\,
	combout => \dut|Selector32~0_combout\);

-- Location: LCFF_X30_Y22_N23
\dut|clk_count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \dut|Selector32~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|clk_count\(0));

-- Location: LCCOMB_X28_Y22_N4
\dut|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|Add0~4_combout\ = (\dut|clk_count\(2) & (\dut|Add0~3\ $ (GND))) # (!\dut|clk_count\(2) & (!\dut|Add0~3\ & VCC))
-- \dut|Add0~5\ = CARRY((\dut|clk_count\(2) & !\dut|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dut|clk_count\(2),
	datad => VCC,
	cin => \dut|Add0~3\,
	combout => \dut|Add0~4_combout\,
	cout => \dut|Add0~5\);

-- Location: LCCOMB_X29_Y20_N10
\dut|Selector30~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|Selector30~0_combout\ = (\dut|Add0~4_combout\ & !\dut|clk_count[23]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut|Add0~4_combout\,
	datad => \dut|clk_count[23]~6_combout\,
	combout => \dut|Selector30~0_combout\);

-- Location: LCFF_X29_Y20_N11
\dut|clk_count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \dut|Selector30~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|clk_count\(2));

-- Location: LCCOMB_X28_Y22_N6
\dut|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|Add0~6_combout\ = (\dut|clk_count\(3) & (!\dut|Add0~5\)) # (!\dut|clk_count\(3) & ((\dut|Add0~5\) # (GND)))
-- \dut|Add0~7\ = CARRY((!\dut|Add0~5\) # (!\dut|clk_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dut|clk_count\(3),
	datad => VCC,
	cin => \dut|Add0~5\,
	combout => \dut|Add0~6_combout\,
	cout => \dut|Add0~7\);

-- Location: LCCOMB_X28_Y22_N8
\dut|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|Add0~8_combout\ = (\dut|clk_count\(4) & (\dut|Add0~7\ $ (GND))) # (!\dut|clk_count\(4) & (!\dut|Add0~7\ & VCC))
-- \dut|Add0~9\ = CARRY((\dut|clk_count\(4) & !\dut|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut|clk_count\(4),
	datad => VCC,
	cin => \dut|Add0~7\,
	combout => \dut|Add0~8_combout\,
	cout => \dut|Add0~9\);

-- Location: LCCOMB_X28_Y22_N10
\dut|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|Add0~10_combout\ = (\dut|clk_count\(5) & (!\dut|Add0~9\)) # (!\dut|clk_count\(5) & ((\dut|Add0~9\) # (GND)))
-- \dut|Add0~11\ = CARRY((!\dut|Add0~9\) # (!\dut|clk_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dut|clk_count\(5),
	datad => VCC,
	cin => \dut|Add0~9\,
	combout => \dut|Add0~10_combout\,
	cout => \dut|Add0~11\);

-- Location: LCCOMB_X29_Y20_N0
\dut|Selector27~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|Selector27~0_combout\ = (\dut|Add0~10_combout\ & !\dut|clk_count[23]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut|Add0~10_combout\,
	datad => \dut|clk_count[23]~6_combout\,
	combout => \dut|Selector27~0_combout\);

-- Location: LCFF_X29_Y20_N1
\dut|clk_count[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \dut|Selector27~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|clk_count\(5));

-- Location: LCCOMB_X28_Y22_N12
\dut|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|Add0~12_combout\ = (\dut|clk_count\(6) & (\dut|Add0~11\ $ (GND))) # (!\dut|clk_count\(6) & (!\dut|Add0~11\ & VCC))
-- \dut|Add0~13\ = CARRY((\dut|clk_count\(6) & !\dut|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dut|clk_count\(6),
	datad => VCC,
	cin => \dut|Add0~11\,
	combout => \dut|Add0~12_combout\,
	cout => \dut|Add0~13\);

-- Location: LCCOMB_X30_Y22_N2
\dut|Selector26~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|Selector26~0_combout\ = (\dut|Add0~12_combout\ & !\dut|clk_count[23]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dut|Add0~12_combout\,
	datad => \dut|clk_count[23]~6_combout\,
	combout => \dut|Selector26~0_combout\);

-- Location: LCFF_X30_Y22_N3
\dut|clk_count[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \dut|Selector26~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|clk_count\(6));

-- Location: LCCOMB_X28_Y22_N14
\dut|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|Add0~14_combout\ = (\dut|clk_count\(7) & (!\dut|Add0~13\)) # (!\dut|clk_count\(7) & ((\dut|Add0~13\) # (GND)))
-- \dut|Add0~15\ = CARRY((!\dut|Add0~13\) # (!\dut|clk_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dut|clk_count\(7),
	datad => VCC,
	cin => \dut|Add0~13\,
	combout => \dut|Add0~14_combout\,
	cout => \dut|Add0~15\);

-- Location: LCCOMB_X27_Y22_N24
\dut|Selector25~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|Selector25~0_combout\ = (\dut|Add0~14_combout\ & !\dut|clk_count[23]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dut|Add0~14_combout\,
	datad => \dut|clk_count[23]~6_combout\,
	combout => \dut|Selector25~0_combout\);

-- Location: LCFF_X27_Y22_N25
\dut|clk_count[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \dut|Selector25~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|clk_count\(7));

-- Location: LCCOMB_X28_Y22_N16
\dut|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|Add0~16_combout\ = (\dut|clk_count\(8) & (\dut|Add0~15\ $ (GND))) # (!\dut|clk_count\(8) & (!\dut|Add0~15\ & VCC))
-- \dut|Add0~17\ = CARRY((\dut|clk_count\(8) & !\dut|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dut|clk_count\(8),
	datad => VCC,
	cin => \dut|Add0~15\,
	combout => \dut|Add0~16_combout\,
	cout => \dut|Add0~17\);

-- Location: LCCOMB_X27_Y22_N18
\dut|Selector24~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|Selector24~0_combout\ = (\dut|Add0~16_combout\ & !\dut|clk_count[23]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dut|Add0~16_combout\,
	datad => \dut|clk_count[23]~6_combout\,
	combout => \dut|Selector24~0_combout\);

-- Location: LCFF_X27_Y22_N19
\dut|clk_count[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \dut|Selector24~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|clk_count\(8));

-- Location: LCCOMB_X28_Y22_N18
\dut|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|Add0~18_combout\ = (\dut|clk_count\(9) & (!\dut|Add0~17\)) # (!\dut|clk_count\(9) & ((\dut|Add0~17\) # (GND)))
-- \dut|Add0~19\ = CARRY((!\dut|Add0~17\) # (!\dut|clk_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut|clk_count\(9),
	datad => VCC,
	cin => \dut|Add0~17\,
	combout => \dut|Add0~18_combout\,
	cout => \dut|Add0~19\);

-- Location: LCCOMB_X28_Y22_N20
\dut|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|Add0~20_combout\ = (\dut|clk_count\(10) & (\dut|Add0~19\ $ (GND))) # (!\dut|clk_count\(10) & (!\dut|Add0~19\ & VCC))
-- \dut|Add0~21\ = CARRY((\dut|clk_count\(10) & !\dut|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut|clk_count\(10),
	datad => VCC,
	cin => \dut|Add0~19\,
	combout => \dut|Add0~20_combout\,
	cout => \dut|Add0~21\);

-- Location: LCCOMB_X28_Y22_N22
\dut|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|Add0~22_combout\ = (\dut|clk_count\(11) & (!\dut|Add0~21\)) # (!\dut|clk_count\(11) & ((\dut|Add0~21\) # (GND)))
-- \dut|Add0~23\ = CARRY((!\dut|Add0~21\) # (!\dut|clk_count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dut|clk_count\(11),
	datad => VCC,
	cin => \dut|Add0~21\,
	combout => \dut|Add0~22_combout\,
	cout => \dut|Add0~23\);

-- Location: LCCOMB_X29_Y22_N0
\dut|Selector21~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|Selector21~0_combout\ = (\dut|Add0~22_combout\ & !\dut|clk_count[23]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dut|Add0~22_combout\,
	datad => \dut|clk_count[23]~6_combout\,
	combout => \dut|Selector21~0_combout\);

-- Location: LCFF_X29_Y22_N1
\dut|clk_count[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \dut|Selector21~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|clk_count\(11));

-- Location: LCCOMB_X28_Y22_N24
\dut|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|Add0~24_combout\ = (\dut|clk_count\(12) & (\dut|Add0~23\ $ (GND))) # (!\dut|clk_count\(12) & (!\dut|Add0~23\ & VCC))
-- \dut|Add0~25\ = CARRY((\dut|clk_count\(12) & !\dut|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dut|clk_count\(12),
	datad => VCC,
	cin => \dut|Add0~23\,
	combout => \dut|Add0~24_combout\,
	cout => \dut|Add0~25\);

-- Location: LCCOMB_X27_Y22_N26
\dut|Selector20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|Selector20~0_combout\ = (\dut|Add0~24_combout\ & !\dut|clk_count[23]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut|Add0~24_combout\,
	datad => \dut|clk_count[23]~6_combout\,
	combout => \dut|Selector20~0_combout\);

-- Location: LCFF_X27_Y22_N27
\dut|clk_count[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \dut|Selector20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|clk_count\(12));

-- Location: LCCOMB_X28_Y22_N26
\dut|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|Add0~26_combout\ = (\dut|clk_count\(13) & (!\dut|Add0~25\)) # (!\dut|clk_count\(13) & ((\dut|Add0~25\) # (GND)))
-- \dut|Add0~27\ = CARRY((!\dut|Add0~25\) # (!\dut|clk_count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut|clk_count\(13),
	datad => VCC,
	cin => \dut|Add0~25\,
	combout => \dut|Add0~26_combout\,
	cout => \dut|Add0~27\);

-- Location: LCCOMB_X28_Y22_N28
\dut|Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|Add0~28_combout\ = (\dut|clk_count\(14) & (\dut|Add0~27\ $ (GND))) # (!\dut|clk_count\(14) & (!\dut|Add0~27\ & VCC))
-- \dut|Add0~29\ = CARRY((\dut|clk_count\(14) & !\dut|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dut|clk_count\(14),
	datad => VCC,
	cin => \dut|Add0~27\,
	combout => \dut|Add0~28_combout\,
	cout => \dut|Add0~29\);

-- Location: LCCOMB_X29_Y22_N8
\dut|LessThan8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|LessThan8~1_combout\ = (\dut|Add0~8_combout\ & \dut|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Add0~8_combout\,
	datad => \dut|Add0~10_combout\,
	combout => \dut|LessThan8~1_combout\);

-- Location: LCCOMB_X29_Y22_N2
\dut|LessThan8~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|LessThan8~2_combout\ = (\dut|Add0~16_combout\ & \dut|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut|Add0~16_combout\,
	datad => \dut|Add0~14_combout\,
	combout => \dut|LessThan8~2_combout\);

-- Location: LCCOMB_X29_Y22_N24
\dut|LessThan8~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|LessThan8~4_combout\ = (!\dut|Add0~18_combout\ & (((!\dut|Add0~12_combout\ & !\dut|LessThan8~1_combout\)) # (!\dut|LessThan8~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Add0~12_combout\,
	datab => \dut|Add0~18_combout\,
	datac => \dut|LessThan8~1_combout\,
	datad => \dut|LessThan8~2_combout\,
	combout => \dut|LessThan8~4_combout\);

-- Location: LCCOMB_X29_Y22_N16
\dut|LessThan8~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|LessThan8~5_combout\ = (!\dut|Add0~28_combout\ & (!\dut|Add0~24_combout\ & ((\dut|LessThan8~4_combout\) # (!\dut|LessThan3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|LessThan3~1_combout\,
	datab => \dut|Add0~28_combout\,
	datac => \dut|LessThan8~4_combout\,
	datad => \dut|Add0~24_combout\,
	combout => \dut|LessThan8~5_combout\);

-- Location: LCCOMB_X34_Y21_N26
\Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (char(5) & ((\LessThan0~0_combout\ & (\Add0~4_combout\)) # (!\LessThan0~0_combout\ & ((char(2)))))) # (!char(5) & (\Add0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => char(2),
	datac => char(5),
	datad => \LessThan0~0_combout\,
	combout => \Add0~6_combout\);

-- Location: LCCOMB_X31_Y22_N16
\dut|Selector16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|Selector16~0_combout\ = (!\dut|clk_count[23]~6_combout\ & \dut|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dut|clk_count[23]~6_combout\,
	datad => \dut|Add0~32_combout\,
	combout => \dut|Selector16~0_combout\);

-- Location: LCFF_X31_Y22_N17
\dut|clk_count[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \dut|Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|clk_count\(16));

-- Location: LCCOMB_X28_Y22_N30
\dut|Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|Add0~30_combout\ = (\dut|clk_count\(15) & (!\dut|Add0~29\)) # (!\dut|clk_count\(15) & ((\dut|Add0~29\) # (GND)))
-- \dut|Add0~31\ = CARRY((!\dut|Add0~29\) # (!\dut|clk_count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dut|clk_count\(15),
	datad => VCC,
	cin => \dut|Add0~29\,
	combout => \dut|Add0~30_combout\,
	cout => \dut|Add0~31\);

-- Location: LCCOMB_X27_Y22_N4
\dut|Selector17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|Selector17~0_combout\ = (\dut|Add0~30_combout\ & !\dut|clk_count[23]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut|Add0~30_combout\,
	datad => \dut|clk_count[23]~6_combout\,
	combout => \dut|Selector17~0_combout\);

-- Location: LCFF_X27_Y22_N5
\dut|clk_count[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \dut|Selector17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|clk_count\(15));

-- Location: LCCOMB_X28_Y21_N0
\dut|Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|Add0~32_combout\ = (\dut|clk_count\(16) & (\dut|Add0~31\ $ (GND))) # (!\dut|clk_count\(16) & (!\dut|Add0~31\ & VCC))
-- \dut|Add0~33\ = CARRY((\dut|clk_count\(16) & !\dut|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dut|clk_count\(16),
	datad => VCC,
	cin => \dut|Add0~31\,
	combout => \dut|Add0~32_combout\,
	cout => \dut|Add0~33\);

-- Location: LCCOMB_X27_Y21_N22
\dut|LessThan8~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|LessThan8~3_combout\ = (\dut|Add0~32_combout\ & \dut|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dut|Add0~32_combout\,
	datad => \dut|Add0~30_combout\,
	combout => \dut|LessThan8~3_combout\);

-- Location: LCCOMB_X30_Y22_N30
\dut|LessThan1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|LessThan1~0_combout\ = (!\dut|Add0~18_combout\ & (!\dut|Add0~20_combout\ & (!\dut|Add0~24_combout\ & !\dut|Add0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Add0~18_combout\,
	datab => \dut|Add0~20_combout\,
	datac => \dut|Add0~24_combout\,
	datad => \dut|Add0~22_combout\,
	combout => \dut|LessThan1~0_combout\);

-- Location: LCCOMB_X30_Y22_N10
\dut|LessThan7~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|LessThan7~6_combout\ = (((!\dut|LessThan8~2_combout\) # (!\dut|Add0~12_combout\)) # (!\dut|Add0~6_combout\)) # (!\dut|LessThan8~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|LessThan8~1_combout\,
	datab => \dut|Add0~6_combout\,
	datac => \dut|Add0~12_combout\,
	datad => \dut|LessThan8~2_combout\,
	combout => \dut|LessThan7~6_combout\);

-- Location: LCCOMB_X30_Y22_N0
\dut|LessThan7~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|LessThan7~7_combout\ = (!\dut|Add0~28_combout\ & (((\dut|LessThan1~0_combout\ & \dut|LessThan7~6_combout\)) # (!\dut|Add0~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Add0~28_combout\,
	datab => \dut|LessThan1~0_combout\,
	datac => \dut|Add0~26_combout\,
	datad => \dut|LessThan7~6_combout\,
	combout => \dut|LessThan7~7_combout\);

-- Location: LCCOMB_X28_Y21_N2
\dut|Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|Add0~34_combout\ = (\dut|clk_count\(17) & (!\dut|Add0~33\)) # (!\dut|clk_count\(17) & ((\dut|Add0~33\) # (GND)))
-- \dut|Add0~35\ = CARRY((!\dut|Add0~33\) # (!\dut|clk_count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dut|clk_count\(17),
	datad => VCC,
	cin => \dut|Add0~33\,
	combout => \dut|Add0~34_combout\,
	cout => \dut|Add0~35\);

-- Location: LCCOMB_X31_Y21_N20
\dut|Selector15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|Selector15~0_combout\ = (\dut|Add0~34_combout\ & !\dut|clk_count[23]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dut|Add0~34_combout\,
	datad => \dut|clk_count[23]~6_combout\,
	combout => \dut|Selector15~0_combout\);

-- Location: LCFF_X31_Y21_N21
\dut|clk_count[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \dut|Selector15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|clk_count\(17));

-- Location: LCCOMB_X28_Y21_N4
\dut|Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|Add0~36_combout\ = (\dut|clk_count\(18) & (\dut|Add0~35\ $ (GND))) # (!\dut|clk_count\(18) & (!\dut|Add0~35\ & VCC))
-- \dut|Add0~37\ = CARRY((\dut|clk_count\(18) & !\dut|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dut|clk_count\(18),
	datad => VCC,
	cin => \dut|Add0~35\,
	combout => \dut|Add0~36_combout\,
	cout => \dut|Add0~37\);

-- Location: LCCOMB_X31_Y21_N10
\dut|Selector14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|Selector14~0_combout\ = (\dut|Add0~36_combout\ & !\dut|clk_count[23]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dut|Add0~36_combout\,
	datad => \dut|clk_count[23]~6_combout\,
	combout => \dut|Selector14~0_combout\);

-- Location: LCFF_X31_Y21_N11
\dut|clk_count[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \dut|Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|clk_count\(18));

-- Location: LCCOMB_X28_Y21_N6
\dut|Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|Add0~38_combout\ = (\dut|clk_count\(19) & (!\dut|Add0~37\)) # (!\dut|clk_count\(19) & ((\dut|Add0~37\) # (GND)))
-- \dut|Add0~39\ = CARRY((!\dut|Add0~37\) # (!\dut|clk_count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dut|clk_count\(19),
	datad => VCC,
	cin => \dut|Add0~37\,
	combout => \dut|Add0~38_combout\,
	cout => \dut|Add0~39\);

-- Location: LCCOMB_X29_Y22_N28
\dut|Selector13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|Selector13~0_combout\ = (\dut|Add0~38_combout\ & !\dut|clk_count[23]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dut|Add0~38_combout\,
	datad => \dut|clk_count[23]~6_combout\,
	combout => \dut|Selector13~0_combout\);

-- Location: LCFF_X29_Y22_N29
\dut|clk_count[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \dut|Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|clk_count\(19));

-- Location: LCCOMB_X28_Y21_N8
\dut|Add0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|Add0~40_combout\ = (\dut|clk_count\(20) & (\dut|Add0~39\ $ (GND))) # (!\dut|clk_count\(20) & (!\dut|Add0~39\ & VCC))
-- \dut|Add0~41\ = CARRY((\dut|clk_count\(20) & !\dut|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dut|clk_count\(20),
	datad => VCC,
	cin => \dut|Add0~39\,
	combout => \dut|Add0~40_combout\,
	cout => \dut|Add0~41\);

-- Location: LCCOMB_X31_Y21_N4
\dut|Selector12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|Selector12~0_combout\ = (\dut|Add0~40_combout\ & !\dut|clk_count[23]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dut|Add0~40_combout\,
	datad => \dut|clk_count[23]~6_combout\,
	combout => \dut|Selector12~0_combout\);

-- Location: LCFF_X31_Y21_N5
\dut|clk_count[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \dut|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|clk_count\(20));

-- Location: LCCOMB_X28_Y21_N10
\dut|Add0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|Add0~42_combout\ = (\dut|clk_count\(21) & (!\dut|Add0~41\)) # (!\dut|clk_count\(21) & ((\dut|Add0~41\) # (GND)))
-- \dut|Add0~43\ = CARRY((!\dut|Add0~41\) # (!\dut|clk_count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut|clk_count\(21),
	datad => VCC,
	cin => \dut|Add0~41\,
	combout => \dut|Add0~42_combout\,
	cout => \dut|Add0~43\);

-- Location: LCCOMB_X28_Y21_N12
\dut|Add0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|Add0~44_combout\ = (\dut|clk_count\(22) & (\dut|Add0~43\ $ (GND))) # (!\dut|clk_count\(22) & (!\dut|Add0~43\ & VCC))
-- \dut|Add0~45\ = CARRY((\dut|clk_count\(22) & !\dut|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dut|clk_count\(22),
	datad => VCC,
	cin => \dut|Add0~43\,
	combout => \dut|Add0~44_combout\,
	cout => \dut|Add0~45\);

-- Location: LCCOMB_X27_Y22_N16
\dut|Selector10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|Selector10~0_combout\ = (\dut|Add0~44_combout\ & !\dut|clk_count[23]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dut|Add0~44_combout\,
	datad => \dut|clk_count[23]~6_combout\,
	combout => \dut|Selector10~0_combout\);

-- Location: LCFF_X27_Y22_N17
\dut|clk_count[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \dut|Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|clk_count\(22));

-- Location: LCCOMB_X28_Y21_N14
\dut|Add0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|Add0~46_combout\ = (\dut|clk_count\(23) & (!\dut|Add0~45\)) # (!\dut|clk_count\(23) & ((\dut|Add0~45\) # (GND)))
-- \dut|Add0~47\ = CARRY((!\dut|Add0~45\) # (!\dut|clk_count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dut|clk_count\(23),
	datad => VCC,
	cin => \dut|Add0~45\,
	combout => \dut|Add0~46_combout\,
	cout => \dut|Add0~47\);

-- Location: LCCOMB_X27_Y22_N22
\dut|Selector9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|Selector9~0_combout\ = (\dut|Add0~46_combout\ & !\dut|clk_count[23]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut|Add0~46_combout\,
	datad => \dut|clk_count[23]~6_combout\,
	combout => \dut|Selector9~0_combout\);

-- Location: LCFF_X27_Y22_N23
\dut|clk_count[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \dut|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|clk_count\(23));

-- Location: LCCOMB_X28_Y21_N16
\dut|Add0~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|Add0~48_combout\ = (\dut|clk_count\(24) & (\dut|Add0~47\ $ (GND))) # (!\dut|clk_count\(24) & (!\dut|Add0~47\ & VCC))
-- \dut|Add0~49\ = CARRY((\dut|clk_count\(24) & !\dut|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut|clk_count\(24),
	datad => VCC,
	cin => \dut|Add0~47\,
	combout => \dut|Add0~48_combout\,
	cout => \dut|Add0~49\);

-- Location: LCCOMB_X29_Y21_N14
\dut|LessThan7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|LessThan7~0_combout\ = (!\dut|Add0~44_combout\ & (!\dut|Add0~48_combout\ & (!\dut|Add0~42_combout\ & !\dut|Add0~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Add0~44_combout\,
	datab => \dut|Add0~48_combout\,
	datac => \dut|Add0~42_combout\,
	datad => \dut|Add0~46_combout\,
	combout => \dut|LessThan7~0_combout\);

-- Location: LCCOMB_X27_Y21_N16
\dut|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|Selector3~0_combout\ = (\dut|Add0~58_combout\ & !\dut|clk_count[23]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dut|Add0~58_combout\,
	datad => \dut|clk_count[23]~6_combout\,
	combout => \dut|Selector3~0_combout\);

-- Location: LCFF_X27_Y21_N17
\dut|clk_count[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \dut|Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|clk_count\(29));

-- Location: LCCOMB_X28_Y21_N24
\dut|Add0~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|Add0~56_combout\ = (\dut|clk_count\(28) & (\dut|Add0~55\ $ (GND))) # (!\dut|clk_count\(28) & (!\dut|Add0~55\ & VCC))
-- \dut|Add0~57\ = CARRY((\dut|clk_count\(28) & !\dut|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut|clk_count\(28),
	datad => VCC,
	cin => \dut|Add0~55\,
	combout => \dut|Add0~56_combout\,
	cout => \dut|Add0~57\);

-- Location: LCCOMB_X28_Y21_N26
\dut|Add0~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|Add0~58_combout\ = (\dut|clk_count\(29) & (!\dut|Add0~57\)) # (!\dut|clk_count\(29) & ((\dut|Add0~57\) # (GND)))
-- \dut|Add0~59\ = CARRY((!\dut|Add0~57\) # (!\dut|clk_count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dut|clk_count\(29),
	datad => VCC,
	cin => \dut|Add0~57\,
	combout => \dut|Add0~58_combout\,
	cout => \dut|Add0~59\);

-- Location: LCCOMB_X29_Y21_N24
\dut|busy~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|busy~2_combout\ = (!\dut|Add0~56_combout\ & !\dut|Add0~58_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut|Add0~56_combout\,
	datad => \dut|Add0~58_combout\,
	combout => \dut|busy~2_combout\);

-- Location: LCCOMB_X28_Y21_N18
\dut|Add0~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|Add0~50_combout\ = (\dut|clk_count\(25) & (!\dut|Add0~49\)) # (!\dut|clk_count\(25) & ((\dut|Add0~49\) # (GND)))
-- \dut|Add0~51\ = CARRY((!\dut|Add0~49\) # (!\dut|clk_count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dut|clk_count\(25),
	datad => VCC,
	cin => \dut|Add0~49\,
	combout => \dut|Add0~50_combout\,
	cout => \dut|Add0~51\);

-- Location: LCCOMB_X28_Y21_N20
\dut|Add0~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|Add0~52_combout\ = (\dut|clk_count\(26) & (\dut|Add0~51\ $ (GND))) # (!\dut|clk_count\(26) & (!\dut|Add0~51\ & VCC))
-- \dut|Add0~53\ = CARRY((\dut|clk_count\(26) & !\dut|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut|clk_count\(26),
	datad => VCC,
	cin => \dut|Add0~51\,
	combout => \dut|Add0~52_combout\,
	cout => \dut|Add0~53\);

-- Location: LCCOMB_X29_Y21_N0
\dut|LessThan7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|LessThan7~1_combout\ = (!\dut|Add0~50_combout\ & (!\dut|Add0~52_combout\ & !\dut|Add0~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut|Add0~50_combout\,
	datac => \dut|Add0~52_combout\,
	datad => \dut|Add0~54_combout\,
	combout => \dut|LessThan7~1_combout\);

-- Location: LCCOMB_X29_Y21_N10
\dut|LessThan7~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|LessThan7~5_combout\ = (\dut|LessThan7~2_combout\ & (\dut|LessThan7~0_combout\ & (\dut|busy~2_combout\ & \dut|LessThan7~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|LessThan7~2_combout\,
	datab => \dut|LessThan7~0_combout\,
	datac => \dut|busy~2_combout\,
	datad => \dut|LessThan7~1_combout\,
	combout => \dut|LessThan7~5_combout\);

-- Location: LCCOMB_X30_Y21_N8
\dut|LessThan7~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|LessThan7~8_combout\ = (!\dut|Add0~60_combout\ & (\dut|LessThan7~5_combout\ & ((\dut|LessThan7~7_combout\) # (!\dut|LessThan8~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Add0~60_combout\,
	datab => \dut|LessThan8~3_combout\,
	datac => \dut|LessThan7~7_combout\,
	datad => \dut|LessThan7~5_combout\,
	combout => \dut|LessThan7~8_combout\);

-- Location: LCCOMB_X30_Y22_N12
\dut|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|Selector2~0_combout\ = (\dut|Add0~60_combout\ & !\dut|clk_count[23]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dut|Add0~60_combout\,
	datad => \dut|clk_count[23]~6_combout\,
	combout => \dut|Selector2~0_combout\);

-- Location: LCFF_X30_Y22_N13
\dut|clk_count[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \dut|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|clk_count\(30));

-- Location: LCCOMB_X28_Y21_N28
\dut|Add0~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|Add0~60_combout\ = (\dut|clk_count\(30) & (\dut|Add0~59\ $ (GND))) # (!\dut|clk_count\(30) & (!\dut|Add0~59\ & VCC))
-- \dut|Add0~61\ = CARRY((\dut|clk_count\(30) & !\dut|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dut|clk_count\(30),
	datad => VCC,
	cin => \dut|Add0~59\,
	combout => \dut|Add0~60_combout\,
	cout => \dut|Add0~61\);

-- Location: LCCOMB_X29_Y22_N4
\dut|LessThan6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|LessThan6~1_combout\ = (!\dut|Add0~8_combout\ & (!\dut|Add0~4_combout\ & (!\dut|Add0~6_combout\ & !\dut|Add0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Add0~8_combout\,
	datab => \dut|Add0~4_combout\,
	datac => \dut|Add0~6_combout\,
	datad => \dut|Add0~10_combout\,
	combout => \dut|LessThan6~1_combout\);

-- Location: LCCOMB_X29_Y22_N6
\dut|LessThan6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|LessThan6~2_combout\ = (!\dut|Add0~14_combout\ & (!\dut|Add0~16_combout\ & (\dut|LessThan6~1_combout\ & !\dut|Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Add0~14_combout\,
	datab => \dut|Add0~16_combout\,
	datac => \dut|LessThan6~1_combout\,
	datad => \dut|Add0~12_combout\,
	combout => \dut|LessThan6~2_combout\);

-- Location: LCCOMB_X29_Y22_N22
\dut|LessThan8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|LessThan8~0_combout\ = (\dut|Add0~30_combout\ & (\dut|Add0~32_combout\ & ((\dut|Add0~28_combout\) # (\dut|Add0~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Add0~30_combout\,
	datab => \dut|Add0~28_combout\,
	datac => \dut|Add0~26_combout\,
	datad => \dut|Add0~32_combout\,
	combout => \dut|LessThan8~0_combout\);

-- Location: LCCOMB_X30_Y22_N16
\dut|LessThan6~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|LessThan6~3_combout\ = (\dut|LessThan8~0_combout\ & ((\dut|Add0~28_combout\) # ((!\dut|LessThan6~2_combout\) # (!\dut|LessThan1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Add0~28_combout\,
	datab => \dut|LessThan1~0_combout\,
	datac => \dut|LessThan6~2_combout\,
	datad => \dut|LessThan8~0_combout\,
	combout => \dut|LessThan6~3_combout\);

-- Location: LCCOMB_X29_Y21_N4
\dut|Selector44~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|Selector44~0_combout\ = (!\dut|Add0~62_combout\ & ((\dut|Add0~60_combout\) # ((\dut|LessThan6~3_combout\) # (!\dut|LessThan7~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Add0~62_combout\,
	datab => \dut|Add0~60_combout\,
	datac => \dut|LessThan6~3_combout\,
	datad => \dut|LessThan7~5_combout\,
	combout => \dut|Selector44~0_combout\);

-- Location: LCCOMB_X27_Y21_N28
\dut|LessThan3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|LessThan3~0_combout\ = (!\dut|Add0~32_combout\ & (!\dut|Add0~26_combout\ & (!\dut|Add0~28_combout\ & !\dut|Add0~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Add0~32_combout\,
	datab => \dut|Add0~26_combout\,
	datac => \dut|Add0~28_combout\,
	datad => \dut|Add0~30_combout\,
	combout => \dut|LessThan3~0_combout\);

-- Location: LCCOMB_X29_Y22_N20
\dut|LessThan3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|LessThan3~4_combout\ = ((!\dut|Add0~8_combout\ & ((!\dut|Add0~4_combout\) # (!\dut|Add0~6_combout\)))) # (!\dut|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Add0~8_combout\,
	datab => \dut|Add0~6_combout\,
	datac => \dut|Add0~4_combout\,
	datad => \dut|Add0~10_combout\,
	combout => \dut|LessThan3~4_combout\);

-- Location: LCCOMB_X29_Y22_N10
\dut|LessThan3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|LessThan3~1_combout\ = (\dut|Add0~20_combout\ & \dut|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dut|Add0~20_combout\,
	datad => \dut|Add0~22_combout\,
	combout => \dut|LessThan3~1_combout\);

-- Location: LCCOMB_X29_Y22_N26
\dut|LessThan3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|LessThan3~3_combout\ = ((!\dut|Add0~18_combout\ & ((!\dut|Add0~16_combout\) # (!\dut|Add0~14_combout\)))) # (!\dut|LessThan3~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Add0~14_combout\,
	datab => \dut|Add0~16_combout\,
	datac => \dut|Add0~18_combout\,
	datad => \dut|LessThan3~1_combout\,
	combout => \dut|LessThan3~3_combout\);

-- Location: LCCOMB_X29_Y22_N18
\dut|LessThan3~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|LessThan3~5_combout\ = (\dut|LessThan3~3_combout\) # ((!\dut|Add0~12_combout\ & (!\dut|Add0~18_combout\ & \dut|LessThan3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Add0~12_combout\,
	datab => \dut|Add0~18_combout\,
	datac => \dut|LessThan3~4_combout\,
	datad => \dut|LessThan3~3_combout\,
	combout => \dut|LessThan3~5_combout\);

-- Location: LCCOMB_X29_Y21_N2
\dut|LessThan7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|LessThan7~2_combout\ = (!\dut|Add0~34_combout\ & (!\dut|Add0~36_combout\ & (!\dut|Add0~38_combout\ & !\dut|Add0~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Add0~34_combout\,
	datab => \dut|Add0~36_combout\,
	datac => \dut|Add0~38_combout\,
	datad => \dut|Add0~40_combout\,
	combout => \dut|LessThan7~2_combout\);

-- Location: LCCOMB_X29_Y21_N28
\dut|LessThan7~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|LessThan7~3_combout\ = (\dut|LessThan7~2_combout\ & (\dut|LessThan7~0_combout\ & \dut|LessThan7~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut|LessThan7~2_combout\,
	datac => \dut|LessThan7~0_combout\,
	datad => \dut|LessThan7~1_combout\,
	combout => \dut|LessThan7~3_combout\);

-- Location: LCCOMB_X29_Y21_N26
\dut|busy~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|busy~4_combout\ = (!\dut|Add0~24_combout\ & (\dut|LessThan3~0_combout\ & (\dut|LessThan3~5_combout\ & \dut|LessThan7~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Add0~24_combout\,
	datab => \dut|LessThan3~0_combout\,
	datac => \dut|LessThan3~5_combout\,
	datad => \dut|LessThan7~3_combout\,
	combout => \dut|busy~4_combout\);

-- Location: LCCOMB_X29_Y21_N18
\dut|state~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|state~8_combout\ = (!\dut|Add0~56_combout\ & (!\dut|Add0~60_combout\ & (!\dut|Add0~58_combout\ & \dut|busy~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Add0~56_combout\,
	datab => \dut|Add0~60_combout\,
	datac => \dut|Add0~58_combout\,
	datad => \dut|busy~4_combout\,
	combout => \dut|state~8_combout\);

-- Location: LCCOMB_X30_Y21_N0
\dut|busy~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|busy~5_combout\ = (!\dut|LessThan8~6_combout\ & (!\dut|LessThan7~8_combout\ & (\dut|Selector44~0_combout\ & !\dut|state~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|LessThan8~6_combout\,
	datab => \dut|LessThan7~8_combout\,
	datac => \dut|Selector44~0_combout\,
	datad => \dut|state~8_combout\,
	combout => \dut|busy~5_combout\);

-- Location: LCCOMB_X31_Y21_N6
\dut|Selector34~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|Selector34~5_combout\ = (\dut|state.initialize~regout\ & ((\dut|busy~5_combout\) # ((!\lcd_enable~regout\ & \dut|state.ready~regout\)))) # (!\dut|state.initialize~regout\ & (!\lcd_enable~regout\ & ((\dut|state.ready~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|state.initialize~regout\,
	datab => \lcd_enable~regout\,
	datac => \dut|busy~5_combout\,
	datad => \dut|state.ready~regout\,
	combout => \dut|Selector34~5_combout\);

-- Location: LCFF_X31_Y21_N7
\dut|busy\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \dut|Selector34~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|busy~regout\);

-- Location: LCCOMB_X32_Y21_N2
\process_0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = (!\lcd_enable~regout\ & \dut|busy~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_enable~regout\,
	datac => \dut|busy~regout\,
	combout => \process_0~0_combout\);

-- Location: LCFF_X34_Y21_N19
\char[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Add0~6_combout\,
	sload => VCC,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => char(2));

-- Location: LCCOMB_X35_Y21_N18
\Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (char(5) & ((\LessThan0~0_combout\ & (\Add0~0_combout\)) # (!\LessThan0~0_combout\ & ((char(0)))))) # (!char(5) & (\Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => char(5),
	datac => char(0),
	datad => \LessThan0~0_combout\,
	combout => \Add0~16_combout\);

-- Location: LCFF_X35_Y21_N19
\char[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~16_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => char(0));

-- Location: LCCOMB_X35_Y21_N30
\LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (\LessThan0~0_combout\) # (!char(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => char(5),
	datad => \LessThan0~0_combout\,
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X35_Y21_N24
\lcd_bus[6]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd_bus[6]~0_combout\ = (\LessThan0~1_combout\ & (\Add0~7_combout\)) # (!\LessThan0~1_combout\ & ((char(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~7_combout\,
	datac => char(3),
	datad => \LessThan0~1_combout\,
	combout => \lcd_bus[6]~0_combout\);

-- Location: LCFF_X35_Y21_N25
\char[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \lcd_bus[6]~0_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => char(3));

-- Location: LCCOMB_X34_Y21_N28
\Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (char(5) & ((char(4)) # ((\Add0~10_combout\ & \LessThan0~0_combout\)))) # (!char(5) & (\Add0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datab => char(5),
	datac => char(4),
	datad => \LessThan0~0_combout\,
	combout => \Add0~12_combout\);

-- Location: LCFF_X34_Y21_N29
\char[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~12_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => char(4));

-- Location: LCCOMB_X35_Y21_N28
\LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!char(4) & (((!char(3)) # (!char(2))) # (!char(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char(1),
	datab => char(2),
	datac => char(3),
	datad => char(4),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X34_Y21_N18
\Add0~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~15_combout\ = (\Add0~13_combout\) # ((char(5) & !\LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~13_combout\,
	datab => char(5),
	datad => \LessThan0~0_combout\,
	combout => \Add0~15_combout\);

-- Location: LCFF_X34_Y21_N27
\char[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Add0~15_combout\,
	sload => VCC,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => char(5));

-- Location: LCFF_X34_Y21_N9
\char[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~9_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => char(1));

-- Location: LCCOMB_X34_Y21_N8
\Add0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~9_combout\ = (char(5) & ((\LessThan0~0_combout\ & (\Add0~2_combout\)) # (!\LessThan0~0_combout\ & ((char(1)))))) # (!char(5) & (\Add0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => char(5),
	datac => char(1),
	datad => \LessThan0~0_combout\,
	combout => \Add0~9_combout\);

-- Location: LCCOMB_X34_Y21_N4
\Mux8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (!\Add0~6_combout\ & (!\Add0~12_combout\ & !\Add0~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \Add0~12_combout\,
	datad => \Add0~16_combout\,
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X34_Y21_N14
\lcd_bus[9]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd_bus[9]~1_combout\ = (!\Add0~9_combout\ & (\Mux8~0_combout\ & !\lcd_bus[6]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~9_combout\,
	datac => \Mux8~0_combout\,
	datad => \lcd_bus[6]~0_combout\,
	combout => \lcd_bus[9]~1_combout\);

-- Location: LCCOMB_X34_Y21_N20
\lcd_enable~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd_enable~1_combout\ = (\process_0~0_combout\ & ((\Add0~15_combout\ & (\lcd_enable~0_combout\)) # (!\Add0~15_combout\ & ((!\lcd_bus[9]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_enable~0_combout\,
	datab => \lcd_bus[9]~1_combout\,
	datac => \process_0~0_combout\,
	datad => \Add0~15_combout\,
	combout => \lcd_enable~1_combout\);

-- Location: LCFF_X34_Y21_N21
lcd_enable : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \lcd_enable~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_enable~regout\);

-- Location: LCCOMB_X32_Y21_N12
\dut|lcd_data[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|lcd_data[3]~0_combout\ = (\dut|state.ready~regout\ & \lcd_enable~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut|state.ready~regout\,
	datac => \lcd_enable~regout\,
	combout => \dut|lcd_data[3]~0_combout\);

-- Location: LCCOMB_X32_Y21_N14
\dut|Selector35~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|Selector35~1_combout\ = (\dut|lcd_data[3]~0_combout\) # ((\dut|state.send~regout\ & ((\dut|clk_count\(31)) # (\dut|LessThan9~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|clk_count\(31),
	datab => \dut|LessThan9~5_combout\,
	datac => \dut|state.send~regout\,
	datad => \dut|lcd_data[3]~0_combout\,
	combout => \dut|Selector35~1_combout\);

-- Location: LCFF_X32_Y21_N15
\dut|state.send\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \dut|Selector35~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|state.send~regout\);

-- Location: LCCOMB_X30_Y22_N18
\dut|clk_count[23]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|clk_count[23]~2_combout\ = (!\dut|state.send~regout\ & ((\dut|LessThan8~5_combout\) # (!\dut|LessThan8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut|LessThan8~5_combout\,
	datac => \dut|state.send~regout\,
	datad => \dut|LessThan8~0_combout\,
	combout => \dut|clk_count[23]~2_combout\);

-- Location: LCCOMB_X30_Y22_N4
\dut|clk_count[23]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|clk_count[23]~3_combout\ = (\dut|state.power_up~regout\ & (\dut|clk_count[23]~2_combout\ & (!\dut|Add0~60_combout\ & \dut|LessThan7~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|state.power_up~regout\,
	datab => \dut|clk_count[23]~2_combout\,
	datac => \dut|Add0~60_combout\,
	datad => \dut|LessThan7~5_combout\,
	combout => \dut|clk_count[23]~3_combout\);

-- Location: LCCOMB_X27_Y22_N2
\dut|LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|LessThan0~7_combout\ = (!\dut|clk_count\(24) & (!\dut|clk_count\(23) & (!\dut|clk_count\(22) & !\dut|clk_count\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|clk_count\(24),
	datab => \dut|clk_count\(23),
	datac => \dut|clk_count\(22),
	datad => \dut|clk_count\(25),
	combout => \dut|LessThan0~7_combout\);

-- Location: LCCOMB_X31_Y22_N2
\dut|LessThan0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|LessThan0~8_combout\ = (!\dut|clk_count\(26) & \dut|LessThan0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|clk_count\(26),
	datad => \dut|LessThan0~7_combout\,
	combout => \dut|LessThan0~8_combout\);

-- Location: LCCOMB_X31_Y22_N4
\dut|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|LessThan0~0_combout\ = (!\dut|clk_count\(20) & (!\dut|clk_count\(19) & ((!\dut|clk_count\(18)) # (!\dut|clk_count\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|clk_count\(17),
	datab => \dut|clk_count\(20),
	datac => \dut|clk_count\(19),
	datad => \dut|clk_count\(18),
	combout => \dut|LessThan0~0_combout\);

-- Location: LCCOMB_X27_Y22_N14
\dut|Selector23~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|Selector23~0_combout\ = (\dut|Add0~18_combout\ & !\dut|clk_count[23]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut|Add0~18_combout\,
	datad => \dut|clk_count[23]~6_combout\,
	combout => \dut|Selector23~0_combout\);

-- Location: LCFF_X27_Y22_N15
\dut|clk_count[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \dut|Selector23~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|clk_count\(9));

-- Location: LCCOMB_X32_Y22_N0
\dut|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|LessThan0~3_combout\ = (((!\dut|clk_count\(6) & !\dut|clk_count\(5))) # (!\dut|clk_count\(8))) # (!\dut|clk_count\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|clk_count\(6),
	datab => \dut|clk_count\(7),
	datac => \dut|clk_count\(8),
	datad => \dut|clk_count\(5),
	combout => \dut|LessThan0~3_combout\);

-- Location: LCCOMB_X32_Y22_N30
\dut|LessThan0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|LessThan0~4_combout\ = (\dut|clk_count\(10) & ((\dut|clk_count\(9)) # (!\dut|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|clk_count\(10),
	datab => \dut|clk_count\(9),
	datad => \dut|LessThan0~3_combout\,
	combout => \dut|LessThan0~4_combout\);

-- Location: LCCOMB_X31_Y22_N24
\dut|LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|LessThan0~5_combout\ = (\dut|clk_count\(13) & ((\dut|clk_count\(12)) # ((\dut|clk_count\(11)) # (\dut|LessThan0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|clk_count\(13),
	datab => \dut|clk_count\(12),
	datac => \dut|clk_count\(11),
	datad => \dut|LessThan0~4_combout\,
	combout => \dut|LessThan0~5_combout\);

-- Location: LCCOMB_X31_Y22_N26
\dut|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|LessThan0~1_combout\ = (!\dut|clk_count\(19) & (!\dut|clk_count\(14) & (!\dut|clk_count\(15) & !\dut|clk_count\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|clk_count\(19),
	datab => \dut|clk_count\(14),
	datac => \dut|clk_count\(15),
	datad => \dut|clk_count\(20),
	combout => \dut|LessThan0~1_combout\);

-- Location: LCCOMB_X31_Y22_N10
\dut|LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|LessThan0~2_combout\ = (!\dut|clk_count\(16) & \dut|LessThan0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut|clk_count\(16),
	datad => \dut|LessThan0~1_combout\,
	combout => \dut|LessThan0~2_combout\);

-- Location: LCCOMB_X31_Y22_N30
\dut|LessThan0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|LessThan0~6_combout\ = ((\dut|LessThan0~0_combout\) # ((!\dut|LessThan0~5_combout\ & \dut|LessThan0~2_combout\))) # (!\dut|clk_count\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|clk_count\(21),
	datab => \dut|LessThan0~0_combout\,
	datac => \dut|LessThan0~5_combout\,
	datad => \dut|LessThan0~2_combout\,
	combout => \dut|LessThan0~6_combout\);

-- Location: LCCOMB_X31_Y22_N0
\dut|LessThan0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|LessThan0~10_combout\ = (\dut|clk_count\(31)) # ((\dut|LessThan0~8_combout\ & (\dut|LessThan0~9_combout\ & \dut|LessThan0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|clk_count\(31),
	datab => \dut|LessThan0~8_combout\,
	datac => \dut|LessThan0~9_combout\,
	datad => \dut|LessThan0~6_combout\,
	combout => \dut|LessThan0~10_combout\);

-- Location: LCFF_X31_Y22_N9
\dut|state.power_up\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \dut|lcd_data[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|state.power_up~regout\);

-- Location: LCCOMB_X31_Y22_N8
\dut|lcd_data[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|lcd_data[3]~1_combout\ = (\dut|state.power_up~regout\) # (!\dut|LessThan0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dut|state.power_up~regout\,
	datad => \dut|LessThan0~10_combout\,
	combout => \dut|lcd_data[3]~1_combout\);

-- Location: LCCOMB_X30_Y21_N2
\dut|Selector33~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|Selector33~0_combout\ = (\dut|state.power_up~regout\ & (((\dut|state.initialize~regout\ & !\dut|busy~5_combout\)))) # (!\dut|state.power_up~regout\ & (((\dut|state.initialize~regout\ & !\dut|busy~5_combout\)) # (!\dut|LessThan0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|state.power_up~regout\,
	datab => \dut|LessThan0~10_combout\,
	datac => \dut|state.initialize~regout\,
	datad => \dut|busy~5_combout\,
	combout => \dut|Selector33~0_combout\);

-- Location: LCFF_X30_Y21_N3
\dut|state.initialize\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \dut|Selector33~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|state.initialize~regout\);

-- Location: LCCOMB_X31_Y22_N18
\dut|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|Selector1~0_combout\ = (\dut|Add0~62_combout\ & (((\dut|Selector35~0_combout\) # (\dut|state.initialize~regout\)) # (!\dut|lcd_data[3]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Add0~62_combout\,
	datab => \dut|lcd_data[3]~1_combout\,
	datac => \dut|Selector35~0_combout\,
	datad => \dut|state.initialize~regout\,
	combout => \dut|Selector1~0_combout\);

-- Location: LCFF_X31_Y22_N19
\dut|clk_count[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \dut|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|clk_count\(31));

-- Location: LCCOMB_X32_Y22_N8
\dut|Selector35~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|Selector35~0_combout\ = (\dut|state.send~regout\ & ((\dut|clk_count\(31)) # (\dut|LessThan9~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|state.send~regout\,
	datab => \dut|clk_count\(31),
	datac => \dut|LessThan9~5_combout\,
	combout => \dut|Selector35~0_combout\);

-- Location: LCCOMB_X28_Y21_N30
\dut|Add0~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|Add0~62_combout\ = \dut|Add0~61\ $ (\dut|clk_count\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \dut|clk_count\(31),
	cin => \dut|Add0~61\,
	combout => \dut|Add0~62_combout\);

-- Location: LCCOMB_X31_Y22_N28
\dut|clk_count[23]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|clk_count[23]~0_combout\ = (\dut|Add0~62_combout\ & ((\dut|state.initialize~regout\) # ((\dut|state.power_up~regout\ & !\dut|state.send~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|state.power_up~regout\,
	datab => \dut|state.initialize~regout\,
	datac => \dut|state.send~regout\,
	datad => \dut|Add0~62_combout\,
	combout => \dut|clk_count[23]~0_combout\);

-- Location: LCCOMB_X31_Y22_N14
\dut|clk_count[23]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|clk_count[23]~1_combout\ = (\dut|clk_count[23]~0_combout\) # ((\dut|state.power_up~regout\ & ((\dut|Selector35~0_combout\))) # (!\dut|state.power_up~regout\ & (\dut|LessThan0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|state.power_up~regout\,
	datab => \dut|LessThan0~10_combout\,
	datac => \dut|Selector35~0_combout\,
	datad => \dut|clk_count[23]~0_combout\,
	combout => \dut|clk_count[23]~1_combout\);

-- Location: LCCOMB_X30_Y22_N14
\dut|clk_count[23]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|clk_count[23]~4_combout\ = (\dut|LessThan7~7_combout\) # (!\dut|LessThan6~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dut|LessThan6~3_combout\,
	datad => \dut|LessThan7~7_combout\,
	combout => \dut|clk_count[23]~4_combout\);

-- Location: LCCOMB_X30_Y22_N28
\dut|clk_count[23]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|clk_count[23]~5_combout\ = (!\dut|Add0~60_combout\ & (\dut|state.initialize~regout\ & (\dut|clk_count[23]~4_combout\ & \dut|LessThan7~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Add0~60_combout\,
	datab => \dut|state.initialize~regout\,
	datac => \dut|clk_count[23]~4_combout\,
	datad => \dut|LessThan7~5_combout\,
	combout => \dut|clk_count[23]~5_combout\);

-- Location: LCCOMB_X30_Y22_N6
\dut|clk_count[23]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|clk_count[23]~6_combout\ = (\dut|state.ready~regout\) # ((!\dut|clk_count[23]~3_combout\ & (!\dut|clk_count[23]~1_combout\ & !\dut|clk_count[23]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|state.ready~regout\,
	datab => \dut|clk_count[23]~3_combout\,
	datac => \dut|clk_count[23]~1_combout\,
	datad => \dut|clk_count[23]~5_combout\,
	combout => \dut|clk_count[23]~6_combout\);

-- Location: LCCOMB_X31_Y22_N20
\dut|Selector7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|Selector7~0_combout\ = (\dut|Add0~50_combout\ & !\dut|clk_count[23]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Add0~50_combout\,
	datac => \dut|clk_count[23]~6_combout\,
	combout => \dut|Selector7~0_combout\);

-- Location: LCFF_X31_Y22_N21
\dut|clk_count[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \dut|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|clk_count\(25));

-- Location: LCCOMB_X28_Y21_N22
\dut|Add0~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|Add0~54_combout\ = (\dut|clk_count\(27) & (!\dut|Add0~53\)) # (!\dut|clk_count\(27) & ((\dut|Add0~53\) # (GND)))
-- \dut|Add0~55\ = CARRY((!\dut|Add0~53\) # (!\dut|clk_count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dut|clk_count\(27),
	datad => VCC,
	cin => \dut|Add0~53\,
	combout => \dut|Add0~54_combout\,
	cout => \dut|Add0~55\);

-- Location: LCCOMB_X27_Y21_N24
\dut|Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|Selector5~0_combout\ = (\dut|Add0~54_combout\ & !\dut|clk_count[23]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut|Add0~54_combout\,
	datad => \dut|clk_count[23]~6_combout\,
	combout => \dut|Selector5~0_combout\);

-- Location: LCFF_X27_Y21_N25
\dut|clk_count[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \dut|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|clk_count\(27));

-- Location: LCCOMB_X27_Y21_N14
\dut|Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|Selector4~0_combout\ = (\dut|Add0~56_combout\ & !\dut|clk_count[23]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut|Add0~56_combout\,
	datad => \dut|clk_count[23]~6_combout\,
	combout => \dut|Selector4~0_combout\);

-- Location: LCFF_X27_Y21_N15
\dut|clk_count[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \dut|Selector4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|clk_count\(28));

-- Location: LCCOMB_X27_Y21_N26
\dut|LessThan0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|LessThan0~9_combout\ = (!\dut|clk_count\(29) & (!\dut|clk_count\(28) & (!\dut|clk_count\(27) & !\dut|clk_count\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|clk_count\(29),
	datab => \dut|clk_count\(28),
	datac => \dut|clk_count\(27),
	datad => \dut|clk_count\(30),
	combout => \dut|LessThan0~9_combout\);

-- Location: LCCOMB_X30_Y22_N8
\dut|Selector19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|Selector19~0_combout\ = (\dut|Add0~26_combout\ & !\dut|clk_count[23]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dut|Add0~26_combout\,
	datad => \dut|clk_count[23]~6_combout\,
	combout => \dut|Selector19~0_combout\);

-- Location: LCFF_X30_Y22_N9
\dut|clk_count[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \dut|Selector19~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|clk_count\(13));

-- Location: LCCOMB_X31_Y22_N22
\dut|LessThan9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|LessThan9~0_combout\ = (!\dut|clk_count\(17) & (!\dut|clk_count\(12) & (!\dut|clk_count\(13) & !\dut|clk_count\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|clk_count\(17),
	datab => \dut|clk_count\(12),
	datac => \dut|clk_count\(13),
	datad => \dut|clk_count\(18),
	combout => \dut|LessThan9~0_combout\);

-- Location: LCCOMB_X27_Y21_N20
\dut|Selector11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|Selector11~0_combout\ = (\dut|Add0~42_combout\ & !\dut|clk_count[23]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dut|Add0~42_combout\,
	datad => \dut|clk_count[23]~6_combout\,
	combout => \dut|Selector11~0_combout\);

-- Location: LCFF_X27_Y21_N21
\dut|clk_count[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \dut|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|clk_count\(21));

-- Location: LCCOMB_X31_Y22_N12
\dut|LessThan9~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|LessThan9~1_combout\ = (\dut|LessThan0~2_combout\ & (\dut|LessThan9~0_combout\ & (!\dut|clk_count\(21) & \dut|LessThan0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|LessThan0~2_combout\,
	datab => \dut|LessThan9~0_combout\,
	datac => \dut|clk_count\(21),
	datad => \dut|LessThan0~8_combout\,
	combout => \dut|LessThan9~1_combout\);

-- Location: LCCOMB_X31_Y22_N6
\dut|LessThan9~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|LessThan9~5_combout\ = (\dut|LessThan9~4_combout\ & (\dut|LessThan0~9_combout\ & \dut|LessThan9~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|LessThan9~4_combout\,
	datab => \dut|LessThan0~9_combout\,
	datad => \dut|LessThan9~1_combout\,
	combout => \dut|LessThan9~5_combout\);

-- Location: LCCOMB_X32_Y21_N24
\dut|Selector34~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|Selector34~2_combout\ = (!\dut|clk_count\(31) & (!\dut|LessThan9~5_combout\ & \dut|state.send~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|clk_count\(31),
	datab => \dut|LessThan9~5_combout\,
	datac => \dut|state.send~regout\,
	combout => \dut|Selector34~2_combout\);

-- Location: LCCOMB_X31_Y21_N0
\dut|Selector34~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|Selector34~3_combout\ = (\dut|state.ready~regout\ & !\lcd_enable~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut|state.ready~regout\,
	datad => \lcd_enable~regout\,
	combout => \dut|Selector34~3_combout\);

-- Location: LCCOMB_X31_Y21_N22
\dut|Selector34~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|Selector34~4_combout\ = (\dut|Selector34~2_combout\) # ((\dut|Selector34~3_combout\) # ((\dut|state.initialize~regout\ & \dut|busy~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|state.initialize~regout\,
	datab => \dut|Selector34~2_combout\,
	datac => \dut|busy~5_combout\,
	datad => \dut|Selector34~3_combout\,
	combout => \dut|Selector34~4_combout\);

-- Location: LCFF_X31_Y21_N23
\dut|state.ready\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \dut|Selector34~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|state.ready~regout\);

-- Location: LCCOMB_X32_Y21_N22
\dut|rs~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|rs~0_combout\ = (\dut|rs~regout\ & ((!\dut|state.power_up~regout\) # (!\dut|state.ready~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut|rs~regout\,
	datac => \dut|state.ready~regout\,
	datad => \dut|state.power_up~regout\,
	combout => \dut|rs~0_combout\);

-- Location: LCCOMB_X32_Y21_N4
\dut|rs~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|rs~1_combout\ = (\dut|rs~0_combout\ & ((\dut|LessThan0~10_combout\) # ((\dut|state.power_up~regout\)))) # (!\dut|rs~0_combout\ & (((\dut|state.power_up~regout\ & \dut|lcd_data[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|LessThan0~10_combout\,
	datab => \dut|rs~0_combout\,
	datac => \dut|state.power_up~regout\,
	datad => \dut|lcd_data[3]~0_combout\,
	combout => \dut|rs~1_combout\);

-- Location: LCFF_X32_Y21_N5
\dut|rs\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \dut|rs~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|rs~regout\);

-- Location: LCCOMB_X27_Y22_N0
\dut|LessThan2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|LessThan2~1_combout\ = ((!\dut|Add0~18_combout\) # (!\dut|Add0~16_combout\)) # (!\dut|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut|Add0~14_combout\,
	datac => \dut|Add0~16_combout\,
	datad => \dut|Add0~18_combout\,
	combout => \dut|LessThan2~1_combout\);

-- Location: LCCOMB_X27_Y22_N30
\dut|LessThan2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|LessThan2~0_combout\ = (!\dut|Add0~12_combout\ & (((!\dut|Add0~10_combout\) # (!\dut|Add0~8_combout\)) # (!\dut|Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Add0~6_combout\,
	datab => \dut|Add0~8_combout\,
	datac => \dut|Add0~12_combout\,
	datad => \dut|Add0~10_combout\,
	combout => \dut|LessThan2~0_combout\);

-- Location: LCCOMB_X30_Y22_N24
\dut|LessThan2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|LessThan2~2_combout\ = ((!\dut|Add0~20_combout\ & ((\dut|LessThan2~1_combout\) # (\dut|LessThan2~0_combout\)))) # (!\dut|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Add0~20_combout\,
	datab => \dut|Add0~22_combout\,
	datac => \dut|LessThan2~1_combout\,
	datad => \dut|LessThan2~0_combout\,
	combout => \dut|LessThan2~2_combout\);

-- Location: LCCOMB_X29_Y21_N30
\dut|LessThan7~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|LessThan7~4_combout\ = (!\dut|Add0~52_combout\ & (!\dut|Add0~54_combout\ & (\dut|LessThan7~0_combout\ & !\dut|Add0~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Add0~52_combout\,
	datab => \dut|Add0~54_combout\,
	datac => \dut|LessThan7~0_combout\,
	datad => \dut|Add0~50_combout\,
	combout => \dut|LessThan7~4_combout\);

-- Location: LCCOMB_X29_Y21_N6
\dut|LessThan3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|LessThan3~2_combout\ = (\dut|LessThan3~0_combout\ & (\dut|LessThan7~2_combout\ & (\dut|busy~2_combout\ & \dut|LessThan7~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|LessThan3~0_combout\,
	datab => \dut|LessThan7~2_combout\,
	datac => \dut|busy~2_combout\,
	datad => \dut|LessThan7~4_combout\,
	combout => \dut|LessThan3~2_combout\);

-- Location: LCCOMB_X29_Y21_N12
\dut|Selector43~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|Selector43~0_combout\ = (!\dut|Add0~24_combout\ & (!\dut|LessThan2~2_combout\ & (\dut|LessThan3~5_combout\ & \dut|LessThan3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Add0~24_combout\,
	datab => \dut|LessThan2~2_combout\,
	datac => \dut|LessThan3~5_combout\,
	datad => \dut|LessThan3~2_combout\,
	combout => \dut|Selector43~0_combout\);

-- Location: LCCOMB_X30_Y21_N26
\dut|Selector46~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|Selector46~10_combout\ = (\dut|Add0~62_combout\) # ((!\dut|Add0~60_combout\ & ((\dut|LessThan1~2_combout\) # (\dut|Selector43~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|LessThan1~2_combout\,
	datab => \dut|Add0~62_combout\,
	datac => \dut|Add0~60_combout\,
	datad => \dut|Selector43~0_combout\,
	combout => \dut|Selector46~10_combout\);

-- Location: LCCOMB_X31_Y21_N26
\dut|Selector46~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|Selector46~11_combout\ = (!\dut|state.send~regout\ & ((\dut|state.initialize~regout\ & ((\dut|Selector46~10_combout\))) # (!\dut|state.initialize~regout\ & (\dut|e~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|e~regout\,
	datab => \dut|state.initialize~regout\,
	datac => \dut|state.send~regout\,
	datad => \dut|Selector46~10_combout\,
	combout => \dut|Selector46~11_combout\);

-- Location: LCCOMB_X29_Y22_N14
\dut|LessThan6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|LessThan6~0_combout\ = (!\dut|Add0~6_combout\ & (!\dut|Add0~4_combout\ & !\dut|Add0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut|Add0~6_combout\,
	datac => \dut|Add0~4_combout\,
	datad => \dut|Add0~8_combout\,
	combout => \dut|LessThan6~0_combout\);

-- Location: LCCOMB_X29_Y22_N12
\dut|LessThan5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|LessThan5~0_combout\ = (!\dut|Add0~14_combout\ & (((\dut|LessThan6~0_combout\) # (!\dut|Add0~12_combout\)) # (!\dut|Add0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Add0~10_combout\,
	datab => \dut|Add0~12_combout\,
	datac => \dut|LessThan6~0_combout\,
	datad => \dut|Add0~14_combout\,
	combout => \dut|LessThan5~0_combout\);

-- Location: LCCOMB_X29_Y21_N22
\dut|LessThan5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|LessThan5~1_combout\ = (!\dut|Add0~18_combout\ & (!\dut|Add0~20_combout\ & ((\dut|LessThan5~0_combout\) # (!\dut|Add0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Add0~16_combout\,
	datab => \dut|Add0~18_combout\,
	datac => \dut|Add0~20_combout\,
	datad => \dut|LessThan5~0_combout\,
	combout => \dut|LessThan5~1_combout\);

-- Location: LCCOMB_X29_Y21_N20
\dut|LessThan5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|LessThan5~2_combout\ = (!\dut|Add0~60_combout\ & (((\dut|LessThan5~1_combout\) # (!\dut|Add0~24_combout\)) # (!\dut|Add0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Add0~22_combout\,
	datab => \dut|LessThan5~1_combout\,
	datac => \dut|Add0~24_combout\,
	datad => \dut|Add0~60_combout\,
	combout => \dut|LessThan5~2_combout\);

-- Location: LCCOMB_X30_Y21_N24
\dut|LessThan5~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|LessThan5~3_combout\ = (\dut|LessThan3~0_combout\ & (\dut|busy~2_combout\ & (\dut|LessThan5~2_combout\ & \dut|LessThan7~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|LessThan3~0_combout\,
	datab => \dut|busy~2_combout\,
	datac => \dut|LessThan5~2_combout\,
	datad => \dut|LessThan7~3_combout\,
	combout => \dut|LessThan5~3_combout\);

-- Location: LCCOMB_X27_Y22_N20
\dut|LessThan4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|LessThan4~1_combout\ = ((!\dut|Add0~18_combout\) # (!\dut|Add0~16_combout\)) # (!\dut|Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut|Add0~20_combout\,
	datac => \dut|Add0~16_combout\,
	datad => \dut|Add0~18_combout\,
	combout => \dut|LessThan4~1_combout\);

-- Location: LCCOMB_X27_Y22_N6
\dut|LessThan4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|LessThan4~0_combout\ = (!\dut|Add0~14_combout\ & (((!\dut|Add0~10_combout\) # (!\dut|Add0~12_combout\)) # (!\dut|Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Add0~8_combout\,
	datab => \dut|Add0~14_combout\,
	datac => \dut|Add0~12_combout\,
	datad => \dut|Add0~10_combout\,
	combout => \dut|LessThan4~0_combout\);

-- Location: LCCOMB_X27_Y22_N10
\dut|LessThan4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|LessThan4~2_combout\ = ((!\dut|Add0~22_combout\ & ((\dut|LessThan4~1_combout\) # (\dut|LessThan4~0_combout\)))) # (!\dut|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Add0~22_combout\,
	datab => \dut|Add0~24_combout\,
	datac => \dut|LessThan4~1_combout\,
	datad => \dut|LessThan4~0_combout\,
	combout => \dut|LessThan4~2_combout\);

-- Location: LCCOMB_X30_Y21_N4
\dut|LessThan4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|LessThan4~3_combout\ = (\dut|LessThan3~0_combout\ & (\dut|busy~2_combout\ & (\dut|LessThan4~2_combout\ & \dut|LessThan7~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|LessThan3~0_combout\,
	datab => \dut|busy~2_combout\,
	datac => \dut|LessThan4~2_combout\,
	datad => \dut|LessThan7~3_combout\,
	combout => \dut|LessThan4~3_combout\);

-- Location: LCCOMB_X30_Y21_N28
\dut|LessThan2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|LessThan2~3_combout\ = (\dut|LessThan7~2_combout\ & (!\dut|Add0~24_combout\ & (\dut|LessThan3~0_combout\ & \dut|LessThan2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|LessThan7~2_combout\,
	datab => \dut|Add0~24_combout\,
	datac => \dut|LessThan3~0_combout\,
	datad => \dut|LessThan2~2_combout\,
	combout => \dut|LessThan2~3_combout\);

-- Location: LCCOMB_X30_Y21_N6
\dut|LessThan2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|LessThan2~4_combout\ = (\dut|LessThan7~1_combout\ & (\dut|LessThan2~3_combout\ & (\dut|LessThan7~0_combout\ & \dut|busy~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|LessThan7~1_combout\,
	datab => \dut|LessThan2~3_combout\,
	datac => \dut|LessThan7~0_combout\,
	datad => \dut|busy~2_combout\,
	combout => \dut|LessThan2~4_combout\);

-- Location: LCCOMB_X30_Y21_N10
\dut|Selector46~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|Selector46~5_combout\ = (!\dut|state.send~regout\ & (\dut|state.initialize~regout\ & (!\dut|LessThan4~3_combout\ & !\dut|LessThan2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|state.send~regout\,
	datab => \dut|state.initialize~regout\,
	datac => \dut|LessThan4~3_combout\,
	datad => \dut|LessThan2~4_combout\,
	combout => \dut|Selector46~5_combout\);

-- Location: LCCOMB_X31_Y21_N14
\dut|Selector46~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|Selector46~6_combout\ = (\dut|LessThan5~3_combout\ & \dut|Selector46~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut|LessThan5~3_combout\,
	datad => \dut|Selector46~5_combout\,
	combout => \dut|Selector46~6_combout\);

-- Location: LCCOMB_X29_Y21_N8
\dut|LessThan8~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|LessThan8~6_combout\ = (!\dut|Add0~60_combout\ & (\dut|LessThan7~5_combout\ & ((\dut|LessThan8~5_combout\) # (!\dut|LessThan8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|LessThan8~0_combout\,
	datab => \dut|Add0~60_combout\,
	datac => \dut|LessThan8~5_combout\,
	datad => \dut|LessThan7~5_combout\,
	combout => \dut|LessThan8~6_combout\);

-- Location: LCCOMB_X30_Y21_N30
\dut|Selector46~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|Selector46~8_combout\ = (\dut|LessThan7~8_combout\) # ((\dut|e~regout\ & (!\dut|Add0~62_combout\ & !\dut|LessThan8~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|e~regout\,
	datab => \dut|Add0~62_combout\,
	datac => \dut|LessThan7~8_combout\,
	datad => \dut|LessThan8~6_combout\,
	combout => \dut|Selector46~8_combout\);

-- Location: LCCOMB_X29_Y21_N16
\dut|busy~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|busy~3_combout\ = (\dut|busy~2_combout\ & (\dut|LessThan7~2_combout\ & (!\dut|LessThan6~3_combout\ & \dut|LessThan7~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|busy~2_combout\,
	datab => \dut|LessThan7~2_combout\,
	datac => \dut|LessThan6~3_combout\,
	datad => \dut|LessThan7~4_combout\,
	combout => \dut|busy~3_combout\);

-- Location: LCCOMB_X30_Y21_N22
\dut|Selector46~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|Selector46~7_combout\ = (!\dut|Add0~60_combout\ & ((\dut|LessThan2~4_combout\) # ((\dut|LessThan4~3_combout\) # (\dut|busy~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|LessThan2~4_combout\,
	datab => \dut|LessThan4~3_combout\,
	datac => \dut|Add0~60_combout\,
	datad => \dut|busy~3_combout\,
	combout => \dut|Selector46~7_combout\);

-- Location: LCCOMB_X31_Y21_N12
\dut|Selector46~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|Selector46~9_combout\ = (\dut|state.initialize~regout\ & (!\dut|state.send~regout\ & (\dut|Selector46~8_combout\ & !\dut|Selector46~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|state.initialize~regout\,
	datab => \dut|state.send~regout\,
	datac => \dut|Selector46~8_combout\,
	datad => \dut|Selector46~7_combout\,
	combout => \dut|Selector46~9_combout\);

-- Location: LCCOMB_X31_Y21_N16
\dut|Selector46~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|Selector46~12_combout\ = (\dut|Selector46~4_combout\) # ((\dut|Selector46~11_combout\) # ((\dut|Selector46~6_combout\) # (\dut|Selector46~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Selector46~4_combout\,
	datab => \dut|Selector46~11_combout\,
	datac => \dut|Selector46~6_combout\,
	datad => \dut|Selector46~9_combout\,
	combout => \dut|Selector46~12_combout\);

-- Location: LCFF_X31_Y21_N17
\dut|e\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \dut|Selector46~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|e~regout\);

-- Location: LCCOMB_X32_Y21_N30
\dut|Selector45~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|Selector45~3_combout\ = (\dut|Selector45~5_combout\ & (!\dut|busy~4_combout\ & ((\dut|Add0~60_combout\) # (!\dut|LessThan4~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Selector45~5_combout\,
	datab => \dut|Add0~60_combout\,
	datac => \dut|busy~4_combout\,
	datad => \dut|LessThan4~3_combout\,
	combout => \dut|Selector45~3_combout\);

-- Location: LCCOMB_X31_Y21_N30
\dut|Selector45~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|Selector45~4_combout\ = (lcd_bus(0) & ((\dut|lcd_data[3]~0_combout\) # ((\dut|LessThan5~3_combout\ & \dut|Selector45~3_combout\)))) # (!lcd_bus(0) & (\dut|LessThan5~3_combout\ & ((\dut|Selector45~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lcd_bus(0),
	datab => \dut|LessThan5~3_combout\,
	datac => \dut|lcd_data[3]~0_combout\,
	datad => \dut|Selector45~3_combout\,
	combout => \dut|Selector45~4_combout\);

-- Location: LCCOMB_X30_Y21_N14
\dut|lcd_data[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|lcd_data[3]~2_combout\ = (!\dut|state.send~regout\ & (\dut|lcd_data[3]~1_combout\ & ((!\dut|busy~5_combout\) # (!\dut|state.initialize~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|state.send~regout\,
	datab => \dut|lcd_data[3]~1_combout\,
	datac => \dut|state.initialize~regout\,
	datad => \dut|busy~5_combout\,
	combout => \dut|lcd_data[3]~2_combout\);

-- Location: LCFF_X31_Y21_N31
\dut|lcd_data[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \dut|Selector45~4_combout\,
	ena => \dut|lcd_data[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|lcd_data\(0));

-- Location: LCCOMB_X32_Y21_N16
\dut|Selector45~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|Selector45~2_combout\ = (\dut|state.initialize~regout\ & ((!\lcd_enable~regout\) # (!\dut|state.ready~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut|state.ready~regout\,
	datac => \lcd_enable~regout\,
	datad => \dut|state.initialize~regout\,
	combout => \dut|Selector45~2_combout\);

-- Location: LCCOMB_X31_Y21_N8
\dut|Selector44~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|Selector44~1_combout\ = (!\dut|Add0~60_combout\ & (\dut|Selector45~2_combout\ & (!\dut|LessThan4~3_combout\ & !\dut|LessThan5~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Add0~60_combout\,
	datab => \dut|Selector45~2_combout\,
	datac => \dut|LessThan4~3_combout\,
	datad => \dut|LessThan5~3_combout\,
	combout => \dut|Selector44~1_combout\);

-- Location: LCCOMB_X30_Y21_N20
\dut|LessThan7~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|LessThan7~10_combout\ = (\dut|busy~2_combout\ & (\dut|LessThan7~3_combout\ & ((\dut|LessThan7~7_combout\) # (!\dut|LessThan8~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|busy~2_combout\,
	datab => \dut|LessThan8~3_combout\,
	datac => \dut|LessThan7~7_combout\,
	datad => \dut|LessThan7~3_combout\,
	combout => \dut|LessThan7~10_combout\);

-- Location: LCCOMB_X30_Y21_N18
\dut|Selector44~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|Selector44~2_combout\ = (\dut|Selector44~0_combout\ & (\dut|LessThan7~10_combout\ & ((!\dut|busy~4_combout\) # (!\dut|busy~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|busy~2_combout\,
	datab => \dut|Selector44~0_combout\,
	datac => \dut|LessThan7~10_combout\,
	datad => \dut|busy~4_combout\,
	combout => \dut|Selector44~2_combout\);

-- Location: LCCOMB_X30_Y21_N16
\dut|Selector44~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|Selector44~3_combout\ = (lcd_bus(1) & ((\dut|lcd_data[3]~0_combout\) # ((\dut|Selector44~1_combout\ & \dut|Selector44~2_combout\)))) # (!lcd_bus(1) & (((\dut|Selector44~1_combout\ & \dut|Selector44~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lcd_bus(1),
	datab => \dut|lcd_data[3]~0_combout\,
	datac => \dut|Selector44~1_combout\,
	datad => \dut|Selector44~2_combout\,
	combout => \dut|Selector44~3_combout\);

-- Location: LCFF_X30_Y21_N17
\dut|lcd_data[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \dut|Selector44~3_combout\,
	ena => \dut|lcd_data[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|lcd_data\(1));

-- Location: LCCOMB_X34_Y21_N24
\Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (!\Add0~6_combout\ & (!\lcd_bus[6]~0_combout\ & ((\Add0~16_combout\) # (!\Add0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \lcd_bus[6]~0_combout\,
	datac => \Add0~16_combout\,
	datad => \Add0~12_combout\,
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X34_Y21_N2
\Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\Add0~6_combout\ & (\Add0~12_combout\ & (\Add0~9_combout\ $ (!\lcd_bus[6]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \Add0~12_combout\,
	datac => \Add0~9_combout\,
	datad => \lcd_bus[6]~0_combout\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X34_Y21_N12
\Mux7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = (!\Add0~15_combout\ & ((\Mux7~0_combout\) # ((!\Add0~16_combout\ & \Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~15_combout\,
	datab => \Add0~16_combout\,
	datac => \Mux7~0_combout\,
	datad => \Mux3~0_combout\,
	combout => \Mux7~1_combout\);

-- Location: LCCOMB_X33_Y21_N18
\Mux7~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~3_combout\ = (\Mux7~1_combout\) # ((\Mux7~2_combout\ & (\Add0~15_combout\ & \lcd_bus[6]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~2_combout\,
	datab => \Add0~15_combout\,
	datac => \Mux7~1_combout\,
	datad => \lcd_bus[6]~0_combout\,
	combout => \Mux7~3_combout\);

-- Location: LCCOMB_X34_Y21_N10
\lcd_enable~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd_enable~0_combout\ = (!\Add0~12_combout\ & (((!\lcd_bus[6]~0_combout\) # (!\Add0~9_combout\)) # (!\Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \Add0~12_combout\,
	datac => \Add0~9_combout\,
	datad => \lcd_bus[6]~0_combout\,
	combout => \lcd_enable~0_combout\);

-- Location: LCCOMB_X34_Y21_N6
\lcd_bus[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd_bus[0]~2_combout\ = (\process_0~0_combout\ & ((\Add0~15_combout\ & ((\lcd_enable~0_combout\))) # (!\Add0~15_combout\ & (!\lcd_bus[9]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~0_combout\,
	datab => \Add0~15_combout\,
	datac => \lcd_bus[9]~1_combout\,
	datad => \lcd_enable~0_combout\,
	combout => \lcd_bus[0]~2_combout\);

-- Location: LCFF_X33_Y21_N19
\lcd_bus[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Mux7~3_combout\,
	ena => \lcd_bus[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => lcd_bus(2));

-- Location: LCCOMB_X32_Y21_N8
\dut|Selector43~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|Selector43~1_combout\ = (!\dut|LessThan2~4_combout\ & (\dut|LessThan7~8_combout\ & (!\dut|busy~3_combout\ & \dut|Selector44~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|LessThan2~4_combout\,
	datab => \dut|LessThan7~8_combout\,
	datac => \dut|busy~3_combout\,
	datad => \dut|Selector44~1_combout\,
	combout => \dut|Selector43~1_combout\);

-- Location: LCCOMB_X30_Y22_N26
\dut|LessThan7~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|LessThan7~9_combout\ = (\dut|Add0~14_combout\ & (\dut|Add0~16_combout\ & (\dut|Add0~12_combout\ & \dut|LessThan8~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Add0~14_combout\,
	datab => \dut|Add0~16_combout\,
	datac => \dut|Add0~12_combout\,
	datad => \dut|LessThan8~1_combout\,
	combout => \dut|LessThan7~9_combout\);

-- Location: LCCOMB_X30_Y22_N20
\dut|LessThan1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|LessThan1~1_combout\ = (\dut|LessThan1~0_combout\ & (((!\dut|Add0~6_combout\ & !\dut|Add0~4_combout\)) # (!\dut|LessThan7~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Add0~6_combout\,
	datab => \dut|LessThan7~9_combout\,
	datac => \dut|Add0~4_combout\,
	datad => \dut|LessThan1~0_combout\,
	combout => \dut|LessThan1~1_combout\);

-- Location: LCCOMB_X30_Y21_N12
\dut|LessThan1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|LessThan1~2_combout\ = (\dut|LessThan3~0_combout\ & (\dut|busy~2_combout\ & (\dut|LessThan1~1_combout\ & \dut|LessThan7~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|LessThan3~0_combout\,
	datab => \dut|busy~2_combout\,
	datac => \dut|LessThan1~1_combout\,
	datad => \dut|LessThan7~3_combout\,
	combout => \dut|LessThan1~2_combout\);

-- Location: LCCOMB_X32_Y21_N18
\dut|Selector43~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|Selector43~2_combout\ = (!\dut|Add0~60_combout\ & ((\dut|LessThan1~2_combout\) # (\dut|Selector43~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut|Add0~60_combout\,
	datac => \dut|LessThan1~2_combout\,
	datad => \dut|Selector43~0_combout\,
	combout => \dut|Selector43~2_combout\);

-- Location: LCCOMB_X32_Y21_N28
\dut|Selector43~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|Selector43~3_combout\ = ((!\dut|Add0~62_combout\ & !\dut|Selector43~2_combout\)) # (!\dut|Selector45~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Selector45~2_combout\,
	datac => \dut|Add0~62_combout\,
	datad => \dut|Selector43~2_combout\,
	combout => \dut|Selector43~3_combout\);

-- Location: LCCOMB_X31_Y21_N28
\dut|Selector43~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|Selector43~4_combout\ = (\dut|Selector43~1_combout\) # (((\dut|lcd_data[3]~0_combout\ & lcd_bus(2))) # (!\dut|Selector43~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|lcd_data[3]~0_combout\,
	datab => lcd_bus(2),
	datac => \dut|Selector43~1_combout\,
	datad => \dut|Selector43~3_combout\,
	combout => \dut|Selector43~4_combout\);

-- Location: LCFF_X31_Y21_N29
\dut|lcd_data[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \dut|Selector43~4_combout\,
	ena => \dut|lcd_data[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|lcd_data\(2));

-- Location: LCCOMB_X31_Y21_N18
\dut|Selector42~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|Selector42~2_combout\ = ((lcd_bus(3) & (\lcd_enable~regout\ & \dut|state.ready~regout\))) # (!\dut|Selector43~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lcd_bus(3),
	datab => \lcd_enable~regout\,
	datac => \dut|state.ready~regout\,
	datad => \dut|Selector43~3_combout\,
	combout => \dut|Selector42~2_combout\);

-- Location: LCFF_X31_Y21_N19
\dut|lcd_data[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \dut|Selector42~2_combout\,
	ena => \dut|lcd_data[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|lcd_data\(3));

-- Location: LCCOMB_X32_Y21_N20
\dut|Selector41~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|Selector41~3_combout\ = (\dut|Selector41~2_combout\) # ((!\dut|Add0~60_combout\ & (!\dut|state.ready~regout\ & \dut|LessThan1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Selector41~2_combout\,
	datab => \dut|Add0~60_combout\,
	datac => \dut|state.ready~regout\,
	datad => \dut|LessThan1~2_combout\,
	combout => \dut|Selector41~3_combout\);

-- Location: LCCOMB_X31_Y21_N24
\dut|Selector41~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|Selector41~4_combout\ = (\dut|Selector41~3_combout\) # ((lcd_bus(4) & (\lcd_enable~regout\ & \dut|state.ready~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lcd_bus(4),
	datab => \lcd_enable~regout\,
	datac => \dut|state.ready~regout\,
	datad => \dut|Selector41~3_combout\,
	combout => \dut|Selector41~4_combout\);

-- Location: LCFF_X31_Y21_N25
\dut|lcd_data[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \dut|Selector41~4_combout\,
	ena => \dut|lcd_data[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|lcd_data\(4));

-- Location: LCCOMB_X31_Y21_N2
\dut|Selector40~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|Selector40~2_combout\ = (\dut|Selector41~3_combout\) # ((lcd_bus(5) & (\lcd_enable~regout\ & \dut|state.ready~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lcd_bus(5),
	datab => \lcd_enable~regout\,
	datac => \dut|state.ready~regout\,
	datad => \dut|Selector41~3_combout\,
	combout => \dut|Selector40~2_combout\);

-- Location: LCFF_X31_Y21_N3
\dut|lcd_data[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \dut|Selector40~2_combout\,
	ena => \dut|lcd_data[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|lcd_data\(5));

-- Location: LCCOMB_X33_Y21_N24
\lcd_bus[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \lcd_bus[6]~feeder_combout\ = \lcd_bus[6]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lcd_bus[6]~0_combout\,
	combout => \lcd_bus[6]~feeder_combout\);

-- Location: LCCOMB_X34_Y21_N0
\Mux3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = (\Mux3~0_combout\) # ((\Mux3~1_combout\ & (!\lcd_bus[6]~0_combout\ & !\Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~1_combout\,
	datab => \lcd_bus[6]~0_combout\,
	datac => \Add0~6_combout\,
	datad => \Mux3~0_combout\,
	combout => \Mux3~2_combout\);

-- Location: LCFF_X33_Y21_N25
\lcd_bus[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \lcd_bus[6]~feeder_combout\,
	sdata => \Mux3~2_combout\,
	sload => \ALT_INV_Add0~15_combout\,
	ena => \lcd_bus[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => lcd_bus(6));

-- Location: LCCOMB_X32_Y21_N26
\dut|Selector39~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dut|Selector39~0_combout\ = (\lcd_enable~regout\ & (\dut|state.ready~regout\ & lcd_bus(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_enable~regout\,
	datab => \dut|state.ready~regout\,
	datad => lcd_bus(6),
	combout => \dut|Selector39~0_combout\);

-- Location: LCFF_X31_Y21_N1
\dut|lcd_data[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \dut|Selector39~0_combout\,
	sload => VCC,
	ena => \dut|lcd_data[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dut|lcd_data\(6));

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
	datain => GND,
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
	datain => \dut|rs~regout\,
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
	datain => \dut|e~regout\,
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
	datain => \dut|lcd_data\(0),
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
	datain => \dut|lcd_data\(1),
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
	datain => \dut|lcd_data\(2),
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
	datain => \dut|lcd_data\(3),
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
	datain => \dut|lcd_data\(4),
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
	datain => \dut|lcd_data\(5),
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
	datain => \dut|lcd_data\(6),
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_lcd_data(7));
END structure;


