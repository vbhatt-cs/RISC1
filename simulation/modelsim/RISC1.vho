-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 15.1.0 Build 185 10/21/2015 SJ Lite Edition"

-- DATE "10/23/2016 20:24:53"

-- 
-- Device: Altera EPM240T100C3 Package TQFP100
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXII;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXII.MAXII_COMPONENTS.ALL;

ENTITY 	Comparator IS
    PORT (
	Comp_D1 : IN std_logic_vector(15 DOWNTO 0);
	Comp_D2 : IN std_logic_vector(15 DOWNTO 0);
	Comp_out : OUT std_logic
	);
END Comparator;

-- Design Ports Information


ARCHITECTURE structure OF Comparator IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Comp_D1 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_Comp_D2 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_Comp_out : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \Equal0~10_combout\ : std_logic;
SIGNAL \Comp_D2~combout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \Comp_D1~combout\ : std_logic_vector(15 DOWNTO 0);

BEGIN

ww_Comp_D1 <= Comp_D1;
ww_Comp_D2 <= Comp_D2;
Comp_out <= ww_Comp_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_62,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Comp_D1[12]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Comp_D1(12),
	combout => \Comp_D1~combout\(12));

-- Location: PIN_90,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Comp_D2[13]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Comp_D2(13),
	combout => \Comp_D2~combout\(13));

-- Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Comp_D1[13]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Comp_D1(13),
	combout => \Comp_D1~combout\(13));

-- Location: PIN_69,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Comp_D2[12]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Comp_D2(12),
	combout => \Comp_D2~combout\(12));

-- Location: LC_X5_Y3_N5
\Equal0~8\ : maxii_lcell
-- Equation(s):
-- \Equal0~8_combout\ = (\Comp_D1~combout\(12) & (\Comp_D2~combout\(12) & (\Comp_D2~combout\(13) $ (!\Comp_D1~combout\(13))))) # (!\Comp_D1~combout\(12) & (!\Comp_D2~combout\(12) & (\Comp_D2~combout\(13) $ (!\Comp_D1~combout\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8241",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Comp_D1~combout\(12),
	datab => \Comp_D2~combout\(13),
	datac => \Comp_D1~combout\(13),
	datad => \Comp_D2~combout\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~8_combout\);

-- Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Comp_D1[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Comp_D1(4),
	combout => \Comp_D1~combout\(4));

-- Location: PIN_84,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Comp_D1[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Comp_D1(5),
	combout => \Comp_D1~combout\(5));

-- Location: PIN_73,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Comp_D2[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Comp_D2(4),
	combout => \Comp_D2~combout\(4));

-- Location: PIN_71,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Comp_D2[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Comp_D2(5),
	combout => \Comp_D2~combout\(5));

-- Location: LC_X6_Y4_N5
\Equal0~2\ : maxii_lcell
-- Equation(s):
-- \Equal0~2_combout\ = (\Comp_D1~combout\(4) & (\Comp_D2~combout\(4) & (\Comp_D1~combout\(5) $ (!\Comp_D2~combout\(5))))) # (!\Comp_D1~combout\(4) & (!\Comp_D2~combout\(4) & (\Comp_D1~combout\(5) $ (!\Comp_D2~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8421",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Comp_D1~combout\(4),
	datab => \Comp_D1~combout\(5),
	datac => \Comp_D2~combout\(4),
	datad => \Comp_D2~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~2_combout\);

-- Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Comp_D1[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Comp_D1(1),
	combout => \Comp_D1~combout\(1));

-- Location: PIN_83,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Comp_D2[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Comp_D2(0),
	combout => \Comp_D2~combout\(0));

-- Location: PIN_99,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Comp_D1[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Comp_D1(0),
	combout => \Comp_D1~combout\(0));

-- Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Comp_D2[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Comp_D2(1),
	combout => \Comp_D2~combout\(1));

-- Location: LC_X6_Y4_N2
\Equal0~0\ : maxii_lcell
-- Equation(s):
-- \Equal0~0_combout\ = (\Comp_D1~combout\(1) & (\Comp_D2~combout\(1) & (\Comp_D2~combout\(0) $ (!\Comp_D1~combout\(0))))) # (!\Comp_D1~combout\(1) & (!\Comp_D2~combout\(1) & (\Comp_D2~combout\(0) $ (!\Comp_D1~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8241",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Comp_D1~combout\(1),
	datab => \Comp_D2~combout\(0),
	datac => \Comp_D1~combout\(0),
	datad => \Comp_D2~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~0_combout\);

-- Location: PIN_81,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Comp_D2[7]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Comp_D2(7),
	combout => \Comp_D2~combout\(7));

-- Location: PIN_47,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Comp_D1[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Comp_D1(6),
	combout => \Comp_D1~combout\(6));

-- Location: PIN_85,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Comp_D2[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Comp_D2(6),
	combout => \Comp_D2~combout\(6));

-- Location: PIN_82,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Comp_D1[7]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Comp_D1(7),
	combout => \Comp_D1~combout\(7));

-- Location: LC_X6_Y4_N6
\Equal0~3\ : maxii_lcell
-- Equation(s):
-- \Equal0~3_combout\ = (\Comp_D2~combout\(7) & (\Comp_D1~combout\(7) & (\Comp_D1~combout\(6) $ (!\Comp_D2~combout\(6))))) # (!\Comp_D2~combout\(7) & (!\Comp_D1~combout\(7) & (\Comp_D1~combout\(6) $ (!\Comp_D2~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8241",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Comp_D2~combout\(7),
	datab => \Comp_D1~combout\(6),
	datac => \Comp_D2~combout\(6),
	datad => \Comp_D1~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~3_combout\);

-- Location: PIN_74,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Comp_D1[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Comp_D1(2),
	combout => \Comp_D1~combout\(2));

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Comp_D1[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Comp_D1(3),
	combout => \Comp_D1~combout\(3));

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Comp_D2[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Comp_D2(2),
	combout => \Comp_D2~combout\(2));

-- Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Comp_D2[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Comp_D2(3),
	combout => \Comp_D2~combout\(3));

-- Location: LC_X6_Y4_N8
\Equal0~1\ : maxii_lcell
-- Equation(s):
-- \Equal0~1_combout\ = (\Comp_D1~combout\(2) & (\Comp_D2~combout\(2) & (\Comp_D1~combout\(3) $ (!\Comp_D2~combout\(3))))) # (!\Comp_D1~combout\(2) & (!\Comp_D2~combout\(2) & (\Comp_D1~combout\(3) $ (!\Comp_D2~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8421",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Comp_D1~combout\(2),
	datab => \Comp_D1~combout\(3),
	datac => \Comp_D2~combout\(2),
	datad => \Comp_D2~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~1_combout\);

-- Location: LC_X6_Y4_N3
\Equal0~4\ : maxii_lcell
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~2_combout\ & (\Equal0~0_combout\ & (\Equal0~3_combout\ & \Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datab => \Equal0~0_combout\,
	datac => \Equal0~3_combout\,
	datad => \Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~4_combout\);

-- Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Comp_D2[10]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Comp_D2(10),
	combout => \Comp_D2~combout\(10));

-- Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Comp_D1[10]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Comp_D1(10),
	combout => \Comp_D1~combout\(10));

-- Location: LC_X5_Y3_N6
\Equal0~6\ : maxii_lcell
-- Equation(s):
-- \Equal0~6_combout\ = \Comp_D2~combout\(10) $ ((((\Comp_D1~combout\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5a5a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Comp_D2~combout\(10),
	datac => \Comp_D1~combout\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~6_combout\);

-- Location: PIN_39,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Comp_D1[8]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Comp_D1(8),
	combout => \Comp_D1~combout\(8));

-- Location: PIN_68,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Comp_D1[9]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Comp_D1(9),
	combout => \Comp_D1~combout\(9));

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Comp_D2[8]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Comp_D2(8),
	combout => \Comp_D2~combout\(8));

-- Location: PIN_64,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Comp_D2[9]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Comp_D2(9),
	combout => \Comp_D2~combout\(9));

-- Location: LC_X5_Y3_N2
\Equal0~5\ : maxii_lcell
-- Equation(s):
-- \Equal0~5_combout\ = (\Comp_D1~combout\(8) & (\Comp_D2~combout\(8) & (\Comp_D1~combout\(9) $ (!\Comp_D2~combout\(9))))) # (!\Comp_D1~combout\(8) & (!\Comp_D2~combout\(8) & (\Comp_D1~combout\(9) $ (!\Comp_D2~combout\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8421",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Comp_D1~combout\(8),
	datab => \Comp_D1~combout\(9),
	datac => \Comp_D2~combout\(8),
	datad => \Comp_D2~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~5_combout\);

-- Location: PIN_36,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Comp_D1[11]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Comp_D1(11),
	combout => \Comp_D1~combout\(11));

-- Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Comp_D2[11]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Comp_D2(11),
	combout => \Comp_D2~combout\(11));

-- Location: LC_X5_Y3_N4
\Equal0~7\ : maxii_lcell
-- Equation(s):
-- \Equal0~7_combout\ = (!\Equal0~6_combout\ & (\Equal0~5_combout\ & (\Comp_D1~combout\(11) $ (!\Comp_D2~combout\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4004",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~6_combout\,
	datab => \Equal0~5_combout\,
	datac => \Comp_D1~combout\(11),
	datad => \Comp_D2~combout\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~7_combout\);

-- Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Comp_D2[14]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Comp_D2(14),
	combout => \Comp_D2~combout\(14));

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Comp_D2[15]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Comp_D2(15),
	combout => \Comp_D2~combout\(15));

-- Location: PIN_38,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Comp_D1[14]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Comp_D1(14),
	combout => \Comp_D1~combout\(14));

-- Location: PIN_37,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Comp_D1[15]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Comp_D1(15),
	combout => \Comp_D1~combout\(15));

-- Location: LC_X4_Y1_N2
\Equal0~9\ : maxii_lcell
-- Equation(s):
-- \Equal0~9_combout\ = (\Comp_D2~combout\(14) & (\Comp_D1~combout\(14) & (\Comp_D2~combout\(15) $ (!\Comp_D1~combout\(15))))) # (!\Comp_D2~combout\(14) & (!\Comp_D1~combout\(14) & (\Comp_D2~combout\(15) $ (!\Comp_D1~combout\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8421",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Comp_D2~combout\(14),
	datab => \Comp_D2~combout\(15),
	datac => \Comp_D1~combout\(14),
	datad => \Comp_D1~combout\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~9_combout\);

-- Location: LC_X5_Y3_N8
\Equal0~10\ : maxii_lcell
-- Equation(s):
-- \Equal0~10_combout\ = (\Equal0~8_combout\ & (\Equal0~4_combout\ & (\Equal0~7_combout\ & \Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~8_combout\,
	datab => \Equal0~4_combout\,
	datac => \Equal0~7_combout\,
	datad => \Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~10_combout\);

-- Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Comp_out~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Equal0~10_combout\,
	oe => VCC,
	padio => ww_Comp_out);
END structure;


