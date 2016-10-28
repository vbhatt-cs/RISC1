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

-- DATE "10/28/2016 19:29:12"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	RISC1 IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	x : BUFFER std_logic_vector(15 DOWNTO 0)
	);
END RISC1;

-- Design Ports Information
-- x[0]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[1]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[2]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[3]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[4]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[5]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[6]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[7]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[8]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[9]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[10]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[11]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[12]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[13]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[14]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[15]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF RISC1 IS
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
SIGNAL ww_x : std_logic_vector(15 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a16_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a16_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a16_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a48_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a48_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a48_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a32_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a32_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a32_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a17_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a17_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a17_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a49_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a49_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a49_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a33_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a33_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a33_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a18_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a18_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a18_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a2_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a50_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a50_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a50_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a34_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a34_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a34_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a19_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a19_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a19_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a3_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a3_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a51_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a51_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a51_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a35_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a35_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a35_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a20_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a20_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a20_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a52_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a52_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a52_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a36_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a36_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a36_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a21_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a21_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a21_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a5_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a5_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a53_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a53_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a53_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a37_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a37_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a37_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a22_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a22_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a22_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a6_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a6_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a54_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a54_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a54_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a38_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a38_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a38_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a23_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a23_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a23_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a7_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a7_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a55_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a55_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a55_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a39_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a39_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a39_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a24_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a24_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a24_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a8_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a8_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a8_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a56_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a56_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a56_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a40_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a40_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a40_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a25_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a25_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a25_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a9_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a9_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a9_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a57_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a57_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a57_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a41_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a41_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a41_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a26_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a26_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a26_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a10_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a10_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a10_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a58_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a58_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a58_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a42_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a42_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a42_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a27_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a27_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a27_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a11_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a11_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a11_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a59_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a59_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a59_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a43_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a43_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a43_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a28_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a28_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a28_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a12_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a12_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a12_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a60_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a60_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a60_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a44_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a44_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a44_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a29_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a29_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a29_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a13_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a13_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a13_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a61_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a61_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a61_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a45_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a45_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a45_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a30_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a30_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a30_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a14_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a14_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a62_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a62_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a62_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a46_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a46_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a46_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a31_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a31_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a31_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a15_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a15_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a15_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a63_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a63_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a63_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a47_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a47_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a47_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \x[0]~output_o\ : std_logic;
SIGNAL \x[1]~output_o\ : std_logic;
SIGNAL \x[2]~output_o\ : std_logic;
SIGNAL \x[3]~output_o\ : std_logic;
SIGNAL \x[4]~output_o\ : std_logic;
SIGNAL \x[5]~output_o\ : std_logic;
SIGNAL \x[6]~output_o\ : std_logic;
SIGNAL \x[7]~output_o\ : std_logic;
SIGNAL \x[8]~output_o\ : std_logic;
SIGNAL \x[9]~output_o\ : std_logic;
SIGNAL \x[10]~output_o\ : std_logic;
SIGNAL \x[11]~output_o\ : std_logic;
SIGNAL \x[12]~output_o\ : std_logic;
SIGNAL \x[13]~output_o\ : std_logic;
SIGNAL \x[14]~output_o\ : std_logic;
SIGNAL \x[15]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \dp|mem|ram_rtl_0|auto_generated|address_reg_a[1]~feeder_combout\ : std_logic;
SIGNAL \dp|mem|ram_rtl_0|auto_generated|decode3|w_anode423w[2]~4_combout\ : std_logic;
SIGNAL \dp|Mem_din[13]~13_combout\ : std_logic;
SIGNAL \cp|Selector16~1_combout\ : std_logic;
SIGNAL \cp|state~24_combout\ : std_logic;
SIGNAL \cp|state.s0~q\ : std_logic;
SIGNAL \cp|Selector1~0_combout\ : std_logic;
SIGNAL \cp|state.s1~q\ : std_logic;
SIGNAL \cp|M11[0]~0_combout\ : std_logic;
SIGNAL \cp|M5[1]~0_combout\ : std_logic;
SIGNAL \cp|M5[1]~1_combout\ : std_logic;
SIGNAL \cp|ZEn_var~0_combout\ : std_logic;
SIGNAL \cp|Equal8~0_combout\ : std_logic;
SIGNAL \cp|Selector23~0_combout\ : std_logic;
SIGNAL \dp|Equal5~0_combout\ : std_logic;
SIGNAL \cp|process_0~0_combout\ : std_logic;
SIGNAL \cp|state~25_combout\ : std_logic;
SIGNAL \cp|Selector2~1_combout\ : std_logic;
SIGNAL \cp|Selector2~0_combout\ : std_logic;
SIGNAL \cp|Selector2~2_combout\ : std_logic;
SIGNAL \cp|state.s2~q\ : std_logic;
SIGNAL \dp|T4_in[7]~2_combout\ : std_logic;
SIGNAL \dp|Equal8~0_combout\ : std_logic;
SIGNAL \dp|T4_in[1]~9_combout\ : std_logic;
SIGNAL \cp|Selector21~2_combout\ : std_logic;
SIGNAL \cp|state~37_combout\ : std_logic;
SIGNAL \cp|state~40_combout\ : std_logic;
SIGNAL \cp|state.s13~q\ : std_logic;
SIGNAL \cp|state~38_combout\ : std_logic;
SIGNAL \cp|state.s14~q\ : std_logic;
SIGNAL \cp|WideOr22~0_combout\ : std_logic;
SIGNAL \cp|Equal8~1_combout\ : std_logic;
SIGNAL \cp|M4[0]~0_combout\ : std_logic;
SIGNAL \cp|Selector22~0_combout\ : std_logic;
SIGNAL \dp|T4_in[4]~6_combout\ : std_logic;
SIGNAL \dp|RF_D3[4]~28_combout\ : std_logic;
SIGNAL \dp|rf|reg~29_combout\ : std_logic;
SIGNAL \dp|T4_in[5]~5_combout\ : std_logic;
SIGNAL \dp|Equal15~0_combout\ : std_logic;
SIGNAL \cp|Selector18~2_combout\ : std_logic;
SIGNAL \cp|M9~0_combout\ : std_logic;
SIGNAL \cp|Selector17~0_combout\ : std_logic;
SIGNAL \dp|Alu_1[12]~2_combout\ : std_logic;
SIGNAL \dp|mem|ram_rtl_0|auto_generated|decode3|w_anode444w[2]~0_combout\ : std_logic;
SIGNAL \dp|mem|ram_rtl_0|auto_generated|rden_decode|w_anode484w[2]~4_combout\ : std_logic;
SIGNAL \dp|t4|Dout[8]~4_combout\ : std_logic;
SIGNAL \dp|T4_in[7]~3_combout\ : std_logic;
SIGNAL \dp|SE_out[7]~1_combout\ : std_logic;
SIGNAL \dp|T4_in[7]~4_combout\ : std_logic;
SIGNAL \cp|Selector21~3_combout\ : std_logic;
SIGNAL \dp|pr_enc|d[8]~5_combout\ : std_logic;
SIGNAL \dp|rf|Decoder0~4_combout\ : std_logic;
SIGNAL \dp|rf|reg[2][6]~20_combout\ : std_logic;
SIGNAL \dp|rf|reg[2][2]~q\ : std_logic;
SIGNAL \dp|RF_A1[0]~0_combout\ : std_logic;
SIGNAL \dp|rf|reg[0][2]~q\ : std_logic;
SIGNAL \dp|rf|reg[1][2]~q\ : std_logic;
SIGNAL \dp|rf|Mux13~2_combout\ : std_logic;
SIGNAL \dp|rf|Mux13~3_combout\ : std_logic;
SIGNAL \dp|RF_A1[2]~2_combout\ : std_logic;
SIGNAL \dp|T4_in[2]~8_combout\ : std_logic;
SIGNAL \dp|RF_D3[2]~44_combout\ : std_logic;
SIGNAL \dp|Alu_1[2]~22_combout\ : std_logic;
SIGNAL \dp|Alu_1[2]~23_combout\ : std_logic;
SIGNAL \cp|Selector19~0_combout\ : std_logic;
SIGNAL \dp|Alu_2[2]~24_combout\ : std_logic;
SIGNAL \dp|Alu_2[2]~23_combout\ : std_logic;
SIGNAL \dp|Alu_2[2]~25_combout\ : std_logic;
SIGNAL \dp|Alu_2[1]~27_combout\ : std_logic;
SIGNAL \dp|Alu_2[1]~26_combout\ : std_logic;
SIGNAL \dp|T3_in[1]~8_combout\ : std_logic;
SIGNAL \dp|rf|reg[1][1]~q\ : std_logic;
SIGNAL \dp|rf|Mux14~2_combout\ : std_logic;
SIGNAL \dp|rf|reg[2][1]~q\ : std_logic;
SIGNAL \dp|rf|Decoder0~7_combout\ : std_logic;
SIGNAL \dp|rf|reg[3][7]~23_combout\ : std_logic;
SIGNAL \dp|rf|reg[3][1]~q\ : std_logic;
SIGNAL \dp|rf|Mux14~3_combout\ : std_logic;
SIGNAL \dp|rf|Decoder0~2_combout\ : std_logic;
SIGNAL \dp|rf|reg[6][7]~18_combout\ : std_logic;
SIGNAL \dp|rf|reg[6][1]~q\ : std_logic;
SIGNAL \dp|rf|Decoder0~3_combout\ : std_logic;
SIGNAL \dp|rf|reg[4][14]~19_combout\ : std_logic;
SIGNAL \dp|rf|reg[4][1]~q\ : std_logic;
SIGNAL \dp|rf|Mux14~0_combout\ : std_logic;
SIGNAL \dp|rf|Decoder0~1_combout\ : std_logic;
SIGNAL \dp|rf|reg[5][13]~17_combout\ : std_logic;
SIGNAL \dp|rf|reg[5][1]~q\ : std_logic;
SIGNAL \dp|rf|Mux14~1_combout\ : std_logic;
SIGNAL \dp|rf|Mux14~4_combout\ : std_logic;
SIGNAL \dp|T3_in[1]~9_combout\ : std_logic;
SIGNAL \cp|WideOr19~combout\ : std_logic;
SIGNAL \dp|Alu_2[1]~28_combout\ : std_logic;
SIGNAL \dp|T4_in[0]~10_combout\ : std_logic;
SIGNAL \dp|t1|Dout[0]~feeder_combout\ : std_logic;
SIGNAL \dp|Alu_1[0]~26_combout\ : std_logic;
SIGNAL \dp|Alu_1[0]~27_combout\ : std_logic;
SIGNAL \dp|rf|reg[6][0]~q\ : std_logic;
SIGNAL \dp|rf|reg[4][0]~feeder_combout\ : std_logic;
SIGNAL \dp|rf|reg[4][0]~q\ : std_logic;
SIGNAL \dp|T2_in[0]~10_combout\ : std_logic;
SIGNAL \dp|rf|reg[5][0]~q\ : std_logic;
SIGNAL \dp|T2_in[0]~11_combout\ : std_logic;
SIGNAL \dp|t4|Dout[11]~1_combout\ : std_logic;
SIGNAL \dp|pr_enc|v~0_combout\ : std_logic;
SIGNAL \dp|pr_enc|d[11]~6_combout\ : std_logic;
SIGNAL \dp|Alu_2[11]~5_combout\ : std_logic;
SIGNAL \dp|RF_D3[11]~37_combout\ : std_logic;
SIGNAL \dp|rf|reg~36_combout\ : std_logic;
SIGNAL \dp|rf|reg[4][11]~q\ : std_logic;
SIGNAL \dp|rf|reg[6][11]~q\ : std_logic;
SIGNAL \dp|T2_in[11]~54_combout\ : std_logic;
SIGNAL \dp|rf|reg[5][11]~q\ : std_logic;
SIGNAL \dp|T2_in[11]~55_combout\ : std_logic;
SIGNAL \dp|rf|reg[2][11]~q\ : std_logic;
SIGNAL \dp|rf|reg[0][11]~q\ : std_logic;
SIGNAL \dp|rf|reg[1][11]~q\ : std_logic;
SIGNAL \dp|T2_in[11]~52_combout\ : std_logic;
SIGNAL \dp|rf|reg[3][11]~q\ : std_logic;
SIGNAL \dp|T2_in[11]~53_combout\ : std_logic;
SIGNAL \dp|t2|Dout[11]~11_combout\ : std_logic;
SIGNAL \cp|WideOr20~combout\ : std_logic;
SIGNAL \dp|Equal16~0_combout\ : std_logic;
SIGNAL \dp|Alu_2[11]~6_combout\ : std_logic;
SIGNAL \dp|rf|reg[1][10]~q\ : std_logic;
SIGNAL \dp|rf|Mux5~2_combout\ : std_logic;
SIGNAL \dp|rf|reg[3][10]~feeder_combout\ : std_logic;
SIGNAL \dp|rf|reg[3][10]~q\ : std_logic;
SIGNAL \dp|rf|reg[2][10]~q\ : std_logic;
SIGNAL \dp|rf|Mux5~3_combout\ : std_logic;
SIGNAL \dp|rf|reg[4][10]~q\ : std_logic;
SIGNAL \dp|rf|reg[6][10]~q\ : std_logic;
SIGNAL \dp|rf|Mux5~0_combout\ : std_logic;
SIGNAL \dp|rf|reg[5][10]~q\ : std_logic;
SIGNAL \dp|rf|Mux5~1_combout\ : std_logic;
SIGNAL \dp|rf|Mux5~4_combout\ : std_logic;
SIGNAL \dp|Alu_1[10]~6_combout\ : std_logic;
SIGNAL \dp|Alu_1[10]~7_combout\ : std_logic;
SIGNAL \dp|Alu_2[10]~7_combout\ : std_logic;
SIGNAL \dp|Alu_2[10]~8_combout\ : std_logic;
SIGNAL \dp|RF_D3[9]~35_combout\ : std_logic;
SIGNAL \dp|rf|reg~34_combout\ : std_logic;
SIGNAL \dp|rf|reg[0][9]~q\ : std_logic;
SIGNAL \dp|rf|reg[1][9]~q\ : std_logic;
SIGNAL \dp|T2_in[9]~44_combout\ : std_logic;
SIGNAL \dp|rf|reg[2][9]~q\ : std_logic;
SIGNAL \dp|rf|reg[3][9]~q\ : std_logic;
SIGNAL \dp|T2_in[9]~45_combout\ : std_logic;
SIGNAL \dp|rf|reg[4][9]~q\ : std_logic;
SIGNAL \dp|rf|reg[6][9]~q\ : std_logic;
SIGNAL \dp|T2_in[9]~46_combout\ : std_logic;
SIGNAL \dp|rf|reg[5][9]~q\ : std_logic;
SIGNAL \dp|T2_in[9]~47_combout\ : std_logic;
SIGNAL \dp|t2|Dout[9]~9_combout\ : std_logic;
SIGNAL \dp|Alu_1[9]~8_combout\ : std_logic;
SIGNAL \dp|Alu_1[9]~9_combout\ : std_logic;
SIGNAL \dp|aluInst|OP~11_combout\ : std_logic;
SIGNAL \dp|Alu_2[8]~11_combout\ : std_logic;
SIGNAL \dp|Alu_2[8]~12_combout\ : std_logic;
SIGNAL \dp|RF_D3[7]~31_combout\ : std_logic;
SIGNAL \dp|rf|reg~10_combout\ : std_logic;
SIGNAL \dp|rf|Decoder0~0_combout\ : std_logic;
SIGNAL \dp|rf|reg[7][12]~1_combout\ : std_logic;
SIGNAL \dp|rf|reg[7][7]~q\ : std_logic;
SIGNAL \dp|T3_in[7]~20_combout\ : std_logic;
SIGNAL \dp|T3_in[7]~21_combout\ : std_logic;
SIGNAL \dp|Alu_2[7]~13_combout\ : std_logic;
SIGNAL \dp|rf|reg[0][7]~q\ : std_logic;
SIGNAL \dp|rf|reg[1][7]~q\ : std_logic;
SIGNAL \dp|T2_in[7]~36_combout\ : std_logic;
SIGNAL \dp|rf|reg[2][7]~q\ : std_logic;
SIGNAL \dp|T2_in[7]~37_combout\ : std_logic;
SIGNAL \dp|rf|reg[4][7]~q\ : std_logic;
SIGNAL \dp|rf|reg[6][7]~q\ : std_logic;
SIGNAL \dp|T2_in[7]~38_combout\ : std_logic;
SIGNAL \dp|rf|reg[5][7]~q\ : std_logic;
SIGNAL \dp|T2_in[7]~39_combout\ : std_logic;
SIGNAL \dp|t2|Dout[7]~7_combout\ : std_logic;
SIGNAL \dp|Alu_2[7]~14_combout\ : std_logic;
SIGNAL \dp|T4_in[6]~11_combout\ : std_logic;
SIGNAL \dp|RF_D3[6]~48_combout\ : std_logic;
SIGNAL \dp|rf|reg~9_combout\ : std_logic;
SIGNAL \dp|rf|reg[7][6]~q\ : std_logic;
SIGNAL \dp|rf|reg[5][6]~q\ : std_logic;
SIGNAL \dp|rf|reg[4][6]~q\ : std_logic;
SIGNAL \dp|rf|reg[6][6]~q\ : std_logic;
SIGNAL \dp|rf|Mux9~0_combout\ : std_logic;
SIGNAL \dp|rf|Mux9~1_combout\ : std_logic;
SIGNAL \dp|rf|reg[3][6]~q\ : std_logic;
SIGNAL \dp|rf|reg[0][6]~q\ : std_logic;
SIGNAL \dp|rf|reg[1][6]~q\ : std_logic;
SIGNAL \dp|rf|Mux9~2_combout\ : std_logic;
SIGNAL \dp|rf|Mux9~3_combout\ : std_logic;
SIGNAL \dp|rf|Mux9~4_combout\ : std_logic;
SIGNAL \dp|Alu_1[6]~14_combout\ : std_logic;
SIGNAL \dp|SE_out[6]~2_combout\ : std_logic;
SIGNAL \dp|Alu_1[6]~15_combout\ : std_logic;
SIGNAL \dp|T3_in[6]~18_combout\ : std_logic;
SIGNAL \dp|T3_in[6]~19_combout\ : std_logic;
SIGNAL \dp|Alu_2[6]~15_combout\ : std_logic;
SIGNAL \dp|aluInst|OP~8_combout\ : std_logic;
SIGNAL \dp|Alu_2[5]~17_combout\ : std_logic;
SIGNAL \dp|Alu_2[5]~18_combout\ : std_logic;
SIGNAL \dp|rf|reg[1][5]~q\ : std_logic;
SIGNAL \dp|rf|Mux10~2_combout\ : std_logic;
SIGNAL \dp|rf|reg[2][5]~q\ : std_logic;
SIGNAL \dp|rf|reg[3][5]~q\ : std_logic;
SIGNAL \dp|rf|Mux10~3_combout\ : std_logic;
SIGNAL \dp|rf|reg[4][5]~q\ : std_logic;
SIGNAL \dp|rf|reg[6][5]~q\ : std_logic;
SIGNAL \dp|rf|Mux10~0_combout\ : std_logic;
SIGNAL \dp|RF_D3[5]~47_combout\ : std_logic;
SIGNAL \cp|WideOr18~combout\ : std_logic;
SIGNAL \dp|rf|reg~8_combout\ : std_logic;
SIGNAL \dp|rf|reg[7][5]~q\ : std_logic;
SIGNAL \dp|rf|reg[5][5]~q\ : std_logic;
SIGNAL \dp|rf|Mux10~1_combout\ : std_logic;
SIGNAL \dp|rf|Mux10~4_combout\ : std_logic;
SIGNAL \dp|Alu_1[5]~16_combout\ : std_logic;
SIGNAL \dp|Alu_1[5]~17_combout\ : std_logic;
SIGNAL \dp|Alu_2[4]~19_combout\ : std_logic;
SIGNAL \dp|Alu_2[4]~20_combout\ : std_logic;
SIGNAL \dp|T4_in[3]~7_combout\ : std_logic;
SIGNAL \dp|Alu_2[3]~21_combout\ : std_logic;
SIGNAL \dp|rf|reg~28_combout\ : std_logic;
SIGNAL \dp|rf|reg[0][3]~q\ : std_logic;
SIGNAL \dp|rf|reg[1][3]~q\ : std_logic;
SIGNAL \dp|T2_in[3]~20_combout\ : std_logic;
SIGNAL \dp|rf|reg[2][3]~q\ : std_logic;
SIGNAL \dp|rf|reg[3][3]~q\ : std_logic;
SIGNAL \dp|T2_in[3]~21_combout\ : std_logic;
SIGNAL \dp|rf|reg[4][3]~q\ : std_logic;
SIGNAL \dp|rf|reg[6][3]~q\ : std_logic;
SIGNAL \dp|T2_in[3]~22_combout\ : std_logic;
SIGNAL \dp|rf|reg[5][3]~q\ : std_logic;
SIGNAL \dp|T2_in[3]~23_combout\ : std_logic;
SIGNAL \dp|t2|Dout[3]~3_combout\ : std_logic;
SIGNAL \dp|Alu_2[3]~22_combout\ : std_logic;
SIGNAL \dp|rf|Mux12~2_combout\ : std_logic;
SIGNAL \dp|rf|Mux12~3_combout\ : std_logic;
SIGNAL \dp|rf|Mux12~0_combout\ : std_logic;
SIGNAL \dp|rf|Mux12~1_combout\ : std_logic;
SIGNAL \dp|rf|Mux12~4_combout\ : std_logic;
SIGNAL \dp|Alu_1[3]~20_combout\ : std_logic;
SIGNAL \dp|Alu_1[3]~21_combout\ : std_logic;
SIGNAL \dp|aluInst|OP_s[2]~5\ : std_logic;
SIGNAL \dp|aluInst|OP_s[3]~7\ : std_logic;
SIGNAL \dp|aluInst|OP_s[4]~9\ : std_logic;
SIGNAL \dp|aluInst|OP_s[5]~11\ : std_logic;
SIGNAL \dp|aluInst|OP_s[6]~12_combout\ : std_logic;
SIGNAL \dp|pc|Dout[6]~6_combout\ : std_logic;
SIGNAL \dp|RF_D3[6]~30_combout\ : std_logic;
SIGNAL \dp|rf|reg~31_combout\ : std_logic;
SIGNAL \dp|rf|reg[2][6]~q\ : std_logic;
SIGNAL \dp|T2_in[6]~32_combout\ : std_logic;
SIGNAL \dp|T2_in[6]~33_combout\ : std_logic;
SIGNAL \dp|T2_in[6]~34_combout\ : std_logic;
SIGNAL \dp|T2_in[6]~35_combout\ : std_logic;
SIGNAL \dp|t2|Dout[6]~6_combout\ : std_logic;
SIGNAL \dp|Alu_2[6]~16_combout\ : std_logic;
SIGNAL \dp|aluInst|OP_s[6]~13\ : std_logic;
SIGNAL \dp|aluInst|OP_s[7]~14_combout\ : std_logic;
SIGNAL \dp|aluInst|OP~9_combout\ : std_logic;
SIGNAL \dp|pc|Dout[7]~7_combout\ : std_logic;
SIGNAL \dp|RF_D3[7]~32_combout\ : std_logic;
SIGNAL \dp|rf|reg~32_combout\ : std_logic;
SIGNAL \dp|rf|reg[3][7]~q\ : std_logic;
SIGNAL \dp|rf|Mux8~2_combout\ : std_logic;
SIGNAL \dp|rf|Mux8~3_combout\ : std_logic;
SIGNAL \dp|rf|Mux8~0_combout\ : std_logic;
SIGNAL \dp|rf|Mux8~1_combout\ : std_logic;
SIGNAL \dp|rf|Mux8~4_combout\ : std_logic;
SIGNAL \dp|Alu_1[7]~12_combout\ : std_logic;
SIGNAL \dp|Alu_1[7]~13_combout\ : std_logic;
SIGNAL \dp|aluInst|OP_s[7]~15\ : std_logic;
SIGNAL \dp|aluInst|OP_s[8]~17\ : std_logic;
SIGNAL \dp|aluInst|OP_s[9]~18_combout\ : std_logic;
SIGNAL \dp|pc|Dout[9]~9_combout\ : std_logic;
SIGNAL \dp|RF_D3[9]~49_combout\ : std_logic;
SIGNAL \dp|rf|reg~12_combout\ : std_logic;
SIGNAL \dp|rf|reg[7][9]~q\ : std_logic;
SIGNAL \dp|rf|Mux6~0_combout\ : std_logic;
SIGNAL \dp|rf|Mux6~1_combout\ : std_logic;
SIGNAL \dp|rf|Mux6~2_combout\ : std_logic;
SIGNAL \dp|rf|Mux6~3_combout\ : std_logic;
SIGNAL \dp|rf|Mux6~4_combout\ : std_logic;
SIGNAL \dp|T3_in[9]~24_combout\ : std_logic;
SIGNAL \dp|T3_in[9]~25_combout\ : std_logic;
SIGNAL \dp|Alu_2[9]~9_combout\ : std_logic;
SIGNAL \dp|Alu_2[9]~10_combout\ : std_logic;
SIGNAL \dp|aluInst|OP_s[9]~19\ : std_logic;
SIGNAL \dp|aluInst|OP_s[10]~21\ : std_logic;
SIGNAL \dp|aluInst|OP_s[11]~22_combout\ : std_logic;
SIGNAL \dp|pc|Dout[11]~11_combout\ : std_logic;
SIGNAL \dp|RF_D3[11]~51_combout\ : std_logic;
SIGNAL \dp|rf|reg~14_combout\ : std_logic;
SIGNAL \dp|rf|reg[7][11]~q\ : std_logic;
SIGNAL \dp|rf|Mux4~0_combout\ : std_logic;
SIGNAL \dp|rf|Mux4~1_combout\ : std_logic;
SIGNAL \dp|rf|Mux4~2_combout\ : std_logic;
SIGNAL \dp|rf|Mux4~3_combout\ : std_logic;
SIGNAL \dp|rf|Mux4~4_combout\ : std_logic;
SIGNAL \dp|t1|Dout[11]~feeder_combout\ : std_logic;
SIGNAL \dp|Alu_1[11]~4_combout\ : std_logic;
SIGNAL \dp|Alu_1[11]~5_combout\ : std_logic;
SIGNAL \dp|aluInst|OP~13_combout\ : std_logic;
SIGNAL \dp|T3_in[11]~28_combout\ : std_logic;
SIGNAL \dp|T3_in[11]~29_combout\ : std_logic;
SIGNAL \dp|T3_in[11]~30_combout\ : std_logic;
SIGNAL \dp|Mem_din[11]~11_combout\ : std_logic;
SIGNAL \dp|Mem_A[1]~6_combout\ : std_logic;
SIGNAL \dp|Mem_A[1]~7_combout\ : std_logic;
SIGNAL \dp|Mem_A[2]~8_combout\ : std_logic;
SIGNAL \dp|Mem_A[2]~9_combout\ : std_logic;
SIGNAL \dp|Mem_A[3]~10_combout\ : std_logic;
SIGNAL \dp|Mem_A[3]~11_combout\ : std_logic;
SIGNAL \dp|Mem_A[4]~12_combout\ : std_logic;
SIGNAL \dp|Mem_A[4]~13_combout\ : std_logic;
SIGNAL \dp|Mem_A[5]~14_combout\ : std_logic;
SIGNAL \dp|Mem_A[5]~15_combout\ : std_logic;
SIGNAL \dp|Mem_A[6]~16_combout\ : std_logic;
SIGNAL \dp|Mem_A[6]~17_combout\ : std_logic;
SIGNAL \dp|Mem_A[7]~18_combout\ : std_logic;
SIGNAL \dp|Mem_A[7]~19_combout\ : std_logic;
SIGNAL \dp|Mem_A[8]~20_combout\ : std_logic;
SIGNAL \dp|Mem_A[8]~21_combout\ : std_logic;
SIGNAL \dp|Mem_A[9]~22_combout\ : std_logic;
SIGNAL \dp|Mem_A[9]~23_combout\ : std_logic;
SIGNAL \dp|Mem_A[10]~24_combout\ : std_logic;
SIGNAL \dp|Mem_A[10]~25_combout\ : std_logic;
SIGNAL \dp|Mem_A[11]~26_combout\ : std_logic;
SIGNAL \dp|Mem_A[11]~27_combout\ : std_logic;
SIGNAL \dp|Mem_A[12]~28_combout\ : std_logic;
SIGNAL \dp|Mem_A[12]~29_combout\ : std_logic;
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a27~portadataout\ : std_logic;
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a59~portadataout\ : std_logic;
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a43~portadataout\ : std_logic;
SIGNAL \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[11]~22_combout\ : std_logic;
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a11~portadataout\ : std_logic;
SIGNAL \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[11]~23_combout\ : std_logic;
SIGNAL \dp|rf|reg[2][0]~q\ : std_logic;
SIGNAL \dp|rf|reg[3][0]~q\ : std_logic;
SIGNAL \dp|rf|reg[0][0]~q\ : std_logic;
SIGNAL \dp|T2_in[0]~8_combout\ : std_logic;
SIGNAL \dp|T2_in[0]~9_combout\ : std_logic;
SIGNAL \dp|t2|Dout[0]~0_combout\ : std_logic;
SIGNAL \dp|Alu_1[0]~28_combout\ : std_logic;
SIGNAL \dp|aluInst|OP~2_combout\ : std_logic;
SIGNAL \dp|aluInst|OP_s[0]~0_combout\ : std_logic;
SIGNAL \dp|pc|Dout[0]~0_combout\ : std_logic;
SIGNAL \dp|pc|Dout[0]~feeder_combout\ : std_logic;
SIGNAL \dp|RF_D3[0]~23_combout\ : std_logic;
SIGNAL \dp|rf|reg~25_combout\ : std_logic;
SIGNAL \dp|rf|reg[1][0]~q\ : std_logic;
SIGNAL \dp|rf|Mux15~2_combout\ : std_logic;
SIGNAL \dp|rf|Mux15~3_combout\ : std_logic;
SIGNAL \dp|rf|Mux15~0_combout\ : std_logic;
SIGNAL \dp|rf|Mux15~1_combout\ : std_logic;
SIGNAL \dp|rf|Mux15~4_combout\ : std_logic;
SIGNAL \dp|T3_in[0]~6_combout\ : std_logic;
SIGNAL \dp|T3_in[0]~7_combout\ : std_logic;
SIGNAL \dp|Alu_2[0]~30_combout\ : std_logic;
SIGNAL \dp|Alu_2[0]~31_combout\ : std_logic;
SIGNAL \dp|Alu_2[0]~29_combout\ : std_logic;
SIGNAL \dp|Alu_2[0]~32_combout\ : std_logic;
SIGNAL \dp|aluInst|OP_s[0]~1\ : std_logic;
SIGNAL \dp|aluInst|OP_s[1]~3\ : std_logic;
SIGNAL \dp|aluInst|OP_s[2]~4_combout\ : std_logic;
SIGNAL \dp|aluInst|OP~4_combout\ : std_logic;
SIGNAL \dp|pc|Dout[2]~2_combout\ : std_logic;
SIGNAL \dp|rf|reg~5_combout\ : std_logic;
SIGNAL \dp|rf|reg[7][2]~q\ : std_logic;
SIGNAL \dp|rf|reg[6][2]~q\ : std_logic;
SIGNAL \dp|rf|reg[4][2]~q\ : std_logic;
SIGNAL \dp|rf|Mux13~0_combout\ : std_logic;
SIGNAL \dp|rf|reg[5][2]~q\ : std_logic;
SIGNAL \dp|rf|Mux13~1_combout\ : std_logic;
SIGNAL \dp|rf|Mux13~4_combout\ : std_logic;
SIGNAL \dp|T3_in[2]~10_combout\ : std_logic;
SIGNAL \dp|T3_in[2]~11_combout\ : std_logic;
SIGNAL \dp|RF_D3[2]~26_combout\ : std_logic;
SIGNAL \dp|rf|reg~27_combout\ : std_logic;
SIGNAL \dp|rf|reg[3][2]~q\ : std_logic;
SIGNAL \dp|T2_in[2]~16_combout\ : std_logic;
SIGNAL \dp|T2_in[2]~17_combout\ : std_logic;
SIGNAL \dp|T2_in[2]~18_combout\ : std_logic;
SIGNAL \dp|T2_in[2]~19_combout\ : std_logic;
SIGNAL \dp|t2|Dout[2]~2_combout\ : std_logic;
SIGNAL \dp|Mem_din[2]~2_combout\ : std_logic;
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a34~portadataout\ : std_logic;
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a50~portadataout\ : std_logic;
SIGNAL \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[2]~4_combout\ : std_logic;
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a18~portadataout\ : std_logic;
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a2~portadataout\ : std_logic;
SIGNAL \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[2]~5_combout\ : std_logic;
SIGNAL \dp|t4|Dout[9]~5_combout\ : std_logic;
SIGNAL \dp|pr_enc|d[9]~4_combout\ : std_logic;
SIGNAL \dp|t4|Dout[14]~0_combout\ : std_logic;
SIGNAL \dp|pr_enc|d[14]~2_combout\ : std_logic;
SIGNAL \dp|pr_enc|a[0]~1_combout\ : std_logic;
SIGNAL \dp|pr_enc|a[0]~2_combout\ : std_logic;
SIGNAL \dp|pr_enc|a[0]~7_combout\ : std_logic;
SIGNAL \dp|RF_A3[0]~2_combout\ : std_logic;
SIGNAL \dp|RF_A3[0]~3_combout\ : std_logic;
SIGNAL \dp|rf|Decoder0~5_combout\ : std_logic;
SIGNAL \dp|rf|reg[1][4]~21_combout\ : std_logic;
SIGNAL \dp|rf|reg[1][8]~q\ : std_logic;
SIGNAL \dp|rf|Mux7~2_combout\ : std_logic;
SIGNAL \dp|rf|reg[2][8]~q\ : std_logic;
SIGNAL \dp|rf|reg[3][8]~q\ : std_logic;
SIGNAL \dp|rf|Mux7~3_combout\ : std_logic;
SIGNAL \dp|rf|reg[6][8]~q\ : std_logic;
SIGNAL \dp|rf|reg[4][8]~q\ : std_logic;
SIGNAL \dp|rf|Mux7~0_combout\ : std_logic;
SIGNAL \dp|rf|reg[5][8]~q\ : std_logic;
SIGNAL \dp|rf|Mux7~1_combout\ : std_logic;
SIGNAL \dp|rf|Mux7~4_combout\ : std_logic;
SIGNAL \dp|t1|Dout[8]~feeder_combout\ : std_logic;
SIGNAL \dp|Alu_1[8]~10_combout\ : std_logic;
SIGNAL \dp|Alu_1[8]~11_combout\ : std_logic;
SIGNAL \dp|aluInst|OP~10_combout\ : std_logic;
SIGNAL \dp|aluInst|OP_s[8]~16_combout\ : std_logic;
SIGNAL \dp|pc|Dout[8]~8_combout\ : std_logic;
SIGNAL \dp|RF_D3[8]~33_combout\ : std_logic;
SIGNAL \dp|rf|reg~11_combout\ : std_logic;
SIGNAL \dp|rf|reg[7][8]~q\ : std_logic;
SIGNAL \dp|T3_in[8]~22_combout\ : std_logic;
SIGNAL \dp|T3_in[8]~23_combout\ : std_logic;
SIGNAL \dp|RF_D3[8]~34_combout\ : std_logic;
SIGNAL \dp|rf|reg~33_combout\ : std_logic;
SIGNAL \dp|rf|reg[0][8]~q\ : std_logic;
SIGNAL \dp|T2_in[8]~40_combout\ : std_logic;
SIGNAL \dp|T2_in[8]~41_combout\ : std_logic;
SIGNAL \dp|T2_in[8]~42_combout\ : std_logic;
SIGNAL \dp|T2_in[8]~43_combout\ : std_logic;
SIGNAL \dp|t2|Dout[8]~8_combout\ : std_logic;
SIGNAL \dp|Mem_din[8]~8_combout\ : std_logic;
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a40~portadataout\ : std_logic;
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a56~portadataout\ : std_logic;
SIGNAL \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[8]~16_combout\ : std_logic;
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a24~portadataout\ : std_logic;
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a8~portadataout\ : std_logic;
SIGNAL \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[8]~17_combout\ : std_logic;
SIGNAL \dp|SE_out[14]~0_combout\ : std_logic;
SIGNAL \dp|Alu_1[12]~3_combout\ : std_logic;
SIGNAL \dp|Alu_2[12]~3_combout\ : std_logic;
SIGNAL \dp|aluInst|OP~14_combout\ : std_logic;
SIGNAL \dp|Alu_2[12]~4_combout\ : std_logic;
SIGNAL \dp|aluInst|OP_s[11]~23\ : std_logic;
SIGNAL \dp|aluInst|OP_s[12]~24_combout\ : std_logic;
SIGNAL \dp|pc|Dout[12]~12_combout\ : std_logic;
SIGNAL \dp|RF_D3[12]~38_combout\ : std_logic;
SIGNAL \dp|rf|reg~15_combout\ : std_logic;
SIGNAL \dp|rf|reg[7][12]~q\ : std_logic;
SIGNAL \dp|T3_in[12]~31_combout\ : std_logic;
SIGNAL \dp|T3_in[12]~32_combout\ : std_logic;
SIGNAL \dp|RF_D3[12]~39_combout\ : std_logic;
SIGNAL \dp|rf|reg~37_combout\ : std_logic;
SIGNAL \dp|rf|reg[3][12]~q\ : std_logic;
SIGNAL \dp|rf|reg[2][12]~q\ : std_logic;
SIGNAL \dp|rf|reg[1][12]~q\ : std_logic;
SIGNAL \dp|rf|reg[0][12]~q\ : std_logic;
SIGNAL \dp|rf|Mux3~2_combout\ : std_logic;
SIGNAL \dp|rf|Mux3~3_combout\ : std_logic;
SIGNAL \dp|rf|reg[6][12]~q\ : std_logic;
SIGNAL \dp|rf|reg[4][12]~q\ : std_logic;
SIGNAL \dp|rf|Mux3~0_combout\ : std_logic;
SIGNAL \dp|rf|reg[5][12]~q\ : std_logic;
SIGNAL \dp|rf|Mux3~1_combout\ : std_logic;
SIGNAL \dp|rf|Mux3~4_combout\ : std_logic;
SIGNAL \dp|t1|Dout[12]~feeder_combout\ : std_logic;
SIGNAL \cp|state~33_combout\ : std_logic;
SIGNAL \cp|state~32_combout\ : std_logic;
SIGNAL \cp|state~31_combout\ : std_logic;
SIGNAL \dp|t4|Dout[15]~7_combout\ : std_logic;
SIGNAL \dp|t4|Dout[15]~8_combout\ : std_logic;
SIGNAL \dp|RF_D3[15]~41_combout\ : std_logic;
SIGNAL \dp|T3_in[15]~34_combout\ : std_logic;
SIGNAL \dp|Alu_2[15]~38_combout\ : std_logic;
SIGNAL \dp|aluInst|OP~15_combout\ : std_logic;
SIGNAL \dp|T3_in[15]~33_combout\ : std_logic;
SIGNAL \dp|T3_in[15]~35_combout\ : std_logic;
SIGNAL \dp|RF_D3[15]~40_combout\ : std_logic;
SIGNAL \dp|rf|reg~38_combout\ : std_logic;
SIGNAL \dp|rf|reg[1][15]~q\ : std_logic;
SIGNAL \dp|rf|reg[0][15]~q\ : std_logic;
SIGNAL \dp|rf|Mux0~2_combout\ : std_logic;
SIGNAL \dp|rf|reg[2][15]~q\ : std_logic;
SIGNAL \dp|rf|reg[3][15]~q\ : std_logic;
SIGNAL \dp|rf|Mux0~3_combout\ : std_logic;
SIGNAL \dp|rf|reg[4][15]~q\ : std_logic;
SIGNAL \dp|rf|reg[6][15]~q\ : std_logic;
SIGNAL \dp|rf|Mux0~0_combout\ : std_logic;
SIGNAL \dp|rf|reg[5][15]~q\ : std_logic;
SIGNAL \dp|rf|Mux0~1_combout\ : std_logic;
SIGNAL \dp|rf|Mux0~4_combout\ : std_logic;
SIGNAL \dp|Alu_1[15]~31_combout\ : std_logic;
SIGNAL \dp|Alu_1[15]~32_combout\ : std_logic;
SIGNAL \dp|Alu_2[15]~39_combout\ : std_logic;
SIGNAL \dp|Alu_2[14]~33_combout\ : std_logic;
SIGNAL \dp|Alu_2[14]~34_combout\ : std_logic;
SIGNAL \dp|Alu_2[13]~1_combout\ : std_logic;
SIGNAL \dp|Alu_2[13]~2_combout\ : std_logic;
SIGNAL \dp|RF_D3[13]~20_combout\ : std_logic;
SIGNAL \dp|aluInst|OP~0_combout\ : std_logic;
SIGNAL \dp|aluInst|OP_s[12]~25\ : std_logic;
SIGNAL \dp|aluInst|OP_s[13]~26_combout\ : std_logic;
SIGNAL \dp|pc|Dout[13]~13_combout\ : std_logic;
SIGNAL \dp|RF_D3[13]~21_combout\ : std_logic;
SIGNAL \dp|rf|reg~0_combout\ : std_logic;
SIGNAL \dp|rf|reg[7][13]~q\ : std_logic;
SIGNAL \dp|Alu_1[13]~0_combout\ : std_logic;
SIGNAL \dp|Alu_1[13]~1_combout\ : std_logic;
SIGNAL \dp|aluInst|OP_s[13]~27\ : std_logic;
SIGNAL \dp|aluInst|OP_s[14]~28_combout\ : std_logic;
SIGNAL \dp|aluInst|OP~1_combout\ : std_logic;
SIGNAL \dp|pc|Dout[14]~14_combout\ : std_logic;
SIGNAL \dp|RF_D3[14]~42_combout\ : std_logic;
SIGNAL \dp|rf|reg~2_combout\ : std_logic;
SIGNAL \dp|rf|reg[7][14]~q\ : std_logic;
SIGNAL \dp|rf|reg[6][14]~q\ : std_logic;
SIGNAL \dp|rf|reg[4][14]~q\ : std_logic;
SIGNAL \dp|rf|Mux1~0_combout\ : std_logic;
SIGNAL \dp|rf|reg[5][14]~q\ : std_logic;
SIGNAL \dp|rf|Mux1~1_combout\ : std_logic;
SIGNAL \dp|rf|reg[3][14]~q\ : std_logic;
SIGNAL \dp|rf|reg[2][14]~q\ : std_logic;
SIGNAL \dp|rf|reg[1][14]~q\ : std_logic;
SIGNAL \dp|rf|Mux1~2_combout\ : std_logic;
SIGNAL \dp|rf|Mux1~3_combout\ : std_logic;
SIGNAL \dp|rf|Mux1~4_combout\ : std_logic;
SIGNAL \dp|Alu_1[14]~29_combout\ : std_logic;
SIGNAL \dp|Alu_1[14]~30_combout\ : std_logic;
SIGNAL \dp|aluInst|OP_s[14]~29\ : std_logic;
SIGNAL \dp|aluInst|OP_s[15]~30_combout\ : std_logic;
SIGNAL \dp|pc|Dout[15]~15_combout\ : std_logic;
SIGNAL \dp|rf|reg~39_combout\ : std_logic;
SIGNAL \dp|rf|reg[7][15]~q\ : std_logic;
SIGNAL \dp|T2_in[15]~62_combout\ : std_logic;
SIGNAL \dp|T2_in[15]~63_combout\ : std_logic;
SIGNAL \dp|T2_in[15]~60_combout\ : std_logic;
SIGNAL \dp|T2_in[15]~61_combout\ : std_logic;
SIGNAL \dp|t2|Dout[15]~15_combout\ : std_logic;
SIGNAL \cp|state~34_combout\ : std_logic;
SIGNAL \cp|state~35_combout\ : std_logic;
SIGNAL \cp|state~27_combout\ : std_logic;
SIGNAL \cp|state~26_combout\ : std_logic;
SIGNAL \dp|rf|reg[6][4]~q\ : std_logic;
SIGNAL \dp|rf|reg[4][4]~q\ : std_logic;
SIGNAL \dp|rf|Mux11~0_combout\ : std_logic;
SIGNAL \dp|rf|reg[5][4]~q\ : std_logic;
SIGNAL \dp|rf|Mux11~1_combout\ : std_logic;
SIGNAL \dp|rf|reg[1][4]~q\ : std_logic;
SIGNAL \dp|rf|Mux11~2_combout\ : std_logic;
SIGNAL \dp|rf|reg[2][4]~q\ : std_logic;
SIGNAL \dp|rf|reg[3][4]~q\ : std_logic;
SIGNAL \dp|rf|Mux11~3_combout\ : std_logic;
SIGNAL \dp|rf|Mux11~4_combout\ : std_logic;
SIGNAL \cp|state~28_combout\ : std_logic;
SIGNAL \cp|state~29_combout\ : std_logic;
SIGNAL \cp|state~30_combout\ : std_logic;
SIGNAL \cp|state~36_combout\ : std_logic;
SIGNAL \cp|state.s12~q\ : std_logic;
SIGNAL \cp|WideOr18~0_combout\ : std_logic;
SIGNAL \dp|Alu_2[15]~0_combout\ : std_logic;
SIGNAL \dp|Alu_2[5]~37_combout\ : std_logic;
SIGNAL \dp|aluInst|OP~7_combout\ : std_logic;
SIGNAL \dp|aluInst|OP_s[5]~10_combout\ : std_logic;
SIGNAL \dp|pc|Dout[5]~5_combout\ : std_logic;
SIGNAL \dp|T3_in[5]~16_combout\ : std_logic;
SIGNAL \dp|T3_in[5]~17_combout\ : std_logic;
SIGNAL \dp|RF_D3[5]~29_combout\ : std_logic;
SIGNAL \dp|rf|reg~30_combout\ : std_logic;
SIGNAL \dp|rf|reg[0][5]~q\ : std_logic;
SIGNAL \dp|T2_in[5]~28_combout\ : std_logic;
SIGNAL \dp|T2_in[5]~29_combout\ : std_logic;
SIGNAL \dp|T2_in[5]~30_combout\ : std_logic;
SIGNAL \dp|T2_in[5]~31_combout\ : std_logic;
SIGNAL \dp|t2|Dout[5]~5_combout\ : std_logic;
SIGNAL \dp|Mem_din[5]~5_combout\ : std_logic;
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a21~portadataout\ : std_logic;
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a5~portadataout\ : std_logic;
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a37~portadataout\ : std_logic;
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a53~portadataout\ : std_logic;
SIGNAL \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[5]~10_combout\ : std_logic;
SIGNAL \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[5]~11_combout\ : std_logic;
SIGNAL \dp|t4|Dout[12]~2_combout\ : std_logic;
SIGNAL \dp|pr_enc|d[12]~7_combout\ : std_logic;
SIGNAL \dp|pr_enc|a[1]~0_combout\ : std_logic;
SIGNAL \dp|pr_enc|a[2]~6_combout\ : std_logic;
SIGNAL \dp|RF_A3[2]~4_combout\ : std_logic;
SIGNAL \dp|RF_A3[2]~5_combout\ : std_logic;
SIGNAL \dp|rf|Decoder0~6_combout\ : std_logic;
SIGNAL \dp|rf|reg[0][10]~22_combout\ : std_logic;
SIGNAL \dp|rf|reg[0][4]~q\ : std_logic;
SIGNAL \dp|T2_in[4]~24_combout\ : std_logic;
SIGNAL \dp|T2_in[4]~25_combout\ : std_logic;
SIGNAL \dp|T2_in[4]~26_combout\ : std_logic;
SIGNAL \dp|T2_in[4]~27_combout\ : std_logic;
SIGNAL \dp|t2|Dout[4]~4_combout\ : std_logic;
SIGNAL \dp|Alu_1[4]~18_combout\ : std_logic;
SIGNAL \dp|Alu_1[4]~19_combout\ : std_logic;
SIGNAL \dp|aluInst|OP_s[4]~8_combout\ : std_logic;
SIGNAL \dp|Alu_2[4]~36_combout\ : std_logic;
SIGNAL \dp|aluInst|OP~6_combout\ : std_logic;
SIGNAL \dp|pc|Dout[4]~4_combout\ : std_logic;
SIGNAL \dp|RF_D3[4]~46_combout\ : std_logic;
SIGNAL \dp|rf|reg~7_combout\ : std_logic;
SIGNAL \dp|rf|reg[7][4]~q\ : std_logic;
SIGNAL \dp|T3_in[4]~14_combout\ : std_logic;
SIGNAL \dp|T3_in[4]~15_combout\ : std_logic;
SIGNAL \dp|Mem_din[4]~4_combout\ : std_logic;
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a4~portadataout\ : std_logic;
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a20~portadataout\ : std_logic;
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a36~portadataout\ : std_logic;
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a52~portadataout\ : std_logic;
SIGNAL \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[4]~8_combout\ : std_logic;
SIGNAL \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[4]~9_combout\ : std_logic;
SIGNAL \dp|RF_A3[1]~0_combout\ : std_logic;
SIGNAL \dp|pr_enc|a[1]~3_combout\ : std_logic;
SIGNAL \dp|pr_enc|a[1]~4_combout\ : std_logic;
SIGNAL \dp|pr_enc|a[1]~5_combout\ : std_logic;
SIGNAL \dp|RF_A3[1]~1_combout\ : std_logic;
SIGNAL \dp|rf|process_0~0_combout\ : std_logic;
SIGNAL \dp|rf|process_0~1_combout\ : std_logic;
SIGNAL \dp|RF_D3[1]~24_combout\ : std_logic;
SIGNAL \dp|rf|reg~4_combout\ : std_logic;
SIGNAL \dp|rf|reg[7][1]~q\ : std_logic;
SIGNAL \dp|Alu_1[1]~24_combout\ : std_logic;
SIGNAL \dp|Alu_1[1]~25_combout\ : std_logic;
SIGNAL \dp|aluInst|OP_s[1]~2_combout\ : std_logic;
SIGNAL \dp|aluInst|OP~3_combout\ : std_logic;
SIGNAL \dp|pc|Dout[1]~1_combout\ : std_logic;
SIGNAL \dp|RF_D3[1]~25_combout\ : std_logic;
SIGNAL \dp|rf|reg~26_combout\ : std_logic;
SIGNAL \dp|rf|reg[0][1]~q\ : std_logic;
SIGNAL \dp|T2_in[1]~12_combout\ : std_logic;
SIGNAL \dp|T2_in[1]~13_combout\ : std_logic;
SIGNAL \dp|T2_in[1]~14_combout\ : std_logic;
SIGNAL \dp|T2_in[1]~15_combout\ : std_logic;
SIGNAL \dp|t2|Dout[1]~1_combout\ : std_logic;
SIGNAL \dp|Mem_din[1]~1_combout\ : std_logic;
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a17~portadataout\ : std_logic;
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a1~portadataout\ : std_logic;
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a33~portadataout\ : std_logic;
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a49~portadataout\ : std_logic;
SIGNAL \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[1]~2_combout\ : std_logic;
SIGNAL \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[1]~3_combout\ : std_logic;
SIGNAL \cp|M7~combout\ : std_logic;
SIGNAL \dp|comp|Equal0~11_combout\ : std_logic;
SIGNAL \dp|comp|Equal0~12_combout\ : std_logic;
SIGNAL \dp|comp|Equal0~13_combout\ : std_logic;
SIGNAL \dp|comp|Equal0~14_combout\ : std_logic;
SIGNAL \dp|comp|Equal0~15_combout\ : std_logic;
SIGNAL \dp|comp|Equal0~7_combout\ : std_logic;
SIGNAL \dp|comp|Equal0~8_combout\ : std_logic;
SIGNAL \dp|comp|Equal0~9_combout\ : std_logic;
SIGNAL \dp|comp|Equal0~6_combout\ : std_logic;
SIGNAL \dp|comp|Equal0~10_combout\ : std_logic;
SIGNAL \dp|comp|Equal0~17_combout\ : std_logic;
SIGNAL \dp|comp|Equal0~19_combout\ : std_logic;
SIGNAL \dp|comp|Equal0~16_combout\ : std_logic;
SIGNAL \dp|comp|Equal0~18_combout\ : std_logic;
SIGNAL \dp|comp|Equal0~20_combout\ : std_logic;
SIGNAL \dp|comp|Equal0~1_combout\ : std_logic;
SIGNAL \dp|comp|Equal0~3_combout\ : std_logic;
SIGNAL \dp|comp|Equal0~2_combout\ : std_logic;
SIGNAL \dp|comp|Equal0~4_combout\ : std_logic;
SIGNAL \dp|comp|Equal0~5_combout\ : std_logic;
SIGNAL \dp|comp|Equal0~21_combout\ : std_logic;
SIGNAL \dp|zReg|Dout~0_combout\ : std_logic;
SIGNAL \dp|zReg|Dout~q\ : std_logic;
SIGNAL \dp|aluInst|OP_s[15]~31\ : std_logic;
SIGNAL \dp|aluInst|OP_s[16]~32_combout\ : std_logic;
SIGNAL \cp|CEn_var~0_combout\ : std_logic;
SIGNAL \cp|CEn~0_combout\ : std_logic;
SIGNAL \dp|cReg|Dout~0_combout\ : std_logic;
SIGNAL \dp|cReg|Dout~q\ : std_logic;
SIGNAL \cp|Selector4~3_combout\ : std_logic;
SIGNAL \cp|Selector4~5_combout\ : std_logic;
SIGNAL \cp|Selector4~2_combout\ : std_logic;
SIGNAL \cp|Selector4~4_combout\ : std_logic;
SIGNAL \cp|state.s4~q\ : std_logic;
SIGNAL \cp|Alu_op~0_combout\ : std_logic;
SIGNAL \dp|aluInst|OP_s[3]~6_combout\ : std_logic;
SIGNAL \dp|Alu_2[3]~35_combout\ : std_logic;
SIGNAL \dp|aluInst|OP~5_combout\ : std_logic;
SIGNAL \dp|pc|Dout[3]~3_combout\ : std_logic;
SIGNAL \dp|pc|Dout[3]~feeder_combout\ : std_logic;
SIGNAL \dp|RF_D3[3]~27_combout\ : std_logic;
SIGNAL \dp|RF_D3[3]~45_combout\ : std_logic;
SIGNAL \dp|rf|reg~6_combout\ : std_logic;
SIGNAL \dp|rf|reg[7][3]~q\ : std_logic;
SIGNAL \dp|T3_in[3]~12_combout\ : std_logic;
SIGNAL \dp|T3_in[3]~13_combout\ : std_logic;
SIGNAL \dp|Mem_din[3]~3_combout\ : std_logic;
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a3~portadataout\ : std_logic;
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a19~portadataout\ : std_logic;
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a35~portadataout\ : std_logic;
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a51~portadataout\ : std_logic;
SIGNAL \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[3]~6_combout\ : std_logic;
SIGNAL \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[3]~7_combout\ : std_logic;
SIGNAL \dp|t4|Dout[10]~6_combout\ : std_logic;
SIGNAL \dp|pr_enc|d[10]~3_combout\ : std_logic;
SIGNAL \dp|RF_D3[10]~36_combout\ : std_logic;
SIGNAL \dp|rf|reg~35_combout\ : std_logic;
SIGNAL \dp|rf|reg[0][10]~q\ : std_logic;
SIGNAL \dp|T2_in[10]~48_combout\ : std_logic;
SIGNAL \dp|T2_in[10]~49_combout\ : std_logic;
SIGNAL \dp|T2_in[10]~50_combout\ : std_logic;
SIGNAL \dp|T2_in[10]~51_combout\ : std_logic;
SIGNAL \dp|t2|Dout[10]~10_combout\ : std_logic;
SIGNAL \dp|aluInst|OP~12_combout\ : std_logic;
SIGNAL \dp|aluInst|OP_s[10]~20_combout\ : std_logic;
SIGNAL \dp|pc|Dout[10]~10_combout\ : std_logic;
SIGNAL \dp|RF_D3[10]~50_combout\ : std_logic;
SIGNAL \dp|rf|reg~13_combout\ : std_logic;
SIGNAL \dp|rf|reg[7][10]~q\ : std_logic;
SIGNAL \dp|T3_in[10]~26_combout\ : std_logic;
SIGNAL \dp|T3_in[10]~27_combout\ : std_logic;
SIGNAL \dp|Mem_din[10]~10_combout\ : std_logic;
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a26~portadataout\ : std_logic;
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a58~portadataout\ : std_logic;
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a42~portadataout\ : std_logic;
SIGNAL \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[10]~20_combout\ : std_logic;
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a10~portadataout\ : std_logic;
SIGNAL \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[10]~21_combout\ : std_logic;
SIGNAL \dp|T2_in[12]~58_combout\ : std_logic;
SIGNAL \dp|T2_in[12]~59_combout\ : std_logic;
SIGNAL \dp|T2_in[12]~56_combout\ : std_logic;
SIGNAL \dp|T2_in[12]~57_combout\ : std_logic;
SIGNAL \dp|t2|Dout[12]~12_combout\ : std_logic;
SIGNAL \dp|Mem_din[12]~12_combout\ : std_logic;
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a28~portadataout\ : std_logic;
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a60~portadataout\ : std_logic;
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a44~portadataout\ : std_logic;
SIGNAL \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[12]~24_combout\ : std_logic;
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a12~portadataout\ : std_logic;
SIGNAL \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[12]~25_combout\ : std_logic;
SIGNAL \cp|Selector3~1_combout\ : std_logic;
SIGNAL \cp|Selector3~2_combout\ : std_logic;
SIGNAL \cp|Selector3~3_combout\ : std_logic;
SIGNAL \cp|state.s3~q\ : std_logic;
SIGNAL \dp|RF_D3[0]~43_combout\ : std_logic;
SIGNAL \dp|rf|reg~3_combout\ : std_logic;
SIGNAL \dp|rf|reg[7][0]~q\ : std_logic;
SIGNAL \dp|Mem_A[0]~4_combout\ : std_logic;
SIGNAL \dp|Mem_A[0]~5_combout\ : std_logic;
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a13~portadataout\ : std_logic;
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a61~portadataout\ : std_logic;
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a45~portadataout\ : std_logic;
SIGNAL \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[13]~26_combout\ : std_logic;
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a29~portadataout\ : std_logic;
SIGNAL \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[13]~27_combout\ : std_logic;
SIGNAL \cp|Selector3~0_combout\ : std_logic;
SIGNAL \cp|Equal8~3_combout\ : std_logic;
SIGNAL \cp|state~22_combout\ : std_logic;
SIGNAL \cp|state.s5~q\ : std_logic;
SIGNAL \dp|Equal0~0_combout\ : std_logic;
SIGNAL \dp|Mem_A[14]~2_combout\ : std_logic;
SIGNAL \dp|mem|ram_rtl_0|auto_generated|decode3|w_anode423w[2]~5_combout\ : std_logic;
SIGNAL \dp|Mem_din[14]~14_combout\ : std_logic;
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a14~portadataout\ : std_logic;
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a30~portadataout\ : std_logic;
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a46~portadataout\ : std_logic;
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a62~portadataout\ : std_logic;
SIGNAL \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[14]~28_combout\ : std_logic;
SIGNAL \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[14]~29_combout\ : std_logic;
SIGNAL \cp|state~39_combout\ : std_logic;
SIGNAL \cp|state.s11~q\ : std_logic;
SIGNAL \cp|Selector15~2_combout\ : std_logic;
SIGNAL \cp|Selector15~3_combout\ : std_logic;
SIGNAL \cp|next_state~18_combout\ : std_logic;
SIGNAL \cp|next_state~19_combout\ : std_logic;
SIGNAL \cp|Selector15~0_combout\ : std_logic;
SIGNAL \cp|Selector15~1_combout\ : std_logic;
SIGNAL \cp|Selector15~4_combout\ : std_logic;
SIGNAL \cp|state.s15~q\ : std_logic;
SIGNAL \cp|Selector16~3_combout\ : std_logic;
SIGNAL \cp|state.s7~q\ : std_logic;
SIGNAL \cp|state~20_combout\ : std_logic;
SIGNAL \cp|state.s8~q\ : std_logic;
SIGNAL \cp|Selector16~0_combout\ : std_logic;
SIGNAL \cp|Selector16~2_combout\ : std_logic;
SIGNAL \dp|Equal1~0_combout\ : std_logic;
SIGNAL \dp|Mem_A[13]~1_combout\ : std_logic;
SIGNAL \dp|Mem_din[9]~9_combout\ : std_logic;
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a57~portadataout\ : std_logic;
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a41~portadataout\ : std_logic;
SIGNAL \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[9]~18_combout\ : std_logic;
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a25~portadataout\ : std_logic;
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a9~portadataout\ : std_logic;
SIGNAL \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[9]~19_combout\ : std_logic;
SIGNAL \dp|rf|reg~16_combout\ : std_logic;
SIGNAL \dp|rf|reg[0][13]~q\ : std_logic;
SIGNAL \dp|rf|reg[1][13]~q\ : std_logic;
SIGNAL \dp|T2_in[13]~0_combout\ : std_logic;
SIGNAL \dp|rf|reg[3][13]~q\ : std_logic;
SIGNAL \dp|rf|reg[2][13]~q\ : std_logic;
SIGNAL \dp|T2_in[13]~1_combout\ : std_logic;
SIGNAL \dp|rf|reg[5][13]~q\ : std_logic;
SIGNAL \dp|rf|reg[4][13]~q\ : std_logic;
SIGNAL \dp|rf|reg[6][13]~q\ : std_logic;
SIGNAL \dp|T2_in[13]~2_combout\ : std_logic;
SIGNAL \dp|T2_in[13]~3_combout\ : std_logic;
SIGNAL \dp|t2|Dout[13]~13_combout\ : std_logic;
SIGNAL \dp|mem|ram_rtl_0|auto_generated|rden_decode|w_anode475w[2]~4_combout\ : std_logic;
SIGNAL \dp|Mem_din[7]~7_combout\ : std_logic;
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a23~portadataout\ : std_logic;
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a7~portadataout\ : std_logic;
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a55~portadataout\ : std_logic;
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a39~portadataout\ : std_logic;
SIGNAL \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[7]~14_combout\ : std_logic;
SIGNAL \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[7]~15_combout\ : std_logic;
SIGNAL \dp|RF_A1[1]~1_combout\ : std_logic;
SIGNAL \dp|rf|Mux2~0_combout\ : std_logic;
SIGNAL \dp|rf|Mux2~1_combout\ : std_logic;
SIGNAL \dp|rf|Mux2~2_combout\ : std_logic;
SIGNAL \dp|rf|Mux2~3_combout\ : std_logic;
SIGNAL \dp|rf|Mux2~4_combout\ : std_logic;
SIGNAL \dp|T3_in[13]~1_combout\ : std_logic;
SIGNAL \dp|T3_in[13]~0_combout\ : std_logic;
SIGNAL \dp|T3_in[13]~2_combout\ : std_logic;
SIGNAL \dp|Mem_A[13]~0_combout\ : std_logic;
SIGNAL \dp|mem|ram_rtl_0|auto_generated|rden_decode|w_anode493w[2]~0_combout\ : std_logic;
SIGNAL \dp|Mem_din[15]~15_combout\ : std_logic;
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a63~portadataout\ : std_logic;
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a47~portadataout\ : std_logic;
SIGNAL \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[15]~30_combout\ : std_logic;
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a31~portadataout\ : std_logic;
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a15~portadataout\ : std_logic;
SIGNAL \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[15]~31_combout\ : std_logic;
SIGNAL \cp|Equal8~2_combout\ : std_logic;
SIGNAL \cp|state~21_combout\ : std_logic;
SIGNAL \cp|state.s6~q\ : std_logic;
SIGNAL \dp|mem|ram_rtl_0|auto_generated|decode3|w_anode452w[2]~0_combout\ : std_logic;
SIGNAL \dp|Mem_din[6]~6_combout\ : std_logic;
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a54~portadataout\ : std_logic;
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a38~portadataout\ : std_logic;
SIGNAL \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[6]~12_combout\ : std_logic;
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a22~portadataout\ : std_logic;
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a6~portadataout\ : std_logic;
SIGNAL \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[6]~13_combout\ : std_logic;
SIGNAL \dp|t4|Dout[13]~3_combout\ : std_logic;
SIGNAL \dp|pr_enc|d[13]~8_combout\ : std_logic;
SIGNAL \dp|pr_enc|v~1_combout\ : std_logic;
SIGNAL \cp|state~23_combout\ : std_logic;
SIGNAL \cp|state.s10~q\ : std_logic;
SIGNAL \cp|Selector9~0_combout\ : std_logic;
SIGNAL \cp|Selector9~1_combout\ : std_logic;
SIGNAL \cp|state.s9~q\ : std_logic;
SIGNAL \cp|WideOr19~0_combout\ : std_logic;
SIGNAL \dp|T3_in[14]~4_combout\ : std_logic;
SIGNAL \dp|T3_in[14]~3_combout\ : std_logic;
SIGNAL \dp|T3_in[14]~5_combout\ : std_logic;
SIGNAL \dp|RF_D3[14]~22_combout\ : std_logic;
SIGNAL \dp|rf|reg~24_combout\ : std_logic;
SIGNAL \dp|rf|reg[0][14]~q\ : std_logic;
SIGNAL \dp|T2_in[14]~4_combout\ : std_logic;
SIGNAL \dp|T2_in[14]~5_combout\ : std_logic;
SIGNAL \dp|T2_in[14]~6_combout\ : std_logic;
SIGNAL \dp|T2_in[14]~7_combout\ : std_logic;
SIGNAL \dp|t2|Dout[14]~14_combout\ : std_logic;
SIGNAL \dp|Mem_A[14]~3_combout\ : std_logic;
SIGNAL \dp|mem|ram_rtl_0|auto_generated|decode3|w_anode436w[2]~0_combout\ : std_logic;
SIGNAL \dp|Mem_din[0]~0_combout\ : std_logic;
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a16~portadataout\ : std_logic;
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a32~portadataout\ : std_logic;
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a48~portadataout\ : std_logic;
SIGNAL \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[0]~0_combout\ : std_logic;
SIGNAL \dp|mem|ram_rtl_0|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[0]~1_combout\ : std_logic;
SIGNAL \cp|M10\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \dp|t1|Dout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \dp|t3|Dout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \dp|ir|Dout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \dp|pc|Dout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \dp|mem|ram_rtl_0|auto_generated|address_reg_a\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \dp|t4|Dout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \dp|t2|Dout\ : std_logic_vector(15 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_reset <= reset;
x <= ww_x;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\dp|mem|ram_rtl_0|auto_generated|ram_block1a16_PORTADATAIN_bus\(0) <= \dp|Mem_din[0]~0_combout\;

\dp|mem|ram_rtl_0|auto_generated|ram_block1a16_PORTAADDR_bus\ <= (\dp|Mem_A[12]~29_combout\ & \dp|Mem_A[11]~27_combout\ & \dp|Mem_A[10]~25_combout\ & \dp|Mem_A[9]~23_combout\ & \dp|Mem_A[8]~21_combout\ & \dp|Mem_A[7]~19_combout\ & \dp|Mem_A[6]~17_combout\
& \dp|Mem_A[5]~15_combout\ & \dp|Mem_A[4]~13_combout\ & \dp|Mem_A[3]~11_combout\ & \dp|Mem_A[2]~9_combout\ & \dp|Mem_A[1]~7_combout\ & \dp|Mem_A[0]~5_combout\);

\dp|mem|ram_rtl_0|auto_generated|ram_block1a16~portadataout\ <= \dp|mem|ram_rtl_0|auto_generated|ram_block1a16_PORTADATAOUT_bus\(0);

\dp|mem|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\(0) <= \dp|Mem_din[0]~0_combout\;

\dp|mem|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\dp|Mem_A[12]~29_combout\ & \dp|Mem_A[11]~27_combout\ & \dp|Mem_A[10]~25_combout\ & \dp|Mem_A[9]~23_combout\ & \dp|Mem_A[8]~21_combout\ & \dp|Mem_A[7]~19_combout\ & \dp|Mem_A[6]~17_combout\
& \dp|Mem_A[5]~15_combout\ & \dp|Mem_A[4]~13_combout\ & \dp|Mem_A[3]~11_combout\ & \dp|Mem_A[2]~9_combout\ & \dp|Mem_A[1]~7_combout\ & \dp|Mem_A[0]~5_combout\);

\dp|mem|ram_rtl_0|auto_generated|ram_block1a0~portadataout\ <= \dp|mem|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);

\dp|mem|ram_rtl_0|auto_generated|ram_block1a48_PORTADATAIN_bus\(0) <= \dp|Mem_din[0]~0_combout\;

\dp|mem|ram_rtl_0|auto_generated|ram_block1a48_PORTAADDR_bus\ <= (\dp|Mem_A[12]~29_combout\ & \dp|Mem_A[11]~27_combout\ & \dp|Mem_A[10]~25_combout\ & \dp|Mem_A[9]~23_combout\ & \dp|Mem_A[8]~21_combout\ & \dp|Mem_A[7]~19_combout\ & \dp|Mem_A[6]~17_combout\
& \dp|Mem_A[5]~15_combout\ & \dp|Mem_A[4]~13_combout\ & \dp|Mem_A[3]~11_combout\ & \dp|Mem_A[2]~9_combout\ & \dp|Mem_A[1]~7_combout\ & \dp|Mem_A[0]~5_combout\);

\dp|mem|ram_rtl_0|auto_generated|ram_block1a48~portadataout\ <= \dp|mem|ram_rtl_0|auto_generated|ram_block1a48_PORTADATAOUT_bus\(0);

\dp|mem|ram_rtl_0|auto_generated|ram_block1a32_PORTADATAIN_bus\(0) <= \dp|Mem_din[0]~0_combout\;

\dp|mem|ram_rtl_0|auto_generated|ram_block1a32_PORTAADDR_bus\ <= (\dp|Mem_A[12]~29_combout\ & \dp|Mem_A[11]~27_combout\ & \dp|Mem_A[10]~25_combout\ & \dp|Mem_A[9]~23_combout\ & \dp|Mem_A[8]~21_combout\ & \dp|Mem_A[7]~19_combout\ & \dp|Mem_A[6]~17_combout\
& \dp|Mem_A[5]~15_combout\ & \dp|Mem_A[4]~13_combout\ & \dp|Mem_A[3]~11_combout\ & \dp|Mem_A[2]~9_combout\ & \dp|Mem_A[1]~7_combout\ & \dp|Mem_A[0]~5_combout\);

\dp|mem|ram_rtl_0|auto_generated|ram_block1a32~portadataout\ <= \dp|mem|ram_rtl_0|auto_generated|ram_block1a32_PORTADATAOUT_bus\(0);

\dp|mem|ram_rtl_0|auto_generated|ram_block1a17_PORTADATAIN_bus\(0) <= \dp|Mem_din[1]~1_combout\;

\dp|mem|ram_rtl_0|auto_generated|ram_block1a17_PORTAADDR_bus\ <= (\dp|Mem_A[12]~29_combout\ & \dp|Mem_A[11]~27_combout\ & \dp|Mem_A[10]~25_combout\ & \dp|Mem_A[9]~23_combout\ & \dp|Mem_A[8]~21_combout\ & \dp|Mem_A[7]~19_combout\ & \dp|Mem_A[6]~17_combout\
& \dp|Mem_A[5]~15_combout\ & \dp|Mem_A[4]~13_combout\ & \dp|Mem_A[3]~11_combout\ & \dp|Mem_A[2]~9_combout\ & \dp|Mem_A[1]~7_combout\ & \dp|Mem_A[0]~5_combout\);

\dp|mem|ram_rtl_0|auto_generated|ram_block1a17~portadataout\ <= \dp|mem|ram_rtl_0|auto_generated|ram_block1a17_PORTADATAOUT_bus\(0);

\dp|mem|ram_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\(0) <= \dp|Mem_din[1]~1_combout\;

\dp|mem|ram_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\dp|Mem_A[12]~29_combout\ & \dp|Mem_A[11]~27_combout\ & \dp|Mem_A[10]~25_combout\ & \dp|Mem_A[9]~23_combout\ & \dp|Mem_A[8]~21_combout\ & \dp|Mem_A[7]~19_combout\ & \dp|Mem_A[6]~17_combout\
& \dp|Mem_A[5]~15_combout\ & \dp|Mem_A[4]~13_combout\ & \dp|Mem_A[3]~11_combout\ & \dp|Mem_A[2]~9_combout\ & \dp|Mem_A[1]~7_combout\ & \dp|Mem_A[0]~5_combout\);

\dp|mem|ram_rtl_0|auto_generated|ram_block1a1~portadataout\ <= \dp|mem|ram_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\(0);

\dp|mem|ram_rtl_0|auto_generated|ram_block1a49_PORTADATAIN_bus\(0) <= \dp|Mem_din[1]~1_combout\;

\dp|mem|ram_rtl_0|auto_generated|ram_block1a49_PORTAADDR_bus\ <= (\dp|Mem_A[12]~29_combout\ & \dp|Mem_A[11]~27_combout\ & \dp|Mem_A[10]~25_combout\ & \dp|Mem_A[9]~23_combout\ & \dp|Mem_A[8]~21_combout\ & \dp|Mem_A[7]~19_combout\ & \dp|Mem_A[6]~17_combout\
& \dp|Mem_A[5]~15_combout\ & \dp|Mem_A[4]~13_combout\ & \dp|Mem_A[3]~11_combout\ & \dp|Mem_A[2]~9_combout\ & \dp|Mem_A[1]~7_combout\ & \dp|Mem_A[0]~5_combout\);

\dp|mem|ram_rtl_0|auto_generated|ram_block1a49~portadataout\ <= \dp|mem|ram_rtl_0|auto_generated|ram_block1a49_PORTADATAOUT_bus\(0);

\dp|mem|ram_rtl_0|auto_generated|ram_block1a33_PORTADATAIN_bus\(0) <= \dp|Mem_din[1]~1_combout\;

\dp|mem|ram_rtl_0|auto_generated|ram_block1a33_PORTAADDR_bus\ <= (\dp|Mem_A[12]~29_combout\ & \dp|Mem_A[11]~27_combout\ & \dp|Mem_A[10]~25_combout\ & \dp|Mem_A[9]~23_combout\ & \dp|Mem_A[8]~21_combout\ & \dp|Mem_A[7]~19_combout\ & \dp|Mem_A[6]~17_combout\
& \dp|Mem_A[5]~15_combout\ & \dp|Mem_A[4]~13_combout\ & \dp|Mem_A[3]~11_combout\ & \dp|Mem_A[2]~9_combout\ & \dp|Mem_A[1]~7_combout\ & \dp|Mem_A[0]~5_combout\);

\dp|mem|ram_rtl_0|auto_generated|ram_block1a33~portadataout\ <= \dp|mem|ram_rtl_0|auto_generated|ram_block1a33_PORTADATAOUT_bus\(0);

\dp|mem|ram_rtl_0|auto_generated|ram_block1a18_PORTADATAIN_bus\(0) <= \dp|Mem_din[2]~2_combout\;

\dp|mem|ram_rtl_0|auto_generated|ram_block1a18_PORTAADDR_bus\ <= (\dp|Mem_A[12]~29_combout\ & \dp|Mem_A[11]~27_combout\ & \dp|Mem_A[10]~25_combout\ & \dp|Mem_A[9]~23_combout\ & \dp|Mem_A[8]~21_combout\ & \dp|Mem_A[7]~19_combout\ & \dp|Mem_A[6]~17_combout\
& \dp|Mem_A[5]~15_combout\ & \dp|Mem_A[4]~13_combout\ & \dp|Mem_A[3]~11_combout\ & \dp|Mem_A[2]~9_combout\ & \dp|Mem_A[1]~7_combout\ & \dp|Mem_A[0]~5_combout\);

\dp|mem|ram_rtl_0|auto_generated|ram_block1a18~portadataout\ <= \dp|mem|ram_rtl_0|auto_generated|ram_block1a18_PORTADATAOUT_bus\(0);

\dp|mem|ram_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\(0) <= \dp|Mem_din[2]~2_combout\;

\dp|mem|ram_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\dp|Mem_A[12]~29_combout\ & \dp|Mem_A[11]~27_combout\ & \dp|Mem_A[10]~25_combout\ & \dp|Mem_A[9]~23_combout\ & \dp|Mem_A[8]~21_combout\ & \dp|Mem_A[7]~19_combout\ & \dp|Mem_A[6]~17_combout\
& \dp|Mem_A[5]~15_combout\ & \dp|Mem_A[4]~13_combout\ & \dp|Mem_A[3]~11_combout\ & \dp|Mem_A[2]~9_combout\ & \dp|Mem_A[1]~7_combout\ & \dp|Mem_A[0]~5_combout\);

\dp|mem|ram_rtl_0|auto_generated|ram_block1a2~portadataout\ <= \dp|mem|ram_rtl_0|auto_generated|ram_block1a2_PORTADATAOUT_bus\(0);

\dp|mem|ram_rtl_0|auto_generated|ram_block1a50_PORTADATAIN_bus\(0) <= \dp|Mem_din[2]~2_combout\;

\dp|mem|ram_rtl_0|auto_generated|ram_block1a50_PORTAADDR_bus\ <= (\dp|Mem_A[12]~29_combout\ & \dp|Mem_A[11]~27_combout\ & \dp|Mem_A[10]~25_combout\ & \dp|Mem_A[9]~23_combout\ & \dp|Mem_A[8]~21_combout\ & \dp|Mem_A[7]~19_combout\ & \dp|Mem_A[6]~17_combout\
& \dp|Mem_A[5]~15_combout\ & \dp|Mem_A[4]~13_combout\ & \dp|Mem_A[3]~11_combout\ & \dp|Mem_A[2]~9_combout\ & \dp|Mem_A[1]~7_combout\ & \dp|Mem_A[0]~5_combout\);

\dp|mem|ram_rtl_0|auto_generated|ram_block1a50~portadataout\ <= \dp|mem|ram_rtl_0|auto_generated|ram_block1a50_PORTADATAOUT_bus\(0);

\dp|mem|ram_rtl_0|auto_generated|ram_block1a34_PORTADATAIN_bus\(0) <= \dp|Mem_din[2]~2_combout\;

\dp|mem|ram_rtl_0|auto_generated|ram_block1a34_PORTAADDR_bus\ <= (\dp|Mem_A[12]~29_combout\ & \dp|Mem_A[11]~27_combout\ & \dp|Mem_A[10]~25_combout\ & \dp|Mem_A[9]~23_combout\ & \dp|Mem_A[8]~21_combout\ & \dp|Mem_A[7]~19_combout\ & \dp|Mem_A[6]~17_combout\
& \dp|Mem_A[5]~15_combout\ & \dp|Mem_A[4]~13_combout\ & \dp|Mem_A[3]~11_combout\ & \dp|Mem_A[2]~9_combout\ & \dp|Mem_A[1]~7_combout\ & \dp|Mem_A[0]~5_combout\);

\dp|mem|ram_rtl_0|auto_generated|ram_block1a34~portadataout\ <= \dp|mem|ram_rtl_0|auto_generated|ram_block1a34_PORTADATAOUT_bus\(0);

\dp|mem|ram_rtl_0|auto_generated|ram_block1a19_PORTADATAIN_bus\(0) <= \dp|Mem_din[3]~3_combout\;

\dp|mem|ram_rtl_0|auto_generated|ram_block1a19_PORTAADDR_bus\ <= (\dp|Mem_A[12]~29_combout\ & \dp|Mem_A[11]~27_combout\ & \dp|Mem_A[10]~25_combout\ & \dp|Mem_A[9]~23_combout\ & \dp|Mem_A[8]~21_combout\ & \dp|Mem_A[7]~19_combout\ & \dp|Mem_A[6]~17_combout\
& \dp|Mem_A[5]~15_combout\ & \dp|Mem_A[4]~13_combout\ & \dp|Mem_A[3]~11_combout\ & \dp|Mem_A[2]~9_combout\ & \dp|Mem_A[1]~7_combout\ & \dp|Mem_A[0]~5_combout\);

\dp|mem|ram_rtl_0|auto_generated|ram_block1a19~portadataout\ <= \dp|mem|ram_rtl_0|auto_generated|ram_block1a19_PORTADATAOUT_bus\(0);

\dp|mem|ram_rtl_0|auto_generated|ram_block1a3_PORTADATAIN_bus\(0) <= \dp|Mem_din[3]~3_combout\;

\dp|mem|ram_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (\dp|Mem_A[12]~29_combout\ & \dp|Mem_A[11]~27_combout\ & \dp|Mem_A[10]~25_combout\ & \dp|Mem_A[9]~23_combout\ & \dp|Mem_A[8]~21_combout\ & \dp|Mem_A[7]~19_combout\ & \dp|Mem_A[6]~17_combout\
& \dp|Mem_A[5]~15_combout\ & \dp|Mem_A[4]~13_combout\ & \dp|Mem_A[3]~11_combout\ & \dp|Mem_A[2]~9_combout\ & \dp|Mem_A[1]~7_combout\ & \dp|Mem_A[0]~5_combout\);

\dp|mem|ram_rtl_0|auto_generated|ram_block1a3~portadataout\ <= \dp|mem|ram_rtl_0|auto_generated|ram_block1a3_PORTADATAOUT_bus\(0);

\dp|mem|ram_rtl_0|auto_generated|ram_block1a51_PORTADATAIN_bus\(0) <= \dp|Mem_din[3]~3_combout\;

\dp|mem|ram_rtl_0|auto_generated|ram_block1a51_PORTAADDR_bus\ <= (\dp|Mem_A[12]~29_combout\ & \dp|Mem_A[11]~27_combout\ & \dp|Mem_A[10]~25_combout\ & \dp|Mem_A[9]~23_combout\ & \dp|Mem_A[8]~21_combout\ & \dp|Mem_A[7]~19_combout\ & \dp|Mem_A[6]~17_combout\
& \dp|Mem_A[5]~15_combout\ & \dp|Mem_A[4]~13_combout\ & \dp|Mem_A[3]~11_combout\ & \dp|Mem_A[2]~9_combout\ & \dp|Mem_A[1]~7_combout\ & \dp|Mem_A[0]~5_combout\);

\dp|mem|ram_rtl_0|auto_generated|ram_block1a51~portadataout\ <= \dp|mem|ram_rtl_0|auto_generated|ram_block1a51_PORTADATAOUT_bus\(0);

\dp|mem|ram_rtl_0|auto_generated|ram_block1a35_PORTADATAIN_bus\(0) <= \dp|Mem_din[3]~3_combout\;

\dp|mem|ram_rtl_0|auto_generated|ram_block1a35_PORTAADDR_bus\ <= (\dp|Mem_A[12]~29_combout\ & \dp|Mem_A[11]~27_combout\ & \dp|Mem_A[10]~25_combout\ & \dp|Mem_A[9]~23_combout\ & \dp|Mem_A[8]~21_combout\ & \dp|Mem_A[7]~19_combout\ & \dp|Mem_A[6]~17_combout\
& \dp|Mem_A[5]~15_combout\ & \dp|Mem_A[4]~13_combout\ & \dp|Mem_A[3]~11_combout\ & \dp|Mem_A[2]~9_combout\ & \dp|Mem_A[1]~7_combout\ & \dp|Mem_A[0]~5_combout\);

\dp|mem|ram_rtl_0|auto_generated|ram_block1a35~portadataout\ <= \dp|mem|ram_rtl_0|auto_generated|ram_block1a35_PORTADATAOUT_bus\(0);

\dp|mem|ram_rtl_0|auto_generated|ram_block1a20_PORTADATAIN_bus\(0) <= \dp|Mem_din[4]~4_combout\;

\dp|mem|ram_rtl_0|auto_generated|ram_block1a20_PORTAADDR_bus\ <= (\dp|Mem_A[12]~29_combout\ & \dp|Mem_A[11]~27_combout\ & \dp|Mem_A[10]~25_combout\ & \dp|Mem_A[9]~23_combout\ & \dp|Mem_A[8]~21_combout\ & \dp|Mem_A[7]~19_combout\ & \dp|Mem_A[6]~17_combout\
& \dp|Mem_A[5]~15_combout\ & \dp|Mem_A[4]~13_combout\ & \dp|Mem_A[3]~11_combout\ & \dp|Mem_A[2]~9_combout\ & \dp|Mem_A[1]~7_combout\ & \dp|Mem_A[0]~5_combout\);

\dp|mem|ram_rtl_0|auto_generated|ram_block1a20~portadataout\ <= \dp|mem|ram_rtl_0|auto_generated|ram_block1a20_PORTADATAOUT_bus\(0);

\dp|mem|ram_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\(0) <= \dp|Mem_din[4]~4_combout\;

\dp|mem|ram_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\dp|Mem_A[12]~29_combout\ & \dp|Mem_A[11]~27_combout\ & \dp|Mem_A[10]~25_combout\ & \dp|Mem_A[9]~23_combout\ & \dp|Mem_A[8]~21_combout\ & \dp|Mem_A[7]~19_combout\ & \dp|Mem_A[6]~17_combout\
& \dp|Mem_A[5]~15_combout\ & \dp|Mem_A[4]~13_combout\ & \dp|Mem_A[3]~11_combout\ & \dp|Mem_A[2]~9_combout\ & \dp|Mem_A[1]~7_combout\ & \dp|Mem_A[0]~5_combout\);

\dp|mem|ram_rtl_0|auto_generated|ram_block1a4~portadataout\ <= \dp|mem|ram_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\(0);

\dp|mem|ram_rtl_0|auto_generated|ram_block1a52_PORTADATAIN_bus\(0) <= \dp|Mem_din[4]~4_combout\;

\dp|mem|ram_rtl_0|auto_generated|ram_block1a52_PORTAADDR_bus\ <= (\dp|Mem_A[12]~29_combout\ & \dp|Mem_A[11]~27_combout\ & \dp|Mem_A[10]~25_combout\ & \dp|Mem_A[9]~23_combout\ & \dp|Mem_A[8]~21_combout\ & \dp|Mem_A[7]~19_combout\ & \dp|Mem_A[6]~17_combout\
& \dp|Mem_A[5]~15_combout\ & \dp|Mem_A[4]~13_combout\ & \dp|Mem_A[3]~11_combout\ & \dp|Mem_A[2]~9_combout\ & \dp|Mem_A[1]~7_combout\ & \dp|Mem_A[0]~5_combout\);

\dp|mem|ram_rtl_0|auto_generated|ram_block1a52~portadataout\ <= \dp|mem|ram_rtl_0|auto_generated|ram_block1a52_PORTADATAOUT_bus\(0);

\dp|mem|ram_rtl_0|auto_generated|ram_block1a36_PORTADATAIN_bus\(0) <= \dp|Mem_din[4]~4_combout\;

\dp|mem|ram_rtl_0|auto_generated|ram_block1a36_PORTAADDR_bus\ <= (\dp|Mem_A[12]~29_combout\ & \dp|Mem_A[11]~27_combout\ & \dp|Mem_A[10]~25_combout\ & \dp|Mem_A[9]~23_combout\ & \dp|Mem_A[8]~21_combout\ & \dp|Mem_A[7]~19_combout\ & \dp|Mem_A[6]~17_combout\
& \dp|Mem_A[5]~15_combout\ & \dp|Mem_A[4]~13_combout\ & \dp|Mem_A[3]~11_combout\ & \dp|Mem_A[2]~9_combout\ & \dp|Mem_A[1]~7_combout\ & \dp|Mem_A[0]~5_combout\);

\dp|mem|ram_rtl_0|auto_generated|ram_block1a36~portadataout\ <= \dp|mem|ram_rtl_0|auto_generated|ram_block1a36_PORTADATAOUT_bus\(0);

\dp|mem|ram_rtl_0|auto_generated|ram_block1a21_PORTADATAIN_bus\(0) <= \dp|Mem_din[5]~5_combout\;

\dp|mem|ram_rtl_0|auto_generated|ram_block1a21_PORTAADDR_bus\ <= (\dp|Mem_A[12]~29_combout\ & \dp|Mem_A[11]~27_combout\ & \dp|Mem_A[10]~25_combout\ & \dp|Mem_A[9]~23_combout\ & \dp|Mem_A[8]~21_combout\ & \dp|Mem_A[7]~19_combout\ & \dp|Mem_A[6]~17_combout\
& \dp|Mem_A[5]~15_combout\ & \dp|Mem_A[4]~13_combout\ & \dp|Mem_A[3]~11_combout\ & \dp|Mem_A[2]~9_combout\ & \dp|Mem_A[1]~7_combout\ & \dp|Mem_A[0]~5_combout\);

\dp|mem|ram_rtl_0|auto_generated|ram_block1a21~portadataout\ <= \dp|mem|ram_rtl_0|auto_generated|ram_block1a21_PORTADATAOUT_bus\(0);

\dp|mem|ram_rtl_0|auto_generated|ram_block1a5_PORTADATAIN_bus\(0) <= \dp|Mem_din[5]~5_combout\;

\dp|mem|ram_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\ <= (\dp|Mem_A[12]~29_combout\ & \dp|Mem_A[11]~27_combout\ & \dp|Mem_A[10]~25_combout\ & \dp|Mem_A[9]~23_combout\ & \dp|Mem_A[8]~21_combout\ & \dp|Mem_A[7]~19_combout\ & \dp|Mem_A[6]~17_combout\
& \dp|Mem_A[5]~15_combout\ & \dp|Mem_A[4]~13_combout\ & \dp|Mem_A[3]~11_combout\ & \dp|Mem_A[2]~9_combout\ & \dp|Mem_A[1]~7_combout\ & \dp|Mem_A[0]~5_combout\);

\dp|mem|ram_rtl_0|auto_generated|ram_block1a5~portadataout\ <= \dp|mem|ram_rtl_0|auto_generated|ram_block1a5_PORTADATAOUT_bus\(0);

\dp|mem|ram_rtl_0|auto_generated|ram_block1a53_PORTADATAIN_bus\(0) <= \dp|Mem_din[5]~5_combout\;

\dp|mem|ram_rtl_0|auto_generated|ram_block1a53_PORTAADDR_bus\ <= (\dp|Mem_A[12]~29_combout\ & \dp|Mem_A[11]~27_combout\ & \dp|Mem_A[10]~25_combout\ & \dp|Mem_A[9]~23_combout\ & \dp|Mem_A[8]~21_combout\ & \dp|Mem_A[7]~19_combout\ & \dp|Mem_A[6]~17_combout\
& \dp|Mem_A[5]~15_combout\ & \dp|Mem_A[4]~13_combout\ & \dp|Mem_A[3]~11_combout\ & \dp|Mem_A[2]~9_combout\ & \dp|Mem_A[1]~7_combout\ & \dp|Mem_A[0]~5_combout\);

\dp|mem|ram_rtl_0|auto_generated|ram_block1a53~portadataout\ <= \dp|mem|ram_rtl_0|auto_generated|ram_block1a53_PORTADATAOUT_bus\(0);

\dp|mem|ram_rtl_0|auto_generated|ram_block1a37_PORTADATAIN_bus\(0) <= \dp|Mem_din[5]~5_combout\;

\dp|mem|ram_rtl_0|auto_generated|ram_block1a37_PORTAADDR_bus\ <= (\dp|Mem_A[12]~29_combout\ & \dp|Mem_A[11]~27_combout\ & \dp|Mem_A[10]~25_combout\ & \dp|Mem_A[9]~23_combout\ & \dp|Mem_A[8]~21_combout\ & \dp|Mem_A[7]~19_combout\ & \dp|Mem_A[6]~17_combout\
& \dp|Mem_A[5]~15_combout\ & \dp|Mem_A[4]~13_combout\ & \dp|Mem_A[3]~11_combout\ & \dp|Mem_A[2]~9_combout\ & \dp|Mem_A[1]~7_combout\ & \dp|Mem_A[0]~5_combout\);

\dp|mem|ram_rtl_0|auto_generated|ram_block1a37~portadataout\ <= \dp|mem|ram_rtl_0|auto_generated|ram_block1a37_PORTADATAOUT_bus\(0);

\dp|mem|ram_rtl_0|auto_generated|ram_block1a22_PORTADATAIN_bus\(0) <= \dp|Mem_din[6]~6_combout\;

\dp|mem|ram_rtl_0|auto_generated|ram_block1a22_PORTAADDR_bus\ <= (\dp|Mem_A[12]~29_combout\ & \dp|Mem_A[11]~27_combout\ & \dp|Mem_A[10]~25_combout\ & \dp|Mem_A[9]~23_combout\ & \dp|Mem_A[8]~21_combout\ & \dp|Mem_A[7]~19_combout\ & \dp|Mem_A[6]~17_combout\
& \dp|Mem_A[5]~15_combout\ & \dp|Mem_A[4]~13_combout\ & \dp|Mem_A[3]~11_combout\ & \dp|Mem_A[2]~9_combout\ & \dp|Mem_A[1]~7_combout\ & \dp|Mem_A[0]~5_combout\);

\dp|mem|ram_rtl_0|auto_generated|ram_block1a22~portadataout\ <= \dp|mem|ram_rtl_0|auto_generated|ram_block1a22_PORTADATAOUT_bus\(0);

\dp|mem|ram_rtl_0|auto_generated|ram_block1a6_PORTADATAIN_bus\(0) <= \dp|Mem_din[6]~6_combout\;

\dp|mem|ram_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\dp|Mem_A[12]~29_combout\ & \dp|Mem_A[11]~27_combout\ & \dp|Mem_A[10]~25_combout\ & \dp|Mem_A[9]~23_combout\ & \dp|Mem_A[8]~21_combout\ & \dp|Mem_A[7]~19_combout\ & \dp|Mem_A[6]~17_combout\
& \dp|Mem_A[5]~15_combout\ & \dp|Mem_A[4]~13_combout\ & \dp|Mem_A[3]~11_combout\ & \dp|Mem_A[2]~9_combout\ & \dp|Mem_A[1]~7_combout\ & \dp|Mem_A[0]~5_combout\);

\dp|mem|ram_rtl_0|auto_generated|ram_block1a6~portadataout\ <= \dp|mem|ram_rtl_0|auto_generated|ram_block1a6_PORTADATAOUT_bus\(0);

\dp|mem|ram_rtl_0|auto_generated|ram_block1a54_PORTADATAIN_bus\(0) <= \dp|Mem_din[6]~6_combout\;

\dp|mem|ram_rtl_0|auto_generated|ram_block1a54_PORTAADDR_bus\ <= (\dp|Mem_A[12]~29_combout\ & \dp|Mem_A[11]~27_combout\ & \dp|Mem_A[10]~25_combout\ & \dp|Mem_A[9]~23_combout\ & \dp|Mem_A[8]~21_combout\ & \dp|Mem_A[7]~19_combout\ & \dp|Mem_A[6]~17_combout\
& \dp|Mem_A[5]~15_combout\ & \dp|Mem_A[4]~13_combout\ & \dp|Mem_A[3]~11_combout\ & \dp|Mem_A[2]~9_combout\ & \dp|Mem_A[1]~7_combout\ & \dp|Mem_A[0]~5_combout\);

\dp|mem|ram_rtl_0|auto_generated|ram_block1a54~portadataout\ <= \dp|mem|ram_rtl_0|auto_generated|ram_block1a54_PORTADATAOUT_bus\(0);

\dp|mem|ram_rtl_0|auto_generated|ram_block1a38_PORTADATAIN_bus\(0) <= \dp|Mem_din[6]~6_combout\;

\dp|mem|ram_rtl_0|auto_generated|ram_block1a38_PORTAADDR_bus\ <= (\dp|Mem_A[12]~29_combout\ & \dp|Mem_A[11]~27_combout\ & \dp|Mem_A[10]~25_combout\ & \dp|Mem_A[9]~23_combout\ & \dp|Mem_A[8]~21_combout\ & \dp|Mem_A[7]~19_combout\ & \dp|Mem_A[6]~17_combout\
& \dp|Mem_A[5]~15_combout\ & \dp|Mem_A[4]~13_combout\ & \dp|Mem_A[3]~11_combout\ & \dp|Mem_A[2]~9_combout\ & \dp|Mem_A[1]~7_combout\ & \dp|Mem_A[0]~5_combout\);

\dp|mem|ram_rtl_0|auto_generated|ram_block1a38~portadataout\ <= \dp|mem|ram_rtl_0|auto_generated|ram_block1a38_PORTADATAOUT_bus\(0);

\dp|mem|ram_rtl_0|auto_generated|ram_block1a23_PORTADATAIN_bus\(0) <= \dp|Mem_din[7]~7_combout\;

\dp|mem|ram_rtl_0|auto_generated|ram_block1a23_PORTAADDR_bus\ <= (\dp|Mem_A[12]~29_combout\ & \dp|Mem_A[11]~27_combout\ & \dp|Mem_A[10]~25_combout\ & \dp|Mem_A[9]~23_combout\ & \dp|Mem_A[8]~21_combout\ & \dp|Mem_A[7]~19_combout\ & \dp|Mem_A[6]~17_combout\
& \dp|Mem_A[5]~15_combout\ & \dp|Mem_A[4]~13_combout\ & \dp|Mem_A[3]~11_combout\ & \dp|Mem_A[2]~9_combout\ & \dp|Mem_A[1]~7_combout\ & \dp|Mem_A[0]~5_combout\);

\dp|mem|ram_rtl_0|auto_generated|ram_block1a23~portadataout\ <= \dp|mem|ram_rtl_0|auto_generated|ram_block1a23_PORTADATAOUT_bus\(0);

\dp|mem|ram_rtl_0|auto_generated|ram_block1a7_PORTADATAIN_bus\(0) <= \dp|Mem_din[7]~7_combout\;

\dp|mem|ram_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\ <= (\dp|Mem_A[12]~29_combout\ & \dp|Mem_A[11]~27_combout\ & \dp|Mem_A[10]~25_combout\ & \dp|Mem_A[9]~23_combout\ & \dp|Mem_A[8]~21_combout\ & \dp|Mem_A[7]~19_combout\ & \dp|Mem_A[6]~17_combout\
& \dp|Mem_A[5]~15_combout\ & \dp|Mem_A[4]~13_combout\ & \dp|Mem_A[3]~11_combout\ & \dp|Mem_A[2]~9_combout\ & \dp|Mem_A[1]~7_combout\ & \dp|Mem_A[0]~5_combout\);

\dp|mem|ram_rtl_0|auto_generated|ram_block1a7~portadataout\ <= \dp|mem|ram_rtl_0|auto_generated|ram_block1a7_PORTADATAOUT_bus\(0);

\dp|mem|ram_rtl_0|auto_generated|ram_block1a55_PORTADATAIN_bus\(0) <= \dp|Mem_din[7]~7_combout\;

\dp|mem|ram_rtl_0|auto_generated|ram_block1a55_PORTAADDR_bus\ <= (\dp|Mem_A[12]~29_combout\ & \dp|Mem_A[11]~27_combout\ & \dp|Mem_A[10]~25_combout\ & \dp|Mem_A[9]~23_combout\ & \dp|Mem_A[8]~21_combout\ & \dp|Mem_A[7]~19_combout\ & \dp|Mem_A[6]~17_combout\
& \dp|Mem_A[5]~15_combout\ & \dp|Mem_A[4]~13_combout\ & \dp|Mem_A[3]~11_combout\ & \dp|Mem_A[2]~9_combout\ & \dp|Mem_A[1]~7_combout\ & \dp|Mem_A[0]~5_combout\);

\dp|mem|ram_rtl_0|auto_generated|ram_block1a55~portadataout\ <= \dp|mem|ram_rtl_0|auto_generated|ram_block1a55_PORTADATAOUT_bus\(0);

\dp|mem|ram_rtl_0|auto_generated|ram_block1a39_PORTADATAIN_bus\(0) <= \dp|Mem_din[7]~7_combout\;

\dp|mem|ram_rtl_0|auto_generated|ram_block1a39_PORTAADDR_bus\ <= (\dp|Mem_A[12]~29_combout\ & \dp|Mem_A[11]~27_combout\ & \dp|Mem_A[10]~25_combout\ & \dp|Mem_A[9]~23_combout\ & \dp|Mem_A[8]~21_combout\ & \dp|Mem_A[7]~19_combout\ & \dp|Mem_A[6]~17_combout\
& \dp|Mem_A[5]~15_combout\ & \dp|Mem_A[4]~13_combout\ & \dp|Mem_A[3]~11_combout\ & \dp|Mem_A[2]~9_combout\ & \dp|Mem_A[1]~7_combout\ & \dp|Mem_A[0]~5_combout\);

\dp|mem|ram_rtl_0|auto_generated|ram_block1a39~portadataout\ <= \dp|mem|ram_rtl_0|auto_generated|ram_block1a39_PORTADATAOUT_bus\(0);

\dp|mem|ram_rtl_0|auto_generated|ram_block1a24_PORTADATAIN_bus\(0) <= \dp|Mem_din[8]~8_combout\;

\dp|mem|ram_rtl_0|auto_generated|ram_block1a24_PORTAADDR_bus\ <= (\dp|Mem_A[12]~29_combout\ & \dp|Mem_A[11]~27_combout\ & \dp|Mem_A[10]~25_combout\ & \dp|Mem_A[9]~23_combout\ & \dp|Mem_A[8]~21_combout\ & \dp|Mem_A[7]~19_combout\ & \dp|Mem_A[6]~17_combout\
& \dp|Mem_A[5]~15_combout\ & \dp|Mem_A[4]~13_combout\ & \dp|Mem_A[3]~11_combout\ & \dp|Mem_A[2]~9_combout\ & \dp|Mem_A[1]~7_combout\ & \dp|Mem_A[0]~5_combout\);

\dp|mem|ram_rtl_0|auto_generated|ram_block1a24~portadataout\ <= \dp|mem|ram_rtl_0|auto_generated|ram_block1a24_PORTADATAOUT_bus\(0);

\dp|mem|ram_rtl_0|auto_generated|ram_block1a8_PORTADATAIN_bus\(0) <= \dp|Mem_din[8]~8_combout\;

\dp|mem|ram_rtl_0|auto_generated|ram_block1a8_PORTAADDR_bus\ <= (\dp|Mem_A[12]~29_combout\ & \dp|Mem_A[11]~27_combout\ & \dp|Mem_A[10]~25_combout\ & \dp|Mem_A[9]~23_combout\ & \dp|Mem_A[8]~21_combout\ & \dp|Mem_A[7]~19_combout\ & \dp|Mem_A[6]~17_combout\
& \dp|Mem_A[5]~15_combout\ & \dp|Mem_A[4]~13_combout\ & \dp|Mem_A[3]~11_combout\ & \dp|Mem_A[2]~9_combout\ & \dp|Mem_A[1]~7_combout\ & \dp|Mem_A[0]~5_combout\);

\dp|mem|ram_rtl_0|auto_generated|ram_block1a8~portadataout\ <= \dp|mem|ram_rtl_0|auto_generated|ram_block1a8_PORTADATAOUT_bus\(0);

\dp|mem|ram_rtl_0|auto_generated|ram_block1a56_PORTADATAIN_bus\(0) <= \dp|Mem_din[8]~8_combout\;

\dp|mem|ram_rtl_0|auto_generated|ram_block1a56_PORTAADDR_bus\ <= (\dp|Mem_A[12]~29_combout\ & \dp|Mem_A[11]~27_combout\ & \dp|Mem_A[10]~25_combout\ & \dp|Mem_A[9]~23_combout\ & \dp|Mem_A[8]~21_combout\ & \dp|Mem_A[7]~19_combout\ & \dp|Mem_A[6]~17_combout\
& \dp|Mem_A[5]~15_combout\ & \dp|Mem_A[4]~13_combout\ & \dp|Mem_A[3]~11_combout\ & \dp|Mem_A[2]~9_combout\ & \dp|Mem_A[1]~7_combout\ & \dp|Mem_A[0]~5_combout\);

\dp|mem|ram_rtl_0|auto_generated|ram_block1a56~portadataout\ <= \dp|mem|ram_rtl_0|auto_generated|ram_block1a56_PORTADATAOUT_bus\(0);

\dp|mem|ram_rtl_0|auto_generated|ram_block1a40_PORTADATAIN_bus\(0) <= \dp|Mem_din[8]~8_combout\;

\dp|mem|ram_rtl_0|auto_generated|ram_block1a40_PORTAADDR_bus\ <= (\dp|Mem_A[12]~29_combout\ & \dp|Mem_A[11]~27_combout\ & \dp|Mem_A[10]~25_combout\ & \dp|Mem_A[9]~23_combout\ & \dp|Mem_A[8]~21_combout\ & \dp|Mem_A[7]~19_combout\ & \dp|Mem_A[6]~17_combout\
& \dp|Mem_A[5]~15_combout\ & \dp|Mem_A[4]~13_combout\ & \dp|Mem_A[3]~11_combout\ & \dp|Mem_A[2]~9_combout\ & \dp|Mem_A[1]~7_combout\ & \dp|Mem_A[0]~5_combout\);

\dp|mem|ram_rtl_0|auto_generated|ram_block1a40~portadataout\ <= \dp|mem|ram_rtl_0|auto_generated|ram_block1a40_PORTADATAOUT_bus\(0);

\dp|mem|ram_rtl_0|auto_generated|ram_block1a25_PORTADATAIN_bus\(0) <= \dp|Mem_din[9]~9_combout\;

\dp|mem|ram_rtl_0|auto_generated|ram_block1a25_PORTAADDR_bus\ <= (\dp|Mem_A[12]~29_combout\ & \dp|Mem_A[11]~27_combout\ & \dp|Mem_A[10]~25_combout\ & \dp|Mem_A[9]~23_combout\ & \dp|Mem_A[8]~21_combout\ & \dp|Mem_A[7]~19_combout\ & \dp|Mem_A[6]~17_combout\
& \dp|Mem_A[5]~15_combout\ & \dp|Mem_A[4]~13_combout\ & \dp|Mem_A[3]~11_combout\ & \dp|Mem_A[2]~9_combout\ & \dp|Mem_A[1]~7_combout\ & \dp|Mem_A[0]~5_combout\);

\dp|mem|ram_rtl_0|auto_generated|ram_block1a25~portadataout\ <= \dp|mem|ram_rtl_0|auto_generated|ram_block1a25_PORTADATAOUT_bus\(0);

\dp|mem|ram_rtl_0|auto_generated|ram_block1a9_PORTADATAIN_bus\(0) <= \dp|Mem_din[9]~9_combout\;

\dp|mem|ram_rtl_0|auto_generated|ram_block1a9_PORTAADDR_bus\ <= (\dp|Mem_A[12]~29_combout\ & \dp|Mem_A[11]~27_combout\ & \dp|Mem_A[10]~25_combout\ & \dp|Mem_A[9]~23_combout\ & \dp|Mem_A[8]~21_combout\ & \dp|Mem_A[7]~19_combout\ & \dp|Mem_A[6]~17_combout\
& \dp|Mem_A[5]~15_combout\ & \dp|Mem_A[4]~13_combout\ & \dp|Mem_A[3]~11_combout\ & \dp|Mem_A[2]~9_combout\ & \dp|Mem_A[1]~7_combout\ & \dp|Mem_A[0]~5_combout\);

\dp|mem|ram_rtl_0|auto_generated|ram_block1a9~portadataout\ <= \dp|mem|ram_rtl_0|auto_generated|ram_block1a9_PORTADATAOUT_bus\(0);

\dp|mem|ram_rtl_0|auto_generated|ram_block1a57_PORTADATAIN_bus\(0) <= \dp|Mem_din[9]~9_combout\;

\dp|mem|ram_rtl_0|auto_generated|ram_block1a57_PORTAADDR_bus\ <= (\dp|Mem_A[12]~29_combout\ & \dp|Mem_A[11]~27_combout\ & \dp|Mem_A[10]~25_combout\ & \dp|Mem_A[9]~23_combout\ & \dp|Mem_A[8]~21_combout\ & \dp|Mem_A[7]~19_combout\ & \dp|Mem_A[6]~17_combout\
& \dp|Mem_A[5]~15_combout\ & \dp|Mem_A[4]~13_combout\ & \dp|Mem_A[3]~11_combout\ & \dp|Mem_A[2]~9_combout\ & \dp|Mem_A[1]~7_combout\ & \dp|Mem_A[0]~5_combout\);

\dp|mem|ram_rtl_0|auto_generated|ram_block1a57~portadataout\ <= \dp|mem|ram_rtl_0|auto_generated|ram_block1a57_PORTADATAOUT_bus\(0);

\dp|mem|ram_rtl_0|auto_generated|ram_block1a41_PORTADATAIN_bus\(0) <= \dp|Mem_din[9]~9_combout\;

\dp|mem|ram_rtl_0|auto_generated|ram_block1a41_PORTAADDR_bus\ <= (\dp|Mem_A[12]~29_combout\ & \dp|Mem_A[11]~27_combout\ & \dp|Mem_A[10]~25_combout\ & \dp|Mem_A[9]~23_combout\ & \dp|Mem_A[8]~21_combout\ & \dp|Mem_A[7]~19_combout\ & \dp|Mem_A[6]~17_combout\
& \dp|Mem_A[5]~15_combout\ & \dp|Mem_A[4]~13_combout\ & \dp|Mem_A[3]~11_combout\ & \dp|Mem_A[2]~9_combout\ & \dp|Mem_A[1]~7_combout\ & \dp|Mem_A[0]~5_combout\);

\dp|mem|ram_rtl_0|auto_generated|ram_block1a41~portadataout\ <= \dp|mem|ram_rtl_0|auto_generated|ram_block1a41_PORTADATAOUT_bus\(0);

\dp|mem|ram_rtl_0|auto_generated|ram_block1a26_PORTADATAIN_bus\(0) <= \dp|Mem_din[10]~10_combout\;

\dp|mem|ram_rtl_0|auto_generated|ram_block1a26_PORTAADDR_bus\ <= (\dp|Mem_A[12]~29_combout\ & \dp|Mem_A[11]~27_combout\ & \dp|Mem_A[10]~25_combout\ & \dp|Mem_A[9]~23_combout\ & \dp|Mem_A[8]~21_combout\ & \dp|Mem_A[7]~19_combout\ & \dp|Mem_A[6]~17_combout\
& \dp|Mem_A[5]~15_combout\ & \dp|Mem_A[4]~13_combout\ & \dp|Mem_A[3]~11_combout\ & \dp|Mem_A[2]~9_combout\ & \dp|Mem_A[1]~7_combout\ & \dp|Mem_A[0]~5_combout\);

\dp|mem|ram_rtl_0|auto_generated|ram_block1a26~portadataout\ <= \dp|mem|ram_rtl_0|auto_generated|ram_block1a26_PORTADATAOUT_bus\(0);

\dp|mem|ram_rtl_0|auto_generated|ram_block1a10_PORTADATAIN_bus\(0) <= \dp|Mem_din[10]~10_combout\;

\dp|mem|ram_rtl_0|auto_generated|ram_block1a10_PORTAADDR_bus\ <= (\dp|Mem_A[12]~29_combout\ & \dp|Mem_A[11]~27_combout\ & \dp|Mem_A[10]~25_combout\ & \dp|Mem_A[9]~23_combout\ & \dp|Mem_A[8]~21_combout\ & \dp|Mem_A[7]~19_combout\ & \dp|Mem_A[6]~17_combout\
& \dp|Mem_A[5]~15_combout\ & \dp|Mem_A[4]~13_combout\ & \dp|Mem_A[3]~11_combout\ & \dp|Mem_A[2]~9_combout\ & \dp|Mem_A[1]~7_combout\ & \dp|Mem_A[0]~5_combout\);

\dp|mem|ram_rtl_0|auto_generated|ram_block1a10~portadataout\ <= \dp|mem|ram_rtl_0|auto_generated|ram_block1a10_PORTADATAOUT_bus\(0);

\dp|mem|ram_rtl_0|auto_generated|ram_block1a58_PORTADATAIN_bus\(0) <= \dp|Mem_din[10]~10_combout\;

\dp|mem|ram_rtl_0|auto_generated|ram_block1a58_PORTAADDR_bus\ <= (\dp|Mem_A[12]~29_combout\ & \dp|Mem_A[11]~27_combout\ & \dp|Mem_A[10]~25_combout\ & \dp|Mem_A[9]~23_combout\ & \dp|Mem_A[8]~21_combout\ & \dp|Mem_A[7]~19_combout\ & \dp|Mem_A[6]~17_combout\
& \dp|Mem_A[5]~15_combout\ & \dp|Mem_A[4]~13_combout\ & \dp|Mem_A[3]~11_combout\ & \dp|Mem_A[2]~9_combout\ & \dp|Mem_A[1]~7_combout\ & \dp|Mem_A[0]~5_combout\);

\dp|mem|ram_rtl_0|auto_generated|ram_block1a58~portadataout\ <= \dp|mem|ram_rtl_0|auto_generated|ram_block1a58_PORTADATAOUT_bus\(0);

\dp|mem|ram_rtl_0|auto_generated|ram_block1a42_PORTADATAIN_bus\(0) <= \dp|Mem_din[10]~10_combout\;

\dp|mem|ram_rtl_0|auto_generated|ram_block1a42_PORTAADDR_bus\ <= (\dp|Mem_A[12]~29_combout\ & \dp|Mem_A[11]~27_combout\ & \dp|Mem_A[10]~25_combout\ & \dp|Mem_A[9]~23_combout\ & \dp|Mem_A[8]~21_combout\ & \dp|Mem_A[7]~19_combout\ & \dp|Mem_A[6]~17_combout\
& \dp|Mem_A[5]~15_combout\ & \dp|Mem_A[4]~13_combout\ & \dp|Mem_A[3]~11_combout\ & \dp|Mem_A[2]~9_combout\ & \dp|Mem_A[1]~7_combout\ & \dp|Mem_A[0]~5_combout\);

\dp|mem|ram_rtl_0|auto_generated|ram_block1a42~portadataout\ <= \dp|mem|ram_rtl_0|auto_generated|ram_block1a42_PORTADATAOUT_bus\(0);

\dp|mem|ram_rtl_0|auto_generated|ram_block1a27_PORTADATAIN_bus\(0) <= \dp|Mem_din[11]~11_combout\;

\dp|mem|ram_rtl_0|auto_generated|ram_block1a27_PORTAADDR_bus\ <= (\dp|Mem_A[12]~29_combout\ & \dp|Mem_A[11]~27_combout\ & \dp|Mem_A[10]~25_combout\ & \dp|Mem_A[9]~23_combout\ & \dp|Mem_A[8]~21_combout\ & \dp|Mem_A[7]~19_combout\ & \dp|Mem_A[6]~17_combout\
& \dp|Mem_A[5]~15_combout\ & \dp|Mem_A[4]~13_combout\ & \dp|Mem_A[3]~11_combout\ & \dp|Mem_A[2]~9_combout\ & \dp|Mem_A[1]~7_combout\ & \dp|Mem_A[0]~5_combout\);

\dp|mem|ram_rtl_0|auto_generated|ram_block1a27~portadataout\ <= \dp|mem|ram_rtl_0|auto_generated|ram_block1a27_PORTADATAOUT_bus\(0);

\dp|mem|ram_rtl_0|auto_generated|ram_block1a11_PORTADATAIN_bus\(0) <= \dp|Mem_din[11]~11_combout\;

\dp|mem|ram_rtl_0|auto_generated|ram_block1a11_PORTAADDR_bus\ <= (\dp|Mem_A[12]~29_combout\ & \dp|Mem_A[11]~27_combout\ & \dp|Mem_A[10]~25_combout\ & \dp|Mem_A[9]~23_combout\ & \dp|Mem_A[8]~21_combout\ & \dp|Mem_A[7]~19_combout\ & \dp|Mem_A[6]~17_combout\
& \dp|Mem_A[5]~15_combout\ & \dp|Mem_A[4]~13_combout\ & \dp|Mem_A[3]~11_combout\ & \dp|Mem_A[2]~9_combout\ & \dp|Mem_A[1]~7_combout\ & \dp|Mem_A[0]~5_combout\);

\dp|mem|ram_rtl_0|auto_generated|ram_block1a11~portadataout\ <= \dp|mem|ram_rtl_0|auto_generated|ram_block1a11_PORTADATAOUT_bus\(0);

\dp|mem|ram_rtl_0|auto_generated|ram_block1a59_PORTADATAIN_bus\(0) <= \dp|Mem_din[11]~11_combout\;

\dp|mem|ram_rtl_0|auto_generated|ram_block1a59_PORTAADDR_bus\ <= (\dp|Mem_A[12]~29_combout\ & \dp|Mem_A[11]~27_combout\ & \dp|Mem_A[10]~25_combout\ & \dp|Mem_A[9]~23_combout\ & \dp|Mem_A[8]~21_combout\ & \dp|Mem_A[7]~19_combout\ & \dp|Mem_A[6]~17_combout\
& \dp|Mem_A[5]~15_combout\ & \dp|Mem_A[4]~13_combout\ & \dp|Mem_A[3]~11_combout\ & \dp|Mem_A[2]~9_combout\ & \dp|Mem_A[1]~7_combout\ & \dp|Mem_A[0]~5_combout\);

\dp|mem|ram_rtl_0|auto_generated|ram_block1a59~portadataout\ <= \dp|mem|ram_rtl_0|auto_generated|ram_block1a59_PORTADATAOUT_bus\(0);

\dp|mem|ram_rtl_0|auto_generated|ram_block1a43_PORTADATAIN_bus\(0) <= \dp|Mem_din[11]~11_combout\;

\dp|mem|ram_rtl_0|auto_generated|ram_block1a43_PORTAADDR_bus\ <= (\dp|Mem_A[12]~29_combout\ & \dp|Mem_A[11]~27_combout\ & \dp|Mem_A[10]~25_combout\ & \dp|Mem_A[9]~23_combout\ & \dp|Mem_A[8]~21_combout\ & \dp|Mem_A[7]~19_combout\ & \dp|Mem_A[6]~17_combout\
& \dp|Mem_A[5]~15_combout\ & \dp|Mem_A[4]~13_combout\ & \dp|Mem_A[3]~11_combout\ & \dp|Mem_A[2]~9_combout\ & \dp|Mem_A[1]~7_combout\ & \dp|Mem_A[0]~5_combout\);

\dp|mem|ram_rtl_0|auto_generated|ram_block1a43~portadataout\ <= \dp|mem|ram_rtl_0|auto_generated|ram_block1a43_PORTADATAOUT_bus\(0);

\dp|mem|ram_rtl_0|auto_generated|ram_block1a28_PORTADATAIN_bus\(0) <= \dp|Mem_din[12]~12_combout\;

\dp|mem|ram_rtl_0|auto_generated|ram_block1a28_PORTAADDR_bus\ <= (\dp|Mem_A[12]~29_combout\ & \dp|Mem_A[11]~27_combout\ & \dp|Mem_A[10]~25_combout\ & \dp|Mem_A[9]~23_combout\ & \dp|Mem_A[8]~21_combout\ & \dp|Mem_A[7]~19_combout\ & \dp|Mem_A[6]~17_combout\
& \dp|Mem_A[5]~15_combout\ & \dp|Mem_A[4]~13_combout\ & \dp|Mem_A[3]~11_combout\ & \dp|Mem_A[2]~9_combout\ & \dp|Mem_A[1]~7_combout\ & \dp|Mem_A[0]~5_combout\);

\dp|mem|ram_rtl_0|auto_generated|ram_block1a28~portadataout\ <= \dp|mem|ram_rtl_0|auto_generated|ram_block1a28_PORTADATAOUT_bus\(0);

\dp|mem|ram_rtl_0|auto_generated|ram_block1a12_PORTADATAIN_bus\(0) <= \dp|Mem_din[12]~12_combout\;

\dp|mem|ram_rtl_0|auto_generated|ram_block1a12_PORTAADDR_bus\ <= (\dp|Mem_A[12]~29_combout\ & \dp|Mem_A[11]~27_combout\ & \dp|Mem_A[10]~25_combout\ & \dp|Mem_A[9]~23_combout\ & \dp|Mem_A[8]~21_combout\ & \dp|Mem_A[7]~19_combout\ & \dp|Mem_A[6]~17_combout\
& \dp|Mem_A[5]~15_combout\ & \dp|Mem_A[4]~13_combout\ & \dp|Mem_A[3]~11_combout\ & \dp|Mem_A[2]~9_combout\ & \dp|Mem_A[1]~7_combout\ & \dp|Mem_A[0]~5_combout\);

\dp|mem|ram_rtl_0|auto_generated|ram_block1a12~portadataout\ <= \dp|mem|ram_rtl_0|auto_generated|ram_block1a12_PORTADATAOUT_bus\(0);

\dp|mem|ram_rtl_0|auto_generated|ram_block1a60_PORTADATAIN_bus\(0) <= \dp|Mem_din[12]~12_combout\;

\dp|mem|ram_rtl_0|auto_generated|ram_block1a60_PORTAADDR_bus\ <= (\dp|Mem_A[12]~29_combout\ & \dp|Mem_A[11]~27_combout\ & \dp|Mem_A[10]~25_combout\ & \dp|Mem_A[9]~23_combout\ & \dp|Mem_A[8]~21_combout\ & \dp|Mem_A[7]~19_combout\ & \dp|Mem_A[6]~17_combout\
& \dp|Mem_A[5]~15_combout\ & \dp|Mem_A[4]~13_combout\ & \dp|Mem_A[3]~11_combout\ & \dp|Mem_A[2]~9_combout\ & \dp|Mem_A[1]~7_combout\ & \dp|Mem_A[0]~5_combout\);

\dp|mem|ram_rtl_0|auto_generated|ram_block1a60~portadataout\ <= \dp|mem|ram_rtl_0|auto_generated|ram_block1a60_PORTADATAOUT_bus\(0);

\dp|mem|ram_rtl_0|auto_generated|ram_block1a44_PORTADATAIN_bus\(0) <= \dp|Mem_din[12]~12_combout\;

\dp|mem|ram_rtl_0|auto_generated|ram_block1a44_PORTAADDR_bus\ <= (\dp|Mem_A[12]~29_combout\ & \dp|Mem_A[11]~27_combout\ & \dp|Mem_A[10]~25_combout\ & \dp|Mem_A[9]~23_combout\ & \dp|Mem_A[8]~21_combout\ & \dp|Mem_A[7]~19_combout\ & \dp|Mem_A[6]~17_combout\
& \dp|Mem_A[5]~15_combout\ & \dp|Mem_A[4]~13_combout\ & \dp|Mem_A[3]~11_combout\ & \dp|Mem_A[2]~9_combout\ & \dp|Mem_A[1]~7_combout\ & \dp|Mem_A[0]~5_combout\);

\dp|mem|ram_rtl_0|auto_generated|ram_block1a44~portadataout\ <= \dp|mem|ram_rtl_0|auto_generated|ram_block1a44_PORTADATAOUT_bus\(0);

\dp|mem|ram_rtl_0|auto_generated|ram_block1a29_PORTADATAIN_bus\(0) <= \dp|Mem_din[13]~13_combout\;

\dp|mem|ram_rtl_0|auto_generated|ram_block1a29_PORTAADDR_bus\ <= (\dp|Mem_A[12]~29_combout\ & \dp|Mem_A[11]~27_combout\ & \dp|Mem_A[10]~25_combout\ & \dp|Mem_A[9]~23_combout\ & \dp|Mem_A[8]~21_combout\ & \dp|Mem_A[7]~19_combout\ & \dp|Mem_A[6]~17_combout\
& \dp|Mem_A[5]~15_combout\ & \dp|Mem_A[4]~13_combout\ & \dp|Mem_A[3]~11_combout\ & \dp|Mem_A[2]~9_combout\ & \dp|Mem_A[1]~7_combout\ & \dp|Mem_A[0]~5_combout\);

\dp|mem|ram_rtl_0|auto_generated|ram_block1a29~portadataout\ <= \dp|mem|ram_rtl_0|auto_generated|ram_block1a29_PORTADATAOUT_bus\(0);

\dp|mem|ram_rtl_0|auto_generated|ram_block1a13_PORTADATAIN_bus\(0) <= \dp|Mem_din[13]~13_combout\;

\dp|mem|ram_rtl_0|auto_generated|ram_block1a13_PORTAADDR_bus\ <= (\dp|Mem_A[12]~29_combout\ & \dp|Mem_A[11]~27_combout\ & \dp|Mem_A[10]~25_combout\ & \dp|Mem_A[9]~23_combout\ & \dp|Mem_A[8]~21_combout\ & \dp|Mem_A[7]~19_combout\ & \dp|Mem_A[6]~17_combout\
& \dp|Mem_A[5]~15_combout\ & \dp|Mem_A[4]~13_combout\ & \dp|Mem_A[3]~11_combout\ & \dp|Mem_A[2]~9_combout\ & \dp|Mem_A[1]~7_combout\ & \dp|Mem_A[0]~5_combout\);

\dp|mem|ram_rtl_0|auto_generated|ram_block1a13~portadataout\ <= \dp|mem|ram_rtl_0|auto_generated|ram_block1a13_PORTADATAOUT_bus\(0);

\dp|mem|ram_rtl_0|auto_generated|ram_block1a61_PORTADATAIN_bus\(0) <= \dp|Mem_din[13]~13_combout\;

\dp|mem|ram_rtl_0|auto_generated|ram_block1a61_PORTAADDR_bus\ <= (\dp|Mem_A[12]~29_combout\ & \dp|Mem_A[11]~27_combout\ & \dp|Mem_A[10]~25_combout\ & \dp|Mem_A[9]~23_combout\ & \dp|Mem_A[8]~21_combout\ & \dp|Mem_A[7]~19_combout\ & \dp|Mem_A[6]~17_combout\
& \dp|Mem_A[5]~15_combout\ & \dp|Mem_A[4]~13_combout\ & \dp|Mem_A[3]~11_combout\ & \dp|Mem_A[2]~9_combout\ & \dp|Mem_A[1]~7_combout\ & \dp|Mem_A[0]~5_combout\);

\dp|mem|ram_rtl_0|auto_generated|ram_block1a61~portadataout\ <= \dp|mem|ram_rtl_0|auto_generated|ram_block1a61_PORTADATAOUT_bus\(0);

\dp|mem|ram_rtl_0|auto_generated|ram_block1a45_PORTADATAIN_bus\(0) <= \dp|Mem_din[13]~13_combout\;

\dp|mem|ram_rtl_0|auto_generated|ram_block1a45_PORTAADDR_bus\ <= (\dp|Mem_A[12]~29_combout\ & \dp|Mem_A[11]~27_combout\ & \dp|Mem_A[10]~25_combout\ & \dp|Mem_A[9]~23_combout\ & \dp|Mem_A[8]~21_combout\ & \dp|Mem_A[7]~19_combout\ & \dp|Mem_A[6]~17_combout\
& \dp|Mem_A[5]~15_combout\ & \dp|Mem_A[4]~13_combout\ & \dp|Mem_A[3]~11_combout\ & \dp|Mem_A[2]~9_combout\ & \dp|Mem_A[1]~7_combout\ & \dp|Mem_A[0]~5_combout\);

\dp|mem|ram_rtl_0|auto_generated|ram_block1a45~portadataout\ <= \dp|mem|ram_rtl_0|auto_generated|ram_block1a45_PORTADATAOUT_bus\(0);

\dp|mem|ram_rtl_0|auto_generated|ram_block1a30_PORTADATAIN_bus\(0) <= \dp|Mem_din[14]~14_combout\;

\dp|mem|ram_rtl_0|auto_generated|ram_block1a30_PORTAADDR_bus\ <= (\dp|Mem_A[12]~29_combout\ & \dp|Mem_A[11]~27_combout\ & \dp|Mem_A[10]~25_combout\ & \dp|Mem_A[9]~23_combout\ & \dp|Mem_A[8]~21_combout\ & \dp|Mem_A[7]~19_combout\ & \dp|Mem_A[6]~17_combout\
& \dp|Mem_A[5]~15_combout\ & \dp|Mem_A[4]~13_combout\ & \dp|Mem_A[3]~11_combout\ & \dp|Mem_A[2]~9_combout\ & \dp|Mem_A[1]~7_combout\ & \dp|Mem_A[0]~5_combout\);

\dp|mem|ram_rtl_0|auto_generated|ram_block1a30~portadataout\ <= \dp|mem|ram_rtl_0|auto_generated|ram_block1a30_PORTADATAOUT_bus\(0);

\dp|mem|ram_rtl_0|auto_generated|ram_block1a14_PORTADATAIN_bus\(0) <= \dp|Mem_din[14]~14_combout\;

\dp|mem|ram_rtl_0|auto_generated|ram_block1a14_PORTAADDR_bus\ <= (\dp|Mem_A[12]~29_combout\ & \dp|Mem_A[11]~27_combout\ & \dp|Mem_A[10]~25_combout\ & \dp|Mem_A[9]~23_combout\ & \dp|Mem_A[8]~21_combout\ & \dp|Mem_A[7]~19_combout\ & \dp|Mem_A[6]~17_combout\
& \dp|Mem_A[5]~15_combout\ & \dp|Mem_A[4]~13_combout\ & \dp|Mem_A[3]~11_combout\ & \dp|Mem_A[2]~9_combout\ & \dp|Mem_A[1]~7_combout\ & \dp|Mem_A[0]~5_combout\);

\dp|mem|ram_rtl_0|auto_generated|ram_block1a14~portadataout\ <= \dp|mem|ram_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\(0);

\dp|mem|ram_rtl_0|auto_generated|ram_block1a62_PORTADATAIN_bus\(0) <= \dp|Mem_din[14]~14_combout\;

\dp|mem|ram_rtl_0|auto_generated|ram_block1a62_PORTAADDR_bus\ <= (\dp|Mem_A[12]~29_combout\ & \dp|Mem_A[11]~27_combout\ & \dp|Mem_A[10]~25_combout\ & \dp|Mem_A[9]~23_combout\ & \dp|Mem_A[8]~21_combout\ & \dp|Mem_A[7]~19_combout\ & \dp|Mem_A[6]~17_combout\
& \dp|Mem_A[5]~15_combout\ & \dp|Mem_A[4]~13_combout\ & \dp|Mem_A[3]~11_combout\ & \dp|Mem_A[2]~9_combout\ & \dp|Mem_A[1]~7_combout\ & \dp|Mem_A[0]~5_combout\);

\dp|mem|ram_rtl_0|auto_generated|ram_block1a62~portadataout\ <= \dp|mem|ram_rtl_0|auto_generated|ram_block1a62_PORTADATAOUT_bus\(0);

\dp|mem|ram_rtl_0|auto_generated|ram_block1a46_PORTADATAIN_bus\(0) <= \dp|Mem_din[14]~14_combout\;

\dp|mem|ram_rtl_0|auto_generated|ram_block1a46_PORTAADDR_bus\ <= (\dp|Mem_A[12]~29_combout\ & \dp|Mem_A[11]~27_combout\ & \dp|Mem_A[10]~25_combout\ & \dp|Mem_A[9]~23_combout\ & \dp|Mem_A[8]~21_combout\ & \dp|Mem_A[7]~19_combout\ & \dp|Mem_A[6]~17_combout\
& \dp|Mem_A[5]~15_combout\ & \dp|Mem_A[4]~13_combout\ & \dp|Mem_A[3]~11_combout\ & \dp|Mem_A[2]~9_combout\ & \dp|Mem_A[1]~7_combout\ & \dp|Mem_A[0]~5_combout\);

\dp|mem|ram_rtl_0|auto_generated|ram_block1a46~portadataout\ <= \dp|mem|ram_rtl_0|auto_generated|ram_block1a46_PORTADATAOUT_bus\(0);

\dp|mem|ram_rtl_0|auto_generated|ram_block1a31_PORTADATAIN_bus\(0) <= \dp|Mem_din[15]~15_combout\;

\dp|mem|ram_rtl_0|auto_generated|ram_block1a31_PORTAADDR_bus\ <= (\dp|Mem_A[12]~29_combout\ & \dp|Mem_A[11]~27_combout\ & \dp|Mem_A[10]~25_combout\ & \dp|Mem_A[9]~23_combout\ & \dp|Mem_A[8]~21_combout\ & \dp|Mem_A[7]~19_combout\ & \dp|Mem_A[6]~17_combout\
& \dp|Mem_A[5]~15_combout\ & \dp|Mem_A[4]~13_combout\ & \dp|Mem_A[3]~11_combout\ & \dp|Mem_A[2]~9_combout\ & \dp|Mem_A[1]~7_combout\ & \dp|Mem_A[0]~5_combout\);

\dp|mem|ram_rtl_0|auto_generated|ram_block1a31~portadataout\ <= \dp|mem|ram_rtl_0|auto_generated|ram_block1a31_PORTADATAOUT_bus\(0);

\dp|mem|ram_rtl_0|auto_generated|ram_block1a15_PORTADATAIN_bus\(0) <= \dp|Mem_din[15]~15_combout\;

\dp|mem|ram_rtl_0|auto_generated|ram_block1a15_PORTAADDR_bus\ <= (\dp|Mem_A[12]~29_combout\ & \dp|Mem_A[11]~27_combout\ & \dp|Mem_A[10]~25_combout\ & \dp|Mem_A[9]~23_combout\ & \dp|Mem_A[8]~21_combout\ & \dp|Mem_A[7]~19_combout\ & \dp|Mem_A[6]~17_combout\
& \dp|Mem_A[5]~15_combout\ & \dp|Mem_A[4]~13_combout\ & \dp|Mem_A[3]~11_combout\ & \dp|Mem_A[2]~9_combout\ & \dp|Mem_A[1]~7_combout\ & \dp|Mem_A[0]~5_combout\);

\dp|mem|ram_rtl_0|auto_generated|ram_block1a15~portadataout\ <= \dp|mem|ram_rtl_0|auto_generated|ram_block1a15_PORTADATAOUT_bus\(0);

\dp|mem|ram_rtl_0|auto_generated|ram_block1a63_PORTADATAIN_bus\(0) <= \dp|Mem_din[15]~15_combout\;

\dp|mem|ram_rtl_0|auto_generated|ram_block1a63_PORTAADDR_bus\ <= (\dp|Mem_A[12]~29_combout\ & \dp|Mem_A[11]~27_combout\ & \dp|Mem_A[10]~25_combout\ & \dp|Mem_A[9]~23_combout\ & \dp|Mem_A[8]~21_combout\ & \dp|Mem_A[7]~19_combout\ & \dp|Mem_A[6]~17_combout\
& \dp|Mem_A[5]~15_combout\ & \dp|Mem_A[4]~13_combout\ & \dp|Mem_A[3]~11_combout\ & \dp|Mem_A[2]~9_combout\ & \dp|Mem_A[1]~7_combout\ & \dp|Mem_A[0]~5_combout\);

\dp|mem|ram_rtl_0|auto_generated|ram_block1a63~portadataout\ <= \dp|mem|ram_rtl_0|auto_generated|ram_block1a63_PORTADATAOUT_bus\(0);

\dp|mem|ram_rtl_0|auto_generated|ram_block1a47_PORTADATAIN_bus\(0) <= \dp|Mem_din[15]~15_combout\;

\dp|mem|ram_rtl_0|auto_generated|ram_block1a47_PORTAADDR_bus\ <= (\dp|Mem_A[12]~29_combout\ & \dp|Mem_A[11]~27_combout\ & \dp|Mem_A[10]~25_combout\ & \dp|Mem_A[9]~23_combout\ & \dp|Mem_A[8]~21_combout\ & \dp|Mem_A[7]~19_combout\ & \dp|Mem_A[6]~17_combout\
& \dp|Mem_A[5]~15_combout\ & \dp|Mem_A[4]~13_combout\ & \dp|Mem_A[3]~11_combout\ & \dp|Mem_A[2]~9_combout\ & \dp|Mem_A[1]~7_combout\ & \dp|Mem_A[0]~5_combout\);

\dp|mem|ram_rtl_0|auto_generated|ram_block1a47~portadataout\ <= \dp|mem|ram_rtl_0|auto_generated|ram_block1a47_PORTADATAOUT_bus\(0);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

-- Location: IOOBUF_X23_Y34_N16
\x[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|ir|Dout\(0),
	devoe => ww_devoe,
	o => \x[0]~output_o\);

-- Location: IOOBUF_X40_Y34_N9
\x[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|ir|Dout\(1),
	devoe => ww_devoe,
	o => \x[1]~output_o\);

-- Location: IOOBUF_X29_Y34_N16
\x[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|ir|Dout\(2),
	devoe => ww_devoe,
	o => \x[2]~output_o\);

-- Location: IOOBUF_X20_Y34_N9
\x[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|ir|Dout\(3),
	devoe => ww_devoe,
	o => \x[3]~output_o\);

-- Location: IOOBUF_X34_Y34_N2
\x[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|ir|Dout\(4),
	devoe => ww_devoe,
	o => \x[4]~output_o\);

-- Location: IOOBUF_X38_Y34_N16
\x[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|ir|Dout\(5),
	devoe => ww_devoe,
	o => \x[5]~output_o\);

-- Location: IOOBUF_X23_Y34_N23
\x[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|ir|Dout\(6),
	devoe => ww_devoe,
	o => \x[6]~output_o\);

-- Location: IOOBUF_X31_Y34_N9
\x[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|ir|Dout\(7),
	devoe => ww_devoe,
	o => \x[7]~output_o\);

-- Location: IOOBUF_X43_Y34_N23
\x[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|ir|Dout\(8),
	devoe => ww_devoe,
	o => \x[8]~output_o\);

-- Location: IOOBUF_X0_Y23_N23
\x[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|ir|Dout\(9),
	devoe => ww_devoe,
	o => \x[9]~output_o\);

-- Location: IOOBUF_X53_Y22_N2
\x[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|ir|Dout\(10),
	devoe => ww_devoe,
	o => \x[10]~output_o\);

-- Location: IOOBUF_X20_Y34_N16
\x[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|ir|Dout\(11),
	devoe => ww_devoe,
	o => \x[11]~output_o\);

-- Location: IOOBUF_X31_Y34_N2
\x[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|ir|Dout\(12),
	devoe => ww_devoe,
	o => \x[12]~output_o\);

-- Location: IOOBUF_X34_Y34_N16
\x[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|ir|Dout\(13),
	devoe => ww_devoe,
	o => \x[13]~output_o\);

-- Location: IOOBUF_X34_Y34_N9
\x[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|ir|Dout\(14),
	devoe => ww_devoe,
	o => \x[14]~output_o\);

-- Location: IOOBUF_X53_Y24_N23
\x[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp|ir|Dout\(15),
	devoe => ww_devoe,
	o => \x[15]~output_o\);

-- Location: IOIBUF_X0_Y16_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X40_Y34_N1
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: LCCOMB_X32_Y17_N26
\dp|mem|ram_rtl_0|auto_generated|address_reg_a[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|mem|ram_rtl_0|auto_generated|address_reg_a[1]~feeder_combout\ = \dp|Mem_A[14]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dp|Mem_A[14]~3_combout\,
	combout => \dp|mem|ram_rtl_0|auto_generated|address_reg_a[1]~feeder_combout\);

-- Location: FF_X32_Y17_N27
\dp|mem|ram_rtl_0|auto_generated|address_reg_a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp|mem|ram_rtl_0|auto_generated|address_reg_a[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|mem|ram_rtl_0|auto_generated|address_reg_a\(1));

-- Location: LCCOMB_X32_Y17_N2
\dp|mem|ram_rtl_0|auto_generated|decode3|w_anode423w[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|mem|ram_rtl_0|auto_generated|decode3|w_anode423w[2]~4_combout\ = (!\dp|Mem_A[14]~3_combout\ & (!\dp|Mem_A[13]~1_combout\ & ((\cp|state.s10~q\) # (\cp|state.s6~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Mem_A[14]~3_combout\,
	datab => \cp|state.s10~q\,
	datac => \cp|state.s6~q\,
	datad => \dp|Mem_A[13]~1_combout\,
	combout => \dp|mem|ram_rtl_0|auto_generated|decode3|w_anode423w[2]~4_combout\);

-- Location: LCCOMB_X30_Y19_N6
\dp|Mem_din[13]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Mem_din[13]~13_combout\ = (\cp|state.s6~q\ & ((\dp|t2|Dout\(13)))) # (!\cp|state.s6~q\ & (\dp|t3|Dout\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp|state.s6~q\,
	datac => \dp|t3|Dout\(13),
	datad => \dp|t2|Dout\(13),
	combout => \dp|Mem_din[13]~13_combout\);

-- Location: LCCOMB_X34_Y23_N30
\cp|Selector16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \cp|Selector16~1_combout\ = (\dp|ir|Dout\(14) & (!\dp|ir|Dout\(15) & (\dp|ir|Dout\(13) & !\dp|ir|Dout\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ir|Dout\(14),
	datab => \dp|ir|Dout\(15),
	datac => \dp|ir|Dout\(13),
	datad => \dp|ir|Dout\(12),
	combout => \cp|Selector16~1_combout\);

-- Location: LCCOMB_X36_Y20_N22
\cp|state~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \cp|state~24_combout\ = (!\reset~input_o\ & (!\cp|state.s3~q\ & ((\cp|Selector16~1_combout\) # (!\cp|state.s15~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \cp|Selector16~1_combout\,
	datac => \cp|state.s15~q\,
	datad => \cp|state.s3~q\,
	combout => \cp|state~24_combout\);

-- Location: FF_X36_Y20_N23
\cp|state.s0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cp|state~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp|state.s0~q\);

-- Location: LCCOMB_X36_Y20_N8
\cp|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cp|Selector1~0_combout\ = ((!\dp|pr_enc|v~1_combout\ & \cp|state.s7~q\)) # (!\cp|state.s0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp|state.s0~q\,
	datac => \dp|pr_enc|v~1_combout\,
	datad => \cp|state.s7~q\,
	combout => \cp|Selector1~0_combout\);

-- Location: FF_X36_Y20_N9
\cp|state.s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cp|Selector1~0_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp|state.s1~q\);

-- Location: LCCOMB_X29_Y19_N0
\cp|M11[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cp|M11[0]~0_combout\ = (\cp|state.s1~q\) # (\cp|state.s9~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cp|state.s1~q\,
	datac => \cp|state.s9~q\,
	combout => \cp|M11[0]~0_combout\);

-- Location: LCCOMB_X34_Y23_N28
\cp|M5[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cp|M5[1]~0_combout\ = (!\dp|ir|Dout\(14) & (!\dp|ir|Dout\(15) & (\dp|ir|Dout\(13) & \dp|ir|Dout\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ir|Dout\(14),
	datab => \dp|ir|Dout\(15),
	datac => \dp|ir|Dout\(13),
	datad => \dp|ir|Dout\(12),
	combout => \cp|M5[1]~0_combout\);

-- Location: LCCOMB_X30_Y22_N26
\cp|M5[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \cp|M5[1]~1_combout\ = (\cp|state.s3~q\ & \cp|M5[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cp|state.s3~q\,
	datad => \cp|M5[1]~0_combout\,
	combout => \cp|M5[1]~1_combout\);

-- Location: LCCOMB_X34_Y23_N22
\cp|ZEn_var~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cp|ZEn_var~0_combout\ = (!\dp|ir|Dout\(15) & (!\dp|ir|Dout\(13) & (\dp|ir|Dout\(14) $ (\dp|ir|Dout\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ir|Dout\(14),
	datab => \dp|ir|Dout\(15),
	datac => \dp|ir|Dout\(13),
	datad => \dp|ir|Dout\(12),
	combout => \cp|ZEn_var~0_combout\);

-- Location: LCCOMB_X32_Y23_N0
\cp|Equal8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cp|Equal8~0_combout\ = (!\dp|ir|Dout\(14) & (!\dp|ir|Dout\(15) & !\dp|ir|Dout\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ir|Dout\(14),
	datac => \dp|ir|Dout\(15),
	datad => \dp|ir|Dout\(12),
	combout => \cp|Equal8~0_combout\);

-- Location: LCCOMB_X35_Y20_N20
\cp|Selector23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cp|Selector23~0_combout\ = (\cp|state.s3~q\ & ((\cp|ZEn_var~0_combout\) # (\cp|Equal8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp|ZEn_var~0_combout\,
	datab => \cp|Equal8~0_combout\,
	datac => \cp|state.s3~q\,
	combout => \cp|Selector23~0_combout\);

-- Location: LCCOMB_X35_Y20_N30
\dp|Equal5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Equal5~0_combout\ = (\cp|M5[1]~0_combout\ & (!\cp|state.s3~q\ & ((\cp|Selector23~0_combout\) # (\cp|state.s8~q\)))) # (!\cp|M5[1]~0_combout\ & ((\cp|Selector23~0_combout\) # ((\cp|state.s8~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp|M5[1]~0_combout\,
	datab => \cp|Selector23~0_combout\,
	datac => \cp|state.s3~q\,
	datad => \cp|state.s8~q\,
	combout => \dp|Equal5~0_combout\);

-- Location: LCCOMB_X34_Y23_N12
\cp|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cp|process_0~0_combout\ = (!\dp|ir|Dout\(15) & (!\dp|ir|Dout\(13) & ((\dp|ir|Dout\(14)) # (\dp|ir|Dout\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ir|Dout\(14),
	datab => \dp|ir|Dout\(15),
	datac => \dp|ir|Dout\(13),
	datad => \dp|ir|Dout\(12),
	combout => \cp|process_0~0_combout\);

-- Location: LCCOMB_X36_Y23_N0
\cp|state~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \cp|state~25_combout\ = (!\dp|ir|Dout\(12) & !\dp|ir|Dout\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ir|Dout\(12),
	datac => \dp|ir|Dout\(14),
	combout => \cp|state~25_combout\);

-- Location: LCCOMB_X36_Y23_N2
\cp|Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \cp|Selector2~1_combout\ = (\cp|state~25_combout\ & (\dp|ir|Dout\(0) & (\dp|ir|Dout\(1) & !\dp|ir|Dout\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp|state~25_combout\,
	datab => \dp|ir|Dout\(0),
	datac => \dp|ir|Dout\(1),
	datad => \dp|ir|Dout\(15),
	combout => \cp|Selector2~1_combout\);

-- Location: LCCOMB_X36_Y23_N24
\cp|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cp|Selector2~0_combout\ = (\dp|ir|Dout\(15) & ((\dp|ir|Dout\(13)) # ((\dp|ir|Dout\(12) & \dp|ir|Dout\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ir|Dout\(15),
	datab => \dp|ir|Dout\(13),
	datac => \dp|ir|Dout\(12),
	datad => \dp|ir|Dout\(14),
	combout => \cp|Selector2~0_combout\);

-- Location: LCCOMB_X36_Y23_N18
\cp|Selector2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \cp|Selector2~2_combout\ = (\cp|state.s1~q\) # ((\cp|state.s2~q\ & ((\cp|Selector2~1_combout\) # (\cp|Selector2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp|state.s1~q\,
	datab => \cp|Selector2~1_combout\,
	datac => \cp|state.s2~q\,
	datad => \cp|Selector2~0_combout\,
	combout => \cp|Selector2~2_combout\);

-- Location: FF_X36_Y23_N19
\cp|state.s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cp|Selector2~2_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp|state.s2~q\);

-- Location: LCCOMB_X35_Y23_N10
\cp|M10[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \cp|M10\(1) = (\cp|state.s10~q\) # (\cp|state.s8~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cp|state.s10~q\,
	datac => \cp|state.s8~q\,
	combout => \cp|M10\(1));

-- Location: LCCOMB_X36_Y23_N4
\dp|T4_in[7]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|T4_in[7]~2_combout\ = (\dp|ir|Dout\(15)) # ((\dp|ir|Dout\(14)) # ((!\dp|ir|Dout\(13) & \dp|ir|Dout\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ir|Dout\(15),
	datab => \dp|ir|Dout\(13),
	datac => \dp|ir|Dout\(12),
	datad => \dp|ir|Dout\(14),
	combout => \dp|T4_in[7]~2_combout\);

-- Location: LCCOMB_X35_Y23_N20
\dp|Equal8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Equal8~0_combout\ = (\cp|M10\(1)) # ((\cp|process_0~0_combout\ & (\cp|state.s2~q\ & \dp|T4_in[7]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp|process_0~0_combout\,
	datab => \cp|state.s2~q\,
	datac => \cp|M10\(1),
	datad => \dp|T4_in[7]~2_combout\,
	combout => \dp|Equal8~0_combout\);

-- Location: LCCOMB_X35_Y23_N16
\dp|T4_in[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|T4_in[1]~9_combout\ = (\dp|ir|Dout\(1) & \dp|Equal8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ir|Dout\(1),
	datad => \dp|Equal8~0_combout\,
	combout => \dp|T4_in[1]~9_combout\);

-- Location: LCCOMB_X36_Y23_N22
\cp|Selector21~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \cp|Selector21~2_combout\ = (!\dp|ir|Dout\(15) & (\cp|state.s2~q\ & ((\dp|ir|Dout\(12)) # (\dp|ir|Dout\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ir|Dout\(12),
	datab => \dp|ir|Dout\(14),
	datac => \dp|ir|Dout\(15),
	datad => \cp|state.s2~q\,
	combout => \cp|Selector21~2_combout\);

-- Location: FF_X35_Y23_N17
\dp|t4|Dout[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp|T4_in[1]~9_combout\,
	ena => \cp|Selector21~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|t4|Dout\(1));

-- Location: LCCOMB_X34_Y23_N14
\cp|state~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \cp|state~37_combout\ = (!\reset~input_o\ & (\dp|ir|Dout\(15) & (!\dp|ir|Dout\(13) & \cp|state.s2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \dp|ir|Dout\(15),
	datac => \dp|ir|Dout\(13),
	datad => \cp|state.s2~q\,
	combout => \cp|state~37_combout\);

-- Location: LCCOMB_X34_Y23_N24
\cp|state~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \cp|state~40_combout\ = (!\dp|ir|Dout\(14) & (\cp|state~37_combout\ & !\dp|ir|Dout\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ir|Dout\(14),
	datac => \cp|state~37_combout\,
	datad => \dp|ir|Dout\(12),
	combout => \cp|state~40_combout\);

-- Location: FF_X34_Y23_N25
\cp|state.s13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cp|state~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp|state.s13~q\);

-- Location: LCCOMB_X34_Y23_N0
\cp|state~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \cp|state~38_combout\ = (!\dp|ir|Dout\(14) & (\cp|state~37_combout\ & \dp|ir|Dout\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ir|Dout\(14),
	datac => \cp|state~37_combout\,
	datad => \dp|ir|Dout\(12),
	combout => \cp|state~38_combout\);

-- Location: FF_X34_Y23_N1
\cp|state.s14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cp|state~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp|state.s14~q\);

-- Location: LCCOMB_X36_Y20_N26
\cp|WideOr22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cp|WideOr22~0_combout\ = (\cp|state.s3~q\) # ((\cp|state.s13~q\) # ((\cp|state.s14~q\) # (\cp|state.s8~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp|state.s3~q\,
	datab => \cp|state.s13~q\,
	datac => \cp|state.s14~q\,
	datad => \cp|state.s8~q\,
	combout => \cp|WideOr22~0_combout\);

-- Location: LCCOMB_X34_Y23_N2
\cp|Equal8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \cp|Equal8~1_combout\ = (!\dp|ir|Dout\(14) & (!\dp|ir|Dout\(15) & (!\dp|ir|Dout\(13) & \dp|ir|Dout\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ir|Dout\(14),
	datab => \dp|ir|Dout\(15),
	datac => \dp|ir|Dout\(13),
	datad => \dp|ir|Dout\(12),
	combout => \cp|Equal8~1_combout\);

-- Location: LCCOMB_X31_Y24_N10
\cp|M4[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cp|M4[0]~0_combout\ = (\cp|state.s3~q\ & ((\cp|Equal8~0_combout\) # (\cp|Equal8~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp|Equal8~0_combout\,
	datac => \cp|state.s3~q\,
	datad => \cp|Equal8~1_combout\,
	combout => \cp|M4[0]~0_combout\);

-- Location: LCCOMB_X31_Y24_N0
\cp|Selector22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cp|Selector22~0_combout\ = (\cp|state.s8~q\) # ((\cp|Equal8~1_combout\ & \cp|state.s3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cp|Equal8~1_combout\,
	datac => \cp|state.s3~q\,
	datad => \cp|state.s8~q\,
	combout => \cp|Selector22~0_combout\);

-- Location: LCCOMB_X23_Y23_N16
\dp|T4_in[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|T4_in[4]~6_combout\ = (\dp|ir|Dout\(4) & \dp|Equal8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dp|ir|Dout\(4),
	datad => \dp|Equal8~0_combout\,
	combout => \dp|T4_in[4]~6_combout\);

-- Location: FF_X23_Y23_N17
\dp|t4|Dout[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp|T4_in[4]~6_combout\,
	ena => \cp|Selector21~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|t4|Dout\(4));

-- Location: LCCOMB_X30_Y22_N24
\dp|RF_D3[4]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|RF_D3[4]~28_combout\ = (!\cp|M5[1]~1_combout\ & ((\dp|Equal5~0_combout\ & (\dp|t3|Dout\(4))) # (!\dp|Equal5~0_combout\ & ((\dp|pc|Dout\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp|M5[1]~1_combout\,
	datab => \dp|Equal5~0_combout\,
	datac => \dp|t3|Dout\(4),
	datad => \dp|pc|Dout\(4),
	combout => \dp|RF_D3[4]~28_combout\);

-- Location: LCCOMB_X29_Y22_N4
\dp|rf|reg~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|rf|reg~29_combout\ = (!\reset~input_o\ & ((\dp|RF_D3[4]~28_combout\) # ((\cp|M5[1]~1_combout\ & \dp|t4|Dout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \cp|M5[1]~1_combout\,
	datac => \dp|t4|Dout\(4),
	datad => \dp|RF_D3[4]~28_combout\,
	combout => \dp|rf|reg~29_combout\);

-- Location: LCCOMB_X35_Y23_N30
\dp|T4_in[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|T4_in[5]~5_combout\ = (\dp|ir|Dout\(5) & \dp|Equal8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dp|ir|Dout\(5),
	datad => \dp|Equal8~0_combout\,
	combout => \dp|T4_in[5]~5_combout\);

-- Location: FF_X35_Y23_N31
\dp|t4|Dout[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp|T4_in[5]~5_combout\,
	ena => \cp|Selector21~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|t4|Dout\(5));

-- Location: LCCOMB_X32_Y23_N8
\dp|Equal15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Equal15~0_combout\ = (\dp|ir|Dout\(15)) # (((!\dp|ir|Dout\(14) & !\dp|ir|Dout\(12))) # (!\cp|Selector3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ir|Dout\(15),
	datab => \cp|Selector3~0_combout\,
	datac => \dp|ir|Dout\(14),
	datad => \dp|ir|Dout\(12),
	combout => \dp|Equal15~0_combout\);

-- Location: LCCOMB_X35_Y22_N30
\cp|Selector18~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \cp|Selector18~2_combout\ = (\cp|state.s13~q\) # ((\cp|state.s12~q\) # ((!\cp|Equal8~1_combout\ & \cp|state.s4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp|state.s13~q\,
	datab => \cp|Equal8~1_combout\,
	datac => \cp|state.s12~q\,
	datad => \cp|state.s4~q\,
	combout => \cp|Selector18~2_combout\);

-- Location: LCCOMB_X36_Y20_N24
\cp|M9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cp|M9~0_combout\ = (\cp|state.s10~q\) # (\cp|state.s7~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cp|state.s10~q\,
	datad => \cp|state.s7~q\,
	combout => \cp|M9~0_combout\);

-- Location: LCCOMB_X35_Y22_N2
\cp|Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cp|Selector17~0_combout\ = (\cp|M9~0_combout\) # (((\cp|state.s4~q\ & \cp|Equal8~1_combout\)) # (!\cp|WideOr18~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp|M9~0_combout\,
	datab => \cp|WideOr18~0_combout\,
	datac => \cp|state.s4~q\,
	datad => \cp|Equal8~1_combout\,
	combout => \cp|Selector17~0_combout\);

-- Location: LCCOMB_X34_Y20_N10
\dp|Alu_1[12]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Alu_1[12]~2_combout\ = (\cp|Selector18~2_combout\ & ((\dp|t1|Dout\(12)) # ((\cp|Selector17~0_combout\)))) # (!\cp|Selector18~2_combout\ & (((\dp|rf|reg[7][12]~q\ & !\cp|Selector17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp|Selector18~2_combout\,
	datab => \dp|t1|Dout\(12),
	datac => \dp|rf|reg[7][12]~q\,
	datad => \cp|Selector17~0_combout\,
	combout => \dp|Alu_1[12]~2_combout\);

-- Location: LCCOMB_X32_Y17_N8
\dp|mem|ram_rtl_0|auto_generated|decode3|w_anode444w[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|mem|ram_rtl_0|auto_generated|decode3|w_anode444w[2]~0_combout\ = (\dp|Mem_A[14]~3_combout\ & (!\dp|Mem_A[13]~1_combout\ & ((\cp|state.s10~q\) # (\cp|state.s6~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Mem_A[14]~3_combout\,
	datab => \cp|state.s10~q\,
	datac => \cp|state.s6~q\,
	datad => \dp|Mem_A[13]~1_combout\,
	combout => \dp|mem|ram_rtl_0|auto_generated|decode3|w_anode444w[2]~0_combout\);

-- Location: LCCOMB_X32_Y17_N30
\dp|mem|ram_rtl_0|auto_generated|rden_decode|w_anode484w[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|mem|ram_rtl_0|auto_generated|rden_decode|w_anode484w[2]~4_combout\ = (!\dp|Mem_A[13]~1_combout\ & ((\dp|Mem_A[14]~2_combout\) # ((\dp|t2|Dout\(14) & \dp|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Mem_A[13]~1_combout\,
	datab => \dp|t2|Dout\(14),
	datac => \dp|Equal1~0_combout\,
	datad => \dp|Mem_A[14]~2_combout\,
	combout => \dp|mem|ram_rtl_0|auto_generated|rden_decode|w_anode484w[2]~4_combout\);

-- Location: LCCOMB_X35_Y23_N2
\dp|t4|Dout[8]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|t4|Dout[8]~4_combout\ = (\dp|Equal8~0_combout\ & (\dp|SE_out[14]~0_combout\)) # (!\dp|Equal8~0_combout\ & ((\dp|ir|Dout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|SE_out[14]~0_combout\,
	datab => \dp|ir|Dout\(1),
	datad => \dp|Equal8~0_combout\,
	combout => \dp|t4|Dout[8]~4_combout\);

-- Location: LCCOMB_X35_Y23_N24
\dp|T4_in[7]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|T4_in[7]~3_combout\ = (\cp|process_0~0_combout\ & (\cp|state.s2~q\ & \dp|T4_in[7]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp|process_0~0_combout\,
	datab => \cp|state.s2~q\,
	datad => \dp|T4_in[7]~2_combout\,
	combout => \dp|T4_in[7]~3_combout\);

-- Location: LCCOMB_X35_Y23_N8
\dp|SE_out[7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|SE_out[7]~1_combout\ = (\cp|state.s13~q\ & ((\dp|ir|Dout\(7)))) # (!\cp|state.s13~q\ & (\dp|ir|Dout\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dp|ir|Dout\(5),
	datac => \dp|ir|Dout\(7),
	datad => \cp|state.s13~q\,
	combout => \dp|SE_out[7]~1_combout\);

-- Location: LCCOMB_X35_Y23_N12
\dp|T4_in[7]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|T4_in[7]~4_combout\ = (\dp|ir|Dout\(0) & (((\dp|T4_in[7]~3_combout\ & \dp|SE_out[7]~1_combout\)) # (!\dp|Equal8~0_combout\))) # (!\dp|ir|Dout\(0) & (\dp|T4_in[7]~3_combout\ & (\dp|SE_out[7]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ir|Dout\(0),
	datab => \dp|T4_in[7]~3_combout\,
	datac => \dp|SE_out[7]~1_combout\,
	datad => \dp|Equal8~0_combout\,
	combout => \dp|T4_in[7]~4_combout\);

-- Location: LCCOMB_X35_Y23_N6
\cp|Selector21~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \cp|Selector21~3_combout\ = (\cp|state.s10~q\) # ((\cp|state.s8~q\) # (\cp|Selector21~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cp|state.s10~q\,
	datac => \cp|state.s8~q\,
	datad => \cp|Selector21~2_combout\,
	combout => \cp|Selector21~3_combout\);

-- Location: FF_X35_Y23_N13
\dp|t4|Dout[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp|T4_in[7]~4_combout\,
	ena => \cp|Selector21~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|t4|Dout\(7));

-- Location: LCCOMB_X35_Y23_N18
\dp|pr_enc|d[8]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|pr_enc|d[8]~5_combout\ = (\dp|t4|Dout\(7) & \dp|t4|Dout\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|t4|Dout\(7),
	datad => \dp|t4|Dout\(8),
	combout => \dp|pr_enc|d[8]~5_combout\);

-- Location: FF_X35_Y23_N3
\dp|t4|Dout[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp|t4|Dout[8]~4_combout\,
	asdata => \dp|pr_enc|d[8]~5_combout\,
	sload => \cp|M10\(1),
	ena => \cp|Selector21~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|t4|Dout\(8));

-- Location: LCCOMB_X28_Y22_N20
\dp|rf|Decoder0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|rf|Decoder0~4_combout\ = (\cp|WideOr22~0_combout\ & (\dp|RF_A3[1]~1_combout\ & (!\dp|RF_A3[2]~5_combout\ & !\dp|RF_A3[0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp|WideOr22~0_combout\,
	datab => \dp|RF_A3[1]~1_combout\,
	datac => \dp|RF_A3[2]~5_combout\,
	datad => \dp|RF_A3[0]~3_combout\,
	combout => \dp|rf|Decoder0~4_combout\);

-- Location: LCCOMB_X28_Y22_N30
\dp|rf|reg[2][6]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|rf|reg[2][6]~20_combout\ = (\reset~input_o\) # (\dp|rf|Decoder0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \dp|rf|Decoder0~4_combout\,
	combout => \dp|rf|reg[2][6]~20_combout\);

-- Location: FF_X30_Y21_N11
\dp|rf|reg[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dp|rf|reg~27_combout\,
	sload => VCC,
	ena => \dp|rf|reg[2][6]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|reg[2][2]~q\);

-- Location: LCCOMB_X31_Y24_N18
\dp|RF_A1[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|RF_A1[0]~0_combout\ = (\cp|state.s9~q\ & (\dp|pr_enc|a[0]~2_combout\ & (!\dp|t4|Dout\(7)))) # (!\cp|state.s9~q\ & (((\dp|ir|Dout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|pr_enc|a[0]~2_combout\,
	datab => \dp|t4|Dout\(7),
	datac => \cp|state.s9~q\,
	datad => \dp|ir|Dout\(6),
	combout => \dp|RF_A1[0]~0_combout\);

-- Location: FF_X30_Y21_N21
\dp|rf|reg[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dp|rf|reg~27_combout\,
	sload => VCC,
	ena => \dp|rf|reg[0][10]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|reg[0][2]~q\);

-- Location: FF_X29_Y21_N31
\dp|rf|reg[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dp|rf|reg~27_combout\,
	sload => VCC,
	ena => \dp|rf|reg[1][4]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|reg[1][2]~q\);

-- Location: LCCOMB_X30_Y21_N20
\dp|rf|Mux13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|rf|Mux13~2_combout\ = (\dp|RF_A1[0]~0_combout\ & ((\dp|RF_A1[1]~1_combout\) # ((\dp|rf|reg[1][2]~q\)))) # (!\dp|RF_A1[0]~0_combout\ & (!\dp|RF_A1[1]~1_combout\ & (\dp|rf|reg[0][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RF_A1[0]~0_combout\,
	datab => \dp|RF_A1[1]~1_combout\,
	datac => \dp|rf|reg[0][2]~q\,
	datad => \dp|rf|reg[1][2]~q\,
	combout => \dp|rf|Mux13~2_combout\);

-- Location: LCCOMB_X30_Y21_N10
\dp|rf|Mux13~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|rf|Mux13~3_combout\ = (\dp|RF_A1[1]~1_combout\ & ((\dp|rf|Mux13~2_combout\ & (\dp|rf|reg[3][2]~q\)) # (!\dp|rf|Mux13~2_combout\ & ((\dp|rf|reg[2][2]~q\))))) # (!\dp|RF_A1[1]~1_combout\ & (((\dp|rf|Mux13~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|reg[3][2]~q\,
	datab => \dp|RF_A1[1]~1_combout\,
	datac => \dp|rf|reg[2][2]~q\,
	datad => \dp|rf|Mux13~2_combout\,
	combout => \dp|rf|Mux13~3_combout\);

-- Location: LCCOMB_X31_Y24_N30
\dp|RF_A1[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|RF_A1[2]~2_combout\ = (\cp|state.s9~q\ & (\dp|pr_enc|a[2]~6_combout\)) # (!\cp|state.s9~q\ & ((\dp|ir|Dout\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|pr_enc|a[2]~6_combout\,
	datab => \cp|state.s9~q\,
	datac => \dp|ir|Dout\(8),
	combout => \dp|RF_A1[2]~2_combout\);

-- Location: LCCOMB_X23_Y23_N20
\dp|T4_in[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|T4_in[2]~8_combout\ = (\dp|ir|Dout\(2) & \dp|Equal8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dp|ir|Dout\(2),
	datad => \dp|Equal8~0_combout\,
	combout => \dp|T4_in[2]~8_combout\);

-- Location: FF_X23_Y23_N21
\dp|t4|Dout[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp|T4_in[2]~8_combout\,
	ena => \cp|Selector21~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|t4|Dout\(2));

-- Location: LCCOMB_X30_Y22_N10
\dp|RF_D3[2]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|RF_D3[2]~44_combout\ = (\dp|RF_D3[2]~26_combout\) # ((\cp|M5[1]~0_combout\ & (\cp|state.s3~q\ & \dp|t4|Dout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RF_D3[2]~26_combout\,
	datab => \cp|M5[1]~0_combout\,
	datac => \cp|state.s3~q\,
	datad => \dp|t4|Dout\(2),
	combout => \dp|RF_D3[2]~44_combout\);

-- Location: FF_X27_Y22_N1
\dp|t1|Dout[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp|rf|Mux13~4_combout\,
	ena => \cp|state.s2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|t1|Dout\(2));

-- Location: LCCOMB_X35_Y21_N24
\dp|Alu_1[2]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Alu_1[2]~22_combout\ = (\cp|Selector18~2_combout\ & ((\dp|t1|Dout\(2)) # ((\cp|Selector17~0_combout\)))) # (!\cp|Selector18~2_combout\ & (((\dp|rf|reg[7][2]~q\ & !\cp|Selector17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|t1|Dout\(2),
	datab => \dp|rf|reg[7][2]~q\,
	datac => \cp|Selector18~2_combout\,
	datad => \cp|Selector17~0_combout\,
	combout => \dp|Alu_1[2]~22_combout\);

-- Location: LCCOMB_X35_Y21_N2
\dp|Alu_1[2]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Alu_1[2]~23_combout\ = (\dp|Alu_1[2]~22_combout\ & (((\dp|ir|Dout\(2)) # (!\cp|Selector17~0_combout\)))) # (!\dp|Alu_1[2]~22_combout\ & (\dp|t2|Dout\(2) & ((\cp|Selector17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|t2|Dout\(2),
	datab => \dp|Alu_1[2]~22_combout\,
	datac => \dp|ir|Dout\(2),
	datad => \cp|Selector17~0_combout\,
	combout => \dp|Alu_1[2]~23_combout\);

-- Location: LCCOMB_X32_Y23_N4
\cp|Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cp|Selector19~0_combout\ = (!\dp|ir|Dout\(15) & (\cp|Selector3~0_combout\ & ((\dp|ir|Dout\(14)) # (\dp|ir|Dout\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ir|Dout\(15),
	datab => \cp|Selector3~0_combout\,
	datac => \dp|ir|Dout\(14),
	datad => \dp|ir|Dout\(12),
	combout => \cp|Selector19~0_combout\);

-- Location: LCCOMB_X32_Y23_N20
\dp|Alu_2[2]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Alu_2[2]~24_combout\ = (\dp|t4|Dout\(2) & (\cp|Selector19~0_combout\ & !\cp|Equal8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|t4|Dout\(2),
	datac => \cp|Selector19~0_combout\,
	datad => \cp|Equal8~0_combout\,
	combout => \dp|Alu_2[2]~24_combout\);

-- Location: LCCOMB_X32_Y23_N10
\dp|Alu_2[2]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Alu_2[2]~23_combout\ = (\dp|t2|Dout\(2) & (\cp|Equal8~0_combout\ & \cp|state.s4~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|t2|Dout\(2),
	datab => \cp|Equal8~0_combout\,
	datad => \cp|state.s4~q\,
	combout => \dp|Alu_2[2]~23_combout\);

-- Location: LCCOMB_X32_Y23_N22
\dp|Alu_2[2]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Alu_2[2]~25_combout\ = (\dp|Alu_2[2]~24_combout\) # ((\dp|Alu_2[2]~23_combout\) # ((\dp|t3|Dout\(2) & \dp|Alu_2[15]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|t3|Dout\(2),
	datab => \dp|Alu_2[2]~24_combout\,
	datac => \dp|Alu_2[15]~0_combout\,
	datad => \dp|Alu_2[2]~23_combout\,
	combout => \dp|Alu_2[2]~25_combout\);

-- Location: LCCOMB_X32_Y23_N26
\dp|Alu_2[1]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Alu_2[1]~27_combout\ = (!\cp|Equal8~0_combout\ & (\cp|Selector19~0_combout\ & \dp|t4|Dout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cp|Equal8~0_combout\,
	datac => \cp|Selector19~0_combout\,
	datad => \dp|t4|Dout\(1),
	combout => \dp|Alu_2[1]~27_combout\);

-- Location: LCCOMB_X32_Y23_N24
\dp|Alu_2[1]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Alu_2[1]~26_combout\ = (\cp|Equal8~0_combout\ & (\dp|t2|Dout\(1) & \cp|state.s4~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cp|Equal8~0_combout\,
	datac => \dp|t2|Dout\(1),
	datad => \cp|state.s4~q\,
	combout => \dp|Alu_2[1]~26_combout\);

-- Location: LCCOMB_X30_Y19_N30
\dp|T3_in[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|T3_in[1]~8_combout\ = (\cp|M11[0]~0_combout\ & (((!\cp|WideOr19~0_combout\)))) # (!\cp|M11[0]~0_combout\ & ((\cp|WideOr19~0_combout\ & ((\dp|mem|ram_rtl_0|auto_generated|mux2|result_node[1]~3_combout\))) # (!\cp|WideOr19~0_combout\ & 
-- (\dp|pc|Dout[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|pc|Dout[1]~1_combout\,
	datab => \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[1]~3_combout\,
	datac => \cp|M11[0]~0_combout\,
	datad => \cp|WideOr19~0_combout\,
	combout => \dp|T3_in[1]~8_combout\);

-- Location: FF_X27_Y21_N9
\dp|rf|reg[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dp|rf|reg~26_combout\,
	sload => VCC,
	ena => \dp|rf|reg[1][4]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|reg[1][1]~q\);

-- Location: LCCOMB_X28_Y21_N24
\dp|rf|Mux14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|rf|Mux14~2_combout\ = (\dp|RF_A1[0]~0_combout\ & ((\dp|rf|reg[1][1]~q\) # ((\dp|RF_A1[1]~1_combout\)))) # (!\dp|RF_A1[0]~0_combout\ & (((\dp|rf|reg[0][1]~q\ & !\dp|RF_A1[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|reg[1][1]~q\,
	datab => \dp|RF_A1[0]~0_combout\,
	datac => \dp|rf|reg[0][1]~q\,
	datad => \dp|RF_A1[1]~1_combout\,
	combout => \dp|rf|Mux14~2_combout\);

-- Location: FF_X30_Y21_N25
\dp|rf|reg[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dp|rf|reg~26_combout\,
	sload => VCC,
	ena => \dp|rf|reg[2][6]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|reg[2][1]~q\);

-- Location: LCCOMB_X28_Y22_N12
\dp|rf|Decoder0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|rf|Decoder0~7_combout\ = (\cp|WideOr22~0_combout\ & (\dp|RF_A3[1]~1_combout\ & (!\dp|RF_A3[2]~5_combout\ & \dp|RF_A3[0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp|WideOr22~0_combout\,
	datab => \dp|RF_A3[1]~1_combout\,
	datac => \dp|RF_A3[2]~5_combout\,
	datad => \dp|RF_A3[0]~3_combout\,
	combout => \dp|rf|Decoder0~7_combout\);

-- Location: LCCOMB_X29_Y22_N24
\dp|rf|reg[3][7]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|rf|reg[3][7]~23_combout\ = (\dp|rf|Decoder0~7_combout\) # (\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|Decoder0~7_combout\,
	datad => \reset~input_o\,
	combout => \dp|rf|reg[3][7]~23_combout\);

-- Location: FF_X29_Y23_N31
\dp|rf|reg[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp|rf|reg~26_combout\,
	ena => \dp|rf|reg[3][7]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|reg[3][1]~q\);

-- Location: LCCOMB_X30_Y21_N24
\dp|rf|Mux14~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|rf|Mux14~3_combout\ = (\dp|rf|Mux14~2_combout\ & (((\dp|rf|reg[3][1]~q\)) # (!\dp|RF_A1[1]~1_combout\))) # (!\dp|rf|Mux14~2_combout\ & (\dp|RF_A1[1]~1_combout\ & (\dp|rf|reg[2][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|Mux14~2_combout\,
	datab => \dp|RF_A1[1]~1_combout\,
	datac => \dp|rf|reg[2][1]~q\,
	datad => \dp|rf|reg[3][1]~q\,
	combout => \dp|rf|Mux14~3_combout\);

-- Location: LCCOMB_X28_Y22_N8
\dp|rf|Decoder0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|rf|Decoder0~2_combout\ = (\cp|WideOr22~0_combout\ & (\dp|RF_A3[1]~1_combout\ & (\dp|RF_A3[2]~5_combout\ & !\dp|RF_A3[0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp|WideOr22~0_combout\,
	datab => \dp|RF_A3[1]~1_combout\,
	datac => \dp|RF_A3[2]~5_combout\,
	datad => \dp|RF_A3[0]~3_combout\,
	combout => \dp|rf|Decoder0~2_combout\);

-- Location: LCCOMB_X28_Y21_N0
\dp|rf|reg[6][7]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|rf|reg[6][7]~18_combout\ = (\dp|rf|Decoder0~2_combout\) # (\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dp|rf|Decoder0~2_combout\,
	datad => \reset~input_o\,
	combout => \dp|rf|reg[6][7]~18_combout\);

-- Location: FF_X27_Y20_N9
\dp|rf|reg[6][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dp|rf|reg~26_combout\,
	sload => VCC,
	ena => \dp|rf|reg[6][7]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|reg[6][1]~q\);

-- Location: LCCOMB_X28_Y22_N10
\dp|rf|Decoder0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|rf|Decoder0~3_combout\ = (\cp|WideOr22~0_combout\ & (!\dp|RF_A3[1]~1_combout\ & (\dp|RF_A3[2]~5_combout\ & !\dp|RF_A3[0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp|WideOr22~0_combout\,
	datab => \dp|RF_A3[1]~1_combout\,
	datac => \dp|RF_A3[2]~5_combout\,
	datad => \dp|RF_A3[0]~3_combout\,
	combout => \dp|rf|Decoder0~3_combout\);

-- Location: LCCOMB_X29_Y20_N14
\dp|rf|reg[4][14]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|rf|reg[4][14]~19_combout\ = (\dp|rf|Decoder0~3_combout\) # (\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dp|rf|Decoder0~3_combout\,
	datad => \reset~input_o\,
	combout => \dp|rf|reg[4][14]~19_combout\);

-- Location: FF_X27_Y20_N3
\dp|rf|reg[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dp|rf|reg~26_combout\,
	sload => VCC,
	ena => \dp|rf|reg[4][14]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|reg[4][1]~q\);

-- Location: LCCOMB_X27_Y20_N2
\dp|rf|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|rf|Mux14~0_combout\ = (\dp|RF_A1[1]~1_combout\ & ((\dp|rf|reg[6][1]~q\) # ((\dp|RF_A1[0]~0_combout\)))) # (!\dp|RF_A1[1]~1_combout\ & (((\dp|rf|reg[4][1]~q\ & !\dp|RF_A1[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RF_A1[1]~1_combout\,
	datab => \dp|rf|reg[6][1]~q\,
	datac => \dp|rf|reg[4][1]~q\,
	datad => \dp|RF_A1[0]~0_combout\,
	combout => \dp|rf|Mux14~0_combout\);

-- Location: LCCOMB_X28_Y22_N28
\dp|rf|Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|rf|Decoder0~1_combout\ = (\cp|WideOr22~0_combout\ & (!\dp|RF_A3[1]~1_combout\ & (\dp|RF_A3[2]~5_combout\ & \dp|RF_A3[0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp|WideOr22~0_combout\,
	datab => \dp|RF_A3[1]~1_combout\,
	datac => \dp|RF_A3[2]~5_combout\,
	datad => \dp|RF_A3[0]~3_combout\,
	combout => \dp|rf|Decoder0~1_combout\);

-- Location: LCCOMB_X28_Y22_N6
\dp|rf|reg[5][13]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|rf|reg[5][13]~17_combout\ = (\reset~input_o\) # (\dp|rf|Decoder0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \dp|rf|Decoder0~1_combout\,
	combout => \dp|rf|reg[5][13]~17_combout\);

-- Location: FF_X28_Y20_N27
\dp|rf|reg[5][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dp|rf|reg~26_combout\,
	sload => VCC,
	ena => \dp|rf|reg[5][13]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|reg[5][1]~q\);

-- Location: LCCOMB_X28_Y20_N26
\dp|rf|Mux14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|rf|Mux14~1_combout\ = (\dp|rf|Mux14~0_combout\ & ((\dp|rf|reg[7][1]~q\) # ((!\dp|RF_A1[0]~0_combout\)))) # (!\dp|rf|Mux14~0_combout\ & (((\dp|rf|reg[5][1]~q\ & \dp|RF_A1[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|Mux14~0_combout\,
	datab => \dp|rf|reg[7][1]~q\,
	datac => \dp|rf|reg[5][1]~q\,
	datad => \dp|RF_A1[0]~0_combout\,
	combout => \dp|rf|Mux14~1_combout\);

-- Location: LCCOMB_X30_Y19_N14
\dp|rf|Mux14~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|rf|Mux14~4_combout\ = (\dp|RF_A1[2]~2_combout\ & ((\dp|rf|Mux14~1_combout\))) # (!\dp|RF_A1[2]~2_combout\ & (\dp|rf|Mux14~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|Mux14~3_combout\,
	datab => \dp|RF_A1[2]~2_combout\,
	datac => \dp|rf|Mux14~1_combout\,
	combout => \dp|rf|Mux14~4_combout\);

-- Location: LCCOMB_X30_Y19_N10
\dp|T3_in[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|T3_in[1]~9_combout\ = (\cp|M11[0]~0_combout\ & ((\dp|T3_in[1]~8_combout\ & ((\dp|rf|Mux14~4_combout\))) # (!\dp|T3_in[1]~8_combout\ & (\dp|rf|reg[7][1]~q\)))) # (!\cp|M11[0]~0_combout\ & (((\dp|T3_in[1]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|reg[7][1]~q\,
	datab => \cp|M11[0]~0_combout\,
	datac => \dp|T3_in[1]~8_combout\,
	datad => \dp|rf|Mux14~4_combout\,
	combout => \dp|T3_in[1]~9_combout\);

-- Location: LCCOMB_X30_Y18_N10
\cp|WideOr19\ : cycloneive_lcell_comb
-- Equation(s):
-- \cp|WideOr19~combout\ = (\cp|state.s1~q\) # ((\cp|state.s5~q\) # ((\cp|state.s7~q\) # (!\cp|WideOr19~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp|state.s1~q\,
	datab => \cp|state.s5~q\,
	datac => \cp|WideOr19~0_combout\,
	datad => \cp|state.s7~q\,
	combout => \cp|WideOr19~combout\);

-- Location: FF_X30_Y19_N11
\dp|t3|Dout[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp|T3_in[1]~9_combout\,
	ena => \cp|WideOr19~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|t3|Dout\(1));

-- Location: LCCOMB_X32_Y23_N12
\dp|Alu_2[1]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Alu_2[1]~28_combout\ = (\dp|Alu_2[1]~27_combout\) # ((\dp|Alu_2[1]~26_combout\) # ((\dp|Alu_2[15]~0_combout\ & \dp|t3|Dout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Alu_2[1]~27_combout\,
	datab => \dp|Alu_2[1]~26_combout\,
	datac => \dp|Alu_2[15]~0_combout\,
	datad => \dp|t3|Dout\(1),
	combout => \dp|Alu_2[1]~28_combout\);

-- Location: LCCOMB_X30_Y24_N30
\dp|T4_in[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|T4_in[0]~10_combout\ = (\dp|ir|Dout\(0) & \dp|Equal8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dp|ir|Dout\(0),
	datac => \dp|Equal8~0_combout\,
	combout => \dp|T4_in[0]~10_combout\);

-- Location: FF_X30_Y24_N31
\dp|t4|Dout[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp|T4_in[0]~10_combout\,
	ena => \cp|Selector21~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|t4|Dout\(0));

-- Location: LCCOMB_X28_Y19_N8
\dp|t1|Dout[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|t1|Dout[0]~feeder_combout\ = \dp|rf|Mux15~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dp|rf|Mux15~4_combout\,
	combout => \dp|t1|Dout[0]~feeder_combout\);

-- Location: FF_X28_Y19_N9
\dp|t1|Dout[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp|t1|Dout[0]~feeder_combout\,
	ena => \cp|state.s2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|t1|Dout\(0));

-- Location: LCCOMB_X28_Y19_N18
\dp|Alu_1[0]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Alu_1[0]~26_combout\ = (\cp|M9~0_combout\ & (((\cp|state.s4~q\)))) # (!\cp|M9~0_combout\ & ((\cp|state.s4~q\ & ((\dp|t1|Dout\(0)))) # (!\cp|state.s4~q\ & (\dp|rf|reg[7][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|reg[7][0]~q\,
	datab => \dp|t1|Dout\(0),
	datac => \cp|M9~0_combout\,
	datad => \cp|state.s4~q\,
	combout => \dp|Alu_1[0]~26_combout\);

-- Location: LCCOMB_X28_Y19_N28
\dp|Alu_1[0]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Alu_1[0]~27_combout\ = ((\dp|Alu_1[0]~26_combout\ & ((!\cp|state.s4~q\) # (!\cp|Equal8~1_combout\)))) # (!\cp|WideOr18~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp|WideOr18~0_combout\,
	datab => \dp|Alu_1[0]~26_combout\,
	datac => \cp|Equal8~1_combout\,
	datad => \cp|state.s4~q\,
	combout => \dp|Alu_1[0]~27_combout\);

-- Location: FF_X28_Y20_N23
\dp|rf|reg[6][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dp|rf|reg~25_combout\,
	sload => VCC,
	ena => \dp|rf|reg[6][7]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|reg[6][0]~q\);

-- Location: LCCOMB_X29_Y20_N16
\dp|rf|reg[4][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|rf|reg[4][0]~feeder_combout\ = \dp|rf|reg~25_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dp|rf|reg~25_combout\,
	combout => \dp|rf|reg[4][0]~feeder_combout\);

-- Location: FF_X29_Y20_N17
\dp|rf|reg[4][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp|rf|reg[4][0]~feeder_combout\,
	ena => \dp|rf|reg[4][14]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|reg[4][0]~q\);

-- Location: LCCOMB_X29_Y20_N26
\dp|T2_in[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|T2_in[0]~10_combout\ = (\dp|ir|Dout\(9) & (((\dp|ir|Dout\(10))))) # (!\dp|ir|Dout\(9) & ((\dp|ir|Dout\(10) & (\dp|rf|reg[6][0]~q\)) # (!\dp|ir|Dout\(10) & ((\dp|rf|reg[4][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ir|Dout\(9),
	datab => \dp|rf|reg[6][0]~q\,
	datac => \dp|rf|reg[4][0]~q\,
	datad => \dp|ir|Dout\(10),
	combout => \dp|T2_in[0]~10_combout\);

-- Location: FF_X28_Y20_N29
\dp|rf|reg[5][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dp|rf|reg~25_combout\,
	sload => VCC,
	ena => \dp|rf|reg[5][13]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|reg[5][0]~q\);

-- Location: LCCOMB_X28_Y20_N0
\dp|T2_in[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|T2_in[0]~11_combout\ = (\dp|ir|Dout\(9) & ((\dp|T2_in[0]~10_combout\ & (\dp|rf|reg[7][0]~q\)) # (!\dp|T2_in[0]~10_combout\ & ((\dp|rf|reg[5][0]~q\))))) # (!\dp|ir|Dout\(9) & (((\dp|T2_in[0]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ir|Dout\(9),
	datab => \dp|rf|reg[7][0]~q\,
	datac => \dp|T2_in[0]~10_combout\,
	datad => \dp|rf|reg[5][0]~q\,
	combout => \dp|T2_in[0]~11_combout\);

-- Location: LCCOMB_X30_Y24_N6
\dp|t4|Dout[11]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|t4|Dout[11]~1_combout\ = (\dp|Equal8~0_combout\ & (\dp|SE_out[14]~0_combout\)) # (!\dp|Equal8~0_combout\ & ((\dp|ir|Dout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|SE_out[14]~0_combout\,
	datab => \dp|Equal8~0_combout\,
	datad => \dp|ir|Dout\(4),
	combout => \dp|t4|Dout[11]~1_combout\);

-- Location: LCCOMB_X29_Y24_N0
\dp|pr_enc|v~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|pr_enc|v~0_combout\ = (!\dp|t4|Dout\(7) & (!\dp|t4|Dout\(10) & (!\dp|t4|Dout\(9) & !\dp|t4|Dout\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|t4|Dout\(7),
	datab => \dp|t4|Dout\(10),
	datac => \dp|t4|Dout\(9),
	datad => \dp|t4|Dout\(8),
	combout => \dp|pr_enc|v~0_combout\);

-- Location: LCCOMB_X30_Y24_N26
\dp|pr_enc|d[11]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|pr_enc|d[11]~6_combout\ = (!\dp|pr_enc|v~0_combout\ & \dp|t4|Dout\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dp|pr_enc|v~0_combout\,
	datad => \dp|t4|Dout\(11),
	combout => \dp|pr_enc|d[11]~6_combout\);

-- Location: FF_X30_Y24_N7
\dp|t4|Dout[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp|t4|Dout[11]~1_combout\,
	asdata => \dp|pr_enc|d[11]~6_combout\,
	sload => \cp|M10\(1),
	ena => \cp|Selector21~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|t4|Dout\(11));

-- Location: LCCOMB_X31_Y19_N6
\dp|Alu_2[11]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Alu_2[11]~5_combout\ = (\dp|Equal15~0_combout\ & (\dp|t3|Dout\(11) & ((\dp|Alu_2[15]~0_combout\)))) # (!\dp|Equal15~0_combout\ & ((\dp|t4|Dout\(11)) # ((\dp|t3|Dout\(11) & \dp|Alu_2[15]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Equal15~0_combout\,
	datab => \dp|t3|Dout\(11),
	datac => \dp|t4|Dout\(11),
	datad => \dp|Alu_2[15]~0_combout\,
	combout => \dp|Alu_2[11]~5_combout\);

-- Location: LCCOMB_X31_Y19_N10
\dp|RF_D3[11]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|RF_D3[11]~37_combout\ = (!\cp|M5[1]~1_combout\ & ((\dp|Equal5~0_combout\ & (\dp|t3|Dout\(11))) # (!\dp|Equal5~0_combout\ & ((\dp|pc|Dout\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp|M5[1]~1_combout\,
	datab => \dp|t3|Dout\(11),
	datac => \dp|Equal5~0_combout\,
	datad => \dp|pc|Dout\(11),
	combout => \dp|RF_D3[11]~37_combout\);

-- Location: LCCOMB_X28_Y22_N14
\dp|rf|reg~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|rf|reg~36_combout\ = (!\reset~input_o\ & ((\dp|RF_D3[11]~37_combout\) # ((\dp|t4|Dout\(11) & \cp|M5[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|t4|Dout\(11),
	datab => \cp|M5[1]~1_combout\,
	datac => \reset~input_o\,
	datad => \dp|RF_D3[11]~37_combout\,
	combout => \dp|rf|reg~36_combout\);

-- Location: FF_X26_Y21_N25
\dp|rf|reg[4][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dp|rf|reg~36_combout\,
	sload => VCC,
	ena => \dp|rf|reg[4][14]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|reg[4][11]~q\);

-- Location: FF_X26_Y21_N23
\dp|rf|reg[6][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dp|rf|reg~36_combout\,
	sload => VCC,
	ena => \dp|rf|reg[6][7]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|reg[6][11]~q\);

-- Location: LCCOMB_X26_Y21_N22
\dp|T2_in[11]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|T2_in[11]~54_combout\ = (\dp|ir|Dout\(9) & (((\dp|ir|Dout\(10))))) # (!\dp|ir|Dout\(9) & ((\dp|ir|Dout\(10) & ((\dp|rf|reg[6][11]~q\))) # (!\dp|ir|Dout\(10) & (\dp|rf|reg[4][11]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ir|Dout\(9),
	datab => \dp|rf|reg[4][11]~q\,
	datac => \dp|rf|reg[6][11]~q\,
	datad => \dp|ir|Dout\(10),
	combout => \dp|T2_in[11]~54_combout\);

-- Location: FF_X31_Y21_N31
\dp|rf|reg[5][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dp|rf|reg~36_combout\,
	sload => VCC,
	ena => \dp|rf|reg[5][13]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|reg[5][11]~q\);

-- Location: LCCOMB_X28_Y22_N2
\dp|T2_in[11]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|T2_in[11]~55_combout\ = (\dp|ir|Dout\(9) & ((\dp|T2_in[11]~54_combout\ & (\dp|rf|reg[7][11]~q\)) # (!\dp|T2_in[11]~54_combout\ & ((\dp|rf|reg[5][11]~q\))))) # (!\dp|ir|Dout\(9) & (\dp|T2_in[11]~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ir|Dout\(9),
	datab => \dp|T2_in[11]~54_combout\,
	datac => \dp|rf|reg[7][11]~q\,
	datad => \dp|rf|reg[5][11]~q\,
	combout => \dp|T2_in[11]~55_combout\);

-- Location: FF_X27_Y21_N31
\dp|rf|reg[2][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dp|rf|reg~36_combout\,
	sload => VCC,
	ena => \dp|rf|reg[2][6]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|reg[2][11]~q\);

-- Location: FF_X28_Y21_N9
\dp|rf|reg[0][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dp|rf|reg~36_combout\,
	sload => VCC,
	ena => \dp|rf|reg[0][10]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|reg[0][11]~q\);

-- Location: FF_X27_Y21_N25
\dp|rf|reg[1][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dp|rf|reg~36_combout\,
	sload => VCC,
	ena => \dp|rf|reg[1][4]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|reg[1][11]~q\);

-- Location: LCCOMB_X27_Y21_N24
\dp|T2_in[11]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|T2_in[11]~52_combout\ = (\dp|ir|Dout\(9) & (((\dp|rf|reg[1][11]~q\) # (\dp|ir|Dout\(10))))) # (!\dp|ir|Dout\(9) & (\dp|rf|reg[0][11]~q\ & ((!\dp|ir|Dout\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ir|Dout\(9),
	datab => \dp|rf|reg[0][11]~q\,
	datac => \dp|rf|reg[1][11]~q\,
	datad => \dp|ir|Dout\(10),
	combout => \dp|T2_in[11]~52_combout\);

-- Location: FF_X28_Y22_N15
\dp|rf|reg[3][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp|rf|reg~36_combout\,
	ena => \dp|rf|reg[3][7]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|reg[3][11]~q\);

-- Location: LCCOMB_X28_Y22_N24
\dp|T2_in[11]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|T2_in[11]~53_combout\ = (\dp|T2_in[11]~52_combout\ & (((\dp|rf|reg[3][11]~q\) # (!\dp|ir|Dout\(10))))) # (!\dp|T2_in[11]~52_combout\ & (\dp|rf|reg[2][11]~q\ & (\dp|ir|Dout\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|reg[2][11]~q\,
	datab => \dp|T2_in[11]~52_combout\,
	datac => \dp|ir|Dout\(10),
	datad => \dp|rf|reg[3][11]~q\,
	combout => \dp|T2_in[11]~53_combout\);

-- Location: LCCOMB_X28_Y22_N16
\dp|t2|Dout[11]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|t2|Dout[11]~11_combout\ = (\dp|ir|Dout\(11) & (\dp|T2_in[11]~55_combout\)) # (!\dp|ir|Dout\(11) & ((\dp|T2_in[11]~53_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|T2_in[11]~55_combout\,
	datab => \dp|ir|Dout\(11),
	datad => \dp|T2_in[11]~53_combout\,
	combout => \dp|t2|Dout[11]~11_combout\);

-- Location: LCCOMB_X36_Y20_N10
\cp|WideOr20\ : cycloneive_lcell_comb
-- Equation(s):
-- \cp|WideOr20~combout\ = (\cp|state.s10~q\) # ((\cp|state.s2~q\) # (\cp|state.s7~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cp|state.s10~q\,
	datac => \cp|state.s2~q\,
	datad => \cp|state.s7~q\,
	combout => \cp|WideOr20~combout\);

-- Location: FF_X28_Y22_N17
\dp|t2|Dout[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp|t2|Dout[11]~11_combout\,
	asdata => \dp|pc|Dout[11]~11_combout\,
	sload => \cp|M9~0_combout\,
	ena => \cp|WideOr20~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|t2|Dout\(11));

-- Location: LCCOMB_X36_Y23_N28
\dp|Equal16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Equal16~0_combout\ = (!\dp|ir|Dout\(15) & (!\dp|ir|Dout\(14) & (\cp|state.s4~q\ & !\dp|ir|Dout\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ir|Dout\(15),
	datab => \dp|ir|Dout\(14),
	datac => \cp|state.s4~q\,
	datad => \dp|ir|Dout\(12),
	combout => \dp|Equal16~0_combout\);

-- Location: LCCOMB_X31_Y19_N24
\dp|Alu_2[11]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Alu_2[11]~6_combout\ = (\dp|Alu_2[11]~5_combout\) # ((\dp|t2|Dout\(11) & \dp|Equal16~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Alu_2[11]~5_combout\,
	datac => \dp|t2|Dout\(11),
	datad => \dp|Equal16~0_combout\,
	combout => \dp|Alu_2[11]~6_combout\);

-- Location: FF_X27_Y21_N27
\dp|rf|reg[1][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dp|rf|reg~35_combout\,
	sload => VCC,
	ena => \dp|rf|reg[1][4]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|reg[1][10]~q\);

-- Location: LCCOMB_X28_Y21_N6
\dp|rf|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|rf|Mux5~2_combout\ = (\dp|RF_A1[0]~0_combout\ & ((\dp|rf|reg[1][10]~q\) # ((\dp|RF_A1[1]~1_combout\)))) # (!\dp|RF_A1[0]~0_combout\ & (((\dp|rf|reg[0][10]~q\ & !\dp|RF_A1[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|reg[1][10]~q\,
	datab => \dp|RF_A1[0]~0_combout\,
	datac => \dp|rf|reg[0][10]~q\,
	datad => \dp|RF_A1[1]~1_combout\,
	combout => \dp|rf|Mux5~2_combout\);

-- Location: LCCOMB_X29_Y24_N22
\dp|rf|reg[3][10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|rf|reg[3][10]~feeder_combout\ = \dp|rf|reg~35_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dp|rf|reg~35_combout\,
	combout => \dp|rf|reg[3][10]~feeder_combout\);

-- Location: FF_X29_Y24_N23
\dp|rf|reg[3][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp|rf|reg[3][10]~feeder_combout\,
	ena => \dp|rf|reg[3][7]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|reg[3][10]~q\);

-- Location: FF_X27_Y21_N17
\dp|rf|reg[2][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dp|rf|reg~35_combout\,
	sload => VCC,
	ena => \dp|rf|reg[2][6]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|reg[2][10]~q\);

-- Location: LCCOMB_X27_Y21_N16
\dp|rf|Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|rf|Mux5~3_combout\ = (\dp|rf|Mux5~2_combout\ & ((\dp|rf|reg[3][10]~q\) # ((!\dp|RF_A1[1]~1_combout\)))) # (!\dp|rf|Mux5~2_combout\ & (((\dp|rf|reg[2][10]~q\ & \dp|RF_A1[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|Mux5~2_combout\,
	datab => \dp|rf|reg[3][10]~q\,
	datac => \dp|rf|reg[2][10]~q\,
	datad => \dp|RF_A1[1]~1_combout\,
	combout => \dp|rf|Mux5~3_combout\);

-- Location: FF_X26_Y21_N5
\dp|rf|reg[4][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dp|rf|reg~35_combout\,
	sload => VCC,
	ena => \dp|rf|reg[4][14]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|reg[4][10]~q\);

-- Location: FF_X26_Y21_N11
\dp|rf|reg[6][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dp|rf|reg~35_combout\,
	sload => VCC,
	ena => \dp|rf|reg[6][7]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|reg[6][10]~q\);

-- Location: LCCOMB_X26_Y21_N4
\dp|rf|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|rf|Mux5~0_combout\ = (\dp|RF_A1[1]~1_combout\ & ((\dp|RF_A1[0]~0_combout\) # ((\dp|rf|reg[6][10]~q\)))) # (!\dp|RF_A1[1]~1_combout\ & (!\dp|RF_A1[0]~0_combout\ & (\dp|rf|reg[4][10]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RF_A1[1]~1_combout\,
	datab => \dp|RF_A1[0]~0_combout\,
	datac => \dp|rf|reg[4][10]~q\,
	datad => \dp|rf|reg[6][10]~q\,
	combout => \dp|rf|Mux5~0_combout\);

-- Location: FF_X31_Y21_N13
\dp|rf|reg[5][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dp|rf|reg~35_combout\,
	sload => VCC,
	ena => \dp|rf|reg[5][13]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|reg[5][10]~q\);

-- Location: LCCOMB_X31_Y21_N12
\dp|rf|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|rf|Mux5~1_combout\ = (\dp|rf|Mux5~0_combout\ & ((\dp|rf|reg[7][10]~q\) # ((!\dp|RF_A1[0]~0_combout\)))) # (!\dp|rf|Mux5~0_combout\ & (((\dp|rf|reg[5][10]~q\ & \dp|RF_A1[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|Mux5~0_combout\,
	datab => \dp|rf|reg[7][10]~q\,
	datac => \dp|rf|reg[5][10]~q\,
	datad => \dp|RF_A1[0]~0_combout\,
	combout => \dp|rf|Mux5~1_combout\);

-- Location: LCCOMB_X31_Y21_N20
\dp|rf|Mux5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|rf|Mux5~4_combout\ = (\dp|RF_A1[2]~2_combout\ & ((\dp|rf|Mux5~1_combout\))) # (!\dp|RF_A1[2]~2_combout\ & (\dp|rf|Mux5~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|Mux5~3_combout\,
	datab => \dp|RF_A1[2]~2_combout\,
	datad => \dp|rf|Mux5~1_combout\,
	combout => \dp|rf|Mux5~4_combout\);

-- Location: FF_X31_Y21_N21
\dp|t1|Dout[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp|rf|Mux5~4_combout\,
	ena => \cp|state.s2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|t1|Dout\(10));

-- Location: LCCOMB_X32_Y21_N14
\dp|Alu_1[10]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Alu_1[10]~6_combout\ = (\cp|Selector18~2_combout\ & ((\dp|t1|Dout\(10)) # ((\cp|Selector17~0_combout\)))) # (!\cp|Selector18~2_combout\ & (((\dp|rf|reg[7][10]~q\ & !\cp|Selector17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp|Selector18~2_combout\,
	datab => \dp|t1|Dout\(10),
	datac => \dp|rf|reg[7][10]~q\,
	datad => \cp|Selector17~0_combout\,
	combout => \dp|Alu_1[10]~6_combout\);

-- Location: LCCOMB_X34_Y21_N30
\dp|Alu_1[10]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Alu_1[10]~7_combout\ = (\dp|Alu_1[10]~6_combout\ & (((\dp|SE_out[14]~0_combout\) # (!\cp|Selector17~0_combout\)))) # (!\dp|Alu_1[10]~6_combout\ & (\dp|t2|Dout\(10) & (\cp|Selector17~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|t2|Dout\(10),
	datab => \dp|Alu_1[10]~6_combout\,
	datac => \cp|Selector17~0_combout\,
	datad => \dp|SE_out[14]~0_combout\,
	combout => \dp|Alu_1[10]~7_combout\);

-- Location: LCCOMB_X32_Y21_N0
\dp|Alu_2[10]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Alu_2[10]~7_combout\ = (\dp|Equal15~0_combout\ & (((\dp|t3|Dout\(10) & \dp|Alu_2[15]~0_combout\)))) # (!\dp|Equal15~0_combout\ & ((\dp|t4|Dout\(10)) # ((\dp|t3|Dout\(10) & \dp|Alu_2[15]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Equal15~0_combout\,
	datab => \dp|t4|Dout\(10),
	datac => \dp|t3|Dout\(10),
	datad => \dp|Alu_2[15]~0_combout\,
	combout => \dp|Alu_2[10]~7_combout\);

-- Location: LCCOMB_X34_Y21_N24
\dp|Alu_2[10]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Alu_2[10]~8_combout\ = (\dp|Alu_2[10]~7_combout\) # ((\dp|t2|Dout\(10) & \dp|Equal16~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|t2|Dout\(10),
	datab => \dp|Equal16~0_combout\,
	datac => \dp|Alu_2[10]~7_combout\,
	combout => \dp|Alu_2[10]~8_combout\);

-- Location: LCCOMB_X30_Y22_N0
\dp|RF_D3[9]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|RF_D3[9]~35_combout\ = (!\cp|M5[1]~1_combout\ & ((\dp|Equal5~0_combout\ & (\dp|t3|Dout\(9))) # (!\dp|Equal5~0_combout\ & ((\dp|pc|Dout\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|t3|Dout\(9),
	datab => \dp|pc|Dout\(9),
	datac => \dp|Equal5~0_combout\,
	datad => \cp|M5[1]~1_combout\,
	combout => \dp|RF_D3[9]~35_combout\);

-- Location: LCCOMB_X30_Y22_N30
\dp|rf|reg~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|rf|reg~34_combout\ = (!\reset~input_o\ & ((\dp|RF_D3[9]~35_combout\) # ((\cp|M5[1]~1_combout\ & \dp|t4|Dout\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp|M5[1]~1_combout\,
	datab => \dp|RF_D3[9]~35_combout\,
	datac => \reset~input_o\,
	datad => \dp|t4|Dout\(9),
	combout => \dp|rf|reg~34_combout\);

-- Location: FF_X30_Y21_N19
\dp|rf|reg[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dp|rf|reg~34_combout\,
	sload => VCC,
	ena => \dp|rf|reg[0][10]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|reg[0][9]~q\);

-- Location: FF_X29_Y21_N27
\dp|rf|reg[1][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dp|rf|reg~34_combout\,
	sload => VCC,
	ena => \dp|rf|reg[1][4]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|reg[1][9]~q\);

-- Location: LCCOMB_X29_Y21_N26
\dp|T2_in[9]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|T2_in[9]~44_combout\ = (\dp|ir|Dout\(9) & (((\dp|rf|reg[1][9]~q\) # (\dp|ir|Dout\(10))))) # (!\dp|ir|Dout\(9) & (\dp|rf|reg[0][9]~q\ & ((!\dp|ir|Dout\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|reg[0][9]~q\,
	datab => \dp|ir|Dout\(9),
	datac => \dp|rf|reg[1][9]~q\,
	datad => \dp|ir|Dout\(10),
	combout => \dp|T2_in[9]~44_combout\);

-- Location: FF_X30_Y21_N17
\dp|rf|reg[2][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dp|rf|reg~34_combout\,
	sload => VCC,
	ena => \dp|rf|reg[2][6]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|reg[2][9]~q\);

-- Location: FF_X30_Y22_N31
\dp|rf|reg[3][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp|rf|reg~34_combout\,
	ena => \dp|rf|reg[3][7]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|reg[3][9]~q\);

-- Location: LCCOMB_X30_Y21_N28
\dp|T2_in[9]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|T2_in[9]~45_combout\ = (\dp|T2_in[9]~44_combout\ & (((\dp|rf|reg[3][9]~q\) # (!\dp|ir|Dout\(10))))) # (!\dp|T2_in[9]~44_combout\ & (\dp|rf|reg[2][9]~q\ & ((\dp|ir|Dout\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|T2_in[9]~44_combout\,
	datab => \dp|rf|reg[2][9]~q\,
	datac => \dp|rf|reg[3][9]~q\,
	datad => \dp|ir|Dout\(10),
	combout => \dp|T2_in[9]~45_combout\);

-- Location: FF_X27_Y20_N21
\dp|rf|reg[4][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dp|rf|reg~34_combout\,
	sload => VCC,
	ena => \dp|rf|reg[4][14]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|reg[4][9]~q\);

-- Location: FF_X27_Y20_N27
\dp|rf|reg[6][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dp|rf|reg~34_combout\,
	sload => VCC,
	ena => \dp|rf|reg[6][7]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|reg[6][9]~q\);

-- Location: LCCOMB_X27_Y20_N26
\dp|T2_in[9]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|T2_in[9]~46_combout\ = (\dp|ir|Dout\(9) & (((\dp|ir|Dout\(10))))) # (!\dp|ir|Dout\(9) & ((\dp|ir|Dout\(10) & ((\dp|rf|reg[6][9]~q\))) # (!\dp|ir|Dout\(10) & (\dp|rf|reg[4][9]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ir|Dout\(9),
	datab => \dp|rf|reg[4][9]~q\,
	datac => \dp|rf|reg[6][9]~q\,
	datad => \dp|ir|Dout\(10),
	combout => \dp|T2_in[9]~46_combout\);

-- Location: FF_X31_Y21_N19
\dp|rf|reg[5][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dp|rf|reg~34_combout\,
	sload => VCC,
	ena => \dp|rf|reg[5][13]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|reg[5][9]~q\);

-- Location: LCCOMB_X30_Y18_N14
\dp|T2_in[9]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|T2_in[9]~47_combout\ = (\dp|ir|Dout\(9) & ((\dp|T2_in[9]~46_combout\ & (\dp|rf|reg[7][9]~q\)) # (!\dp|T2_in[9]~46_combout\ & ((\dp|rf|reg[5][9]~q\))))) # (!\dp|ir|Dout\(9) & (((\dp|T2_in[9]~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|reg[7][9]~q\,
	datab => \dp|ir|Dout\(9),
	datac => \dp|T2_in[9]~46_combout\,
	datad => \dp|rf|reg[5][9]~q\,
	combout => \dp|T2_in[9]~47_combout\);

-- Location: LCCOMB_X30_Y20_N6
\dp|t2|Dout[9]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|t2|Dout[9]~9_combout\ = (\dp|ir|Dout\(11) & ((\dp|T2_in[9]~47_combout\))) # (!\dp|ir|Dout\(11) & (\dp|T2_in[9]~45_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|T2_in[9]~45_combout\,
	datab => \dp|T2_in[9]~47_combout\,
	datad => \dp|ir|Dout\(11),
	combout => \dp|t2|Dout[9]~9_combout\);

-- Location: FF_X30_Y20_N7
\dp|t2|Dout[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp|t2|Dout[9]~9_combout\,
	asdata => \dp|pc|Dout[9]~9_combout\,
	sload => \cp|M9~0_combout\,
	ena => \cp|WideOr20~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|t2|Dout\(9));

-- Location: LCCOMB_X31_Y20_N16
\dp|Alu_1[9]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Alu_1[9]~8_combout\ = (\cp|Selector17~0_combout\ & (((\dp|t2|Dout\(9)) # (\cp|Selector18~2_combout\)))) # (!\cp|Selector17~0_combout\ & (\dp|rf|reg[7][9]~q\ & ((!\cp|Selector18~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|reg[7][9]~q\,
	datab => \cp|Selector17~0_combout\,
	datac => \dp|t2|Dout\(9),
	datad => \cp|Selector18~2_combout\,
	combout => \dp|Alu_1[9]~8_combout\);

-- Location: FF_X31_Y21_N23
\dp|t1|Dout[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp|rf|Mux6~4_combout\,
	ena => \cp|state.s2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|t1|Dout\(9));

-- Location: LCCOMB_X31_Y20_N10
\dp|Alu_1[9]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Alu_1[9]~9_combout\ = (\dp|Alu_1[9]~8_combout\ & ((\dp|SE_out[14]~0_combout\) # ((!\cp|Selector18~2_combout\)))) # (!\dp|Alu_1[9]~8_combout\ & (((\dp|t1|Dout\(9) & \cp|Selector18~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|SE_out[14]~0_combout\,
	datab => \dp|Alu_1[9]~8_combout\,
	datac => \dp|t1|Dout\(9),
	datad => \cp|Selector18~2_combout\,
	combout => \dp|Alu_1[9]~9_combout\);

-- Location: LCCOMB_X34_Y21_N28
\dp|aluInst|OP~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|aluInst|OP~11_combout\ = ((!\dp|Alu_2[9]~9_combout\ & ((!\dp|t2|Dout\(9)) # (!\dp|Equal16~0_combout\)))) # (!\dp|Alu_1[9]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Alu_1[9]~9_combout\,
	datab => \dp|Alu_2[9]~9_combout\,
	datac => \dp|Equal16~0_combout\,
	datad => \dp|t2|Dout\(9),
	combout => \dp|aluInst|OP~11_combout\);

-- Location: LCCOMB_X31_Y20_N18
\dp|Alu_2[8]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Alu_2[8]~11_combout\ = (\dp|Alu_2[15]~0_combout\ & ((\dp|t3|Dout\(8)) # ((!\dp|Equal15~0_combout\ & \dp|t4|Dout\(8))))) # (!\dp|Alu_2[15]~0_combout\ & (!\dp|Equal15~0_combout\ & ((\dp|t4|Dout\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Alu_2[15]~0_combout\,
	datab => \dp|Equal15~0_combout\,
	datac => \dp|t3|Dout\(8),
	datad => \dp|t4|Dout\(8),
	combout => \dp|Alu_2[8]~11_combout\);

-- Location: LCCOMB_X31_Y20_N4
\dp|Alu_2[8]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Alu_2[8]~12_combout\ = (\dp|Alu_2[8]~11_combout\) # ((\dp|t2|Dout\(8) & \dp|Equal16~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|t2|Dout\(8),
	datab => \dp|Alu_2[8]~11_combout\,
	datad => \dp|Equal16~0_combout\,
	combout => \dp|Alu_2[8]~12_combout\);

-- Location: LCCOMB_X30_Y22_N2
\dp|RF_D3[7]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|RF_D3[7]~31_combout\ = (\dp|t4|Dout\(7) & (\cp|state.s3~q\ & \cp|M5[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dp|t4|Dout\(7),
	datac => \cp|state.s3~q\,
	datad => \cp|M5[1]~0_combout\,
	combout => \dp|RF_D3[7]~31_combout\);

-- Location: LCCOMB_X30_Y22_N28
\dp|rf|reg~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|rf|reg~10_combout\ = (\dp|rf|process_0~1_combout\ & (((\dp|pc|Dout\(7))))) # (!\dp|rf|process_0~1_combout\ & ((\dp|RF_D3[7]~32_combout\) # ((\dp|RF_D3[7]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RF_D3[7]~32_combout\,
	datab => \dp|rf|process_0~1_combout\,
	datac => \dp|pc|Dout\(7),
	datad => \dp|RF_D3[7]~31_combout\,
	combout => \dp|rf|reg~10_combout\);

-- Location: LCCOMB_X28_Y22_N4
\dp|rf|Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|rf|Decoder0~0_combout\ = (\cp|WideOr22~0_combout\ & (\dp|RF_A3[1]~1_combout\ & (\dp|RF_A3[2]~5_combout\ & \dp|RF_A3[0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp|WideOr22~0_combout\,
	datab => \dp|RF_A3[1]~1_combout\,
	datac => \dp|RF_A3[2]~5_combout\,
	datad => \dp|RF_A3[0]~3_combout\,
	combout => \dp|rf|Decoder0~0_combout\);

-- Location: LCCOMB_X29_Y23_N4
\dp|rf|reg[7][12]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|rf|reg[7][12]~1_combout\ = (\dp|rf|Decoder0~0_combout\) # ((\dp|rf|process_0~1_combout\) # (\reset~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|Decoder0~0_combout\,
	datac => \dp|rf|process_0~1_combout\,
	datad => \reset~input_o\,
	combout => \dp|rf|reg[7][12]~1_combout\);

-- Location: FF_X30_Y22_N29
\dp|rf|reg[7][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp|rf|reg~10_combout\,
	sclr => \reset~input_o\,
	ena => \dp|rf|reg[7][12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|reg[7][7]~q\);

-- Location: LCCOMB_X31_Y22_N2
\dp|T3_in[7]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|T3_in[7]~20_combout\ = (\cp|WideOr19~0_combout\ & (\dp|mem|ram_rtl_0|auto_generated|mux2|result_node[7]~15_combout\ & (!\cp|M11[0]~0_combout\))) # (!\cp|WideOr19~0_combout\ & (((\cp|M11[0]~0_combout\) # (\dp|pc|Dout[7]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[7]~15_combout\,
	datab => \cp|WideOr19~0_combout\,
	datac => \cp|M11[0]~0_combout\,
	datad => \dp|pc|Dout[7]~7_combout\,
	combout => \dp|T3_in[7]~20_combout\);

-- Location: LCCOMB_X31_Y22_N18
\dp|T3_in[7]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|T3_in[7]~21_combout\ = (\cp|M11[0]~0_combout\ & ((\dp|T3_in[7]~20_combout\ & (\dp|rf|Mux8~4_combout\)) # (!\dp|T3_in[7]~20_combout\ & ((\dp|rf|reg[7][7]~q\))))) # (!\cp|M11[0]~0_combout\ & (((\dp|T3_in[7]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|Mux8~4_combout\,
	datab => \dp|rf|reg[7][7]~q\,
	datac => \cp|M11[0]~0_combout\,
	datad => \dp|T3_in[7]~20_combout\,
	combout => \dp|T3_in[7]~21_combout\);

-- Location: FF_X31_Y22_N19
\dp|t3|Dout[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp|T3_in[7]~21_combout\,
	ena => \cp|WideOr19~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|t3|Dout\(7));

-- Location: LCCOMB_X31_Y22_N30
\dp|Alu_2[7]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Alu_2[7]~13_combout\ = (\dp|t4|Dout\(7) & (((\dp|t3|Dout\(7) & \dp|Alu_2[15]~0_combout\)) # (!\dp|Equal15~0_combout\))) # (!\dp|t4|Dout\(7) & (\dp|t3|Dout\(7) & ((\dp|Alu_2[15]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|t4|Dout\(7),
	datab => \dp|t3|Dout\(7),
	datac => \dp|Equal15~0_combout\,
	datad => \dp|Alu_2[15]~0_combout\,
	combout => \dp|Alu_2[7]~13_combout\);

-- Location: FF_X28_Y21_N11
\dp|rf|reg[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dp|rf|reg~32_combout\,
	sload => VCC,
	ena => \dp|rf|reg[0][10]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|reg[0][7]~q\);

-- Location: FF_X29_Y21_N23
\dp|rf|reg[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dp|rf|reg~32_combout\,
	sload => VCC,
	ena => \dp|rf|reg[1][4]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|reg[1][7]~q\);

-- Location: LCCOMB_X29_Y21_N22
\dp|T2_in[7]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|T2_in[7]~36_combout\ = (\dp|ir|Dout\(9) & (((\dp|rf|reg[1][7]~q\) # (\dp|ir|Dout\(10))))) # (!\dp|ir|Dout\(9) & (\dp|rf|reg[0][7]~q\ & ((!\dp|ir|Dout\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|reg[0][7]~q\,
	datab => \dp|ir|Dout\(9),
	datac => \dp|rf|reg[1][7]~q\,
	datad => \dp|ir|Dout\(10),
	combout => \dp|T2_in[7]~36_combout\);

-- Location: FF_X29_Y22_N21
\dp|rf|reg[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dp|rf|reg~32_combout\,
	sload => VCC,
	ena => \dp|rf|reg[2][6]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|reg[2][7]~q\);

-- Location: LCCOMB_X29_Y22_N30
\dp|T2_in[7]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|T2_in[7]~37_combout\ = (\dp|T2_in[7]~36_combout\ & (((\dp|rf|reg[3][7]~q\) # (!\dp|ir|Dout\(10))))) # (!\dp|T2_in[7]~36_combout\ & (\dp|rf|reg[2][7]~q\ & ((\dp|ir|Dout\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|T2_in[7]~36_combout\,
	datab => \dp|rf|reg[2][7]~q\,
	datac => \dp|rf|reg[3][7]~q\,
	datad => \dp|ir|Dout\(10),
	combout => \dp|T2_in[7]~37_combout\);

-- Location: FF_X26_Y21_N29
\dp|rf|reg[4][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dp|rf|reg~32_combout\,
	sload => VCC,
	ena => \dp|rf|reg[4][14]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|reg[4][7]~q\);

-- Location: FF_X26_Y21_N19
\dp|rf|reg[6][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dp|rf|reg~32_combout\,
	sload => VCC,
	ena => \dp|rf|reg[6][7]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|reg[6][7]~q\);

-- Location: LCCOMB_X26_Y21_N18
\dp|T2_in[7]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|T2_in[7]~38_combout\ = (\dp|ir|Dout\(9) & (((\dp|ir|Dout\(10))))) # (!\dp|ir|Dout\(9) & ((\dp|ir|Dout\(10) & ((\dp|rf|reg[6][7]~q\))) # (!\dp|ir|Dout\(10) & (\dp|rf|reg[4][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ir|Dout\(9),
	datab => \dp|rf|reg[4][7]~q\,
	datac => \dp|rf|reg[6][7]~q\,
	datad => \dp|ir|Dout\(10),
	combout => \dp|T2_in[7]~38_combout\);

-- Location: FF_X31_Y21_N1
\dp|rf|reg[5][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dp|rf|reg~32_combout\,
	sload => VCC,
	ena => \dp|rf|reg[5][13]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|reg[5][7]~q\);

-- Location: LCCOMB_X31_Y22_N20
\dp|T2_in[7]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|T2_in[7]~39_combout\ = (\dp|T2_in[7]~38_combout\ & ((\dp|rf|reg[7][7]~q\) # ((!\dp|ir|Dout\(9))))) # (!\dp|T2_in[7]~38_combout\ & (((\dp|ir|Dout\(9) & \dp|rf|reg[5][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|T2_in[7]~38_combout\,
	datab => \dp|rf|reg[7][7]~q\,
	datac => \dp|ir|Dout\(9),
	datad => \dp|rf|reg[5][7]~q\,
	combout => \dp|T2_in[7]~39_combout\);

-- Location: LCCOMB_X31_Y22_N24
\dp|t2|Dout[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|t2|Dout[7]~7_combout\ = (\dp|ir|Dout\(11) & ((\dp|T2_in[7]~39_combout\))) # (!\dp|ir|Dout\(11) & (\dp|T2_in[7]~37_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ir|Dout\(11),
	datab => \dp|T2_in[7]~37_combout\,
	datad => \dp|T2_in[7]~39_combout\,
	combout => \dp|t2|Dout[7]~7_combout\);

-- Location: FF_X31_Y22_N25
\dp|t2|Dout[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp|t2|Dout[7]~7_combout\,
	asdata => \dp|pc|Dout[7]~7_combout\,
	sload => \cp|M9~0_combout\,
	ena => \cp|WideOr20~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|t2|Dout\(7));

-- Location: LCCOMB_X34_Y22_N14
\dp|Alu_2[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Alu_2[7]~14_combout\ = (\dp|Alu_2[7]~13_combout\) # ((\dp|Equal16~0_combout\ & \dp|t2|Dout\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Alu_2[7]~13_combout\,
	datab => \dp|Equal16~0_combout\,
	datac => \dp|t2|Dout\(7),
	combout => \dp|Alu_2[7]~14_combout\);

-- Location: LCCOMB_X35_Y23_N4
\dp|T4_in[6]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|T4_in[6]~11_combout\ = (\dp|Equal8~0_combout\ & ((\cp|state.s13~q\ & ((\dp|ir|Dout\(6)))) # (!\cp|state.s13~q\ & (\dp|ir|Dout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Equal8~0_combout\,
	datab => \dp|ir|Dout\(5),
	datac => \dp|ir|Dout\(6),
	datad => \cp|state.s13~q\,
	combout => \dp|T4_in[6]~11_combout\);

-- Location: FF_X35_Y23_N5
\dp|t4|Dout[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp|T4_in[6]~11_combout\,
	ena => \cp|Selector21~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|t4|Dout\(6));

-- Location: LCCOMB_X31_Y23_N22
\dp|RF_D3[6]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|RF_D3[6]~48_combout\ = (\dp|RF_D3[6]~30_combout\) # ((\dp|t4|Dout\(6) & (\cp|state.s3~q\ & \cp|M5[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|t4|Dout\(6),
	datab => \dp|RF_D3[6]~30_combout\,
	datac => \cp|state.s3~q\,
	datad => \cp|M5[1]~0_combout\,
	combout => \dp|RF_D3[6]~48_combout\);

-- Location: LCCOMB_X29_Y23_N0
\dp|rf|reg~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|rf|reg~9_combout\ = (\dp|rf|process_0~1_combout\ & ((\dp|pc|Dout\(6)))) # (!\dp|rf|process_0~1_combout\ & (\dp|RF_D3[6]~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RF_D3[6]~48_combout\,
	datab => \dp|rf|process_0~1_combout\,
	datac => \dp|pc|Dout\(6),
	combout => \dp|rf|reg~9_combout\);

-- Location: FF_X29_Y23_N1
\dp|rf|reg[7][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp|rf|reg~9_combout\,
	sclr => \reset~input_o\,
	ena => \dp|rf|reg[7][12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|reg[7][6]~q\);

-- Location: FF_X31_Y21_N7
\dp|rf|reg[5][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dp|rf|reg~31_combout\,
	sload => VCC,
	ena => \dp|rf|reg[5][13]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|reg[5][6]~q\);

-- Location: FF_X26_Y21_N17
\dp|rf|reg[4][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dp|rf|reg~31_combout\,
	sload => VCC,
	ena => \dp|rf|reg[4][14]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|reg[4][6]~q\);

-- Location: FF_X26_Y21_N7
\dp|rf|reg[6][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dp|rf|reg~31_combout\,
	sload => VCC,
	ena => \dp|rf|reg[6][7]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|reg[6][6]~q\);

-- Location: LCCOMB_X26_Y21_N16
\dp|rf|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|rf|Mux9~0_combout\ = (\dp|RF_A1[1]~1_combout\ & ((\dp|RF_A1[0]~0_combout\) # ((\dp|rf|reg[6][6]~q\)))) # (!\dp|RF_A1[1]~1_combout\ & (!\dp|RF_A1[0]~0_combout\ & (\dp|rf|reg[4][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RF_A1[1]~1_combout\,
	datab => \dp|RF_A1[0]~0_combout\,
	datac => \dp|rf|reg[4][6]~q\,
	datad => \dp|rf|reg[6][6]~q\,
	combout => \dp|rf|Mux9~0_combout\);

-- Location: LCCOMB_X31_Y21_N6
\dp|rf|Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|rf|Mux9~1_combout\ = (\dp|RF_A1[0]~0_combout\ & ((\dp|rf|Mux9~0_combout\ & (\dp|rf|reg[7][6]~q\)) # (!\dp|rf|Mux9~0_combout\ & ((\dp|rf|reg[5][6]~q\))))) # (!\dp|RF_A1[0]~0_combout\ & (((\dp|rf|Mux9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|reg[7][6]~q\,
	datab => \dp|RF_A1[0]~0_combout\,
	datac => \dp|rf|reg[5][6]~q\,
	datad => \dp|rf|Mux9~0_combout\,
	combout => \dp|rf|Mux9~1_combout\);

-- Location: FF_X31_Y23_N15
\dp|rf|reg[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp|rf|reg~31_combout\,
	ena => \dp|rf|reg[3][7]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|reg[3][6]~q\);

-- Location: FF_X28_Y21_N17
\dp|rf|reg[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dp|rf|reg~31_combout\,
	sload => VCC,
	ena => \dp|rf|reg[0][10]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|reg[0][6]~q\);

-- Location: FF_X27_Y21_N29
\dp|rf|reg[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dp|rf|reg~31_combout\,
	sload => VCC,
	ena => \dp|rf|reg[1][4]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|reg[1][6]~q\);

-- Location: LCCOMB_X28_Y21_N16
\dp|rf|Mux9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|rf|Mux9~2_combout\ = (\dp|RF_A1[1]~1_combout\ & (\dp|RF_A1[0]~0_combout\)) # (!\dp|RF_A1[1]~1_combout\ & ((\dp|RF_A1[0]~0_combout\ & ((\dp|rf|reg[1][6]~q\))) # (!\dp|RF_A1[0]~0_combout\ & (\dp|rf|reg[0][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RF_A1[1]~1_combout\,
	datab => \dp|RF_A1[0]~0_combout\,
	datac => \dp|rf|reg[0][6]~q\,
	datad => \dp|rf|reg[1][6]~q\,
	combout => \dp|rf|Mux9~2_combout\);

-- Location: LCCOMB_X27_Y21_N10
\dp|rf|Mux9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|rf|Mux9~3_combout\ = (\dp|rf|Mux9~2_combout\ & ((\dp|rf|reg[3][6]~q\) # ((!\dp|RF_A1[1]~1_combout\)))) # (!\dp|rf|Mux9~2_combout\ & (((\dp|rf|reg[2][6]~q\ & \dp|RF_A1[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|reg[3][6]~q\,
	datab => \dp|rf|Mux9~2_combout\,
	datac => \dp|rf|reg[2][6]~q\,
	datad => \dp|RF_A1[1]~1_combout\,
	combout => \dp|rf|Mux9~3_combout\);

-- Location: LCCOMB_X31_Y21_N10
\dp|rf|Mux9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|rf|Mux9~4_combout\ = (\dp|RF_A1[2]~2_combout\ & (\dp|rf|Mux9~1_combout\)) # (!\dp|RF_A1[2]~2_combout\ & ((\dp|rf|Mux9~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|Mux9~1_combout\,
	datab => \dp|RF_A1[2]~2_combout\,
	datad => \dp|rf|Mux9~3_combout\,
	combout => \dp|rf|Mux9~4_combout\);

-- Location: FF_X31_Y21_N11
\dp|t1|Dout[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp|rf|Mux9~4_combout\,
	ena => \cp|state.s2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|t1|Dout\(6));

-- Location: LCCOMB_X32_Y21_N18
\dp|Alu_1[6]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Alu_1[6]~14_combout\ = (\cp|Selector18~2_combout\ & ((\cp|Selector17~0_combout\) # ((\dp|t1|Dout\(6))))) # (!\cp|Selector18~2_combout\ & (!\cp|Selector17~0_combout\ & (\dp|rf|reg[7][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp|Selector18~2_combout\,
	datab => \cp|Selector17~0_combout\,
	datac => \dp|rf|reg[7][6]~q\,
	datad => \dp|t1|Dout\(6),
	combout => \dp|Alu_1[6]~14_combout\);

-- Location: LCCOMB_X35_Y23_N26
\dp|SE_out[6]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|SE_out[6]~2_combout\ = (\cp|state.s13~q\ & ((\dp|ir|Dout\(6)))) # (!\cp|state.s13~q\ & (\dp|ir|Dout\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dp|ir|Dout\(5),
	datac => \dp|ir|Dout\(6),
	datad => \cp|state.s13~q\,
	combout => \dp|SE_out[6]~2_combout\);

-- Location: LCCOMB_X32_Y21_N4
\dp|Alu_1[6]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Alu_1[6]~15_combout\ = (\dp|Alu_1[6]~14_combout\ & (((\dp|SE_out[6]~2_combout\)) # (!\cp|Selector17~0_combout\))) # (!\dp|Alu_1[6]~14_combout\ & (\cp|Selector17~0_combout\ & (\dp|t2|Dout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Alu_1[6]~14_combout\,
	datab => \cp|Selector17~0_combout\,
	datac => \dp|t2|Dout\(6),
	datad => \dp|SE_out[6]~2_combout\,
	combout => \dp|Alu_1[6]~15_combout\);

-- Location: LCCOMB_X30_Y23_N28
\dp|T3_in[6]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|T3_in[6]~18_combout\ = (\cp|M11[0]~0_combout\ & (((\dp|rf|reg[7][6]~q\)) # (!\cp|WideOr19~0_combout\))) # (!\cp|M11[0]~0_combout\ & (\cp|WideOr19~0_combout\ & ((\dp|mem|ram_rtl_0|auto_generated|mux2|result_node[6]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp|M11[0]~0_combout\,
	datab => \cp|WideOr19~0_combout\,
	datac => \dp|rf|reg[7][6]~q\,
	datad => \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[6]~13_combout\,
	combout => \dp|T3_in[6]~18_combout\);

-- Location: LCCOMB_X30_Y23_N16
\dp|T3_in[6]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|T3_in[6]~19_combout\ = (\cp|WideOr19~0_combout\ & (((\dp|T3_in[6]~18_combout\)))) # (!\cp|WideOr19~0_combout\ & ((\dp|T3_in[6]~18_combout\ & (\dp|rf|Mux9~4_combout\)) # (!\dp|T3_in[6]~18_combout\ & ((\dp|pc|Dout[6]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp|WideOr19~0_combout\,
	datab => \dp|rf|Mux9~4_combout\,
	datac => \dp|pc|Dout[6]~6_combout\,
	datad => \dp|T3_in[6]~18_combout\,
	combout => \dp|T3_in[6]~19_combout\);

-- Location: FF_X30_Y23_N17
\dp|t3|Dout[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp|T3_in[6]~19_combout\,
	ena => \cp|WideOr19~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|t3|Dout\(6));

-- Location: LCCOMB_X31_Y23_N2
\dp|Alu_2[6]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Alu_2[6]~15_combout\ = (\dp|t3|Dout\(6) & ((\dp|Alu_2[15]~0_combout\) # ((!\dp|Equal15~0_combout\ & \dp|t4|Dout\(6))))) # (!\dp|t3|Dout\(6) & (((!\dp|Equal15~0_combout\ & \dp|t4|Dout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|t3|Dout\(6),
	datab => \dp|Alu_2[15]~0_combout\,
	datac => \dp|Equal15~0_combout\,
	datad => \dp|t4|Dout\(6),
	combout => \dp|Alu_2[6]~15_combout\);

-- Location: LCCOMB_X31_Y23_N20
\dp|aluInst|OP~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|aluInst|OP~8_combout\ = ((!\dp|Alu_2[6]~15_combout\ & ((!\dp|t2|Dout\(6)) # (!\dp|Equal16~0_combout\)))) # (!\dp|Alu_1[6]~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Alu_1[6]~15_combout\,
	datab => \dp|Alu_2[6]~15_combout\,
	datac => \dp|Equal16~0_combout\,
	datad => \dp|t2|Dout\(6),
	combout => \dp|aluInst|OP~8_combout\);

-- Location: LCCOMB_X35_Y22_N0
\dp|Alu_2[5]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Alu_2[5]~17_combout\ = (\dp|t3|Dout\(5) & ((\dp|Alu_2[15]~0_combout\) # ((\dp|t4|Dout\(5) & !\dp|Equal15~0_combout\)))) # (!\dp|t3|Dout\(5) & (\dp|t4|Dout\(5) & (!\dp|Equal15~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|t3|Dout\(5),
	datab => \dp|t4|Dout\(5),
	datac => \dp|Equal15~0_combout\,
	datad => \dp|Alu_2[15]~0_combout\,
	combout => \dp|Alu_2[5]~17_combout\);

-- Location: LCCOMB_X35_Y22_N18
\dp|Alu_2[5]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Alu_2[5]~18_combout\ = (\dp|Alu_2[5]~17_combout\) # ((\dp|t2|Dout\(5) & (\cp|Equal8~0_combout\ & \cp|state.s4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|t2|Dout\(5),
	datab => \dp|Alu_2[5]~17_combout\,
	datac => \cp|Equal8~0_combout\,
	datad => \cp|state.s4~q\,
	combout => \dp|Alu_2[5]~18_combout\);

-- Location: FF_X29_Y21_N13
\dp|rf|reg[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dp|rf|reg~30_combout\,
	sload => VCC,
	ena => \dp|rf|reg[1][4]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|reg[1][5]~q\);

-- Location: LCCOMB_X28_Y21_N22
\dp|rf|Mux10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|rf|Mux10~2_combout\ = (\dp|RF_A1[0]~0_combout\ & ((\dp|rf|reg[1][5]~q\) # ((\dp|RF_A1[1]~1_combout\)))) # (!\dp|RF_A1[0]~0_combout\ & (((\dp|rf|reg[0][5]~q\ & !\dp|RF_A1[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|reg[1][5]~q\,
	datab => \dp|RF_A1[0]~0_combout\,
	datac => \dp|rf|reg[0][5]~q\,
	datad => \dp|RF_A1[1]~1_combout\,
	combout => \dp|rf|Mux10~2_combout\);

-- Location: FF_X29_Y22_N17
\dp|rf|reg[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dp|rf|reg~30_combout\,
	sload => VCC,
	ena => \dp|rf|reg[2][6]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|reg[2][5]~q\);

-- Location: FF_X29_Y22_N19
\dp|rf|reg[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dp|rf|reg~30_combout\,
	sload => VCC,
	ena => \dp|rf|reg[3][7]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|reg[3][5]~q\);

-- Location: LCCOMB_X29_Y22_N16
\dp|rf|Mux10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|rf|Mux10~3_combout\ = (\dp|rf|Mux10~2_combout\ & (((\dp|rf|reg[3][5]~q\)) # (!\dp|RF_A1[1]~1_combout\))) # (!\dp|rf|Mux10~2_combout\ & (\dp|RF_A1[1]~1_combout\ & (\dp|rf|reg[2][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|Mux10~2_combout\,
	datab => \dp|RF_A1[1]~1_combout\,
	datac => \dp|rf|reg[2][5]~q\,
	datad => \dp|rf|reg[3][5]~q\,
	combout => \dp|rf|Mux10~3_combout\);

-- Location: FF_X26_Y21_N27
\dp|rf|reg[4][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dp|rf|reg~30_combout\,
	sload => VCC,
	ena => \dp|rf|reg[4][14]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|reg[4][5]~q\);

-- Location: FF_X26_Y21_N9
\dp|rf|reg[6][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dp|rf|reg~30_combout\,
	sload => VCC,
	ena => \dp|rf|reg[6][7]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|reg[6][5]~q\);

-- Location: LCCOMB_X26_Y21_N26
\dp|rf|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|rf|Mux10~0_combout\ = (\dp|RF_A1[1]~1_combout\ & ((\dp|RF_A1[0]~0_combout\) # ((\dp|rf|reg[6][5]~q\)))) # (!\dp|RF_A1[1]~1_combout\ & (!\dp|RF_A1[0]~0_combout\ & (\dp|rf|reg[4][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RF_A1[1]~1_combout\,
	datab => \dp|RF_A1[0]~0_combout\,
	datac => \dp|rf|reg[4][5]~q\,
	datad => \dp|rf|reg[6][5]~q\,
	combout => \dp|rf|Mux10~0_combout\);

-- Location: LCCOMB_X29_Y23_N22
\dp|RF_D3[5]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|RF_D3[5]~47_combout\ = (\dp|RF_D3[5]~29_combout\) # ((\dp|t4|Dout\(5) & (\cp|state.s3~q\ & \cp|M5[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|t4|Dout\(5),
	datab => \cp|state.s3~q\,
	datac => \cp|M5[1]~0_combout\,
	datad => \dp|RF_D3[5]~29_combout\,
	combout => \dp|RF_D3[5]~47_combout\);

-- Location: LCCOMB_X36_Y20_N14
\cp|WideOr18\ : cycloneive_lcell_comb
-- Equation(s):
-- \cp|WideOr18~combout\ = (\cp|state.s12~q\) # ((\cp|state.s13~q\) # ((\cp|state.s1~q\) # (\cp|state.s14~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp|state.s12~q\,
	datab => \cp|state.s13~q\,
	datac => \cp|state.s1~q\,
	datad => \cp|state.s14~q\,
	combout => \cp|WideOr18~combout\);

-- Location: FF_X29_Y19_N23
\dp|pc|Dout[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp|pc|Dout[5]~5_combout\,
	asdata => \dp|rf|Mux10~4_combout\,
	sload => \cp|state.s14~q\,
	ena => \cp|WideOr18~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|pc|Dout\(5));

-- Location: LCCOMB_X29_Y23_N6
\dp|rf|reg~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|rf|reg~8_combout\ = (\dp|rf|process_0~1_combout\ & ((\dp|pc|Dout\(5)))) # (!\dp|rf|process_0~1_combout\ & (\dp|RF_D3[5]~47_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RF_D3[5]~47_combout\,
	datab => \dp|pc|Dout\(5),
	datac => \dp|rf|process_0~1_combout\,
	combout => \dp|rf|reg~8_combout\);

-- Location: FF_X29_Y23_N7
\dp|rf|reg[7][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp|rf|reg~8_combout\,
	sclr => \reset~input_o\,
	ena => \dp|rf|reg[7][12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|reg[7][5]~q\);

-- Location: FF_X27_Y22_N15
\dp|rf|reg[5][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dp|rf|reg~30_combout\,
	sload => VCC,
	ena => \dp|rf|reg[5][13]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|reg[5][5]~q\);

-- Location: LCCOMB_X27_Y22_N14
\dp|rf|Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|rf|Mux10~1_combout\ = (\dp|rf|Mux10~0_combout\ & ((\dp|rf|reg[7][5]~q\) # ((!\dp|RF_A1[0]~0_combout\)))) # (!\dp|rf|Mux10~0_combout\ & (((\dp|rf|reg[5][5]~q\ & \dp|RF_A1[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|Mux10~0_combout\,
	datab => \dp|rf|reg[7][5]~q\,
	datac => \dp|rf|reg[5][5]~q\,
	datad => \dp|RF_A1[0]~0_combout\,
	combout => \dp|rf|Mux10~1_combout\);

-- Location: LCCOMB_X27_Y22_N8
\dp|rf|Mux10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|rf|Mux10~4_combout\ = (\dp|RF_A1[2]~2_combout\ & ((\dp|rf|Mux10~1_combout\))) # (!\dp|RF_A1[2]~2_combout\ & (\dp|rf|Mux10~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|Mux10~3_combout\,
	datab => \dp|rf|Mux10~1_combout\,
	datac => \dp|RF_A1[2]~2_combout\,
	combout => \dp|rf|Mux10~4_combout\);

-- Location: FF_X27_Y22_N11
\dp|t1|Dout[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dp|rf|Mux10~4_combout\,
	sload => VCC,
	ena => \cp|state.s2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|t1|Dout\(5));

-- Location: LCCOMB_X35_Y22_N12
\dp|Alu_1[5]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Alu_1[5]~16_combout\ = (\cp|Selector17~0_combout\ & ((\dp|t2|Dout\(5)) # ((\cp|Selector18~2_combout\)))) # (!\cp|Selector17~0_combout\ & (((!\cp|Selector18~2_combout\ & \dp|rf|reg[7][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|t2|Dout\(5),
	datab => \cp|Selector17~0_combout\,
	datac => \cp|Selector18~2_combout\,
	datad => \dp|rf|reg[7][5]~q\,
	combout => \dp|Alu_1[5]~16_combout\);

-- Location: LCCOMB_X35_Y22_N22
\dp|Alu_1[5]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Alu_1[5]~17_combout\ = (\cp|Selector18~2_combout\ & ((\dp|Alu_1[5]~16_combout\ & ((\dp|ir|Dout\(5)))) # (!\dp|Alu_1[5]~16_combout\ & (\dp|t1|Dout\(5))))) # (!\cp|Selector18~2_combout\ & (((\dp|Alu_1[5]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|t1|Dout\(5),
	datab => \dp|ir|Dout\(5),
	datac => \cp|Selector18~2_combout\,
	datad => \dp|Alu_1[5]~16_combout\,
	combout => \dp|Alu_1[5]~17_combout\);

-- Location: LCCOMB_X35_Y22_N8
\dp|Alu_2[4]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Alu_2[4]~19_combout\ = (\dp|Equal15~0_combout\ & (\dp|t3|Dout\(4) & ((\dp|Alu_2[15]~0_combout\)))) # (!\dp|Equal15~0_combout\ & ((\dp|t4|Dout\(4)) # ((\dp|t3|Dout\(4) & \dp|Alu_2[15]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Equal15~0_combout\,
	datab => \dp|t3|Dout\(4),
	datac => \dp|t4|Dout\(4),
	datad => \dp|Alu_2[15]~0_combout\,
	combout => \dp|Alu_2[4]~19_combout\);

-- Location: LCCOMB_X35_Y22_N26
\dp|Alu_2[4]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Alu_2[4]~20_combout\ = (\dp|Alu_2[4]~19_combout\) # ((\dp|t2|Dout\(4) & (\cp|Equal8~0_combout\ & \cp|state.s4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|t2|Dout\(4),
	datab => \dp|Alu_2[4]~19_combout\,
	datac => \cp|Equal8~0_combout\,
	datad => \cp|state.s4~q\,
	combout => \dp|Alu_2[4]~20_combout\);

-- Location: LCCOMB_X23_Y23_N10
\dp|T4_in[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|T4_in[3]~7_combout\ = (\dp|ir|Dout\(3) & \dp|Equal8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dp|ir|Dout\(3),
	datad => \dp|Equal8~0_combout\,
	combout => \dp|T4_in[3]~7_combout\);

-- Location: FF_X23_Y23_N11
\dp|t4|Dout[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp|T4_in[3]~7_combout\,
	ena => \cp|Selector21~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|t4|Dout\(3));

-- Location: LCCOMB_X32_Y22_N10
\dp|Alu_2[3]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Alu_2[3]~21_combout\ = (\dp|t3|Dout\(3) & ((\dp|Alu_2[15]~0_combout\) # ((\dp|t4|Dout\(3) & !\dp|Equal15~0_combout\)))) # (!\dp|t3|Dout\(3) & (\dp|t4|Dout\(3) & ((!\dp|Equal15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|t3|Dout\(3),
	datab => \dp|t4|Dout\(3),
	datac => \dp|Alu_2[15]~0_combout\,
	datad => \dp|Equal15~0_combout\,
	combout => \dp|Alu_2[3]~21_combout\);

-- Location: LCCOMB_X29_Y22_N26
\dp|rf|reg~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|rf|reg~28_combout\ = (!\reset~input_o\ & ((\dp|RF_D3[3]~27_combout\) # ((\cp|M5[1]~1_combout\ & \dp|t4|Dout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RF_D3[3]~27_combout\,
	datab => \cp|M5[1]~1_combout\,
	datac => \dp|t4|Dout\(3),
	datad => \reset~input_o\,
	combout => \dp|rf|reg~28_combout\);

-- Location: FF_X28_Y21_N27
\dp|rf|reg[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dp|rf|reg~28_combout\,
	sload => VCC,
	ena => \dp|rf|reg[0][10]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|reg[0][3]~q\);

-- Location: FF_X29_Y21_N25
\dp|rf|reg[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dp|rf|reg~28_combout\,
	sload => VCC,
	ena => \dp|rf|reg[1][4]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|reg[1][3]~q\);

-- Location: LCCOMB_X29_Y21_N24
\dp|T2_in[3]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|T2_in[3]~20_combout\ = (\dp|ir|Dout\(9) & (((\dp|rf|reg[1][3]~q\) # (\dp|ir|Dout\(10))))) # (!\dp|ir|Dout\(9) & (\dp|rf|reg[0][3]~q\ & ((!\dp|ir|Dout\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|reg[0][3]~q\,
	datab => \dp|ir|Dout\(9),
	datac => \dp|rf|reg[1][3]~q\,
	datad => \dp|ir|Dout\(10),
	combout => \dp|T2_in[3]~20_combout\);

-- Location: FF_X29_Y22_N1
\dp|rf|reg[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dp|rf|reg~28_combout\,
	sload => VCC,
	ena => \dp|rf|reg[2][6]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|reg[2][3]~q\);

-- Location: FF_X29_Y22_N3
\dp|rf|reg[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dp|rf|reg~28_combout\,
	sload => VCC,
	ena => \dp|rf|reg[3][7]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|reg[3][3]~q\);

-- Location: LCCOMB_X29_Y22_N2
\dp|T2_in[3]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|T2_in[3]~21_combout\ = (\dp|T2_in[3]~20_combout\ & (((\dp|rf|reg[3][3]~q\) # (!\dp|ir|Dout\(10))))) # (!\dp|T2_in[3]~20_combout\ & (\dp|rf|reg[2][3]~q\ & ((\dp|ir|Dout\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|T2_in[3]~20_combout\,
	datab => \dp|rf|reg[2][3]~q\,
	datac => \dp|rf|reg[3][3]~q\,
	datad => \dp|ir|Dout\(10),
	combout => \dp|T2_in[3]~21_combout\);

-- Location: FF_X27_Y20_N19
\dp|rf|reg[4][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dp|rf|reg~28_combout\,
	sload => VCC,
	ena => \dp|rf|reg[4][14]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|reg[4][3]~q\);

-- Location: FF_X27_Y20_N1
\dp|rf|reg[6][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dp|rf|reg~28_combout\,
	sload => VCC,
	ena => \dp|rf|reg[6][7]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|reg[6][3]~q\);

-- Location: LCCOMB_X27_Y20_N0
\dp|T2_in[3]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|T2_in[3]~22_combout\ = (\dp|ir|Dout\(9) & (((\dp|ir|Dout\(10))))) # (!\dp|ir|Dout\(9) & ((\dp|ir|Dout\(10) & ((\dp|rf|reg[6][3]~q\))) # (!\dp|ir|Dout\(10) & (\dp|rf|reg[4][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ir|Dout\(9),
	datab => \dp|rf|reg[4][3]~q\,
	datac => \dp|rf|reg[6][3]~q\,
	datad => \dp|ir|Dout\(10),
	combout => \dp|T2_in[3]~22_combout\);

-- Location: FF_X28_Y20_N7
\dp|rf|reg[5][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dp|rf|reg~28_combout\,
	sload => VCC,
	ena => \dp|rf|reg[5][13]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|reg[5][3]~q\);

-- Location: LCCOMB_X27_Y20_N28
\dp|T2_in[3]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|T2_in[3]~23_combout\ = (\dp|T2_in[3]~22_combout\ & ((\dp|rf|reg[7][3]~q\) # ((!\dp|ir|Dout\(9))))) # (!\dp|T2_in[3]~22_combout\ & (((\dp|ir|Dout\(9) & \dp|rf|reg[5][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|reg[7][3]~q\,
	datab => \dp|T2_in[3]~22_combout\,
	datac => \dp|ir|Dout\(9),
	datad => \dp|rf|reg[5][3]~q\,
	combout => \dp|T2_in[3]~23_combout\);

-- Location: LCCOMB_X30_Y20_N22
\dp|t2|Dout[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|t2|Dout[3]~3_combout\ = (\dp|ir|Dout\(11) & ((\dp|T2_in[3]~23_combout\))) # (!\dp|ir|Dout\(11) & (\dp|T2_in[3]~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|T2_in[3]~21_combout\,
	datab => \dp|T2_in[3]~23_combout\,
	datad => \dp|ir|Dout\(11),
	combout => \dp|t2|Dout[3]~3_combout\);

-- Location: FF_X30_Y20_N23
\dp|t2|Dout[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp|t2|Dout[3]~3_combout\,
	asdata => \dp|pc|Dout[3]~3_combout\,
	sload => \cp|M9~0_combout\,
	ena => \cp|WideOr20~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|t2|Dout\(3));

-- Location: LCCOMB_X32_Y22_N28
\dp|Alu_2[3]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Alu_2[3]~22_combout\ = (\dp|Alu_2[3]~21_combout\) # ((\cp|Equal8~0_combout\ & (\dp|t2|Dout\(3) & \cp|state.s4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Alu_2[3]~21_combout\,
	datab => \cp|Equal8~0_combout\,
	datac => \dp|t2|Dout\(3),
	datad => \cp|state.s4~q\,
	combout => \dp|Alu_2[3]~22_combout\);

-- Location: LCCOMB_X28_Y21_N26
\dp|rf|Mux12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|rf|Mux12~2_combout\ = (\dp|RF_A1[1]~1_combout\ & (((\dp|RF_A1[0]~0_combout\)))) # (!\dp|RF_A1[1]~1_combout\ & ((\dp|RF_A1[0]~0_combout\ & (\dp|rf|reg[1][3]~q\)) # (!\dp|RF_A1[0]~0_combout\ & ((\dp|rf|reg[0][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RF_A1[1]~1_combout\,
	datab => \dp|rf|reg[1][3]~q\,
	datac => \dp|rf|reg[0][3]~q\,
	datad => \dp|RF_A1[0]~0_combout\,
	combout => \dp|rf|Mux12~2_combout\);

-- Location: LCCOMB_X29_Y22_N0
\dp|rf|Mux12~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|rf|Mux12~3_combout\ = (\dp|rf|Mux12~2_combout\ & (((\dp|rf|reg[3][3]~q\)) # (!\dp|RF_A1[1]~1_combout\))) # (!\dp|rf|Mux12~2_combout\ & (\dp|RF_A1[1]~1_combout\ & (\dp|rf|reg[2][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|Mux12~2_combout\,
	datab => \dp|RF_A1[1]~1_combout\,
	datac => \dp|rf|reg[2][3]~q\,
	datad => \dp|rf|reg[3][3]~q\,
	combout => \dp|rf|Mux12~3_combout\);

-- Location: LCCOMB_X27_Y20_N18
\dp|rf|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|rf|Mux12~0_combout\ = (\dp|RF_A1[1]~1_combout\ & ((\dp|rf|reg[6][3]~q\) # ((\dp|RF_A1[0]~0_combout\)))) # (!\dp|RF_A1[1]~1_combout\ & (((\dp|rf|reg[4][3]~q\ & !\dp|RF_A1[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RF_A1[1]~1_combout\,
	datab => \dp|rf|reg[6][3]~q\,
	datac => \dp|rf|reg[4][3]~q\,
	datad => \dp|RF_A1[0]~0_combout\,
	combout => \dp|rf|Mux12~0_combout\);

-- Location: LCCOMB_X28_Y20_N6
\dp|rf|Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|rf|Mux12~1_combout\ = (\dp|rf|Mux12~0_combout\ & ((\dp|rf|reg[7][3]~q\) # ((!\dp|RF_A1[0]~0_combout\)))) # (!\dp|rf|Mux12~0_combout\ & (((\dp|rf|reg[5][3]~q\ & \dp|RF_A1[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|reg[7][3]~q\,
	datab => \dp|rf|Mux12~0_combout\,
	datac => \dp|rf|reg[5][3]~q\,
	datad => \dp|RF_A1[0]~0_combout\,
	combout => \dp|rf|Mux12~1_combout\);

-- Location: LCCOMB_X27_Y22_N22
\dp|rf|Mux12~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|rf|Mux12~4_combout\ = (\dp|RF_A1[2]~2_combout\ & ((\dp|rf|Mux12~1_combout\))) # (!\dp|RF_A1[2]~2_combout\ & (\dp|rf|Mux12~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|Mux12~3_combout\,
	datab => \dp|rf|Mux12~1_combout\,
	datac => \dp|RF_A1[2]~2_combout\,
	combout => \dp|rf|Mux12~4_combout\);

-- Location: FF_X27_Y22_N23
\dp|t1|Dout[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp|rf|Mux12~4_combout\,
	ena => \cp|state.s2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|t1|Dout\(3));

-- Location: LCCOMB_X32_Y22_N22
\dp|Alu_1[3]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Alu_1[3]~20_combout\ = (\cp|Selector17~0_combout\ & ((\dp|t2|Dout\(3)) # ((\cp|Selector18~2_combout\)))) # (!\cp|Selector17~0_combout\ & (((\dp|rf|reg[7][3]~q\ & !\cp|Selector18~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|t2|Dout\(3),
	datab => \dp|rf|reg[7][3]~q\,
	datac => \cp|Selector17~0_combout\,
	datad => \cp|Selector18~2_combout\,
	combout => \dp|Alu_1[3]~20_combout\);

-- Location: LCCOMB_X32_Y22_N16
\dp|Alu_1[3]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Alu_1[3]~21_combout\ = (\dp|Alu_1[3]~20_combout\ & (((\dp|ir|Dout\(3)) # (!\cp|Selector18~2_combout\)))) # (!\dp|Alu_1[3]~20_combout\ & (\dp|t1|Dout\(3) & ((\cp|Selector18~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|t1|Dout\(3),
	datab => \dp|ir|Dout\(3),
	datac => \dp|Alu_1[3]~20_combout\,
	datad => \cp|Selector18~2_combout\,
	combout => \dp|Alu_1[3]~21_combout\);

-- Location: LCCOMB_X34_Y22_N20
\dp|aluInst|OP_s[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|aluInst|OP_s[2]~4_combout\ = ((\dp|Alu_1[2]~23_combout\ $ (\dp|Alu_2[2]~25_combout\ $ (!\dp|aluInst|OP_s[1]~3\)))) # (GND)
-- \dp|aluInst|OP_s[2]~5\ = CARRY((\dp|Alu_1[2]~23_combout\ & ((\dp|Alu_2[2]~25_combout\) # (!\dp|aluInst|OP_s[1]~3\))) # (!\dp|Alu_1[2]~23_combout\ & (\dp|Alu_2[2]~25_combout\ & !\dp|aluInst|OP_s[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Alu_1[2]~23_combout\,
	datab => \dp|Alu_2[2]~25_combout\,
	datad => VCC,
	cin => \dp|aluInst|OP_s[1]~3\,
	combout => \dp|aluInst|OP_s[2]~4_combout\,
	cout => \dp|aluInst|OP_s[2]~5\);

-- Location: LCCOMB_X34_Y22_N22
\dp|aluInst|OP_s[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|aluInst|OP_s[3]~6_combout\ = (\dp|Alu_2[3]~22_combout\ & ((\dp|Alu_1[3]~21_combout\ & (\dp|aluInst|OP_s[2]~5\ & VCC)) # (!\dp|Alu_1[3]~21_combout\ & (!\dp|aluInst|OP_s[2]~5\)))) # (!\dp|Alu_2[3]~22_combout\ & ((\dp|Alu_1[3]~21_combout\ & 
-- (!\dp|aluInst|OP_s[2]~5\)) # (!\dp|Alu_1[3]~21_combout\ & ((\dp|aluInst|OP_s[2]~5\) # (GND)))))
-- \dp|aluInst|OP_s[3]~7\ = CARRY((\dp|Alu_2[3]~22_combout\ & (!\dp|Alu_1[3]~21_combout\ & !\dp|aluInst|OP_s[2]~5\)) # (!\dp|Alu_2[3]~22_combout\ & ((!\dp|aluInst|OP_s[2]~5\) # (!\dp|Alu_1[3]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Alu_2[3]~22_combout\,
	datab => \dp|Alu_1[3]~21_combout\,
	datad => VCC,
	cin => \dp|aluInst|OP_s[2]~5\,
	combout => \dp|aluInst|OP_s[3]~6_combout\,
	cout => \dp|aluInst|OP_s[3]~7\);

-- Location: LCCOMB_X34_Y22_N24
\dp|aluInst|OP_s[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|aluInst|OP_s[4]~8_combout\ = ((\dp|Alu_1[4]~19_combout\ $ (\dp|Alu_2[4]~20_combout\ $ (!\dp|aluInst|OP_s[3]~7\)))) # (GND)
-- \dp|aluInst|OP_s[4]~9\ = CARRY((\dp|Alu_1[4]~19_combout\ & ((\dp|Alu_2[4]~20_combout\) # (!\dp|aluInst|OP_s[3]~7\))) # (!\dp|Alu_1[4]~19_combout\ & (\dp|Alu_2[4]~20_combout\ & !\dp|aluInst|OP_s[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Alu_1[4]~19_combout\,
	datab => \dp|Alu_2[4]~20_combout\,
	datad => VCC,
	cin => \dp|aluInst|OP_s[3]~7\,
	combout => \dp|aluInst|OP_s[4]~8_combout\,
	cout => \dp|aluInst|OP_s[4]~9\);

-- Location: LCCOMB_X34_Y22_N26
\dp|aluInst|OP_s[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|aluInst|OP_s[5]~10_combout\ = (\dp|Alu_2[5]~18_combout\ & ((\dp|Alu_1[5]~17_combout\ & (\dp|aluInst|OP_s[4]~9\ & VCC)) # (!\dp|Alu_1[5]~17_combout\ & (!\dp|aluInst|OP_s[4]~9\)))) # (!\dp|Alu_2[5]~18_combout\ & ((\dp|Alu_1[5]~17_combout\ & 
-- (!\dp|aluInst|OP_s[4]~9\)) # (!\dp|Alu_1[5]~17_combout\ & ((\dp|aluInst|OP_s[4]~9\) # (GND)))))
-- \dp|aluInst|OP_s[5]~11\ = CARRY((\dp|Alu_2[5]~18_combout\ & (!\dp|Alu_1[5]~17_combout\ & !\dp|aluInst|OP_s[4]~9\)) # (!\dp|Alu_2[5]~18_combout\ & ((!\dp|aluInst|OP_s[4]~9\) # (!\dp|Alu_1[5]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Alu_2[5]~18_combout\,
	datab => \dp|Alu_1[5]~17_combout\,
	datad => VCC,
	cin => \dp|aluInst|OP_s[4]~9\,
	combout => \dp|aluInst|OP_s[5]~10_combout\,
	cout => \dp|aluInst|OP_s[5]~11\);

-- Location: LCCOMB_X34_Y22_N28
\dp|aluInst|OP_s[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|aluInst|OP_s[6]~12_combout\ = ((\dp|Alu_2[6]~16_combout\ $ (\dp|Alu_1[6]~15_combout\ $ (!\dp|aluInst|OP_s[5]~11\)))) # (GND)
-- \dp|aluInst|OP_s[6]~13\ = CARRY((\dp|Alu_2[6]~16_combout\ & ((\dp|Alu_1[6]~15_combout\) # (!\dp|aluInst|OP_s[5]~11\))) # (!\dp|Alu_2[6]~16_combout\ & (\dp|Alu_1[6]~15_combout\ & !\dp|aluInst|OP_s[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Alu_2[6]~16_combout\,
	datab => \dp|Alu_1[6]~15_combout\,
	datad => VCC,
	cin => \dp|aluInst|OP_s[5]~11\,
	combout => \dp|aluInst|OP_s[6]~12_combout\,
	cout => \dp|aluInst|OP_s[6]~13\);

-- Location: LCCOMB_X30_Y23_N14
\dp|pc|Dout[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|pc|Dout[6]~6_combout\ = (\cp|Alu_op~0_combout\ & (\dp|aluInst|OP~8_combout\)) # (!\cp|Alu_op~0_combout\ & ((\dp|aluInst|OP_s[6]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|aluInst|OP~8_combout\,
	datab => \cp|Alu_op~0_combout\,
	datad => \dp|aluInst|OP_s[6]~12_combout\,
	combout => \dp|pc|Dout[6]~6_combout\);

-- Location: FF_X30_Y23_N15
\dp|pc|Dout[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp|pc|Dout[6]~6_combout\,
	asdata => \dp|rf|Mux9~4_combout\,
	sload => \cp|state.s14~q\,
	ena => \cp|WideOr18~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|pc|Dout\(6));

-- Location: LCCOMB_X31_Y23_N24
\dp|RF_D3[6]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|RF_D3[6]~30_combout\ = (!\cp|M5[1]~1_combout\ & ((\dp|Equal5~0_combout\ & ((\dp|t3|Dout\(6)))) # (!\dp|Equal5~0_combout\ & (\dp|pc|Dout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|pc|Dout\(6),
	datab => \dp|Equal5~0_combout\,
	datac => \dp|t3|Dout\(6),
	datad => \cp|M5[1]~1_combout\,
	combout => \dp|RF_D3[6]~30_combout\);

-- Location: LCCOMB_X31_Y23_N14
\dp|rf|reg~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|rf|reg~31_combout\ = (!\reset~input_o\ & ((\dp|RF_D3[6]~30_combout\) # ((\dp|t4|Dout\(6) & \cp|M5[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|t4|Dout\(6),
	datab => \dp|RF_D3[6]~30_combout\,
	datac => \cp|M5[1]~1_combout\,
	datad => \reset~input_o\,
	combout => \dp|rf|reg~31_combout\);

-- Location: FF_X27_Y21_N11
\dp|rf|reg[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dp|rf|reg~31_combout\,
	sload => VCC,
	ena => \dp|rf|reg[2][6]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|reg[2][6]~q\);

-- Location: LCCOMB_X27_Y21_N28
\dp|T2_in[6]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|T2_in[6]~32_combout\ = (\dp|ir|Dout\(9) & (((\dp|rf|reg[1][6]~q\) # (\dp|ir|Dout\(10))))) # (!\dp|ir|Dout\(9) & (\dp|rf|reg[0][6]~q\ & ((!\dp|ir|Dout\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ir|Dout\(9),
	datab => \dp|rf|reg[0][6]~q\,
	datac => \dp|rf|reg[1][6]~q\,
	datad => \dp|ir|Dout\(10),
	combout => \dp|T2_in[6]~32_combout\);

-- Location: LCCOMB_X27_Y21_N14
\dp|T2_in[6]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|T2_in[6]~33_combout\ = (\dp|ir|Dout\(10) & ((\dp|T2_in[6]~32_combout\ & ((\dp|rf|reg[3][6]~q\))) # (!\dp|T2_in[6]~32_combout\ & (\dp|rf|reg[2][6]~q\)))) # (!\dp|ir|Dout\(10) & (((\dp|T2_in[6]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|reg[2][6]~q\,
	datab => \dp|ir|Dout\(10),
	datac => \dp|rf|reg[3][6]~q\,
	datad => \dp|T2_in[6]~32_combout\,
	combout => \dp|T2_in[6]~33_combout\);

-- Location: LCCOMB_X26_Y21_N6
\dp|T2_in[6]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|T2_in[6]~34_combout\ = (\dp|ir|Dout\(9) & (((\dp|ir|Dout\(10))))) # (!\dp|ir|Dout\(9) & ((\dp|ir|Dout\(10) & ((\dp|rf|reg[6][6]~q\))) # (!\dp|ir|Dout\(10) & (\dp|rf|reg[4][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ir|Dout\(9),
	datab => \dp|rf|reg[4][6]~q\,
	datac => \dp|rf|reg[6][6]~q\,
	datad => \dp|ir|Dout\(10),
	combout => \dp|T2_in[6]~34_combout\);

-- Location: LCCOMB_X32_Y21_N16
\dp|T2_in[6]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|T2_in[6]~35_combout\ = (\dp|T2_in[6]~34_combout\ & (((\dp|rf|reg[7][6]~q\)) # (!\dp|ir|Dout\(9)))) # (!\dp|T2_in[6]~34_combout\ & (\dp|ir|Dout\(9) & (\dp|rf|reg[5][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|T2_in[6]~34_combout\,
	datab => \dp|ir|Dout\(9),
	datac => \dp|rf|reg[5][6]~q\,
	datad => \dp|rf|reg[7][6]~q\,
	combout => \dp|T2_in[6]~35_combout\);

-- Location: LCCOMB_X32_Y21_N24
\dp|t2|Dout[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|t2|Dout[6]~6_combout\ = (\dp|ir|Dout\(11) & ((\dp|T2_in[6]~35_combout\))) # (!\dp|ir|Dout\(11) & (\dp|T2_in[6]~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ir|Dout\(11),
	datab => \dp|T2_in[6]~33_combout\,
	datad => \dp|T2_in[6]~35_combout\,
	combout => \dp|t2|Dout[6]~6_combout\);

-- Location: FF_X32_Y21_N25
\dp|t2|Dout[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp|t2|Dout[6]~6_combout\,
	asdata => \dp|pc|Dout[6]~6_combout\,
	sload => \cp|M9~0_combout\,
	ena => \cp|WideOr20~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|t2|Dout\(6));

-- Location: LCCOMB_X31_Y23_N28
\dp|Alu_2[6]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Alu_2[6]~16_combout\ = (\dp|Alu_2[6]~15_combout\) # ((\dp|t2|Dout\(6) & \dp|Equal16~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dp|t2|Dout\(6),
	datac => \dp|Equal16~0_combout\,
	datad => \dp|Alu_2[6]~15_combout\,
	combout => \dp|Alu_2[6]~16_combout\);

-- Location: LCCOMB_X34_Y22_N30
\dp|aluInst|OP_s[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|aluInst|OP_s[7]~14_combout\ = (\dp|Alu_1[7]~13_combout\ & ((\dp|Alu_2[7]~14_combout\ & (\dp|aluInst|OP_s[6]~13\ & VCC)) # (!\dp|Alu_2[7]~14_combout\ & (!\dp|aluInst|OP_s[6]~13\)))) # (!\dp|Alu_1[7]~13_combout\ & ((\dp|Alu_2[7]~14_combout\ & 
-- (!\dp|aluInst|OP_s[6]~13\)) # (!\dp|Alu_2[7]~14_combout\ & ((\dp|aluInst|OP_s[6]~13\) # (GND)))))
-- \dp|aluInst|OP_s[7]~15\ = CARRY((\dp|Alu_1[7]~13_combout\ & (!\dp|Alu_2[7]~14_combout\ & !\dp|aluInst|OP_s[6]~13\)) # (!\dp|Alu_1[7]~13_combout\ & ((!\dp|aluInst|OP_s[6]~13\) # (!\dp|Alu_2[7]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Alu_1[7]~13_combout\,
	datab => \dp|Alu_2[7]~14_combout\,
	datad => VCC,
	cin => \dp|aluInst|OP_s[6]~13\,
	combout => \dp|aluInst|OP_s[7]~14_combout\,
	cout => \dp|aluInst|OP_s[7]~15\);

-- Location: LCCOMB_X34_Y22_N6
\dp|aluInst|OP~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|aluInst|OP~9_combout\ = ((!\dp|Alu_2[7]~13_combout\ & ((!\dp|Equal16~0_combout\) # (!\dp|t2|Dout\(7))))) # (!\dp|Alu_1[7]~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|t2|Dout\(7),
	datab => \dp|Equal16~0_combout\,
	datac => \dp|Alu_2[7]~13_combout\,
	datad => \dp|Alu_1[7]~13_combout\,
	combout => \dp|aluInst|OP~9_combout\);

-- Location: LCCOMB_X34_Y22_N4
\dp|pc|Dout[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|pc|Dout[7]~7_combout\ = (\cp|Alu_op~0_combout\ & ((\dp|aluInst|OP~9_combout\))) # (!\cp|Alu_op~0_combout\ & (\dp|aluInst|OP_s[7]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|aluInst|OP_s[7]~14_combout\,
	datab => \cp|Alu_op~0_combout\,
	datad => \dp|aluInst|OP~9_combout\,
	combout => \dp|pc|Dout[7]~7_combout\);

-- Location: FF_X34_Y22_N5
\dp|pc|Dout[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp|pc|Dout[7]~7_combout\,
	asdata => \dp|rf|Mux8~4_combout\,
	sload => \cp|state.s14~q\,
	ena => \cp|WideOr18~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|pc|Dout\(7));

-- Location: LCCOMB_X30_Y22_N12
\dp|RF_D3[7]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|RF_D3[7]~32_combout\ = (!\cp|M5[1]~1_combout\ & ((\dp|Equal5~0_combout\ & ((\dp|t3|Dout\(7)))) # (!\dp|Equal5~0_combout\ & (\dp|pc|Dout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp|M5[1]~1_combout\,
	datab => \dp|pc|Dout\(7),
	datac => \dp|Equal5~0_combout\,
	datad => \dp|t3|Dout\(7),
	combout => \dp|RF_D3[7]~32_combout\);

-- Location: LCCOMB_X29_Y22_N8
\dp|rf|reg~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|rf|reg~32_combout\ = (!\reset~input_o\ & ((\dp|RF_D3[7]~32_combout\) # ((\dp|t4|Dout\(7) & \cp|M5[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|t4|Dout\(7),
	datab => \cp|M5[1]~1_combout\,
	datac => \dp|RF_D3[7]~32_combout\,
	datad => \reset~input_o\,
	combout => \dp|rf|reg~32_combout\);

-- Location: FF_X29_Y22_N31
\dp|rf|reg[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dp|rf|reg~32_combout\,
	sload => VCC,
	ena => \dp|rf|reg[3][7]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|reg[3][7]~q\);

-- Location: LCCOMB_X28_Y21_N10
\dp|rf|Mux8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|rf|Mux8~2_combout\ = (\dp|RF_A1[0]~0_combout\ & ((\dp|rf|reg[1][7]~q\) # ((\dp|RF_A1[1]~1_combout\)))) # (!\dp|RF_A1[0]~0_combout\ & (((\dp|rf|reg[0][7]~q\ & !\dp|RF_A1[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|reg[1][7]~q\,
	datab => \dp|RF_A1[0]~0_combout\,
	datac => \dp|rf|reg[0][7]~q\,
	datad => \dp|RF_A1[1]~1_combout\,
	combout => \dp|rf|Mux8~2_combout\);

-- Location: LCCOMB_X29_Y22_N20
\dp|rf|Mux8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|rf|Mux8~3_combout\ = (\dp|RF_A1[1]~1_combout\ & ((\dp|rf|Mux8~2_combout\ & (\dp|rf|reg[3][7]~q\)) # (!\dp|rf|Mux8~2_combout\ & ((\dp|rf|reg[2][7]~q\))))) # (!\dp|RF_A1[1]~1_combout\ & (((\dp|rf|Mux8~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|reg[3][7]~q\,
	datab => \dp|RF_A1[1]~1_combout\,
	datac => \dp|rf|reg[2][7]~q\,
	datad => \dp|rf|Mux8~2_combout\,
	combout => \dp|rf|Mux8~3_combout\);

-- Location: LCCOMB_X26_Y21_N28
\dp|rf|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|rf|Mux8~0_combout\ = (\dp|RF_A1[1]~1_combout\ & ((\dp|rf|reg[6][7]~q\) # ((\dp|RF_A1[0]~0_combout\)))) # (!\dp|RF_A1[1]~1_combout\ & (((\dp|rf|reg[4][7]~q\ & !\dp|RF_A1[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RF_A1[1]~1_combout\,
	datab => \dp|rf|reg[6][7]~q\,
	datac => \dp|rf|reg[4][7]~q\,
	datad => \dp|RF_A1[0]~0_combout\,
	combout => \dp|rf|Mux8~0_combout\);

-- Location: LCCOMB_X31_Y21_N0
\dp|rf|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|rf|Mux8~1_combout\ = (\dp|rf|Mux8~0_combout\ & ((\dp|rf|reg[7][7]~q\) # ((!\dp|RF_A1[0]~0_combout\)))) # (!\dp|rf|Mux8~0_combout\ & (((\dp|rf|reg[5][7]~q\ & \dp|RF_A1[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|reg[7][7]~q\,
	datab => \dp|rf|Mux8~0_combout\,
	datac => \dp|rf|reg[5][7]~q\,
	datad => \dp|RF_A1[0]~0_combout\,
	combout => \dp|rf|Mux8~1_combout\);

-- Location: LCCOMB_X31_Y21_N8
\dp|rf|Mux8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|rf|Mux8~4_combout\ = (\dp|RF_A1[2]~2_combout\ & ((\dp|rf|Mux8~1_combout\))) # (!\dp|RF_A1[2]~2_combout\ & (\dp|rf|Mux8~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|Mux8~3_combout\,
	datab => \dp|rf|Mux8~1_combout\,
	datad => \dp|RF_A1[2]~2_combout\,
	combout => \dp|rf|Mux8~4_combout\);

-- Location: FF_X31_Y21_N9
\dp|t1|Dout[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp|rf|Mux8~4_combout\,
	ena => \cp|state.s2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|t1|Dout\(7));

-- Location: LCCOMB_X31_Y22_N26
\dp|Alu_1[7]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Alu_1[7]~12_combout\ = (\cp|Selector18~2_combout\ & (((\cp|Selector17~0_combout\)))) # (!\cp|Selector18~2_combout\ & ((\cp|Selector17~0_combout\ & (\dp|t2|Dout\(7))) # (!\cp|Selector17~0_combout\ & ((\dp|rf|reg[7][7]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp|Selector18~2_combout\,
	datab => \dp|t2|Dout\(7),
	datac => \cp|Selector17~0_combout\,
	datad => \dp|rf|reg[7][7]~q\,
	combout => \dp|Alu_1[7]~12_combout\);

-- Location: LCCOMB_X31_Y22_N12
\dp|Alu_1[7]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Alu_1[7]~13_combout\ = (\cp|Selector18~2_combout\ & ((\dp|Alu_1[7]~12_combout\ & ((\dp|SE_out[7]~1_combout\))) # (!\dp|Alu_1[7]~12_combout\ & (\dp|t1|Dout\(7))))) # (!\cp|Selector18~2_combout\ & (((\dp|Alu_1[7]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp|Selector18~2_combout\,
	datab => \dp|t1|Dout\(7),
	datac => \dp|Alu_1[7]~12_combout\,
	datad => \dp|SE_out[7]~1_combout\,
	combout => \dp|Alu_1[7]~13_combout\);

-- Location: LCCOMB_X34_Y21_N0
\dp|aluInst|OP_s[8]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|aluInst|OP_s[8]~16_combout\ = ((\dp|Alu_2[8]~12_combout\ $ (\dp|Alu_1[8]~11_combout\ $ (!\dp|aluInst|OP_s[7]~15\)))) # (GND)
-- \dp|aluInst|OP_s[8]~17\ = CARRY((\dp|Alu_2[8]~12_combout\ & ((\dp|Alu_1[8]~11_combout\) # (!\dp|aluInst|OP_s[7]~15\))) # (!\dp|Alu_2[8]~12_combout\ & (\dp|Alu_1[8]~11_combout\ & !\dp|aluInst|OP_s[7]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Alu_2[8]~12_combout\,
	datab => \dp|Alu_1[8]~11_combout\,
	datad => VCC,
	cin => \dp|aluInst|OP_s[7]~15\,
	combout => \dp|aluInst|OP_s[8]~16_combout\,
	cout => \dp|aluInst|OP_s[8]~17\);

-- Location: LCCOMB_X34_Y21_N2
\dp|aluInst|OP_s[9]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|aluInst|OP_s[9]~18_combout\ = (\dp|Alu_2[9]~10_combout\ & ((\dp|Alu_1[9]~9_combout\ & (\dp|aluInst|OP_s[8]~17\ & VCC)) # (!\dp|Alu_1[9]~9_combout\ & (!\dp|aluInst|OP_s[8]~17\)))) # (!\dp|Alu_2[9]~10_combout\ & ((\dp|Alu_1[9]~9_combout\ & 
-- (!\dp|aluInst|OP_s[8]~17\)) # (!\dp|Alu_1[9]~9_combout\ & ((\dp|aluInst|OP_s[8]~17\) # (GND)))))
-- \dp|aluInst|OP_s[9]~19\ = CARRY((\dp|Alu_2[9]~10_combout\ & (!\dp|Alu_1[9]~9_combout\ & !\dp|aluInst|OP_s[8]~17\)) # (!\dp|Alu_2[9]~10_combout\ & ((!\dp|aluInst|OP_s[8]~17\) # (!\dp|Alu_1[9]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Alu_2[9]~10_combout\,
	datab => \dp|Alu_1[9]~9_combout\,
	datad => VCC,
	cin => \dp|aluInst|OP_s[8]~17\,
	combout => \dp|aluInst|OP_s[9]~18_combout\,
	cout => \dp|aluInst|OP_s[9]~19\);

-- Location: LCCOMB_X34_Y21_N18
\dp|pc|Dout[9]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|pc|Dout[9]~9_combout\ = (\cp|Alu_op~0_combout\ & (\dp|aluInst|OP~11_combout\)) # (!\cp|Alu_op~0_combout\ & ((\dp|aluInst|OP_s[9]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp|Alu_op~0_combout\,
	datab => \dp|aluInst|OP~11_combout\,
	datad => \dp|aluInst|OP_s[9]~18_combout\,
	combout => \dp|pc|Dout[9]~9_combout\);

-- Location: FF_X34_Y21_N19
\dp|pc|Dout[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp|pc|Dout[9]~9_combout\,
	asdata => \dp|rf|Mux6~4_combout\,
	sload => \cp|state.s14~q\,
	ena => \cp|WideOr18~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|pc|Dout\(9));

-- Location: LCCOMB_X30_Y22_N22
\dp|RF_D3[9]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|RF_D3[9]~49_combout\ = (\dp|RF_D3[9]~35_combout\) # ((\cp|M5[1]~0_combout\ & (\cp|state.s3~q\ & \dp|t4|Dout\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RF_D3[9]~35_combout\,
	datab => \cp|M5[1]~0_combout\,
	datac => \cp|state.s3~q\,
	datad => \dp|t4|Dout\(9),
	combout => \dp|RF_D3[9]~49_combout\);

-- Location: LCCOMB_X30_Y22_N14
\dp|rf|reg~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|rf|reg~12_combout\ = (\dp|rf|process_0~1_combout\ & (\dp|pc|Dout\(9))) # (!\dp|rf|process_0~1_combout\ & ((\dp|RF_D3[9]~49_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dp|pc|Dout\(9),
	datac => \dp|RF_D3[9]~49_combout\,
	datad => \dp|rf|process_0~1_combout\,
	combout => \dp|rf|reg~12_combout\);

-- Location: FF_X30_Y22_N15
\dp|rf|reg[7][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp|rf|reg~12_combout\,
	sclr => \reset~input_o\,
	ena => \dp|rf|reg[7][12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|reg[7][9]~q\);

-- Location: LCCOMB_X27_Y20_N20
\dp|rf|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|rf|Mux6~0_combout\ = (\dp|RF_A1[0]~0_combout\ & (((\dp|RF_A1[1]~1_combout\)))) # (!\dp|RF_A1[0]~0_combout\ & ((\dp|RF_A1[1]~1_combout\ & (\dp|rf|reg[6][9]~q\)) # (!\dp|RF_A1[1]~1_combout\ & ((\dp|rf|reg[4][9]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|reg[6][9]~q\,
	datab => \dp|RF_A1[0]~0_combout\,
	datac => \dp|rf|reg[4][9]~q\,
	datad => \dp|RF_A1[1]~1_combout\,
	combout => \dp|rf|Mux6~0_combout\);

-- Location: LCCOMB_X31_Y21_N18
\dp|rf|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|rf|Mux6~1_combout\ = (\dp|RF_A1[0]~0_combout\ & ((\dp|rf|Mux6~0_combout\ & (\dp|rf|reg[7][9]~q\)) # (!\dp|rf|Mux6~0_combout\ & ((\dp|rf|reg[5][9]~q\))))) # (!\dp|RF_A1[0]~0_combout\ & (((\dp|rf|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|reg[7][9]~q\,
	datab => \dp|RF_A1[0]~0_combout\,
	datac => \dp|rf|reg[5][9]~q\,
	datad => \dp|rf|Mux6~0_combout\,
	combout => \dp|rf|Mux6~1_combout\);

-- Location: LCCOMB_X30_Y21_N18
\dp|rf|Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|rf|Mux6~2_combout\ = (\dp|RF_A1[1]~1_combout\ & (((\dp|RF_A1[0]~0_combout\)))) # (!\dp|RF_A1[1]~1_combout\ & ((\dp|RF_A1[0]~0_combout\ & (\dp|rf|reg[1][9]~q\)) # (!\dp|RF_A1[0]~0_combout\ & ((\dp|rf|reg[0][9]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|reg[1][9]~q\,
	datab => \dp|RF_A1[1]~1_combout\,
	datac => \dp|rf|reg[0][9]~q\,
	datad => \dp|RF_A1[0]~0_combout\,
	combout => \dp|rf|Mux6~2_combout\);

-- Location: LCCOMB_X30_Y21_N16
\dp|rf|Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|rf|Mux6~3_combout\ = (\dp|RF_A1[1]~1_combout\ & ((\dp|rf|Mux6~2_combout\ & (\dp|rf|reg[3][9]~q\)) # (!\dp|rf|Mux6~2_combout\ & ((\dp|rf|reg[2][9]~q\))))) # (!\dp|RF_A1[1]~1_combout\ & (((\dp|rf|Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|reg[3][9]~q\,
	datab => \dp|RF_A1[1]~1_combout\,
	datac => \dp|rf|reg[2][9]~q\,
	datad => \dp|rf|Mux6~2_combout\,
	combout => \dp|rf|Mux6~3_combout\);

-- Location: LCCOMB_X31_Y21_N22
\dp|rf|Mux6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|rf|Mux6~4_combout\ = (\dp|RF_A1[2]~2_combout\ & (\dp|rf|Mux6~1_combout\)) # (!\dp|RF_A1[2]~2_combout\ & ((\dp|rf|Mux6~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dp|rf|Mux6~1_combout\,
	datac => \dp|rf|Mux6~3_combout\,
	datad => \dp|RF_A1[2]~2_combout\,
	combout => \dp|rf|Mux6~4_combout\);

-- Location: LCCOMB_X30_Y18_N4
\dp|T3_in[9]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|T3_in[9]~24_combout\ = (\cp|M11[0]~0_combout\ & ((\cp|WideOr19~0_combout\ & ((\dp|rf|reg[7][9]~q\))) # (!\cp|WideOr19~0_combout\ & (\dp|rf|Mux6~4_combout\)))) # (!\cp|M11[0]~0_combout\ & (!\cp|WideOr19~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp|M11[0]~0_combout\,
	datab => \cp|WideOr19~0_combout\,
	datac => \dp|rf|Mux6~4_combout\,
	datad => \dp|rf|reg[7][9]~q\,
	combout => \dp|T3_in[9]~24_combout\);

-- Location: LCCOMB_X30_Y18_N28
\dp|T3_in[9]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|T3_in[9]~25_combout\ = (\dp|T3_in[9]~24_combout\ & (((\cp|M11[0]~0_combout\) # (\dp|pc|Dout[9]~9_combout\)))) # (!\dp|T3_in[9]~24_combout\ & (\dp|mem|ram_rtl_0|auto_generated|mux2|result_node[9]~19_combout\ & (!\cp|M11[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[9]~19_combout\,
	datab => \dp|T3_in[9]~24_combout\,
	datac => \cp|M11[0]~0_combout\,
	datad => \dp|pc|Dout[9]~9_combout\,
	combout => \dp|T3_in[9]~25_combout\);

-- Location: FF_X30_Y18_N29
\dp|t3|Dout[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp|T3_in[9]~25_combout\,
	ena => \cp|WideOr19~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|t3|Dout\(9));

-- Location: LCCOMB_X31_Y20_N20
\dp|Alu_2[9]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Alu_2[9]~9_combout\ = (\dp|Alu_2[15]~0_combout\ & ((\dp|t3|Dout\(9)) # ((!\dp|Equal15~0_combout\ & \dp|t4|Dout\(9))))) # (!\dp|Alu_2[15]~0_combout\ & (!\dp|Equal15~0_combout\ & ((\dp|t4|Dout\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Alu_2[15]~0_combout\,
	datab => \dp|Equal15~0_combout\,
	datac => \dp|t3|Dout\(9),
	datad => \dp|t4|Dout\(9),
	combout => \dp|Alu_2[9]~9_combout\);

-- Location: LCCOMB_X34_Y21_N26
\dp|Alu_2[9]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Alu_2[9]~10_combout\ = (\dp|Alu_2[9]~9_combout\) # ((\dp|Equal16~0_combout\ & \dp|t2|Dout\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dp|Equal16~0_combout\,
	datac => \dp|Alu_2[9]~9_combout\,
	datad => \dp|t2|Dout\(9),
	combout => \dp|Alu_2[9]~10_combout\);

-- Location: LCCOMB_X34_Y21_N4
\dp|aluInst|OP_s[10]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|aluInst|OP_s[10]~20_combout\ = ((\dp|Alu_1[10]~7_combout\ $ (\dp|Alu_2[10]~8_combout\ $ (!\dp|aluInst|OP_s[9]~19\)))) # (GND)
-- \dp|aluInst|OP_s[10]~21\ = CARRY((\dp|Alu_1[10]~7_combout\ & ((\dp|Alu_2[10]~8_combout\) # (!\dp|aluInst|OP_s[9]~19\))) # (!\dp|Alu_1[10]~7_combout\ & (\dp|Alu_2[10]~8_combout\ & !\dp|aluInst|OP_s[9]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Alu_1[10]~7_combout\,
	datab => \dp|Alu_2[10]~8_combout\,
	datad => VCC,
	cin => \dp|aluInst|OP_s[9]~19\,
	combout => \dp|aluInst|OP_s[10]~20_combout\,
	cout => \dp|aluInst|OP_s[10]~21\);

-- Location: LCCOMB_X34_Y21_N6
\dp|aluInst|OP_s[11]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|aluInst|OP_s[11]~22_combout\ = (\dp|Alu_2[11]~6_combout\ & ((\dp|Alu_1[11]~5_combout\ & (\dp|aluInst|OP_s[10]~21\ & VCC)) # (!\dp|Alu_1[11]~5_combout\ & (!\dp|aluInst|OP_s[10]~21\)))) # (!\dp|Alu_2[11]~6_combout\ & ((\dp|Alu_1[11]~5_combout\ & 
-- (!\dp|aluInst|OP_s[10]~21\)) # (!\dp|Alu_1[11]~5_combout\ & ((\dp|aluInst|OP_s[10]~21\) # (GND)))))
-- \dp|aluInst|OP_s[11]~23\ = CARRY((\dp|Alu_2[11]~6_combout\ & (!\dp|Alu_1[11]~5_combout\ & !\dp|aluInst|OP_s[10]~21\)) # (!\dp|Alu_2[11]~6_combout\ & ((!\dp|aluInst|OP_s[10]~21\) # (!\dp|Alu_1[11]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Alu_2[11]~6_combout\,
	datab => \dp|Alu_1[11]~5_combout\,
	datad => VCC,
	cin => \dp|aluInst|OP_s[10]~21\,
	combout => \dp|aluInst|OP_s[11]~22_combout\,
	cout => \dp|aluInst|OP_s[11]~23\);

-- Location: LCCOMB_X31_Y19_N16
\dp|pc|Dout[11]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|pc|Dout[11]~11_combout\ = (\cp|Alu_op~0_combout\ & (\dp|aluInst|OP~13_combout\)) # (!\cp|Alu_op~0_combout\ & ((\dp|aluInst|OP_s[11]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp|Alu_op~0_combout\,
	datab => \dp|aluInst|OP~13_combout\,
	datad => \dp|aluInst|OP_s[11]~22_combout\,
	combout => \dp|pc|Dout[11]~11_combout\);

-- Location: FF_X31_Y19_N17
\dp|pc|Dout[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp|pc|Dout[11]~11_combout\,
	asdata => \dp|rf|Mux4~4_combout\,
	sload => \cp|state.s14~q\,
	ena => \cp|WideOr18~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|pc|Dout\(11));

-- Location: LCCOMB_X31_Y19_N22
\dp|RF_D3[11]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|RF_D3[11]~51_combout\ = (\dp|RF_D3[11]~37_combout\) # ((\cp|state.s3~q\ & (\dp|t4|Dout\(11) & \cp|M5[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RF_D3[11]~37_combout\,
	datab => \cp|state.s3~q\,
	datac => \dp|t4|Dout\(11),
	datad => \cp|M5[1]~0_combout\,
	combout => \dp|RF_D3[11]~51_combout\);

-- Location: LCCOMB_X29_Y23_N12
\dp|rf|reg~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|rf|reg~14_combout\ = (\dp|rf|process_0~1_combout\ & (\dp|pc|Dout\(11))) # (!\dp|rf|process_0~1_combout\ & ((\dp|RF_D3[11]~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|pc|Dout\(11),
	datab => \dp|rf|process_0~1_combout\,
	datad => \dp|RF_D3[11]~51_combout\,
	combout => \dp|rf|reg~14_combout\);

-- Location: FF_X29_Y23_N13
\dp|rf|reg[7][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp|rf|reg~14_combout\,
	sclr => \reset~input_o\,
	ena => \dp|rf|reg[7][12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|reg[7][11]~q\);

-- Location: LCCOMB_X26_Y21_N24
\dp|rf|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|rf|Mux4~0_combout\ = (\dp|RF_A1[1]~1_combout\ & ((\dp|rf|reg[6][11]~q\) # ((\dp|RF_A1[0]~0_combout\)))) # (!\dp|RF_A1[1]~1_combout\ & (((\dp|rf|reg[4][11]~q\ & !\dp|RF_A1[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RF_A1[1]~1_combout\,
	datab => \dp|rf|reg[6][11]~q\,
	datac => \dp|rf|reg[4][11]~q\,
	datad => \dp|RF_A1[0]~0_combout\,
	combout => \dp|rf|Mux4~0_combout\);

-- Location: LCCOMB_X31_Y21_N30
\dp|rf|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|rf|Mux4~1_combout\ = (\dp|rf|Mux4~0_combout\ & ((\dp|rf|reg[7][11]~q\) # ((!\dp|RF_A1[0]~0_combout\)))) # (!\dp|rf|Mux4~0_combout\ & (((\dp|rf|reg[5][11]~q\ & \dp|RF_A1[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|reg[7][11]~q\,
	datab => \dp|rf|Mux4~0_combout\,
	datac => \dp|rf|reg[5][11]~q\,
	datad => \dp|RF_A1[0]~0_combout\,
	combout => \dp|rf|Mux4~1_combout\);

-- Location: LCCOMB_X28_Y21_N8
\dp|rf|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|rf|Mux4~2_combout\ = (\dp|RF_A1[1]~1_combout\ & (((\dp|RF_A1[0]~0_combout\)))) # (!\dp|RF_A1[1]~1_combout\ & ((\dp|RF_A1[0]~0_combout\ & (\dp|rf|reg[1][11]~q\)) # (!\dp|RF_A1[0]~0_combout\ & ((\dp|rf|reg[0][11]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RF_A1[1]~1_combout\,
	datab => \dp|rf|reg[1][11]~q\,
	datac => \dp|rf|reg[0][11]~q\,
	datad => \dp|RF_A1[0]~0_combout\,
	combout => \dp|rf|Mux4~2_combout\);

-- Location: LCCOMB_X27_Y21_N30
\dp|rf|Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|rf|Mux4~3_combout\ = (\dp|RF_A1[1]~1_combout\ & ((\dp|rf|Mux4~2_combout\ & ((\dp|rf|reg[3][11]~q\))) # (!\dp|rf|Mux4~2_combout\ & (\dp|rf|reg[2][11]~q\)))) # (!\dp|RF_A1[1]~1_combout\ & (\dp|rf|Mux4~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RF_A1[1]~1_combout\,
	datab => \dp|rf|Mux4~2_combout\,
	datac => \dp|rf|reg[2][11]~q\,
	datad => \dp|rf|reg[3][11]~q\,
	combout => \dp|rf|Mux4~3_combout\);

-- Location: LCCOMB_X31_Y21_N16
\dp|rf|Mux4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|rf|Mux4~4_combout\ = (\dp|RF_A1[2]~2_combout\ & (\dp|rf|Mux4~1_combout\)) # (!\dp|RF_A1[2]~2_combout\ & ((\dp|rf|Mux4~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|Mux4~1_combout\,
	datab => \dp|RF_A1[2]~2_combout\,
	datad => \dp|rf|Mux4~3_combout\,
	combout => \dp|rf|Mux4~4_combout\);

-- Location: LCCOMB_X31_Y21_N26
\dp|t1|Dout[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|t1|Dout[11]~feeder_combout\ = \dp|rf|Mux4~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dp|rf|Mux4~4_combout\,
	combout => \dp|t1|Dout[11]~feeder_combout\);

-- Location: FF_X31_Y21_N27
\dp|t1|Dout[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp|t1|Dout[11]~feeder_combout\,
	ena => \cp|state.s2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|t1|Dout\(11));

-- Location: LCCOMB_X31_Y19_N26
\dp|Alu_1[11]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Alu_1[11]~4_combout\ = (\cp|Selector17~0_combout\ & (((\dp|t2|Dout\(11)) # (\cp|Selector18~2_combout\)))) # (!\cp|Selector17~0_combout\ & (\dp|rf|reg[7][11]~q\ & ((!\cp|Selector18~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|reg[7][11]~q\,
	datab => \cp|Selector17~0_combout\,
	datac => \dp|t2|Dout\(11),
	datad => \cp|Selector18~2_combout\,
	combout => \dp|Alu_1[11]~4_combout\);

-- Location: LCCOMB_X31_Y19_N4
\dp|Alu_1[11]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Alu_1[11]~5_combout\ = (\dp|Alu_1[11]~4_combout\ & ((\dp|SE_out[14]~0_combout\) # ((!\cp|Selector18~2_combout\)))) # (!\dp|Alu_1[11]~4_combout\ & (((\dp|t1|Dout\(11) & \cp|Selector18~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|SE_out[14]~0_combout\,
	datab => \dp|t1|Dout\(11),
	datac => \dp|Alu_1[11]~4_combout\,
	datad => \cp|Selector18~2_combout\,
	combout => \dp|Alu_1[11]~5_combout\);

-- Location: LCCOMB_X31_Y19_N28
\dp|aluInst|OP~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|aluInst|OP~13_combout\ = ((!\dp|Alu_2[11]~5_combout\ & ((!\dp|Equal16~0_combout\) # (!\dp|t2|Dout\(11))))) # (!\dp|Alu_1[11]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Alu_2[11]~5_combout\,
	datab => \dp|Alu_1[11]~5_combout\,
	datac => \dp|t2|Dout\(11),
	datad => \dp|Equal16~0_combout\,
	combout => \dp|aluInst|OP~13_combout\);

-- Location: LCCOMB_X31_Y19_N30
\dp|T3_in[11]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|T3_in[11]~28_combout\ = (\cp|Alu_op~0_combout\ & (\dp|aluInst|OP~13_combout\)) # (!\cp|Alu_op~0_combout\ & ((\dp|aluInst|OP_s[11]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dp|aluInst|OP~13_combout\,
	datac => \cp|Alu_op~0_combout\,
	datad => \dp|aluInst|OP_s[11]~22_combout\,
	combout => \dp|T3_in[11]~28_combout\);

-- Location: LCCOMB_X31_Y19_N0
\dp|T3_in[11]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|T3_in[11]~29_combout\ = (\cp|M11[0]~0_combout\ & (((\dp|rf|reg[7][11]~q\)) # (!\cp|WideOr19~0_combout\))) # (!\cp|M11[0]~0_combout\ & (\cp|WideOr19~0_combout\ & ((\dp|mem|ram_rtl_0|auto_generated|mux2|result_node[11]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp|M11[0]~0_combout\,
	datab => \cp|WideOr19~0_combout\,
	datac => \dp|rf|reg[7][11]~q\,
	datad => \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[11]~23_combout\,
	combout => \dp|T3_in[11]~29_combout\);

-- Location: LCCOMB_X31_Y19_N18
\dp|T3_in[11]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|T3_in[11]~30_combout\ = (\cp|WideOr19~0_combout\ & (((\dp|T3_in[11]~29_combout\)))) # (!\cp|WideOr19~0_combout\ & ((\dp|T3_in[11]~29_combout\ & ((\dp|rf|Mux4~4_combout\))) # (!\dp|T3_in[11]~29_combout\ & (\dp|T3_in[11]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|T3_in[11]~28_combout\,
	datab => \cp|WideOr19~0_combout\,
	datac => \dp|rf|Mux4~4_combout\,
	datad => \dp|T3_in[11]~29_combout\,
	combout => \dp|T3_in[11]~30_combout\);

-- Location: FF_X31_Y19_N19
\dp|t3|Dout[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp|T3_in[11]~30_combout\,
	ena => \cp|WideOr19~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|t3|Dout\(11));

-- Location: LCCOMB_X31_Y19_N8
\dp|Mem_din[11]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Mem_din[11]~11_combout\ = (\cp|state.s6~q\ & ((\dp|t2|Dout\(11)))) # (!\cp|state.s6~q\ & (\dp|t3|Dout\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dp|t3|Dout\(11),
	datac => \dp|t2|Dout\(11),
	datad => \cp|state.s6~q\,
	combout => \dp|Mem_din[11]~11_combout\);

-- Location: LCCOMB_X28_Y19_N26
\dp|Mem_A[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Mem_A[1]~6_combout\ = (!\dp|Equal1~0_combout\ & ((\dp|Equal0~0_combout\ & (\dp|t3|Dout\(1))) # (!\dp|Equal0~0_combout\ & ((\dp|rf|reg[7][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|t3|Dout\(1),
	datab => \dp|Equal0~0_combout\,
	datac => \dp|rf|reg[7][1]~q\,
	datad => \dp|Equal1~0_combout\,
	combout => \dp|Mem_A[1]~6_combout\);

-- Location: LCCOMB_X28_Y19_N20
\dp|Mem_A[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Mem_A[1]~7_combout\ = (\dp|Mem_A[1]~6_combout\) # ((\dp|t2|Dout\(1) & \dp|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Mem_A[1]~6_combout\,
	datab => \dp|t2|Dout\(1),
	datad => \dp|Equal1~0_combout\,
	combout => \dp|Mem_A[1]~7_combout\);

-- Location: LCCOMB_X35_Y21_N8
\dp|Mem_A[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Mem_A[2]~8_combout\ = (!\dp|Equal1~0_combout\ & ((\dp|Equal0~0_combout\ & (\dp|t3|Dout\(2))) # (!\dp|Equal0~0_combout\ & ((\dp|rf|reg[7][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|t3|Dout\(2),
	datab => \dp|Equal1~0_combout\,
	datac => \dp|Equal0~0_combout\,
	datad => \dp|rf|reg[7][2]~q\,
	combout => \dp|Mem_A[2]~8_combout\);

-- Location: LCCOMB_X35_Y21_N10
\dp|Mem_A[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Mem_A[2]~9_combout\ = (\dp|Mem_A[2]~8_combout\) # ((\dp|Equal1~0_combout\ & \dp|t2|Dout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dp|Equal1~0_combout\,
	datac => \dp|Mem_A[2]~8_combout\,
	datad => \dp|t2|Dout\(2),
	combout => \dp|Mem_A[2]~9_combout\);

-- Location: LCCOMB_X32_Y22_N24
\dp|Mem_A[3]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Mem_A[3]~10_combout\ = (!\dp|Equal1~0_combout\ & ((\dp|Equal0~0_combout\ & ((\dp|t3|Dout\(3)))) # (!\dp|Equal0~0_combout\ & (\dp|rf|reg[7][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Equal1~0_combout\,
	datab => \dp|rf|reg[7][3]~q\,
	datac => \dp|Equal0~0_combout\,
	datad => \dp|t3|Dout\(3),
	combout => \dp|Mem_A[3]~10_combout\);

-- Location: LCCOMB_X32_Y22_N2
\dp|Mem_A[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Mem_A[3]~11_combout\ = (\dp|Mem_A[3]~10_combout\) # ((\dp|t2|Dout\(3) & \dp|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dp|t2|Dout\(3),
	datac => \dp|Equal1~0_combout\,
	datad => \dp|Mem_A[3]~10_combout\,
	combout => \dp|Mem_A[3]~11_combout\);

-- Location: LCCOMB_X29_Y19_N20
\dp|Mem_A[4]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Mem_A[4]~12_combout\ = (!\dp|Equal1~0_combout\ & ((\dp|Equal0~0_combout\ & (\dp|t3|Dout\(4))) # (!\dp|Equal0~0_combout\ & ((\dp|rf|reg[7][4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Equal0~0_combout\,
	datab => \dp|t3|Dout\(4),
	datac => \dp|Equal1~0_combout\,
	datad => \dp|rf|reg[7][4]~q\,
	combout => \dp|Mem_A[4]~12_combout\);

-- Location: LCCOMB_X29_Y19_N14
\dp|Mem_A[4]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Mem_A[4]~13_combout\ = (\dp|Mem_A[4]~12_combout\) # ((\dp|Equal1~0_combout\ & \dp|t2|Dout\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dp|Mem_A[4]~12_combout\,
	datac => \dp|Equal1~0_combout\,
	datad => \dp|t2|Dout\(4),
	combout => \dp|Mem_A[4]~13_combout\);

-- Location: LCCOMB_X29_Y19_N26
\dp|Mem_A[5]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Mem_A[5]~14_combout\ = (!\dp|Equal1~0_combout\ & ((\dp|Equal0~0_combout\ & ((\dp|t3|Dout\(5)))) # (!\dp|Equal0~0_combout\ & (\dp|rf|reg[7][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Equal0~0_combout\,
	datab => \dp|rf|reg[7][5]~q\,
	datac => \dp|Equal1~0_combout\,
	datad => \dp|t3|Dout\(5),
	combout => \dp|Mem_A[5]~14_combout\);

-- Location: LCCOMB_X29_Y19_N4
\dp|Mem_A[5]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Mem_A[5]~15_combout\ = (\dp|Mem_A[5]~14_combout\) # ((\dp|Equal1~0_combout\ & \dp|t2|Dout\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Mem_A[5]~14_combout\,
	datac => \dp|Equal1~0_combout\,
	datad => \dp|t2|Dout\(5),
	combout => \dp|Mem_A[5]~15_combout\);

-- Location: LCCOMB_X32_Y21_N12
\dp|Mem_A[6]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Mem_A[6]~16_combout\ = (!\dp|Equal1~0_combout\ & ((\dp|Equal0~0_combout\ & ((\dp|t3|Dout\(6)))) # (!\dp|Equal0~0_combout\ & (\dp|rf|reg[7][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Equal1~0_combout\,
	datab => \dp|rf|reg[7][6]~q\,
	datac => \dp|Equal0~0_combout\,
	datad => \dp|t3|Dout\(6),
	combout => \dp|Mem_A[6]~16_combout\);

-- Location: LCCOMB_X32_Y21_N30
\dp|Mem_A[6]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Mem_A[6]~17_combout\ = (\dp|Mem_A[6]~16_combout\) # ((\dp|Equal1~0_combout\ & \dp|t2|Dout\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Equal1~0_combout\,
	datac => \dp|t2|Dout\(6),
	datad => \dp|Mem_A[6]~16_combout\,
	combout => \dp|Mem_A[6]~17_combout\);

-- Location: LCCOMB_X31_Y22_N4
\dp|Mem_A[7]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Mem_A[7]~18_combout\ = (!\dp|Equal1~0_combout\ & ((\dp|Equal0~0_combout\ & ((\dp|t3|Dout\(7)))) # (!\dp|Equal0~0_combout\ & (\dp|rf|reg[7][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Equal1~0_combout\,
	datab => \dp|rf|reg[7][7]~q\,
	datac => \dp|Equal0~0_combout\,
	datad => \dp|t3|Dout\(7),
	combout => \dp|Mem_A[7]~18_combout\);

-- Location: LCCOMB_X31_Y22_N6
\dp|Mem_A[7]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Mem_A[7]~19_combout\ = (\dp|Mem_A[7]~18_combout\) # ((\dp|Equal1~0_combout\ & \dp|t2|Dout\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dp|Mem_A[7]~18_combout\,
	datac => \dp|Equal1~0_combout\,
	datad => \dp|t2|Dout\(7),
	combout => \dp|Mem_A[7]~19_combout\);

-- Location: LCCOMB_X31_Y20_N24
\dp|Mem_A[8]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Mem_A[8]~20_combout\ = (!\dp|Equal1~0_combout\ & ((\dp|Equal0~0_combout\ & ((\dp|t3|Dout\(8)))) # (!\dp|Equal0~0_combout\ & (\dp|rf|reg[7][8]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|reg[7][8]~q\,
	datab => \dp|Equal1~0_combout\,
	datac => \dp|t3|Dout\(8),
	datad => \dp|Equal0~0_combout\,
	combout => \dp|Mem_A[8]~20_combout\);

-- Location: LCCOMB_X31_Y20_N26
\dp|Mem_A[8]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Mem_A[8]~21_combout\ = (\dp|Mem_A[8]~20_combout\) # ((\dp|t2|Dout\(8) & \dp|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|t2|Dout\(8),
	datab => \dp|Equal1~0_combout\,
	datad => \dp|Mem_A[8]~20_combout\,
	combout => \dp|Mem_A[8]~21_combout\);

-- Location: LCCOMB_X30_Y18_N6
\dp|Mem_A[9]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Mem_A[9]~22_combout\ = (!\dp|Equal1~0_combout\ & ((\dp|Equal0~0_combout\ & ((\dp|t3|Dout\(9)))) # (!\dp|Equal0~0_combout\ & (\dp|rf|reg[7][9]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|reg[7][9]~q\,
	datab => \dp|Equal0~0_combout\,
	datac => \dp|Equal1~0_combout\,
	datad => \dp|t3|Dout\(9),
	combout => \dp|Mem_A[9]~22_combout\);

-- Location: LCCOMB_X30_Y18_N8
\dp|Mem_A[9]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Mem_A[9]~23_combout\ = (\dp|Mem_A[9]~22_combout\) # ((\dp|Equal1~0_combout\ & \dp|t2|Dout\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Equal1~0_combout\,
	datab => \dp|t2|Dout\(9),
	datad => \dp|Mem_A[9]~22_combout\,
	combout => \dp|Mem_A[9]~23_combout\);

-- Location: LCCOMB_X32_Y21_N2
\dp|Mem_A[10]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Mem_A[10]~24_combout\ = (!\dp|Equal1~0_combout\ & ((\dp|Equal0~0_combout\ & (\dp|t3|Dout\(10))) # (!\dp|Equal0~0_combout\ & ((\dp|rf|reg[7][10]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Equal1~0_combout\,
	datab => \dp|Equal0~0_combout\,
	datac => \dp|t3|Dout\(10),
	datad => \dp|rf|reg[7][10]~q\,
	combout => \dp|Mem_A[10]~24_combout\);

-- Location: LCCOMB_X32_Y21_N28
\dp|Mem_A[10]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Mem_A[10]~25_combout\ = (\dp|Mem_A[10]~24_combout\) # ((\dp|Equal1~0_combout\ & \dp|t2|Dout\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dp|Mem_A[10]~24_combout\,
	datac => \dp|Equal1~0_combout\,
	datad => \dp|t2|Dout\(10),
	combout => \dp|Mem_A[10]~25_combout\);

-- Location: LCCOMB_X31_Y19_N12
\dp|Mem_A[11]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Mem_A[11]~26_combout\ = (!\dp|Equal1~0_combout\ & ((\dp|Equal0~0_combout\ & ((\dp|t3|Dout\(11)))) # (!\dp|Equal0~0_combout\ & (\dp|rf|reg[7][11]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|reg[7][11]~q\,
	datab => \dp|Equal1~0_combout\,
	datac => \dp|Equal0~0_combout\,
	datad => \dp|t3|Dout\(11),
	combout => \dp|Mem_A[11]~26_combout\);

-- Location: LCCOMB_X31_Y19_N14
\dp|Mem_A[11]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Mem_A[11]~27_combout\ = (\dp|Mem_A[11]~26_combout\) # ((\dp|Equal1~0_combout\ & \dp|t2|Dout\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dp|Equal1~0_combout\,
	datac => \dp|t2|Dout\(11),
	datad => \dp|Mem_A[11]~26_combout\,
	combout => \dp|Mem_A[11]~27_combout\);

-- Location: LCCOMB_X34_Y20_N28
\dp|Mem_A[12]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Mem_A[12]~28_combout\ = (!\dp|Equal1~0_combout\ & ((\dp|Equal0~0_combout\ & ((\dp|t3|Dout\(12)))) # (!\dp|Equal0~0_combout\ & (\dp|rf|reg[7][12]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Equal1~0_combout\,
	datab => \dp|Equal0~0_combout\,
	datac => \dp|rf|reg[7][12]~q\,
	datad => \dp|t3|Dout\(12),
	combout => \dp|Mem_A[12]~28_combout\);

-- Location: LCCOMB_X34_Y20_N30
\dp|Mem_A[12]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Mem_A[12]~29_combout\ = (\dp|Mem_A[12]~28_combout\) # ((\dp|t2|Dout\(12) & \dp|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dp|Mem_A[12]~28_combout\,
	datac => \dp|t2|Dout\(12),
	datad => \dp|Equal1~0_combout\,
	combout => \dp|Mem_A[12]~29_combout\);

-- Location: M9K_X22_Y15_N0
\dp|mem|ram_rtl_0|auto_generated|ram_block1a27\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RISC1.ram0_memory_e411fb78.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "Datapath_RISC:dp|memory:mem|altsyncram:ram_rtl_0|altsyncram_ct81:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 11,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \dp|mem|ram_rtl_0|auto_generated|decode3|w_anode436w[2]~0_combout\,
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \dp|mem|ram_rtl_0|auto_generated|rden_decode|w_anode475w[2]~4_combout\,
	portadatain => \dp|mem|ram_rtl_0|auto_generated|ram_block1a27_PORTADATAIN_bus\,
	portaaddr => \dp|mem|ram_rtl_0|auto_generated|ram_block1a27_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \dp|mem|ram_rtl_0|auto_generated|ram_block1a27_PORTADATAOUT_bus\);

-- Location: M9K_X22_Y14_N0
\dp|mem|ram_rtl_0|auto_generated|ram_block1a59\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RISC1.ram0_memory_e411fb78.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "Datapath_RISC:dp|memory:mem|altsyncram:ram_rtl_0|altsyncram_ct81:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 11,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \dp|mem|ram_rtl_0|auto_generated|decode3|w_anode452w[2]~0_combout\,
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \dp|mem|ram_rtl_0|auto_generated|rden_decode|w_anode493w[2]~0_combout\,
	portadatain => \dp|mem|ram_rtl_0|auto_generated|ram_block1a59_PORTADATAIN_bus\,
	portaaddr => \dp|mem|ram_rtl_0|auto_generated|ram_block1a59_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \dp|mem|ram_rtl_0|auto_generated|ram_block1a59_PORTADATAOUT_bus\);

-- Location: M9K_X22_Y13_N0
\dp|mem|ram_rtl_0|auto_generated|ram_block1a43\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RISC1.ram0_memory_e411fb78.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "Datapath_RISC:dp|memory:mem|altsyncram:ram_rtl_0|altsyncram_ct81:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 11,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \dp|mem|ram_rtl_0|auto_generated|decode3|w_anode444w[2]~0_combout\,
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \dp|mem|ram_rtl_0|auto_generated|rden_decode|w_anode484w[2]~4_combout\,
	portadatain => \dp|mem|ram_rtl_0|auto_generated|ram_block1a43_PORTADATAIN_bus\,
	portaaddr => \dp|mem|ram_rtl_0|auto_generated|ram_block1a43_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \dp|mem|ram_rtl_0|auto_generated|ram_block1a43_PORTADATAOUT_bus\);

-- Location: LCCOMB_X23_Y23_N14
\dp|mem|ram_rtl_0|auto_generated|mux2|result_node[11]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[11]~22_combout\ = (\dp|mem|ram_rtl_0|auto_generated|address_reg_a\(0) & ((\dp|mem|ram_rtl_0|auto_generated|ram_block1a59~portadataout\) # ((!\dp|mem|ram_rtl_0|auto_generated|address_reg_a\(1))))) # 
-- (!\dp|mem|ram_rtl_0|auto_generated|address_reg_a\(0) & (((\dp|mem|ram_rtl_0|auto_generated|ram_block1a43~portadataout\ & \dp|mem|ram_rtl_0|auto_generated|address_reg_a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|mem|ram_rtl_0|auto_generated|address_reg_a\(0),
	datab => \dp|mem|ram_rtl_0|auto_generated|ram_block1a59~portadataout\,
	datac => \dp|mem|ram_rtl_0|auto_generated|ram_block1a43~portadataout\,
	datad => \dp|mem|ram_rtl_0|auto_generated|address_reg_a\(1),
	combout => \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[11]~22_combout\);

-- Location: M9K_X22_Y17_N0
\dp|mem|ram_rtl_0|auto_generated|ram_block1a11\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000390",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RISC1.ram0_memory_e411fb78.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "Datapath_RISC:dp|memory:mem|altsyncram:ram_rtl_0|altsyncram_ct81:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 11,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \dp|mem|ram_rtl_0|auto_generated|decode3|w_anode423w[2]~4_combout\,
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \dp|mem|ram_rtl_0|auto_generated|decode3|w_anode423w[2]~5_combout\,
	portadatain => \dp|mem|ram_rtl_0|auto_generated|ram_block1a11_PORTADATAIN_bus\,
	portaaddr => \dp|mem|ram_rtl_0|auto_generated|ram_block1a11_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \dp|mem|ram_rtl_0|auto_generated|ram_block1a11_PORTADATAOUT_bus\);

-- Location: LCCOMB_X23_Y23_N26
\dp|mem|ram_rtl_0|auto_generated|mux2|result_node[11]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[11]~23_combout\ = (\dp|mem|ram_rtl_0|auto_generated|mux2|result_node[11]~22_combout\ & ((\dp|mem|ram_rtl_0|auto_generated|ram_block1a27~portadataout\) # 
-- ((\dp|mem|ram_rtl_0|auto_generated|address_reg_a\(1))))) # (!\dp|mem|ram_rtl_0|auto_generated|mux2|result_node[11]~22_combout\ & (((\dp|mem|ram_rtl_0|auto_generated|ram_block1a11~portadataout\ & !\dp|mem|ram_rtl_0|auto_generated|address_reg_a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|mem|ram_rtl_0|auto_generated|ram_block1a27~portadataout\,
	datab => \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[11]~22_combout\,
	datac => \dp|mem|ram_rtl_0|auto_generated|ram_block1a11~portadataout\,
	datad => \dp|mem|ram_rtl_0|auto_generated|address_reg_a\(1),
	combout => \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[11]~23_combout\);

-- Location: FF_X23_Y23_N27
\dp|ir|Dout[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[11]~23_combout\,
	ena => \cp|state.s1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|ir|Dout\(11));

-- Location: FF_X30_Y21_N13
\dp|rf|reg[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dp|rf|reg~25_combout\,
	sload => VCC,
	ena => \dp|rf|reg[2][6]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|reg[2][0]~q\);

-- Location: FF_X29_Y24_N31
\dp|rf|reg[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dp|rf|reg~25_combout\,
	sload => VCC,
	ena => \dp|rf|reg[3][7]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|reg[3][0]~q\);

-- Location: FF_X30_Y21_N7
\dp|rf|reg[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dp|rf|reg~25_combout\,
	sload => VCC,
	ena => \dp|rf|reg[0][10]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|reg[0][0]~q\);

-- Location: LCCOMB_X29_Y21_N20
\dp|T2_in[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|T2_in[0]~8_combout\ = (\dp|ir|Dout\(9) & (((\dp|rf|reg[1][0]~q\) # (\dp|ir|Dout\(10))))) # (!\dp|ir|Dout\(9) & (\dp|rf|reg[0][0]~q\ & ((!\dp|ir|Dout\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|reg[0][0]~q\,
	datab => \dp|ir|Dout\(9),
	datac => \dp|rf|reg[1][0]~q\,
	datad => \dp|ir|Dout\(10),
	combout => \dp|T2_in[0]~8_combout\);

-- Location: LCCOMB_X29_Y24_N30
\dp|T2_in[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|T2_in[0]~9_combout\ = (\dp|ir|Dout\(10) & ((\dp|T2_in[0]~8_combout\ & ((\dp|rf|reg[3][0]~q\))) # (!\dp|T2_in[0]~8_combout\ & (\dp|rf|reg[2][0]~q\)))) # (!\dp|ir|Dout\(10) & (((\dp|T2_in[0]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|reg[2][0]~q\,
	datab => \dp|ir|Dout\(10),
	datac => \dp|rf|reg[3][0]~q\,
	datad => \dp|T2_in[0]~8_combout\,
	combout => \dp|T2_in[0]~9_combout\);

-- Location: LCCOMB_X28_Y19_N24
\dp|t2|Dout[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|t2|Dout[0]~0_combout\ = (\dp|ir|Dout\(11) & (\dp|T2_in[0]~11_combout\)) # (!\dp|ir|Dout\(11) & ((\dp|T2_in[0]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|T2_in[0]~11_combout\,
	datab => \dp|ir|Dout\(11),
	datad => \dp|T2_in[0]~9_combout\,
	combout => \dp|t2|Dout[0]~0_combout\);

-- Location: FF_X28_Y19_N25
\dp|t2|Dout[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp|t2|Dout[0]~0_combout\,
	asdata => \dp|pc|Dout[0]~0_combout\,
	sload => \cp|M9~0_combout\,
	ena => \cp|WideOr20~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|t2|Dout\(0));

-- Location: LCCOMB_X28_Y19_N6
\dp|Alu_1[0]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Alu_1[0]~28_combout\ = (\dp|Alu_1[0]~27_combout\ & ((\dp|ir|Dout\(0)) # ((!\cp|Selector17~0_combout\)))) # (!\dp|Alu_1[0]~27_combout\ & (((\cp|Selector17~0_combout\ & \dp|t2|Dout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ir|Dout\(0),
	datab => \dp|Alu_1[0]~27_combout\,
	datac => \cp|Selector17~0_combout\,
	datad => \dp|t2|Dout\(0),
	combout => \dp|Alu_1[0]~28_combout\);

-- Location: LCCOMB_X34_Y22_N8
\dp|aluInst|OP~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|aluInst|OP~2_combout\ = (!\dp|Alu_2[0]~32_combout\) # (!\dp|Alu_1[0]~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dp|Alu_1[0]~28_combout\,
	datac => \dp|Alu_2[0]~32_combout\,
	combout => \dp|aluInst|OP~2_combout\);

-- Location: LCCOMB_X34_Y22_N16
\dp|aluInst|OP_s[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|aluInst|OP_s[0]~0_combout\ = (\dp|Alu_2[0]~32_combout\ & (\dp|Alu_1[0]~28_combout\ $ (VCC))) # (!\dp|Alu_2[0]~32_combout\ & (\dp|Alu_1[0]~28_combout\ & VCC))
-- \dp|aluInst|OP_s[0]~1\ = CARRY((\dp|Alu_2[0]~32_combout\ & \dp|Alu_1[0]~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Alu_2[0]~32_combout\,
	datab => \dp|Alu_1[0]~28_combout\,
	datad => VCC,
	combout => \dp|aluInst|OP_s[0]~0_combout\,
	cout => \dp|aluInst|OP_s[0]~1\);

-- Location: LCCOMB_X29_Y19_N8
\dp|pc|Dout[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|pc|Dout[0]~0_combout\ = (\cp|Alu_op~0_combout\ & (\dp|aluInst|OP~2_combout\)) # (!\cp|Alu_op~0_combout\ & ((\dp|aluInst|OP_s[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|aluInst|OP~2_combout\,
	datac => \dp|aluInst|OP_s[0]~0_combout\,
	datad => \cp|Alu_op~0_combout\,
	combout => \dp|pc|Dout[0]~0_combout\);

-- Location: LCCOMB_X29_Y19_N10
\dp|pc|Dout[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|pc|Dout[0]~feeder_combout\ = \dp|pc|Dout[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dp|pc|Dout[0]~0_combout\,
	combout => \dp|pc|Dout[0]~feeder_combout\);

-- Location: FF_X29_Y19_N11
\dp|pc|Dout[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp|pc|Dout[0]~feeder_combout\,
	asdata => \dp|rf|Mux15~4_combout\,
	sload => \cp|state.s14~q\,
	ena => \cp|WideOr18~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|pc|Dout\(0));

-- Location: LCCOMB_X29_Y20_N20
\dp|RF_D3[0]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|RF_D3[0]~23_combout\ = (!\cp|M5[1]~1_combout\ & ((\dp|Equal5~0_combout\ & ((\dp|t3|Dout\(0)))) # (!\dp|Equal5~0_combout\ & (\dp|pc|Dout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp|M5[1]~1_combout\,
	datab => \dp|pc|Dout\(0),
	datac => \dp|Equal5~0_combout\,
	datad => \dp|t3|Dout\(0),
	combout => \dp|RF_D3[0]~23_combout\);

-- Location: LCCOMB_X29_Y20_N8
\dp|rf|reg~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|rf|reg~25_combout\ = (!\reset~input_o\ & ((\dp|RF_D3[0]~23_combout\) # ((\cp|M5[1]~1_combout\ & \dp|t4|Dout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp|M5[1]~1_combout\,
	datab => \dp|t4|Dout\(0),
	datac => \dp|RF_D3[0]~23_combout\,
	datad => \reset~input_o\,
	combout => \dp|rf|reg~25_combout\);

-- Location: FF_X29_Y21_N21
\dp|rf|reg[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dp|rf|reg~25_combout\,
	sload => VCC,
	ena => \dp|rf|reg[1][4]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|reg[1][0]~q\);

-- Location: LCCOMB_X30_Y21_N6
\dp|rf|Mux15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|rf|Mux15~2_combout\ = (\dp|RF_A1[1]~1_combout\ & (((\dp|RF_A1[0]~0_combout\)))) # (!\dp|RF_A1[1]~1_combout\ & ((\dp|RF_A1[0]~0_combout\ & (\dp|rf|reg[1][0]~q\)) # (!\dp|RF_A1[0]~0_combout\ & ((\dp|rf|reg[0][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|reg[1][0]~q\,
	datab => \dp|RF_A1[1]~1_combout\,
	datac => \dp|rf|reg[0][0]~q\,
	datad => \dp|RF_A1[0]~0_combout\,
	combout => \dp|rf|Mux15~2_combout\);

-- Location: LCCOMB_X30_Y21_N12
\dp|rf|Mux15~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|rf|Mux15~3_combout\ = (\dp|rf|Mux15~2_combout\ & (((\dp|rf|reg[3][0]~q\)) # (!\dp|RF_A1[1]~1_combout\))) # (!\dp|rf|Mux15~2_combout\ & (\dp|RF_A1[1]~1_combout\ & (\dp|rf|reg[2][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|Mux15~2_combout\,
	datab => \dp|RF_A1[1]~1_combout\,
	datac => \dp|rf|reg[2][0]~q\,
	datad => \dp|rf|reg[3][0]~q\,
	combout => \dp|rf|Mux15~3_combout\);

-- Location: LCCOMB_X28_Y20_N22
\dp|rf|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|rf|Mux15~0_combout\ = (\dp|RF_A1[1]~1_combout\ & (((\dp|rf|reg[6][0]~q\) # (\dp|RF_A1[0]~0_combout\)))) # (!\dp|RF_A1[1]~1_combout\ & (\dp|rf|reg[4][0]~q\ & ((!\dp|RF_A1[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|reg[4][0]~q\,
	datab => \dp|RF_A1[1]~1_combout\,
	datac => \dp|rf|reg[6][0]~q\,
	datad => \dp|RF_A1[0]~0_combout\,
	combout => \dp|rf|Mux15~0_combout\);

-- Location: LCCOMB_X28_Y20_N28
\dp|rf|Mux15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|rf|Mux15~1_combout\ = (\dp|rf|Mux15~0_combout\ & ((\dp|rf|reg[7][0]~q\) # ((!\dp|RF_A1[0]~0_combout\)))) # (!\dp|rf|Mux15~0_combout\ & (((\dp|rf|reg[5][0]~q\ & \dp|RF_A1[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|Mux15~0_combout\,
	datab => \dp|rf|reg[7][0]~q\,
	datac => \dp|rf|reg[5][0]~q\,
	datad => \dp|RF_A1[0]~0_combout\,
	combout => \dp|rf|Mux15~1_combout\);

-- Location: LCCOMB_X28_Y19_N16
\dp|rf|Mux15~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|rf|Mux15~4_combout\ = (\dp|RF_A1[2]~2_combout\ & ((\dp|rf|Mux15~1_combout\))) # (!\dp|RF_A1[2]~2_combout\ & (\dp|rf|Mux15~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|Mux15~3_combout\,
	datab => \dp|rf|Mux15~1_combout\,
	datad => \dp|RF_A1[2]~2_combout\,
	combout => \dp|rf|Mux15~4_combout\);

-- Location: LCCOMB_X29_Y19_N2
\dp|T3_in[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|T3_in[0]~6_combout\ = (\cp|WideOr19~0_combout\ & ((\cp|M11[0]~0_combout\ & ((\dp|rf|reg[7][0]~q\))) # (!\cp|M11[0]~0_combout\ & (\dp|mem|ram_rtl_0|auto_generated|mux2|result_node[0]~1_combout\)))) # (!\cp|WideOr19~0_combout\ & (\cp|M11[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp|WideOr19~0_combout\,
	datab => \cp|M11[0]~0_combout\,
	datac => \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[0]~1_combout\,
	datad => \dp|rf|reg[7][0]~q\,
	combout => \dp|T3_in[0]~6_combout\);

-- Location: LCCOMB_X29_Y19_N24
\dp|T3_in[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|T3_in[0]~7_combout\ = (\cp|WideOr19~0_combout\ & (((\dp|T3_in[0]~6_combout\)))) # (!\cp|WideOr19~0_combout\ & ((\dp|T3_in[0]~6_combout\ & (\dp|rf|Mux15~4_combout\)) # (!\dp|T3_in[0]~6_combout\ & ((\dp|pc|Dout[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|Mux15~4_combout\,
	datab => \dp|pc|Dout[0]~0_combout\,
	datac => \cp|WideOr19~0_combout\,
	datad => \dp|T3_in[0]~6_combout\,
	combout => \dp|T3_in[0]~7_combout\);

-- Location: FF_X29_Y19_N25
\dp|t3|Dout[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp|T3_in[0]~7_combout\,
	ena => \cp|WideOr19~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|t3|Dout\(0));

-- Location: LCCOMB_X32_Y23_N16
\dp|Alu_2[0]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Alu_2[0]~30_combout\ = (\dp|ir|Dout\(15)) # ((!\dp|ir|Dout\(14) & !\dp|ir|Dout\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ir|Dout\(14),
	datac => \dp|ir|Dout\(15),
	datad => \dp|ir|Dout\(12),
	combout => \dp|Alu_2[0]~30_combout\);

-- Location: LCCOMB_X32_Y23_N2
\dp|Alu_2[0]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Alu_2[0]~31_combout\ = (\dp|Alu_2[0]~30_combout\) # (((\dp|t4|Dout\(0)) # (\cp|Equal8~0_combout\)) # (!\cp|Selector3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Alu_2[0]~30_combout\,
	datab => \cp|Selector3~0_combout\,
	datac => \dp|t4|Dout\(0),
	datad => \cp|Equal8~0_combout\,
	combout => \dp|Alu_2[0]~31_combout\);

-- Location: LCCOMB_X32_Y23_N6
\dp|Alu_2[0]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Alu_2[0]~29_combout\ = ((\dp|t2|Dout\(0)) # (!\cp|Equal8~0_combout\)) # (!\cp|state.s4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp|state.s4~q\,
	datab => \dp|t2|Dout\(0),
	datad => \cp|Equal8~0_combout\,
	combout => \dp|Alu_2[0]~29_combout\);

-- Location: LCCOMB_X32_Y23_N28
\dp|Alu_2[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Alu_2[0]~32_combout\ = (\dp|Alu_2[0]~31_combout\ & (\dp|Alu_2[0]~29_combout\ & ((\dp|t3|Dout\(0)) # (!\dp|Alu_2[15]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|t3|Dout\(0),
	datab => \dp|Alu_2[0]~31_combout\,
	datac => \dp|Alu_2[15]~0_combout\,
	datad => \dp|Alu_2[0]~29_combout\,
	combout => \dp|Alu_2[0]~32_combout\);

-- Location: LCCOMB_X34_Y22_N18
\dp|aluInst|OP_s[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|aluInst|OP_s[1]~2_combout\ = (\dp|Alu_1[1]~25_combout\ & ((\dp|Alu_2[1]~28_combout\ & (\dp|aluInst|OP_s[0]~1\ & VCC)) # (!\dp|Alu_2[1]~28_combout\ & (!\dp|aluInst|OP_s[0]~1\)))) # (!\dp|Alu_1[1]~25_combout\ & ((\dp|Alu_2[1]~28_combout\ & 
-- (!\dp|aluInst|OP_s[0]~1\)) # (!\dp|Alu_2[1]~28_combout\ & ((\dp|aluInst|OP_s[0]~1\) # (GND)))))
-- \dp|aluInst|OP_s[1]~3\ = CARRY((\dp|Alu_1[1]~25_combout\ & (!\dp|Alu_2[1]~28_combout\ & !\dp|aluInst|OP_s[0]~1\)) # (!\dp|Alu_1[1]~25_combout\ & ((!\dp|aluInst|OP_s[0]~1\) # (!\dp|Alu_2[1]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Alu_1[1]~25_combout\,
	datab => \dp|Alu_2[1]~28_combout\,
	datad => VCC,
	cin => \dp|aluInst|OP_s[0]~1\,
	combout => \dp|aluInst|OP_s[1]~2_combout\,
	cout => \dp|aluInst|OP_s[1]~3\);

-- Location: LCCOMB_X34_Y22_N12
\dp|aluInst|OP~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|aluInst|OP~4_combout\ = (!\dp|Alu_2[2]~25_combout\) # (!\dp|Alu_1[2]~23_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dp|Alu_1[2]~23_combout\,
	datac => \dp|Alu_2[2]~25_combout\,
	combout => \dp|aluInst|OP~4_combout\);

-- Location: LCCOMB_X34_Y22_N2
\dp|pc|Dout[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|pc|Dout[2]~2_combout\ = (\cp|Alu_op~0_combout\ & ((\dp|aluInst|OP~4_combout\))) # (!\cp|Alu_op~0_combout\ & (\dp|aluInst|OP_s[2]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp|Alu_op~0_combout\,
	datab => \dp|aluInst|OP_s[2]~4_combout\,
	datad => \dp|aluInst|OP~4_combout\,
	combout => \dp|pc|Dout[2]~2_combout\);

-- Location: FF_X34_Y22_N3
\dp|pc|Dout[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp|pc|Dout[2]~2_combout\,
	asdata => \dp|rf|Mux13~4_combout\,
	sload => \cp|state.s14~q\,
	ena => \cp|WideOr18~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|pc|Dout\(2));

-- Location: LCCOMB_X30_Y22_N8
\dp|rf|reg~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|rf|reg~5_combout\ = (\dp|rf|process_0~1_combout\ & ((\dp|pc|Dout\(2)))) # (!\dp|rf|process_0~1_combout\ & (\dp|RF_D3[2]~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RF_D3[2]~44_combout\,
	datab => \dp|rf|process_0~1_combout\,
	datad => \dp|pc|Dout\(2),
	combout => \dp|rf|reg~5_combout\);

-- Location: FF_X30_Y22_N9
\dp|rf|reg[7][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp|rf|reg~5_combout\,
	sclr => \reset~input_o\,
	ena => \dp|rf|reg[7][12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|reg[7][2]~q\);

-- Location: FF_X27_Y20_N13
\dp|rf|reg[6][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dp|rf|reg~27_combout\,
	sload => VCC,
	ena => \dp|rf|reg[6][7]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|reg[6][2]~q\);

-- Location: FF_X27_Y20_N15
\dp|rf|reg[4][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dp|rf|reg~27_combout\,
	sload => VCC,
	ena => \dp|rf|reg[4][14]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|reg[4][2]~q\);

-- Location: LCCOMB_X27_Y20_N14
\dp|rf|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|rf|Mux13~0_combout\ = (\dp|RF_A1[0]~0_combout\ & (((\dp|RF_A1[1]~1_combout\)))) # (!\dp|RF_A1[0]~0_combout\ & ((\dp|RF_A1[1]~1_combout\ & (\dp|rf|reg[6][2]~q\)) # (!\dp|RF_A1[1]~1_combout\ & ((\dp|rf|reg[4][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|reg[6][2]~q\,
	datab => \dp|RF_A1[0]~0_combout\,
	datac => \dp|rf|reg[4][2]~q\,
	datad => \dp|RF_A1[1]~1_combout\,
	combout => \dp|rf|Mux13~0_combout\);

-- Location: FF_X27_Y22_N25
\dp|rf|reg[5][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dp|rf|reg~27_combout\,
	sload => VCC,
	ena => \dp|rf|reg[5][13]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|reg[5][2]~q\);

-- Location: LCCOMB_X27_Y22_N24
\dp|rf|Mux13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|rf|Mux13~1_combout\ = (\dp|rf|Mux13~0_combout\ & ((\dp|rf|reg[7][2]~q\) # ((!\dp|RF_A1[0]~0_combout\)))) # (!\dp|rf|Mux13~0_combout\ & (((\dp|rf|reg[5][2]~q\ & \dp|RF_A1[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|reg[7][2]~q\,
	datab => \dp|rf|Mux13~0_combout\,
	datac => \dp|rf|reg[5][2]~q\,
	datad => \dp|RF_A1[0]~0_combout\,
	combout => \dp|rf|Mux13~1_combout\);

-- Location: LCCOMB_X27_Y22_N0
\dp|rf|Mux13~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|rf|Mux13~4_combout\ = (\dp|RF_A1[2]~2_combout\ & ((\dp|rf|Mux13~1_combout\))) # (!\dp|RF_A1[2]~2_combout\ & (\dp|rf|Mux13~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dp|rf|Mux13~3_combout\,
	datac => \dp|RF_A1[2]~2_combout\,
	datad => \dp|rf|Mux13~1_combout\,
	combout => \dp|rf|Mux13~4_combout\);

-- Location: LCCOMB_X30_Y23_N8
\dp|T3_in[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|T3_in[2]~10_combout\ = (\cp|M11[0]~0_combout\ & (((\dp|rf|reg[7][2]~q\)) # (!\cp|WideOr19~0_combout\))) # (!\cp|M11[0]~0_combout\ & (\cp|WideOr19~0_combout\ & (\dp|mem|ram_rtl_0|auto_generated|mux2|result_node[2]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp|M11[0]~0_combout\,
	datab => \cp|WideOr19~0_combout\,
	datac => \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[2]~5_combout\,
	datad => \dp|rf|reg[7][2]~q\,
	combout => \dp|T3_in[2]~10_combout\);

-- Location: LCCOMB_X30_Y23_N4
\dp|T3_in[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|T3_in[2]~11_combout\ = (\dp|T3_in[2]~10_combout\ & ((\dp|rf|Mux13~4_combout\) # ((\cp|WideOr19~0_combout\)))) # (!\dp|T3_in[2]~10_combout\ & (((!\cp|WideOr19~0_combout\ & \dp|pc|Dout[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|Mux13~4_combout\,
	datab => \dp|T3_in[2]~10_combout\,
	datac => \cp|WideOr19~0_combout\,
	datad => \dp|pc|Dout[2]~2_combout\,
	combout => \dp|T3_in[2]~11_combout\);

-- Location: FF_X30_Y23_N5
\dp|t3|Dout[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp|T3_in[2]~11_combout\,
	ena => \cp|WideOr19~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|t3|Dout\(2));

-- Location: LCCOMB_X30_Y22_N6
\dp|RF_D3[2]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|RF_D3[2]~26_combout\ = (!\cp|M5[1]~1_combout\ & ((\dp|Equal5~0_combout\ & (\dp|t3|Dout\(2))) # (!\dp|Equal5~0_combout\ & ((\dp|pc|Dout\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp|M5[1]~1_combout\,
	datab => \dp|Equal5~0_combout\,
	datac => \dp|t3|Dout\(2),
	datad => \dp|pc|Dout\(2),
	combout => \dp|RF_D3[2]~26_combout\);

-- Location: LCCOMB_X30_Y22_N20
\dp|rf|reg~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|rf|reg~27_combout\ = (!\reset~input_o\ & ((\dp|RF_D3[2]~26_combout\) # ((\cp|M5[1]~1_combout\ & \dp|t4|Dout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RF_D3[2]~26_combout\,
	datab => \cp|M5[1]~1_combout\,
	datac => \reset~input_o\,
	datad => \dp|t4|Dout\(2),
	combout => \dp|rf|reg~27_combout\);

-- Location: FF_X30_Y22_N21
\dp|rf|reg[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp|rf|reg~27_combout\,
	ena => \dp|rf|reg[3][7]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|reg[3][2]~q\);

-- Location: LCCOMB_X29_Y21_N30
\dp|T2_in[2]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|T2_in[2]~16_combout\ = (\dp|ir|Dout\(9) & (((\dp|rf|reg[1][2]~q\) # (\dp|ir|Dout\(10))))) # (!\dp|ir|Dout\(9) & (\dp|rf|reg[0][2]~q\ & ((!\dp|ir|Dout\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|reg[0][2]~q\,
	datab => \dp|ir|Dout\(9),
	datac => \dp|rf|reg[1][2]~q\,
	datad => \dp|ir|Dout\(10),
	combout => \dp|T2_in[2]~16_combout\);

-- Location: LCCOMB_X30_Y21_N30
\dp|T2_in[2]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|T2_in[2]~17_combout\ = (\dp|ir|Dout\(10) & ((\dp|T2_in[2]~16_combout\ & (\dp|rf|reg[3][2]~q\)) # (!\dp|T2_in[2]~16_combout\ & ((\dp|rf|reg[2][2]~q\))))) # (!\dp|ir|Dout\(10) & (((\dp|T2_in[2]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|reg[3][2]~q\,
	datab => \dp|ir|Dout\(10),
	datac => \dp|T2_in[2]~16_combout\,
	datad => \dp|rf|reg[2][2]~q\,
	combout => \dp|T2_in[2]~17_combout\);

-- Location: LCCOMB_X27_Y20_N12
\dp|T2_in[2]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|T2_in[2]~18_combout\ = (\dp|ir|Dout\(9) & (((\dp|ir|Dout\(10))))) # (!\dp|ir|Dout\(9) & ((\dp|ir|Dout\(10) & ((\dp|rf|reg[6][2]~q\))) # (!\dp|ir|Dout\(10) & (\dp|rf|reg[4][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|reg[4][2]~q\,
	datab => \dp|ir|Dout\(9),
	datac => \dp|rf|reg[6][2]~q\,
	datad => \dp|ir|Dout\(10),
	combout => \dp|T2_in[2]~18_combout\);

-- Location: LCCOMB_X27_Y22_N2
\dp|T2_in[2]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|T2_in[2]~19_combout\ = (\dp|T2_in[2]~18_combout\ & ((\dp|rf|reg[7][2]~q\) # ((!\dp|ir|Dout\(9))))) # (!\dp|T2_in[2]~18_combout\ & (((\dp|rf|reg[5][2]~q\ & \dp|ir|Dout\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|reg[7][2]~q\,
	datab => \dp|T2_in[2]~18_combout\,
	datac => \dp|rf|reg[5][2]~q\,
	datad => \dp|ir|Dout\(9),
	combout => \dp|T2_in[2]~19_combout\);

-- Location: LCCOMB_X30_Y20_N4
\dp|t2|Dout[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|t2|Dout[2]~2_combout\ = (\dp|ir|Dout\(11) & ((\dp|T2_in[2]~19_combout\))) # (!\dp|ir|Dout\(11) & (\dp|T2_in[2]~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|T2_in[2]~17_combout\,
	datab => \dp|ir|Dout\(11),
	datad => \dp|T2_in[2]~19_combout\,
	combout => \dp|t2|Dout[2]~2_combout\);

-- Location: FF_X30_Y20_N5
\dp|t2|Dout[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp|t2|Dout[2]~2_combout\,
	asdata => \dp|pc|Dout[2]~2_combout\,
	sload => \cp|M9~0_combout\,
	ena => \cp|WideOr20~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|t2|Dout\(2));

-- Location: LCCOMB_X35_Y21_N12
\dp|Mem_din[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Mem_din[2]~2_combout\ = (\cp|state.s6~q\ & (\dp|t2|Dout\(2))) # (!\cp|state.s6~q\ & ((\dp|t3|Dout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dp|t2|Dout\(2),
	datac => \dp|t3|Dout\(2),
	datad => \cp|state.s6~q\,
	combout => \dp|Mem_din[2]~2_combout\);

-- Location: M9K_X22_Y21_N0
\dp|mem|ram_rtl_0|auto_generated|ram_block1a34\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RISC1.ram0_memory_e411fb78.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "Datapath_RISC:dp|memory:mem|altsyncram:ram_rtl_0|altsyncram_ct81:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \dp|mem|ram_rtl_0|auto_generated|decode3|w_anode444w[2]~0_combout\,
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \dp|mem|ram_rtl_0|auto_generated|rden_decode|w_anode484w[2]~4_combout\,
	portadatain => \dp|mem|ram_rtl_0|auto_generated|ram_block1a34_PORTADATAIN_bus\,
	portaaddr => \dp|mem|ram_rtl_0|auto_generated|ram_block1a34_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \dp|mem|ram_rtl_0|auto_generated|ram_block1a34_PORTADATAOUT_bus\);

-- Location: M9K_X22_Y22_N0
\dp|mem|ram_rtl_0|auto_generated|ram_block1a50\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RISC1.ram0_memory_e411fb78.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "Datapath_RISC:dp|memory:mem|altsyncram:ram_rtl_0|altsyncram_ct81:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \dp|mem|ram_rtl_0|auto_generated|decode3|w_anode452w[2]~0_combout\,
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \dp|mem|ram_rtl_0|auto_generated|rden_decode|w_anode493w[2]~0_combout\,
	portadatain => \dp|mem|ram_rtl_0|auto_generated|ram_block1a50_PORTADATAIN_bus\,
	portaaddr => \dp|mem|ram_rtl_0|auto_generated|ram_block1a50_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \dp|mem|ram_rtl_0|auto_generated|ram_block1a50_PORTADATAOUT_bus\);

-- Location: LCCOMB_X23_Y23_N30
\dp|mem|ram_rtl_0|auto_generated|mux2|result_node[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[2]~4_combout\ = (\dp|mem|ram_rtl_0|auto_generated|address_reg_a\(0) & (((\dp|mem|ram_rtl_0|auto_generated|ram_block1a50~portadataout\) # (!\dp|mem|ram_rtl_0|auto_generated|address_reg_a\(1))))) # 
-- (!\dp|mem|ram_rtl_0|auto_generated|address_reg_a\(0) & (\dp|mem|ram_rtl_0|auto_generated|ram_block1a34~portadataout\ & ((\dp|mem|ram_rtl_0|auto_generated|address_reg_a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|mem|ram_rtl_0|auto_generated|address_reg_a\(0),
	datab => \dp|mem|ram_rtl_0|auto_generated|ram_block1a34~portadataout\,
	datac => \dp|mem|ram_rtl_0|auto_generated|ram_block1a50~portadataout\,
	datad => \dp|mem|ram_rtl_0|auto_generated|address_reg_a\(1),
	combout => \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[2]~4_combout\);

-- Location: M9K_X22_Y20_N0
\dp|mem|ram_rtl_0|auto_generated|ram_block1a18\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RISC1.ram0_memory_e411fb78.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "Datapath_RISC:dp|memory:mem|altsyncram:ram_rtl_0|altsyncram_ct81:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \dp|mem|ram_rtl_0|auto_generated|decode3|w_anode436w[2]~0_combout\,
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \dp|mem|ram_rtl_0|auto_generated|rden_decode|w_anode475w[2]~4_combout\,
	portadatain => \dp|mem|ram_rtl_0|auto_generated|ram_block1a18_PORTADATAIN_bus\,
	portaaddr => \dp|mem|ram_rtl_0|auto_generated|ram_block1a18_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \dp|mem|ram_rtl_0|auto_generated|ram_block1a18_PORTADATAOUT_bus\);

-- Location: M9K_X33_Y25_N0
\dp|mem|ram_rtl_0|auto_generated|ram_block1a2\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000202",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RISC1.ram0_memory_e411fb78.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "Datapath_RISC:dp|memory:mem|altsyncram:ram_rtl_0|altsyncram_ct81:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \dp|mem|ram_rtl_0|auto_generated|decode3|w_anode423w[2]~4_combout\,
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \dp|mem|ram_rtl_0|auto_generated|decode3|w_anode423w[2]~5_combout\,
	portadatain => \dp|mem|ram_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\,
	portaaddr => \dp|mem|ram_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \dp|mem|ram_rtl_0|auto_generated|ram_block1a2_PORTADATAOUT_bus\);

-- Location: LCCOMB_X23_Y23_N18
\dp|mem|ram_rtl_0|auto_generated|mux2|result_node[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[2]~5_combout\ = (\dp|mem|ram_rtl_0|auto_generated|mux2|result_node[2]~4_combout\ & ((\dp|mem|ram_rtl_0|auto_generated|address_reg_a\(1)) # ((\dp|mem|ram_rtl_0|auto_generated|ram_block1a18~portadataout\)))) 
-- # (!\dp|mem|ram_rtl_0|auto_generated|mux2|result_node[2]~4_combout\ & (!\dp|mem|ram_rtl_0|auto_generated|address_reg_a\(1) & ((\dp|mem|ram_rtl_0|auto_generated|ram_block1a2~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[2]~4_combout\,
	datab => \dp|mem|ram_rtl_0|auto_generated|address_reg_a\(1),
	datac => \dp|mem|ram_rtl_0|auto_generated|ram_block1a18~portadataout\,
	datad => \dp|mem|ram_rtl_0|auto_generated|ram_block1a2~portadataout\,
	combout => \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[2]~5_combout\);

-- Location: FF_X23_Y23_N19
\dp|ir|Dout[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[2]~5_combout\,
	ena => \cp|state.s1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|ir|Dout\(2));

-- Location: LCCOMB_X35_Y23_N0
\dp|t4|Dout[9]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|t4|Dout[9]~5_combout\ = (\dp|Equal8~0_combout\ & (\dp|SE_out[14]~0_combout\)) # (!\dp|Equal8~0_combout\ & ((\dp|ir|Dout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|SE_out[14]~0_combout\,
	datab => \dp|ir|Dout\(2),
	datad => \dp|Equal8~0_combout\,
	combout => \dp|t4|Dout[9]~5_combout\);

-- Location: LCCOMB_X35_Y23_N22
\dp|pr_enc|d[9]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|pr_enc|d[9]~4_combout\ = (\dp|t4|Dout\(9) & ((\dp|t4|Dout\(7)) # (\dp|t4|Dout\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|t4|Dout\(7),
	datab => \dp|t4|Dout\(9),
	datad => \dp|t4|Dout\(8),
	combout => \dp|pr_enc|d[9]~4_combout\);

-- Location: FF_X35_Y23_N1
\dp|t4|Dout[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp|t4|Dout[9]~5_combout\,
	asdata => \dp|pr_enc|d[9]~4_combout\,
	sload => \cp|M10\(1),
	ena => \cp|Selector21~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|t4|Dout\(9));

-- Location: LCCOMB_X30_Y24_N24
\dp|t4|Dout[14]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|t4|Dout[14]~0_combout\ = (\dp|Equal8~0_combout\ & ((\dp|SE_out[14]~0_combout\))) # (!\dp|Equal8~0_combout\ & (\dp|ir|Dout\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ir|Dout\(7),
	datab => \dp|Equal8~0_combout\,
	datad => \dp|SE_out[14]~0_combout\,
	combout => \dp|t4|Dout[14]~0_combout\);

-- Location: LCCOMB_X30_Y24_N8
\dp|pr_enc|d[14]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|pr_enc|d[14]~2_combout\ = (\dp|t4|Dout\(14) & ((\dp|t4|Dout\(13)) # ((!\dp|pr_enc|v~0_combout\) # (!\dp|pr_enc|a[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|t4|Dout\(13),
	datab => \dp|pr_enc|a[1]~0_combout\,
	datac => \dp|pr_enc|v~0_combout\,
	datad => \dp|t4|Dout\(14),
	combout => \dp|pr_enc|d[14]~2_combout\);

-- Location: FF_X30_Y24_N25
\dp|t4|Dout[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp|t4|Dout[14]~0_combout\,
	asdata => \dp|pr_enc|d[14]~2_combout\,
	sload => \cp|M10\(1),
	ena => \cp|Selector21~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|t4|Dout\(14));

-- Location: LCCOMB_X30_Y24_N14
\dp|pr_enc|a[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|pr_enc|a[0]~1_combout\ = (!\dp|t4|Dout\(11) & ((\dp|t4|Dout\(12)) # ((!\dp|t4|Dout\(13) & \dp|t4|Dout\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|t4|Dout\(13),
	datab => \dp|t4|Dout\(14),
	datac => \dp|t4|Dout\(12),
	datad => \dp|t4|Dout\(11),
	combout => \dp|pr_enc|a[0]~1_combout\);

-- Location: LCCOMB_X30_Y24_N16
\dp|pr_enc|a[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|pr_enc|a[0]~2_combout\ = (\dp|t4|Dout\(8)) # ((!\dp|t4|Dout\(9) & ((\dp|t4|Dout\(10)) # (\dp|pr_enc|a[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|t4|Dout\(9),
	datab => \dp|t4|Dout\(10),
	datac => \dp|pr_enc|a[0]~1_combout\,
	datad => \dp|t4|Dout\(8),
	combout => \dp|pr_enc|a[0]~2_combout\);

-- Location: LCCOMB_X31_Y24_N24
\dp|pr_enc|a[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|pr_enc|a[0]~7_combout\ = (!\dp|t4|Dout\(7) & \dp|pr_enc|a[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dp|t4|Dout\(7),
	datac => \dp|pr_enc|a[0]~2_combout\,
	combout => \dp|pr_enc|a[0]~7_combout\);

-- Location: LCCOMB_X31_Y24_N26
\dp|RF_A3[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|RF_A3[0]~2_combout\ = (\cp|M4[0]~0_combout\ & (\cp|Selector22~0_combout\)) # (!\cp|M4[0]~0_combout\ & ((\cp|Selector22~0_combout\ & ((\dp|pr_enc|a[0]~7_combout\))) # (!\cp|Selector22~0_combout\ & (\dp|ir|Dout\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp|M4[0]~0_combout\,
	datab => \cp|Selector22~0_combout\,
	datac => \dp|ir|Dout\(9),
	datad => \dp|pr_enc|a[0]~7_combout\,
	combout => \dp|RF_A3[0]~2_combout\);

-- Location: LCCOMB_X31_Y24_N12
\dp|RF_A3[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|RF_A3[0]~3_combout\ = (\dp|RF_A3[0]~2_combout\ & ((\dp|ir|Dout\(6)) # ((!\cp|M4[0]~0_combout\)))) # (!\dp|RF_A3[0]~2_combout\ & (((\dp|ir|Dout\(3) & \cp|M4[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ir|Dout\(6),
	datab => \dp|ir|Dout\(3),
	datac => \dp|RF_A3[0]~2_combout\,
	datad => \cp|M4[0]~0_combout\,
	combout => \dp|RF_A3[0]~3_combout\);

-- Location: LCCOMB_X28_Y22_N0
\dp|rf|Decoder0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|rf|Decoder0~5_combout\ = (\cp|WideOr22~0_combout\ & (!\dp|RF_A3[1]~1_combout\ & (!\dp|RF_A3[2]~5_combout\ & \dp|RF_A3[0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp|WideOr22~0_combout\,
	datab => \dp|RF_A3[1]~1_combout\,
	datac => \dp|RF_A3[2]~5_combout\,
	datad => \dp|RF_A3[0]~3_combout\,
	combout => \dp|rf|Decoder0~5_combout\);

-- Location: LCCOMB_X29_Y21_N8
\dp|rf|reg[1][4]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|rf|reg[1][4]~21_combout\ = (\dp|rf|Decoder0~5_combout\) # (\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dp|rf|Decoder0~5_combout\,
	datad => \reset~input_o\,
	combout => \dp|rf|reg[1][4]~21_combout\);

-- Location: FF_X29_Y21_N1
\dp|rf|reg[1][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dp|rf|reg~33_combout\,
	sload => VCC,
	ena => \dp|rf|reg[1][4]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|reg[1][8]~q\);

-- Location: LCCOMB_X28_Y21_N4
\dp|rf|Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|rf|Mux7~2_combout\ = (\dp|RF_A1[1]~1_combout\ & (((\dp|RF_A1[0]~0_combout\)))) # (!\dp|RF_A1[1]~1_combout\ & ((\dp|RF_A1[0]~0_combout\ & (\dp|rf|reg[1][8]~q\)) # (!\dp|RF_A1[0]~0_combout\ & ((\dp|rf|reg[0][8]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RF_A1[1]~1_combout\,
	datab => \dp|rf|reg[1][8]~q\,
	datac => \dp|rf|reg[0][8]~q\,
	datad => \dp|RF_A1[0]~0_combout\,
	combout => \dp|rf|Mux7~2_combout\);

-- Location: FF_X29_Y24_N25
\dp|rf|reg[2][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dp|rf|reg~33_combout\,
	sload => VCC,
	ena => \dp|rf|reg[2][6]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|reg[2][8]~q\);

-- Location: FF_X29_Y24_N19
\dp|rf|reg[3][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dp|rf|reg~33_combout\,
	sload => VCC,
	ena => \dp|rf|reg[3][7]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|reg[3][8]~q\);

-- Location: LCCOMB_X29_Y24_N24
\dp|rf|Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|rf|Mux7~3_combout\ = (\dp|rf|Mux7~2_combout\ & (((\dp|rf|reg[3][8]~q\)) # (!\dp|RF_A1[1]~1_combout\))) # (!\dp|rf|Mux7~2_combout\ & (\dp|RF_A1[1]~1_combout\ & (\dp|rf|reg[2][8]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|Mux7~2_combout\,
	datab => \dp|RF_A1[1]~1_combout\,
	datac => \dp|rf|reg[2][8]~q\,
	datad => \dp|rf|reg[3][8]~q\,
	combout => \dp|rf|Mux7~3_combout\);

-- Location: FF_X26_Y21_N15
\dp|rf|reg[6][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dp|rf|reg~33_combout\,
	sload => VCC,
	ena => \dp|rf|reg[6][7]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|reg[6][8]~q\);

-- Location: FF_X26_Y21_N1
\dp|rf|reg[4][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dp|rf|reg~33_combout\,
	sload => VCC,
	ena => \dp|rf|reg[4][14]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|reg[4][8]~q\);

-- Location: LCCOMB_X26_Y21_N0
\dp|rf|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|rf|Mux7~0_combout\ = (\dp|RF_A1[1]~1_combout\ & ((\dp|rf|reg[6][8]~q\) # ((\dp|RF_A1[0]~0_combout\)))) # (!\dp|RF_A1[1]~1_combout\ & (((\dp|rf|reg[4][8]~q\ & !\dp|RF_A1[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RF_A1[1]~1_combout\,
	datab => \dp|rf|reg[6][8]~q\,
	datac => \dp|rf|reg[4][8]~q\,
	datad => \dp|RF_A1[0]~0_combout\,
	combout => \dp|rf|Mux7~0_combout\);

-- Location: FF_X27_Y22_N27
\dp|rf|reg[5][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dp|rf|reg~33_combout\,
	sload => VCC,
	ena => \dp|rf|reg[5][13]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|reg[5][8]~q\);

-- Location: LCCOMB_X27_Y22_N26
\dp|rf|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|rf|Mux7~1_combout\ = (\dp|rf|Mux7~0_combout\ & (((\dp|rf|reg[7][8]~q\)) # (!\dp|RF_A1[0]~0_combout\))) # (!\dp|rf|Mux7~0_combout\ & (\dp|RF_A1[0]~0_combout\ & (\dp|rf|reg[5][8]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|Mux7~0_combout\,
	datab => \dp|RF_A1[0]~0_combout\,
	datac => \dp|rf|reg[5][8]~q\,
	datad => \dp|rf|reg[7][8]~q\,
	combout => \dp|rf|Mux7~1_combout\);

-- Location: LCCOMB_X27_Y22_N12
\dp|rf|Mux7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|rf|Mux7~4_combout\ = (\dp|RF_A1[2]~2_combout\ & ((\dp|rf|Mux7~1_combout\))) # (!\dp|RF_A1[2]~2_combout\ & (\dp|rf|Mux7~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|Mux7~3_combout\,
	datac => \dp|RF_A1[2]~2_combout\,
	datad => \dp|rf|Mux7~1_combout\,
	combout => \dp|rf|Mux7~4_combout\);

-- Location: LCCOMB_X27_Y22_N16
\dp|t1|Dout[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|t1|Dout[8]~feeder_combout\ = \dp|rf|Mux7~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dp|rf|Mux7~4_combout\,
	combout => \dp|t1|Dout[8]~feeder_combout\);

-- Location: FF_X27_Y22_N17
\dp|t1|Dout[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp|t1|Dout[8]~feeder_combout\,
	ena => \cp|state.s2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|t1|Dout\(8));

-- Location: LCCOMB_X31_Y20_N14
\dp|Alu_1[8]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Alu_1[8]~10_combout\ = (\cp|Selector17~0_combout\ & (((\cp|Selector18~2_combout\)))) # (!\cp|Selector17~0_combout\ & ((\cp|Selector18~2_combout\ & ((\dp|t1|Dout\(8)))) # (!\cp|Selector18~2_combout\ & (\dp|rf|reg[7][8]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|reg[7][8]~q\,
	datab => \cp|Selector17~0_combout\,
	datac => \dp|t1|Dout\(8),
	datad => \cp|Selector18~2_combout\,
	combout => \dp|Alu_1[8]~10_combout\);

-- Location: LCCOMB_X31_Y20_N0
\dp|Alu_1[8]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Alu_1[8]~11_combout\ = (\cp|Selector17~0_combout\ & ((\dp|Alu_1[8]~10_combout\ & ((\dp|SE_out[14]~0_combout\))) # (!\dp|Alu_1[8]~10_combout\ & (\dp|t2|Dout\(8))))) # (!\cp|Selector17~0_combout\ & (((\dp|Alu_1[8]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|t2|Dout\(8),
	datab => \cp|Selector17~0_combout\,
	datac => \dp|Alu_1[8]~10_combout\,
	datad => \dp|SE_out[14]~0_combout\,
	combout => \dp|Alu_1[8]~11_combout\);

-- Location: LCCOMB_X31_Y20_N28
\dp|aluInst|OP~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|aluInst|OP~10_combout\ = ((!\dp|Alu_2[8]~11_combout\ & ((!\dp|Equal16~0_combout\) # (!\dp|t2|Dout\(8))))) # (!\dp|Alu_1[8]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|t2|Dout\(8),
	datab => \dp|Alu_1[8]~11_combout\,
	datac => \dp|Alu_2[8]~11_combout\,
	datad => \dp|Equal16~0_combout\,
	combout => \dp|aluInst|OP~10_combout\);

-- Location: LCCOMB_X30_Y23_N24
\dp|pc|Dout[8]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|pc|Dout[8]~8_combout\ = (\cp|Alu_op~0_combout\ & (\dp|aluInst|OP~10_combout\)) # (!\cp|Alu_op~0_combout\ & ((\dp|aluInst|OP_s[8]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|aluInst|OP~10_combout\,
	datab => \cp|Alu_op~0_combout\,
	datad => \dp|aluInst|OP_s[8]~16_combout\,
	combout => \dp|pc|Dout[8]~8_combout\);

-- Location: FF_X30_Y23_N25
\dp|pc|Dout[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp|pc|Dout[8]~8_combout\,
	asdata => \dp|rf|Mux7~4_combout\,
	sload => \cp|state.s14~q\,
	ena => \cp|WideOr18~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|pc|Dout\(8));

-- Location: LCCOMB_X29_Y24_N28
\dp|RF_D3[8]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|RF_D3[8]~33_combout\ = (\cp|M5[1]~0_combout\ & (\cp|state.s3~q\ & \dp|t4|Dout\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp|M5[1]~0_combout\,
	datac => \cp|state.s3~q\,
	datad => \dp|t4|Dout\(8),
	combout => \dp|RF_D3[8]~33_combout\);

-- Location: LCCOMB_X29_Y23_N26
\dp|rf|reg~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|rf|reg~11_combout\ = (\dp|rf|process_0~1_combout\ & (\dp|pc|Dout\(8))) # (!\dp|rf|process_0~1_combout\ & (((\dp|RF_D3[8]~34_combout\) # (\dp|RF_D3[8]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|pc|Dout\(8),
	datab => \dp|rf|process_0~1_combout\,
	datac => \dp|RF_D3[8]~34_combout\,
	datad => \dp|RF_D3[8]~33_combout\,
	combout => \dp|rf|reg~11_combout\);

-- Location: FF_X29_Y23_N27
\dp|rf|reg[7][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp|rf|reg~11_combout\,
	sclr => \reset~input_o\,
	ena => \dp|rf|reg[7][12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|reg[7][8]~q\);

-- Location: LCCOMB_X30_Y23_N6
\dp|T3_in[8]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|T3_in[8]~22_combout\ = (\cp|WideOr19~0_combout\ & ((\cp|M11[0]~0_combout\ & (\dp|rf|reg[7][8]~q\)) # (!\cp|M11[0]~0_combout\ & ((\dp|mem|ram_rtl_0|auto_generated|mux2|result_node[8]~17_combout\))))) # (!\cp|WideOr19~0_combout\ & 
-- (((\cp|M11[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|reg[7][8]~q\,
	datab => \cp|WideOr19~0_combout\,
	datac => \cp|M11[0]~0_combout\,
	datad => \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[8]~17_combout\,
	combout => \dp|T3_in[8]~22_combout\);

-- Location: LCCOMB_X30_Y23_N10
\dp|T3_in[8]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|T3_in[8]~23_combout\ = (\dp|T3_in[8]~22_combout\ & ((\cp|WideOr19~0_combout\) # ((\dp|rf|Mux7~4_combout\)))) # (!\dp|T3_in[8]~22_combout\ & (!\cp|WideOr19~0_combout\ & ((\dp|pc|Dout[8]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|T3_in[8]~22_combout\,
	datab => \cp|WideOr19~0_combout\,
	datac => \dp|rf|Mux7~4_combout\,
	datad => \dp|pc|Dout[8]~8_combout\,
	combout => \dp|T3_in[8]~23_combout\);

-- Location: FF_X30_Y23_N11
\dp|t3|Dout[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp|T3_in[8]~23_combout\,
	ena => \cp|WideOr19~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|t3|Dout\(8));

-- Location: LCCOMB_X31_Y23_N10
\dp|RF_D3[8]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|RF_D3[8]~34_combout\ = (!\cp|M5[1]~1_combout\ & ((\dp|Equal5~0_combout\ & (\dp|t3|Dout\(8))) # (!\dp|Equal5~0_combout\ & ((\dp|pc|Dout\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp|M5[1]~1_combout\,
	datab => \dp|t3|Dout\(8),
	datac => \dp|Equal5~0_combout\,
	datad => \dp|pc|Dout\(8),
	combout => \dp|RF_D3[8]~34_combout\);

-- Location: LCCOMB_X29_Y24_N26
\dp|rf|reg~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|rf|reg~33_combout\ = (!\reset~input_o\ & ((\dp|RF_D3[8]~34_combout\) # ((\cp|M5[1]~1_combout\ & \dp|t4|Dout\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp|M5[1]~1_combout\,
	datab => \dp|t4|Dout\(8),
	datac => \reset~input_o\,
	datad => \dp|RF_D3[8]~34_combout\,
	combout => \dp|rf|reg~33_combout\);

-- Location: FF_X28_Y21_N5
\dp|rf|reg[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dp|rf|reg~33_combout\,
	sload => VCC,
	ena => \dp|rf|reg[0][10]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|reg[0][8]~q\);

-- Location: LCCOMB_X29_Y21_N0
\dp|T2_in[8]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|T2_in[8]~40_combout\ = (\dp|ir|Dout\(9) & (((\dp|rf|reg[1][8]~q\) # (\dp|ir|Dout\(10))))) # (!\dp|ir|Dout\(9) & (\dp|rf|reg[0][8]~q\ & ((!\dp|ir|Dout\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|reg[0][8]~q\,
	datab => \dp|ir|Dout\(9),
	datac => \dp|rf|reg[1][8]~q\,
	datad => \dp|ir|Dout\(10),
	combout => \dp|T2_in[8]~40_combout\);

-- Location: LCCOMB_X29_Y24_N18
\dp|T2_in[8]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|T2_in[8]~41_combout\ = (\dp|T2_in[8]~40_combout\ & (((\dp|rf|reg[3][8]~q\)) # (!\dp|ir|Dout\(10)))) # (!\dp|T2_in[8]~40_combout\ & (\dp|ir|Dout\(10) & ((\dp|rf|reg[2][8]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|T2_in[8]~40_combout\,
	datab => \dp|ir|Dout\(10),
	datac => \dp|rf|reg[3][8]~q\,
	datad => \dp|rf|reg[2][8]~q\,
	combout => \dp|T2_in[8]~41_combout\);

-- Location: LCCOMB_X26_Y21_N14
\dp|T2_in[8]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|T2_in[8]~42_combout\ = (\dp|ir|Dout\(9) & (((\dp|ir|Dout\(10))))) # (!\dp|ir|Dout\(9) & ((\dp|ir|Dout\(10) & ((\dp|rf|reg[6][8]~q\))) # (!\dp|ir|Dout\(10) & (\dp|rf|reg[4][8]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ir|Dout\(9),
	datab => \dp|rf|reg[4][8]~q\,
	datac => \dp|rf|reg[6][8]~q\,
	datad => \dp|ir|Dout\(10),
	combout => \dp|T2_in[8]~42_combout\);

-- Location: LCCOMB_X27_Y22_N30
\dp|T2_in[8]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|T2_in[8]~43_combout\ = (\dp|ir|Dout\(9) & ((\dp|T2_in[8]~42_combout\ & ((\dp|rf|reg[7][8]~q\))) # (!\dp|T2_in[8]~42_combout\ & (\dp|rf|reg[5][8]~q\)))) # (!\dp|ir|Dout\(9) & (((\dp|T2_in[8]~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|reg[5][8]~q\,
	datab => \dp|ir|Dout\(9),
	datac => \dp|T2_in[8]~42_combout\,
	datad => \dp|rf|reg[7][8]~q\,
	combout => \dp|T2_in[8]~43_combout\);

-- Location: LCCOMB_X30_Y20_N12
\dp|t2|Dout[8]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|t2|Dout[8]~8_combout\ = (\dp|ir|Dout\(11) & ((\dp|T2_in[8]~43_combout\))) # (!\dp|ir|Dout\(11) & (\dp|T2_in[8]~41_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|T2_in[8]~41_combout\,
	datab => \dp|ir|Dout\(11),
	datad => \dp|T2_in[8]~43_combout\,
	combout => \dp|t2|Dout[8]~8_combout\);

-- Location: FF_X30_Y20_N13
\dp|t2|Dout[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp|t2|Dout[8]~8_combout\,
	asdata => \dp|pc|Dout[8]~8_combout\,
	sload => \cp|M9~0_combout\,
	ena => \cp|WideOr20~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|t2|Dout\(8));

-- Location: LCCOMB_X31_Y20_N12
\dp|Mem_din[8]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Mem_din[8]~8_combout\ = (\cp|state.s6~q\ & (\dp|t2|Dout\(8))) # (!\cp|state.s6~q\ & ((\dp|t3|Dout\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|t2|Dout\(8),
	datab => \cp|state.s6~q\,
	datac => \dp|t3|Dout\(8),
	combout => \dp|Mem_din[8]~8_combout\);

-- Location: M9K_X33_Y12_N0
\dp|mem|ram_rtl_0|auto_generated|ram_block1a40\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RISC1.ram0_memory_e411fb78.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "Datapath_RISC:dp|memory:mem|altsyncram:ram_rtl_0|altsyncram_ct81:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \dp|mem|ram_rtl_0|auto_generated|decode3|w_anode444w[2]~0_combout\,
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \dp|mem|ram_rtl_0|auto_generated|rden_decode|w_anode484w[2]~4_combout\,
	portadatain => \dp|mem|ram_rtl_0|auto_generated|ram_block1a40_PORTADATAIN_bus\,
	portaaddr => \dp|mem|ram_rtl_0|auto_generated|ram_block1a40_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \dp|mem|ram_rtl_0|auto_generated|ram_block1a40_PORTADATAOUT_bus\);

-- Location: M9K_X33_Y18_N0
\dp|mem|ram_rtl_0|auto_generated|ram_block1a56\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RISC1.ram0_memory_e411fb78.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "Datapath_RISC:dp|memory:mem|altsyncram:ram_rtl_0|altsyncram_ct81:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \dp|mem|ram_rtl_0|auto_generated|decode3|w_anode452w[2]~0_combout\,
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \dp|mem|ram_rtl_0|auto_generated|rden_decode|w_anode493w[2]~0_combout\,
	portadatain => \dp|mem|ram_rtl_0|auto_generated|ram_block1a56_PORTADATAIN_bus\,
	portaaddr => \dp|mem|ram_rtl_0|auto_generated|ram_block1a56_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \dp|mem|ram_rtl_0|auto_generated|ram_block1a56_PORTADATAOUT_bus\);

-- Location: LCCOMB_X30_Y18_N12
\dp|mem|ram_rtl_0|auto_generated|mux2|result_node[8]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[8]~16_combout\ = (\dp|mem|ram_rtl_0|auto_generated|address_reg_a\(1) & ((\dp|mem|ram_rtl_0|auto_generated|address_reg_a\(0) & ((\dp|mem|ram_rtl_0|auto_generated|ram_block1a56~portadataout\))) # 
-- (!\dp|mem|ram_rtl_0|auto_generated|address_reg_a\(0) & (\dp|mem|ram_rtl_0|auto_generated|ram_block1a40~portadataout\)))) # (!\dp|mem|ram_rtl_0|auto_generated|address_reg_a\(1) & (\dp|mem|ram_rtl_0|auto_generated|address_reg_a\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|mem|ram_rtl_0|auto_generated|address_reg_a\(1),
	datab => \dp|mem|ram_rtl_0|auto_generated|address_reg_a\(0),
	datac => \dp|mem|ram_rtl_0|auto_generated|ram_block1a40~portadataout\,
	datad => \dp|mem|ram_rtl_0|auto_generated|ram_block1a56~portadataout\,
	combout => \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[8]~16_combout\);

-- Location: M9K_X33_Y14_N0
\dp|mem|ram_rtl_0|auto_generated|ram_block1a24\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RISC1.ram0_memory_e411fb78.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "Datapath_RISC:dp|memory:mem|altsyncram:ram_rtl_0|altsyncram_ct81:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \dp|mem|ram_rtl_0|auto_generated|decode3|w_anode436w[2]~0_combout\,
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \dp|mem|ram_rtl_0|auto_generated|rden_decode|w_anode475w[2]~4_combout\,
	portadatain => \dp|mem|ram_rtl_0|auto_generated|ram_block1a24_PORTADATAIN_bus\,
	portaaddr => \dp|mem|ram_rtl_0|auto_generated|ram_block1a24_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \dp|mem|ram_rtl_0|auto_generated|ram_block1a24_PORTADATAOUT_bus\);

-- Location: M9K_X33_Y17_N0
\dp|mem|ram_rtl_0|auto_generated|ram_block1a8\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000168",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RISC1.ram0_memory_e411fb78.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "Datapath_RISC:dp|memory:mem|altsyncram:ram_rtl_0|altsyncram_ct81:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \dp|mem|ram_rtl_0|auto_generated|decode3|w_anode423w[2]~4_combout\,
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \dp|mem|ram_rtl_0|auto_generated|decode3|w_anode423w[2]~5_combout\,
	portadatain => \dp|mem|ram_rtl_0|auto_generated|ram_block1a8_PORTADATAIN_bus\,
	portaaddr => \dp|mem|ram_rtl_0|auto_generated|ram_block1a8_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \dp|mem|ram_rtl_0|auto_generated|ram_block1a8_PORTADATAOUT_bus\);

-- Location: LCCOMB_X30_Y18_N20
\dp|mem|ram_rtl_0|auto_generated|mux2|result_node[8]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[8]~17_combout\ = (\dp|mem|ram_rtl_0|auto_generated|mux2|result_node[8]~16_combout\ & ((\dp|mem|ram_rtl_0|auto_generated|ram_block1a24~portadataout\) # 
-- ((\dp|mem|ram_rtl_0|auto_generated|address_reg_a\(1))))) # (!\dp|mem|ram_rtl_0|auto_generated|mux2|result_node[8]~16_combout\ & (((!\dp|mem|ram_rtl_0|auto_generated|address_reg_a\(1) & \dp|mem|ram_rtl_0|auto_generated|ram_block1a8~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[8]~16_combout\,
	datab => \dp|mem|ram_rtl_0|auto_generated|ram_block1a24~portadataout\,
	datac => \dp|mem|ram_rtl_0|auto_generated|address_reg_a\(1),
	datad => \dp|mem|ram_rtl_0|auto_generated|ram_block1a8~portadataout\,
	combout => \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[8]~17_combout\);

-- Location: FF_X30_Y18_N21
\dp|ir|Dout[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[8]~17_combout\,
	ena => \cp|state.s1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|ir|Dout\(8));

-- Location: LCCOMB_X35_Y23_N14
\dp|SE_out[14]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|SE_out[14]~0_combout\ = (\cp|state.s13~q\ & ((\dp|ir|Dout\(8)))) # (!\cp|state.s13~q\ & (\dp|ir|Dout\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dp|ir|Dout\(5),
	datac => \dp|ir|Dout\(8),
	datad => \cp|state.s13~q\,
	combout => \dp|SE_out[14]~0_combout\);

-- Location: LCCOMB_X34_Y20_N4
\dp|Alu_1[12]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Alu_1[12]~3_combout\ = (\dp|Alu_1[12]~2_combout\ & (((\dp|SE_out[14]~0_combout\)) # (!\cp|Selector17~0_combout\))) # (!\dp|Alu_1[12]~2_combout\ & (\cp|Selector17~0_combout\ & (\dp|t2|Dout\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Alu_1[12]~2_combout\,
	datab => \cp|Selector17~0_combout\,
	datac => \dp|t2|Dout\(12),
	datad => \dp|SE_out[14]~0_combout\,
	combout => \dp|Alu_1[12]~3_combout\);

-- Location: LCCOMB_X34_Y20_N6
\dp|Alu_2[12]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Alu_2[12]~3_combout\ = (\dp|Equal15~0_combout\ & (\dp|Alu_2[15]~0_combout\ & ((\dp|t3|Dout\(12))))) # (!\dp|Equal15~0_combout\ & ((\dp|t4|Dout\(12)) # ((\dp|Alu_2[15]~0_combout\ & \dp|t3|Dout\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Equal15~0_combout\,
	datab => \dp|Alu_2[15]~0_combout\,
	datac => \dp|t4|Dout\(12),
	datad => \dp|t3|Dout\(12),
	combout => \dp|Alu_2[12]~3_combout\);

-- Location: LCCOMB_X34_Y20_N22
\dp|aluInst|OP~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|aluInst|OP~14_combout\ = ((!\dp|Alu_2[12]~3_combout\ & ((!\dp|Equal16~0_combout\) # (!\dp|t2|Dout\(12))))) # (!\dp|Alu_1[12]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|t2|Dout\(12),
	datab => \dp|Alu_1[12]~3_combout\,
	datac => \dp|Equal16~0_combout\,
	datad => \dp|Alu_2[12]~3_combout\,
	combout => \dp|aluInst|OP~14_combout\);

-- Location: LCCOMB_X34_Y20_N0
\dp|Alu_2[12]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Alu_2[12]~4_combout\ = (\dp|Alu_2[12]~3_combout\) # ((\dp|t2|Dout\(12) & \dp|Equal16~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|t2|Dout\(12),
	datac => \dp|Equal16~0_combout\,
	datad => \dp|Alu_2[12]~3_combout\,
	combout => \dp|Alu_2[12]~4_combout\);

-- Location: LCCOMB_X34_Y21_N8
\dp|aluInst|OP_s[12]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|aluInst|OP_s[12]~24_combout\ = ((\dp|Alu_1[12]~3_combout\ $ (\dp|Alu_2[12]~4_combout\ $ (!\dp|aluInst|OP_s[11]~23\)))) # (GND)
-- \dp|aluInst|OP_s[12]~25\ = CARRY((\dp|Alu_1[12]~3_combout\ & ((\dp|Alu_2[12]~4_combout\) # (!\dp|aluInst|OP_s[11]~23\))) # (!\dp|Alu_1[12]~3_combout\ & (\dp|Alu_2[12]~4_combout\ & !\dp|aluInst|OP_s[11]~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Alu_1[12]~3_combout\,
	datab => \dp|Alu_2[12]~4_combout\,
	datad => VCC,
	cin => \dp|aluInst|OP_s[11]~23\,
	combout => \dp|aluInst|OP_s[12]~24_combout\,
	cout => \dp|aluInst|OP_s[12]~25\);

-- Location: LCCOMB_X34_Y20_N8
\dp|pc|Dout[12]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|pc|Dout[12]~12_combout\ = (\cp|Alu_op~0_combout\ & (\dp|aluInst|OP~14_combout\)) # (!\cp|Alu_op~0_combout\ & ((\dp|aluInst|OP_s[12]~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|aluInst|OP~14_combout\,
	datab => \cp|Alu_op~0_combout\,
	datad => \dp|aluInst|OP_s[12]~24_combout\,
	combout => \dp|pc|Dout[12]~12_combout\);

-- Location: FF_X34_Y20_N9
\dp|pc|Dout[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp|pc|Dout[12]~12_combout\,
	asdata => \dp|rf|Mux3~4_combout\,
	sload => \cp|state.s14~q\,
	ena => \cp|WideOr18~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|pc|Dout\(12));

-- Location: LCCOMB_X34_Y20_N2
\dp|RF_D3[12]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|RF_D3[12]~38_combout\ = (\cp|M5[1]~0_combout\ & (\cp|state.s3~q\ & \dp|t4|Dout\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp|M5[1]~0_combout\,
	datab => \cp|state.s3~q\,
	datac => \dp|t4|Dout\(12),
	combout => \dp|RF_D3[12]~38_combout\);

-- Location: LCCOMB_X29_Y23_N14
\dp|rf|reg~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|rf|reg~15_combout\ = (\dp|rf|process_0~1_combout\ & (\dp|pc|Dout\(12))) # (!\dp|rf|process_0~1_combout\ & (((\dp|RF_D3[12]~38_combout\) # (\dp|RF_D3[12]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|pc|Dout\(12),
	datab => \dp|RF_D3[12]~38_combout\,
	datac => \dp|rf|process_0~1_combout\,
	datad => \dp|RF_D3[12]~39_combout\,
	combout => \dp|rf|reg~15_combout\);

-- Location: FF_X29_Y23_N15
\dp|rf|reg[7][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp|rf|reg~15_combout\,
	sclr => \reset~input_o\,
	ena => \dp|rf|reg[7][12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|reg[7][12]~q\);

-- Location: LCCOMB_X34_Y20_N24
\dp|T3_in[12]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|T3_in[12]~31_combout\ = (\cp|WideOr19~0_combout\ & ((\cp|M11[0]~0_combout\ & (\dp|rf|reg[7][12]~q\)) # (!\cp|M11[0]~0_combout\ & ((\dp|mem|ram_rtl_0|auto_generated|mux2|result_node[12]~25_combout\))))) # (!\cp|WideOr19~0_combout\ & 
-- (\cp|M11[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp|WideOr19~0_combout\,
	datab => \cp|M11[0]~0_combout\,
	datac => \dp|rf|reg[7][12]~q\,
	datad => \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[12]~25_combout\,
	combout => \dp|T3_in[12]~31_combout\);

-- Location: LCCOMB_X34_Y20_N18
\dp|T3_in[12]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|T3_in[12]~32_combout\ = (\cp|WideOr19~0_combout\ & (\dp|T3_in[12]~31_combout\)) # (!\cp|WideOr19~0_combout\ & ((\dp|T3_in[12]~31_combout\ & (\dp|rf|Mux3~4_combout\)) # (!\dp|T3_in[12]~31_combout\ & ((\dp|pc|Dout[12]~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp|WideOr19~0_combout\,
	datab => \dp|T3_in[12]~31_combout\,
	datac => \dp|rf|Mux3~4_combout\,
	datad => \dp|pc|Dout[12]~12_combout\,
	combout => \dp|T3_in[12]~32_combout\);

-- Location: FF_X34_Y20_N19
\dp|t3|Dout[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp|T3_in[12]~32_combout\,
	ena => \cp|WideOr19~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|t3|Dout\(12));

-- Location: LCCOMB_X34_Y20_N20
\dp|RF_D3[12]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|RF_D3[12]~39_combout\ = (!\cp|M5[1]~1_combout\ & ((\dp|Equal5~0_combout\ & (\dp|t3|Dout\(12))) # (!\dp|Equal5~0_combout\ & ((\dp|pc|Dout\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp|M5[1]~1_combout\,
	datab => \dp|t3|Dout\(12),
	datac => \dp|pc|Dout\(12),
	datad => \dp|Equal5~0_combout\,
	combout => \dp|RF_D3[12]~39_combout\);

-- Location: LCCOMB_X29_Y24_N14
\dp|rf|reg~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|rf|reg~37_combout\ = (!\reset~input_o\ & ((\dp|RF_D3[12]~39_combout\) # ((\dp|t4|Dout\(12) & \cp|M5[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \dp|t4|Dout\(12),
	datac => \cp|M5[1]~1_combout\,
	datad => \dp|RF_D3[12]~39_combout\,
	combout => \dp|rf|reg~37_combout\);

-- Location: FF_X29_Y24_N3
\dp|rf|reg[3][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dp|rf|reg~37_combout\,
	sload => VCC,
	ena => \dp|rf|reg[3][7]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|reg[3][12]~q\);

-- Location: FF_X29_Y24_N9
\dp|rf|reg[2][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dp|rf|reg~37_combout\,
	sload => VCC,
	ena => \dp|rf|reg[2][6]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|reg[2][12]~q\);

-- Location: FF_X29_Y21_N29
\dp|rf|reg[1][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dp|rf|reg~37_combout\,
	sload => VCC,
	ena => \dp|rf|reg[1][4]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|reg[1][12]~q\);

-- Location: FF_X28_Y21_N19
\dp|rf|reg[0][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dp|rf|reg~37_combout\,
	sload => VCC,
	ena => \dp|rf|reg[0][10]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|reg[0][12]~q\);

-- Location: LCCOMB_X28_Y21_N18
\dp|rf|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|rf|Mux3~2_combout\ = (\dp|RF_A1[1]~1_combout\ & (((\dp|RF_A1[0]~0_combout\)))) # (!\dp|RF_A1[1]~1_combout\ & ((\dp|RF_A1[0]~0_combout\ & (\dp|rf|reg[1][12]~q\)) # (!\dp|RF_A1[0]~0_combout\ & ((\dp|rf|reg[0][12]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RF_A1[1]~1_combout\,
	datab => \dp|rf|reg[1][12]~q\,
	datac => \dp|rf|reg[0][12]~q\,
	datad => \dp|RF_A1[0]~0_combout\,
	combout => \dp|rf|Mux3~2_combout\);

-- Location: LCCOMB_X29_Y24_N8
\dp|rf|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|rf|Mux3~3_combout\ = (\dp|RF_A1[1]~1_combout\ & ((\dp|rf|Mux3~2_combout\ & (\dp|rf|reg[3][12]~q\)) # (!\dp|rf|Mux3~2_combout\ & ((\dp|rf|reg[2][12]~q\))))) # (!\dp|RF_A1[1]~1_combout\ & (((\dp|rf|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|reg[3][12]~q\,
	datab => \dp|RF_A1[1]~1_combout\,
	datac => \dp|rf|reg[2][12]~q\,
	datad => \dp|rf|Mux3~2_combout\,
	combout => \dp|rf|Mux3~3_combout\);

-- Location: FF_X26_Y21_N3
\dp|rf|reg[6][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dp|rf|reg~37_combout\,
	sload => VCC,
	ena => \dp|rf|reg[6][7]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|reg[6][12]~q\);

-- Location: FF_X26_Y21_N13
\dp|rf|reg[4][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dp|rf|reg~37_combout\,
	sload => VCC,
	ena => \dp|rf|reg[4][14]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|reg[4][12]~q\);

-- Location: LCCOMB_X26_Y21_N12
\dp|rf|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|rf|Mux3~0_combout\ = (\dp|RF_A1[1]~1_combout\ & ((\dp|rf|reg[6][12]~q\) # ((\dp|RF_A1[0]~0_combout\)))) # (!\dp|RF_A1[1]~1_combout\ & (((\dp|rf|reg[4][12]~q\ & !\dp|RF_A1[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RF_A1[1]~1_combout\,
	datab => \dp|rf|reg[6][12]~q\,
	datac => \dp|rf|reg[4][12]~q\,
	datad => \dp|RF_A1[0]~0_combout\,
	combout => \dp|rf|Mux3~0_combout\);

-- Location: FF_X31_Y21_N3
\dp|rf|reg[5][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dp|rf|reg~37_combout\,
	sload => VCC,
	ena => \dp|rf|reg[5][13]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|reg[5][12]~q\);

-- Location: LCCOMB_X31_Y21_N2
\dp|rf|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|rf|Mux3~1_combout\ = (\dp|rf|Mux3~0_combout\ & ((\dp|rf|reg[7][12]~q\) # ((!\dp|RF_A1[0]~0_combout\)))) # (!\dp|rf|Mux3~0_combout\ & (((\dp|rf|reg[5][12]~q\ & \dp|RF_A1[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|Mux3~0_combout\,
	datab => \dp|rf|reg[7][12]~q\,
	datac => \dp|rf|reg[5][12]~q\,
	datad => \dp|RF_A1[0]~0_combout\,
	combout => \dp|rf|Mux3~1_combout\);

-- Location: LCCOMB_X31_Y21_N28
\dp|rf|Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|rf|Mux3~4_combout\ = (\dp|RF_A1[2]~2_combout\ & ((\dp|rf|Mux3~1_combout\))) # (!\dp|RF_A1[2]~2_combout\ & (\dp|rf|Mux3~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|Mux3~3_combout\,
	datab => \dp|rf|Mux3~1_combout\,
	datad => \dp|RF_A1[2]~2_combout\,
	combout => \dp|rf|Mux3~4_combout\);

-- Location: LCCOMB_X31_Y21_N24
\dp|t1|Dout[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|t1|Dout[12]~feeder_combout\ = \dp|rf|Mux3~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dp|rf|Mux3~4_combout\,
	combout => \dp|t1|Dout[12]~feeder_combout\);

-- Location: FF_X31_Y21_N25
\dp|t1|Dout[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp|t1|Dout[12]~feeder_combout\,
	ena => \cp|state.s2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|t1|Dout\(12));

-- Location: FF_X30_Y19_N29
\dp|t1|Dout[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dp|rf|Mux2~4_combout\,
	sload => VCC,
	ena => \cp|state.s2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|t1|Dout\(13));

-- Location: LCCOMB_X34_Y20_N14
\cp|state~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \cp|state~33_combout\ = (\dp|t2|Dout\(13) & (\dp|t1|Dout\(13) & (\dp|t1|Dout\(12) $ (!\dp|t2|Dout\(12))))) # (!\dp|t2|Dout\(13) & (!\dp|t1|Dout\(13) & (\dp|t1|Dout\(12) $ (!\dp|t2|Dout\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|t2|Dout\(13),
	datab => \dp|t1|Dout\(12),
	datac => \dp|t2|Dout\(12),
	datad => \dp|t1|Dout\(13),
	combout => \cp|state~33_combout\);

-- Location: LCCOMB_X31_Y19_N20
\cp|state~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \cp|state~32_combout\ = (\dp|t2|Dout\(10) & (\dp|t1|Dout\(10) & (\dp|t1|Dout\(11) $ (!\dp|t2|Dout\(11))))) # (!\dp|t2|Dout\(10) & (!\dp|t1|Dout\(10) & (\dp|t1|Dout\(11) $ (!\dp|t2|Dout\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|t2|Dout\(10),
	datab => \dp|t1|Dout\(11),
	datac => \dp|t2|Dout\(11),
	datad => \dp|t1|Dout\(10),
	combout => \cp|state~32_combout\);

-- Location: LCCOMB_X31_Y20_N30
\cp|state~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \cp|state~31_combout\ = (\dp|t1|Dout\(8) & (\dp|t2|Dout\(8) & (\dp|t2|Dout\(9) $ (!\dp|t1|Dout\(9))))) # (!\dp|t1|Dout\(8) & (!\dp|t2|Dout\(8) & (\dp|t2|Dout\(9) $ (!\dp|t1|Dout\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|t1|Dout\(8),
	datab => \dp|t2|Dout\(9),
	datac => \dp|t1|Dout\(9),
	datad => \dp|t2|Dout\(8),
	combout => \cp|state~31_combout\);

-- Location: LCCOMB_X35_Y23_N28
\dp|t4|Dout[15]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|t4|Dout[15]~7_combout\ = (\dp|T4_in[7]~3_combout\ & (\dp|SE_out[14]~0_combout\)) # (!\dp|T4_in[7]~3_combout\ & ((\cp|M10\(1) & (\dp|SE_out[14]~0_combout\)) # (!\cp|M10\(1) & ((\dp|ir|Dout\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|SE_out[14]~0_combout\,
	datab => \dp|T4_in[7]~3_combout\,
	datac => \dp|ir|Dout\(8),
	datad => \cp|M10\(1),
	combout => \dp|t4|Dout[15]~7_combout\);

-- Location: LCCOMB_X32_Y24_N24
\dp|t4|Dout[15]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|t4|Dout[15]~8_combout\ = (\cp|Selector21~2_combout\ & ((\cp|M10\(1) & (\dp|t4|Dout\(15))) # (!\cp|M10\(1) & ((\dp|t4|Dout[15]~7_combout\))))) # (!\cp|Selector21~2_combout\ & (((\dp|t4|Dout\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp|Selector21~2_combout\,
	datab => \cp|M10\(1),
	datac => \dp|t4|Dout\(15),
	datad => \dp|t4|Dout[15]~7_combout\,
	combout => \dp|t4|Dout[15]~8_combout\);

-- Location: FF_X32_Y24_N25
\dp|t4|Dout[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp|t4|Dout[15]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|t4|Dout\(15));

-- Location: LCCOMB_X32_Y20_N28
\dp|RF_D3[15]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|RF_D3[15]~41_combout\ = (\cp|state.s3~q\ & (\cp|M5[1]~0_combout\ & \dp|t4|Dout\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp|state.s3~q\,
	datac => \cp|M5[1]~0_combout\,
	datad => \dp|t4|Dout\(15),
	combout => \dp|RF_D3[15]~41_combout\);

-- Location: LCCOMB_X32_Y20_N16
\dp|T3_in[15]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|T3_in[15]~34_combout\ = (\cp|WideOr19~0_combout\ & ((\cp|M11[0]~0_combout\ & (\dp|rf|reg[7][15]~q\)) # (!\cp|M11[0]~0_combout\ & ((\dp|mem|ram_rtl_0|auto_generated|mux2|result_node[15]~31_combout\))))) # (!\cp|WideOr19~0_combout\ & 
-- (\cp|M11[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp|WideOr19~0_combout\,
	datab => \cp|M11[0]~0_combout\,
	datac => \dp|rf|reg[7][15]~q\,
	datad => \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[15]~31_combout\,
	combout => \dp|T3_in[15]~34_combout\);

-- Location: LCCOMB_X32_Y20_N0
\dp|Alu_2[15]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Alu_2[15]~38_combout\ = (\dp|t3|Dout\(15) & ((\dp|Alu_2[15]~0_combout\) # ((!\dp|Equal15~0_combout\ & \dp|t4|Dout\(15))))) # (!\dp|t3|Dout\(15) & (((!\dp|Equal15~0_combout\ & \dp|t4|Dout\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|t3|Dout\(15),
	datab => \dp|Alu_2[15]~0_combout\,
	datac => \dp|Equal15~0_combout\,
	datad => \dp|t4|Dout\(15),
	combout => \dp|Alu_2[15]~38_combout\);

-- Location: LCCOMB_X32_Y20_N4
\dp|aluInst|OP~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|aluInst|OP~15_combout\ = ((!\dp|Alu_2[15]~38_combout\ & ((!\dp|Equal16~0_combout\) # (!\dp|t2|Dout\(15))))) # (!\dp|Alu_1[15]~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|t2|Dout\(15),
	datab => \dp|Alu_2[15]~38_combout\,
	datac => \dp|Alu_1[15]~32_combout\,
	datad => \dp|Equal16~0_combout\,
	combout => \dp|aluInst|OP~15_combout\);

-- Location: LCCOMB_X32_Y20_N14
\dp|T3_in[15]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|T3_in[15]~33_combout\ = (\cp|Alu_op~0_combout\ & ((\dp|aluInst|OP~15_combout\))) # (!\cp|Alu_op~0_combout\ & (\dp|aluInst|OP_s[15]~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|aluInst|OP_s[15]~30_combout\,
	datab => \dp|aluInst|OP~15_combout\,
	datac => \cp|Alu_op~0_combout\,
	combout => \dp|T3_in[15]~33_combout\);

-- Location: LCCOMB_X32_Y20_N6
\dp|T3_in[15]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|T3_in[15]~35_combout\ = (\dp|T3_in[15]~34_combout\ & ((\dp|rf|Mux0~4_combout\) # ((\cp|WideOr19~0_combout\)))) # (!\dp|T3_in[15]~34_combout\ & (((\dp|T3_in[15]~33_combout\ & !\cp|WideOr19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|Mux0~4_combout\,
	datab => \dp|T3_in[15]~34_combout\,
	datac => \dp|T3_in[15]~33_combout\,
	datad => \cp|WideOr19~0_combout\,
	combout => \dp|T3_in[15]~35_combout\);

-- Location: FF_X32_Y20_N7
\dp|t3|Dout[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp|T3_in[15]~35_combout\,
	ena => \cp|WideOr19~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|t3|Dout\(15));

-- Location: LCCOMB_X32_Y20_N18
\dp|RF_D3[15]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|RF_D3[15]~40_combout\ = (!\cp|M5[1]~1_combout\ & ((\dp|Equal5~0_combout\ & (\dp|t3|Dout\(15))) # (!\dp|Equal5~0_combout\ & ((\dp|pc|Dout\(15))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|t3|Dout\(15),
	datab => \cp|M5[1]~1_combout\,
	datac => \dp|pc|Dout\(15),
	datad => \dp|Equal5~0_combout\,
	combout => \dp|RF_D3[15]~40_combout\);

-- Location: LCCOMB_X29_Y20_N0
\dp|rf|reg~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|rf|reg~38_combout\ = (!\reset~input_o\ & ((\dp|RF_D3[15]~40_combout\) # ((\cp|M5[1]~1_combout\ & \dp|t4|Dout\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp|M5[1]~1_combout\,
	datab => \dp|t4|Dout\(15),
	datac => \dp|RF_D3[15]~40_combout\,
	datad => \reset~input_o\,
	combout => \dp|rf|reg~38_combout\);

-- Location: FF_X29_Y21_N15
\dp|rf|reg[1][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dp|rf|reg~38_combout\,
	sload => VCC,
	ena => \dp|rf|reg[1][4]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|reg[1][15]~q\);

-- Location: FF_X28_Y21_N29
\dp|rf|reg[0][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dp|rf|reg~38_combout\,
	sload => VCC,
	ena => \dp|rf|reg[0][10]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|reg[0][15]~q\);

-- Location: LCCOMB_X28_Y21_N28
\dp|rf|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|rf|Mux0~2_combout\ = (\dp|RF_A1[1]~1_combout\ & (((\dp|RF_A1[0]~0_combout\)))) # (!\dp|RF_A1[1]~1_combout\ & ((\dp|RF_A1[0]~0_combout\ & (\dp|rf|reg[1][15]~q\)) # (!\dp|RF_A1[0]~0_combout\ & ((\dp|rf|reg[0][15]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RF_A1[1]~1_combout\,
	datab => \dp|rf|reg[1][15]~q\,
	datac => \dp|rf|reg[0][15]~q\,
	datad => \dp|RF_A1[0]~0_combout\,
	combout => \dp|rf|Mux0~2_combout\);

-- Location: FF_X29_Y24_N7
\dp|rf|reg[2][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dp|rf|reg~38_combout\,
	sload => VCC,
	ena => \dp|rf|reg[2][6]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|reg[2][15]~q\);

-- Location: FF_X29_Y24_N17
\dp|rf|reg[3][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dp|rf|reg~38_combout\,
	sload => VCC,
	ena => \dp|rf|reg[3][7]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|reg[3][15]~q\);

-- Location: LCCOMB_X29_Y24_N6
\dp|rf|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|rf|Mux0~3_combout\ = (\dp|rf|Mux0~2_combout\ & (((\dp|rf|reg[3][15]~q\)) # (!\dp|RF_A1[1]~1_combout\))) # (!\dp|rf|Mux0~2_combout\ & (\dp|RF_A1[1]~1_combout\ & (\dp|rf|reg[2][15]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|Mux0~2_combout\,
	datab => \dp|RF_A1[1]~1_combout\,
	datac => \dp|rf|reg[2][15]~q\,
	datad => \dp|rf|reg[3][15]~q\,
	combout => \dp|rf|Mux0~3_combout\);

-- Location: FF_X29_Y20_N1
\dp|rf|reg[4][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp|rf|reg~38_combout\,
	ena => \dp|rf|reg[4][14]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|reg[4][15]~q\);

-- Location: FF_X28_Y21_N15
\dp|rf|reg[6][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dp|rf|reg~38_combout\,
	sload => VCC,
	ena => \dp|rf|reg[6][7]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|reg[6][15]~q\);

-- Location: LCCOMB_X28_Y21_N14
\dp|rf|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|rf|Mux0~0_combout\ = (\dp|RF_A1[1]~1_combout\ & (((\dp|rf|reg[6][15]~q\) # (\dp|RF_A1[0]~0_combout\)))) # (!\dp|RF_A1[1]~1_combout\ & (\dp|rf|reg[4][15]~q\ & ((!\dp|RF_A1[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RF_A1[1]~1_combout\,
	datab => \dp|rf|reg[4][15]~q\,
	datac => \dp|rf|reg[6][15]~q\,
	datad => \dp|RF_A1[0]~0_combout\,
	combout => \dp|rf|Mux0~0_combout\);

-- Location: FF_X31_Y21_N15
\dp|rf|reg[5][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dp|rf|reg~38_combout\,
	sload => VCC,
	ena => \dp|rf|reg[5][13]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|reg[5][15]~q\);

-- Location: LCCOMB_X31_Y21_N14
\dp|rf|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|rf|Mux0~1_combout\ = (\dp|rf|Mux0~0_combout\ & ((\dp|rf|reg[7][15]~q\) # ((!\dp|RF_A1[0]~0_combout\)))) # (!\dp|rf|Mux0~0_combout\ & (((\dp|rf|reg[5][15]~q\ & \dp|RF_A1[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|Mux0~0_combout\,
	datab => \dp|rf|reg[7][15]~q\,
	datac => \dp|rf|reg[5][15]~q\,
	datad => \dp|RF_A1[0]~0_combout\,
	combout => \dp|rf|Mux0~1_combout\);

-- Location: LCCOMB_X31_Y21_N4
\dp|rf|Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|rf|Mux0~4_combout\ = (\dp|RF_A1[2]~2_combout\ & ((\dp|rf|Mux0~1_combout\))) # (!\dp|RF_A1[2]~2_combout\ & (\dp|rf|Mux0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|Mux0~3_combout\,
	datab => \dp|rf|Mux0~1_combout\,
	datad => \dp|RF_A1[2]~2_combout\,
	combout => \dp|rf|Mux0~4_combout\);

-- Location: FF_X31_Y21_N5
\dp|t1|Dout[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp|rf|Mux0~4_combout\,
	ena => \cp|state.s2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|t1|Dout\(15));

-- Location: LCCOMB_X35_Y21_N6
\dp|Alu_1[15]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Alu_1[15]~31_combout\ = (\cp|Selector18~2_combout\ & (((\cp|Selector17~0_combout\)))) # (!\cp|Selector18~2_combout\ & ((\cp|Selector17~0_combout\ & (\dp|t2|Dout\(15))) # (!\cp|Selector17~0_combout\ & ((\dp|rf|reg[7][15]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|t2|Dout\(15),
	datab => \dp|rf|reg[7][15]~q\,
	datac => \cp|Selector18~2_combout\,
	datad => \cp|Selector17~0_combout\,
	combout => \dp|Alu_1[15]~31_combout\);

-- Location: LCCOMB_X35_Y21_N16
\dp|Alu_1[15]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Alu_1[15]~32_combout\ = (\cp|Selector18~2_combout\ & ((\dp|Alu_1[15]~31_combout\ & ((\dp|SE_out[14]~0_combout\))) # (!\dp|Alu_1[15]~31_combout\ & (\dp|t1|Dout\(15))))) # (!\cp|Selector18~2_combout\ & (((\dp|Alu_1[15]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp|Selector18~2_combout\,
	datab => \dp|t1|Dout\(15),
	datac => \dp|SE_out[14]~0_combout\,
	datad => \dp|Alu_1[15]~31_combout\,
	combout => \dp|Alu_1[15]~32_combout\);

-- Location: LCCOMB_X32_Y20_N2
\dp|Alu_2[15]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Alu_2[15]~39_combout\ = (\dp|Alu_2[15]~38_combout\) # ((\dp|t2|Dout\(15) & \dp|Equal16~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|t2|Dout\(15),
	datab => \dp|Alu_2[15]~38_combout\,
	datad => \dp|Equal16~0_combout\,
	combout => \dp|Alu_2[15]~39_combout\);

-- Location: LCCOMB_X35_Y21_N28
\dp|Alu_2[14]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Alu_2[14]~33_combout\ = (\dp|t4|Dout\(14) & (((\dp|t3|Dout\(14) & \dp|Alu_2[15]~0_combout\)) # (!\dp|Equal15~0_combout\))) # (!\dp|t4|Dout\(14) & (((\dp|t3|Dout\(14) & \dp|Alu_2[15]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|t4|Dout\(14),
	datab => \dp|Equal15~0_combout\,
	datac => \dp|t3|Dout\(14),
	datad => \dp|Alu_2[15]~0_combout\,
	combout => \dp|Alu_2[14]~33_combout\);

-- Location: LCCOMB_X35_Y21_N20
\dp|Alu_2[14]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Alu_2[14]~34_combout\ = (\dp|Alu_2[14]~33_combout\) # ((\dp|Equal16~0_combout\ & \dp|t2|Dout\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dp|Alu_2[14]~33_combout\,
	datac => \dp|Equal16~0_combout\,
	datad => \dp|t2|Dout\(14),
	combout => \dp|Alu_2[14]~34_combout\);

-- Location: LCCOMB_X30_Y19_N26
\dp|Alu_2[13]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Alu_2[13]~1_combout\ = (\dp|t4|Dout\(13) & (((\dp|t3|Dout\(13) & \dp|Alu_2[15]~0_combout\)) # (!\dp|Equal15~0_combout\))) # (!\dp|t4|Dout\(13) & (((\dp|t3|Dout\(13) & \dp|Alu_2[15]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|t4|Dout\(13),
	datab => \dp|Equal15~0_combout\,
	datac => \dp|t3|Dout\(13),
	datad => \dp|Alu_2[15]~0_combout\,
	combout => \dp|Alu_2[13]~1_combout\);

-- Location: LCCOMB_X30_Y19_N4
\dp|Alu_2[13]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Alu_2[13]~2_combout\ = (\dp|Alu_2[13]~1_combout\) # ((\dp|Equal16~0_combout\ & \dp|t2|Dout\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Equal16~0_combout\,
	datac => \dp|Alu_2[13]~1_combout\,
	datad => \dp|t2|Dout\(13),
	combout => \dp|Alu_2[13]~2_combout\);

-- Location: LCCOMB_X30_Y19_N12
\dp|RF_D3[13]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|RF_D3[13]~20_combout\ = (\dp|t4|Dout\(13) & (\cp|state.s3~q\ & \cp|M5[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|t4|Dout\(13),
	datab => \cp|state.s3~q\,
	datac => \cp|M5[1]~0_combout\,
	combout => \dp|RF_D3[13]~20_combout\);

-- Location: LCCOMB_X30_Y19_N2
\dp|aluInst|OP~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|aluInst|OP~0_combout\ = ((!\dp|Alu_2[13]~1_combout\ & ((!\dp|t2|Dout\(13)) # (!\dp|Equal16~0_combout\)))) # (!\dp|Alu_1[13]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Equal16~0_combout\,
	datab => \dp|Alu_1[13]~1_combout\,
	datac => \dp|Alu_2[13]~1_combout\,
	datad => \dp|t2|Dout\(13),
	combout => \dp|aluInst|OP~0_combout\);

-- Location: LCCOMB_X34_Y21_N10
\dp|aluInst|OP_s[13]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|aluInst|OP_s[13]~26_combout\ = (\dp|Alu_2[13]~2_combout\ & ((\dp|Alu_1[13]~1_combout\ & (\dp|aluInst|OP_s[12]~25\ & VCC)) # (!\dp|Alu_1[13]~1_combout\ & (!\dp|aluInst|OP_s[12]~25\)))) # (!\dp|Alu_2[13]~2_combout\ & ((\dp|Alu_1[13]~1_combout\ & 
-- (!\dp|aluInst|OP_s[12]~25\)) # (!\dp|Alu_1[13]~1_combout\ & ((\dp|aluInst|OP_s[12]~25\) # (GND)))))
-- \dp|aluInst|OP_s[13]~27\ = CARRY((\dp|Alu_2[13]~2_combout\ & (!\dp|Alu_1[13]~1_combout\ & !\dp|aluInst|OP_s[12]~25\)) # (!\dp|Alu_2[13]~2_combout\ & ((!\dp|aluInst|OP_s[12]~25\) # (!\dp|Alu_1[13]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Alu_2[13]~2_combout\,
	datab => \dp|Alu_1[13]~1_combout\,
	datad => VCC,
	cin => \dp|aluInst|OP_s[12]~25\,
	combout => \dp|aluInst|OP_s[13]~26_combout\,
	cout => \dp|aluInst|OP_s[13]~27\);

-- Location: LCCOMB_X30_Y23_N0
\dp|pc|Dout[13]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|pc|Dout[13]~13_combout\ = (\cp|Alu_op~0_combout\ & (\dp|aluInst|OP~0_combout\)) # (!\cp|Alu_op~0_combout\ & ((\dp|aluInst|OP_s[13]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|aluInst|OP~0_combout\,
	datab => \dp|aluInst|OP_s[13]~26_combout\,
	datad => \cp|Alu_op~0_combout\,
	combout => \dp|pc|Dout[13]~13_combout\);

-- Location: FF_X30_Y23_N1
\dp|pc|Dout[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp|pc|Dout[13]~13_combout\,
	asdata => \dp|rf|Mux2~4_combout\,
	sload => \cp|state.s14~q\,
	ena => \cp|WideOr18~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|pc|Dout\(13));

-- Location: LCCOMB_X29_Y23_N2
\dp|RF_D3[13]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|RF_D3[13]~21_combout\ = (!\cp|M5[1]~1_combout\ & ((\dp|Equal5~0_combout\ & ((\dp|t3|Dout\(13)))) # (!\dp|Equal5~0_combout\ & (\dp|pc|Dout\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Equal5~0_combout\,
	datab => \cp|M5[1]~1_combout\,
	datac => \dp|pc|Dout\(13),
	datad => \dp|t3|Dout\(13),
	combout => \dp|RF_D3[13]~21_combout\);

-- Location: LCCOMB_X29_Y23_N16
\dp|rf|reg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|rf|reg~0_combout\ = (\dp|rf|process_0~1_combout\ & (((\dp|pc|Dout\(13))))) # (!\dp|rf|process_0~1_combout\ & ((\dp|RF_D3[13]~20_combout\) # ((\dp|RF_D3[13]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RF_D3[13]~20_combout\,
	datab => \dp|rf|process_0~1_combout\,
	datac => \dp|pc|Dout\(13),
	datad => \dp|RF_D3[13]~21_combout\,
	combout => \dp|rf|reg~0_combout\);

-- Location: FF_X29_Y23_N17
\dp|rf|reg[7][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp|rf|reg~0_combout\,
	sclr => \reset~input_o\,
	ena => \dp|rf|reg[7][12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|reg[7][13]~q\);

-- Location: LCCOMB_X30_Y19_N22
\dp|Alu_1[13]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Alu_1[13]~0_combout\ = (\cp|Selector17~0_combout\ & ((\dp|t2|Dout\(13)) # ((\cp|Selector18~2_combout\)))) # (!\cp|Selector17~0_combout\ & (((\dp|rf|reg[7][13]~q\ & !\cp|Selector18~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp|Selector17~0_combout\,
	datab => \dp|t2|Dout\(13),
	datac => \dp|rf|reg[7][13]~q\,
	datad => \cp|Selector18~2_combout\,
	combout => \dp|Alu_1[13]~0_combout\);

-- Location: LCCOMB_X30_Y19_N24
\dp|Alu_1[13]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Alu_1[13]~1_combout\ = (\dp|Alu_1[13]~0_combout\ & ((\dp|SE_out[14]~0_combout\) # ((!\cp|Selector18~2_combout\)))) # (!\dp|Alu_1[13]~0_combout\ & (((\dp|t1|Dout\(13) & \cp|Selector18~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|SE_out[14]~0_combout\,
	datab => \dp|t1|Dout\(13),
	datac => \dp|Alu_1[13]~0_combout\,
	datad => \cp|Selector18~2_combout\,
	combout => \dp|Alu_1[13]~1_combout\);

-- Location: LCCOMB_X34_Y21_N12
\dp|aluInst|OP_s[14]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|aluInst|OP_s[14]~28_combout\ = ((\dp|Alu_2[14]~34_combout\ $ (\dp|Alu_1[14]~30_combout\ $ (!\dp|aluInst|OP_s[13]~27\)))) # (GND)
-- \dp|aluInst|OP_s[14]~29\ = CARRY((\dp|Alu_2[14]~34_combout\ & ((\dp|Alu_1[14]~30_combout\) # (!\dp|aluInst|OP_s[13]~27\))) # (!\dp|Alu_2[14]~34_combout\ & (\dp|Alu_1[14]~30_combout\ & !\dp|aluInst|OP_s[13]~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Alu_2[14]~34_combout\,
	datab => \dp|Alu_1[14]~30_combout\,
	datad => VCC,
	cin => \dp|aluInst|OP_s[13]~27\,
	combout => \dp|aluInst|OP_s[14]~28_combout\,
	cout => \dp|aluInst|OP_s[14]~29\);

-- Location: LCCOMB_X35_Y21_N26
\dp|aluInst|OP~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|aluInst|OP~1_combout\ = ((!\dp|Alu_2[14]~33_combout\ & ((!\dp|Equal16~0_combout\) # (!\dp|t2|Dout\(14))))) # (!\dp|Alu_1[14]~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|t2|Dout\(14),
	datab => \dp|Alu_2[14]~33_combout\,
	datac => \dp|Equal16~0_combout\,
	datad => \dp|Alu_1[14]~30_combout\,
	combout => \dp|aluInst|OP~1_combout\);

-- Location: LCCOMB_X32_Y20_N24
\dp|pc|Dout[14]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|pc|Dout[14]~14_combout\ = (\cp|Alu_op~0_combout\ & ((\dp|aluInst|OP~1_combout\))) # (!\cp|Alu_op~0_combout\ & (\dp|aluInst|OP_s[14]~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|aluInst|OP_s[14]~28_combout\,
	datab => \cp|Alu_op~0_combout\,
	datad => \dp|aluInst|OP~1_combout\,
	combout => \dp|pc|Dout[14]~14_combout\);

-- Location: FF_X32_Y20_N25
\dp|pc|Dout[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp|pc|Dout[14]~14_combout\,
	asdata => \dp|rf|Mux1~4_combout\,
	sload => \cp|state.s14~q\,
	ena => \cp|WideOr18~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|pc|Dout\(14));

-- Location: LCCOMB_X32_Y20_N22
\dp|RF_D3[14]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|RF_D3[14]~42_combout\ = (\dp|RF_D3[14]~22_combout\) # ((\dp|t4|Dout\(14) & (\cp|M5[1]~0_combout\ & \cp|state.s3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RF_D3[14]~22_combout\,
	datab => \dp|t4|Dout\(14),
	datac => \cp|M5[1]~0_combout\,
	datad => \cp|state.s3~q\,
	combout => \dp|RF_D3[14]~42_combout\);

-- Location: LCCOMB_X29_Y23_N18
\dp|rf|reg~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|rf|reg~2_combout\ = (\dp|rf|process_0~1_combout\ & (\dp|pc|Dout\(14))) # (!\dp|rf|process_0~1_combout\ & ((\dp|RF_D3[14]~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dp|rf|process_0~1_combout\,
	datac => \dp|pc|Dout\(14),
	datad => \dp|RF_D3[14]~42_combout\,
	combout => \dp|rf|reg~2_combout\);

-- Location: FF_X29_Y23_N19
\dp|rf|reg[7][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp|rf|reg~2_combout\,
	sclr => \reset~input_o\,
	ena => \dp|rf|reg[7][12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|reg[7][14]~q\);

-- Location: FF_X27_Y20_N5
\dp|rf|reg[6][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dp|rf|reg~24_combout\,
	sload => VCC,
	ena => \dp|rf|reg[6][7]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|reg[6][14]~q\);

-- Location: FF_X27_Y20_N23
\dp|rf|reg[4][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dp|rf|reg~24_combout\,
	sload => VCC,
	ena => \dp|rf|reg[4][14]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|reg[4][14]~q\);

-- Location: LCCOMB_X27_Y20_N22
\dp|rf|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|rf|Mux1~0_combout\ = (\dp|RF_A1[1]~1_combout\ & ((\dp|rf|reg[6][14]~q\) # ((\dp|RF_A1[0]~0_combout\)))) # (!\dp|RF_A1[1]~1_combout\ & (((\dp|rf|reg[4][14]~q\ & !\dp|RF_A1[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RF_A1[1]~1_combout\,
	datab => \dp|rf|reg[6][14]~q\,
	datac => \dp|rf|reg[4][14]~q\,
	datad => \dp|RF_A1[0]~0_combout\,
	combout => \dp|rf|Mux1~0_combout\);

-- Location: FF_X27_Y22_N29
\dp|rf|reg[5][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dp|rf|reg~24_combout\,
	sload => VCC,
	ena => \dp|rf|reg[5][13]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|reg[5][14]~q\);

-- Location: LCCOMB_X27_Y22_N28
\dp|rf|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|rf|Mux1~1_combout\ = (\dp|rf|Mux1~0_combout\ & ((\dp|rf|reg[7][14]~q\) # ((!\dp|RF_A1[0]~0_combout\)))) # (!\dp|rf|Mux1~0_combout\ & (((\dp|rf|reg[5][14]~q\ & \dp|RF_A1[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|reg[7][14]~q\,
	datab => \dp|rf|Mux1~0_combout\,
	datac => \dp|rf|reg[5][14]~q\,
	datad => \dp|RF_A1[0]~0_combout\,
	combout => \dp|rf|Mux1~1_combout\);

-- Location: FF_X31_Y23_N27
\dp|rf|reg[3][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp|rf|reg~24_combout\,
	ena => \dp|rf|reg[3][7]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|reg[3][14]~q\);

-- Location: FF_X30_Y21_N15
\dp|rf|reg[2][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dp|rf|reg~24_combout\,
	sload => VCC,
	ena => \dp|rf|reg[2][6]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|reg[2][14]~q\);

-- Location: FF_X29_Y21_N19
\dp|rf|reg[1][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dp|rf|reg~24_combout\,
	sload => VCC,
	ena => \dp|rf|reg[1][4]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|reg[1][14]~q\);

-- Location: LCCOMB_X30_Y21_N0
\dp|rf|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|rf|Mux1~2_combout\ = (\dp|RF_A1[1]~1_combout\ & (((\dp|RF_A1[0]~0_combout\)))) # (!\dp|RF_A1[1]~1_combout\ & ((\dp|RF_A1[0]~0_combout\ & (\dp|rf|reg[1][14]~q\)) # (!\dp|RF_A1[0]~0_combout\ & ((\dp|rf|reg[0][14]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|reg[1][14]~q\,
	datab => \dp|RF_A1[1]~1_combout\,
	datac => \dp|rf|reg[0][14]~q\,
	datad => \dp|RF_A1[0]~0_combout\,
	combout => \dp|rf|Mux1~2_combout\);

-- Location: LCCOMB_X30_Y21_N14
\dp|rf|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|rf|Mux1~3_combout\ = (\dp|RF_A1[1]~1_combout\ & ((\dp|rf|Mux1~2_combout\ & (\dp|rf|reg[3][14]~q\)) # (!\dp|rf|Mux1~2_combout\ & ((\dp|rf|reg[2][14]~q\))))) # (!\dp|RF_A1[1]~1_combout\ & (((\dp|rf|Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|reg[3][14]~q\,
	datab => \dp|RF_A1[1]~1_combout\,
	datac => \dp|rf|reg[2][14]~q\,
	datad => \dp|rf|Mux1~2_combout\,
	combout => \dp|rf|Mux1~3_combout\);

-- Location: LCCOMB_X27_Y22_N18
\dp|rf|Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|rf|Mux1~4_combout\ = (\dp|RF_A1[2]~2_combout\ & (\dp|rf|Mux1~1_combout\)) # (!\dp|RF_A1[2]~2_combout\ & ((\dp|rf|Mux1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dp|rf|Mux1~1_combout\,
	datac => \dp|RF_A1[2]~2_combout\,
	datad => \dp|rf|Mux1~3_combout\,
	combout => \dp|rf|Mux1~4_combout\);

-- Location: FF_X27_Y22_N19
\dp|t1|Dout[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp|rf|Mux1~4_combout\,
	ena => \cp|state.s2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|t1|Dout\(14));

-- Location: LCCOMB_X35_Y21_N22
\dp|Alu_1[14]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Alu_1[14]~29_combout\ = (\cp|Selector18~2_combout\ & ((\dp|t1|Dout\(14)) # ((\cp|Selector17~0_combout\)))) # (!\cp|Selector18~2_combout\ & (((\dp|rf|reg[7][14]~q\ & !\cp|Selector17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|t1|Dout\(14),
	datab => \dp|rf|reg[7][14]~q\,
	datac => \cp|Selector18~2_combout\,
	datad => \cp|Selector17~0_combout\,
	combout => \dp|Alu_1[14]~29_combout\);

-- Location: LCCOMB_X35_Y21_N0
\dp|Alu_1[14]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Alu_1[14]~30_combout\ = (\dp|Alu_1[14]~29_combout\ & (((\dp|SE_out[14]~0_combout\)) # (!\cp|Selector17~0_combout\))) # (!\dp|Alu_1[14]~29_combout\ & (\cp|Selector17~0_combout\ & ((\dp|t2|Dout\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Alu_1[14]~29_combout\,
	datab => \cp|Selector17~0_combout\,
	datac => \dp|SE_out[14]~0_combout\,
	datad => \dp|t2|Dout\(14),
	combout => \dp|Alu_1[14]~30_combout\);

-- Location: LCCOMB_X34_Y21_N14
\dp|aluInst|OP_s[15]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|aluInst|OP_s[15]~30_combout\ = (\dp|Alu_1[15]~32_combout\ & ((\dp|Alu_2[15]~39_combout\ & (\dp|aluInst|OP_s[14]~29\ & VCC)) # (!\dp|Alu_2[15]~39_combout\ & (!\dp|aluInst|OP_s[14]~29\)))) # (!\dp|Alu_1[15]~32_combout\ & ((\dp|Alu_2[15]~39_combout\ & 
-- (!\dp|aluInst|OP_s[14]~29\)) # (!\dp|Alu_2[15]~39_combout\ & ((\dp|aluInst|OP_s[14]~29\) # (GND)))))
-- \dp|aluInst|OP_s[15]~31\ = CARRY((\dp|Alu_1[15]~32_combout\ & (!\dp|Alu_2[15]~39_combout\ & !\dp|aluInst|OP_s[14]~29\)) # (!\dp|Alu_1[15]~32_combout\ & ((!\dp|aluInst|OP_s[14]~29\) # (!\dp|Alu_2[15]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Alu_1[15]~32_combout\,
	datab => \dp|Alu_2[15]~39_combout\,
	datad => VCC,
	cin => \dp|aluInst|OP_s[14]~29\,
	combout => \dp|aluInst|OP_s[15]~30_combout\,
	cout => \dp|aluInst|OP_s[15]~31\);

-- Location: LCCOMB_X32_Y20_N26
\dp|pc|Dout[15]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|pc|Dout[15]~15_combout\ = (\cp|Alu_op~0_combout\ & ((\dp|aluInst|OP~15_combout\))) # (!\cp|Alu_op~0_combout\ & (\dp|aluInst|OP_s[15]~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|aluInst|OP_s[15]~30_combout\,
	datab => \dp|aluInst|OP~15_combout\,
	datad => \cp|Alu_op~0_combout\,
	combout => \dp|pc|Dout[15]~15_combout\);

-- Location: FF_X32_Y20_N27
\dp|pc|Dout[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp|pc|Dout[15]~15_combout\,
	asdata => \dp|rf|Mux0~4_combout\,
	sload => \cp|state.s14~q\,
	ena => \cp|WideOr18~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|pc|Dout\(15));

-- Location: LCCOMB_X29_Y20_N6
\dp|rf|reg~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|rf|reg~39_combout\ = (\dp|rf|process_0~1_combout\ & (((\dp|pc|Dout\(15))))) # (!\dp|rf|process_0~1_combout\ & ((\dp|RF_D3[15]~41_combout\) # ((\dp|RF_D3[15]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RF_D3[15]~41_combout\,
	datab => \dp|pc|Dout\(15),
	datac => \dp|RF_D3[15]~40_combout\,
	datad => \dp|rf|process_0~1_combout\,
	combout => \dp|rf|reg~39_combout\);

-- Location: FF_X29_Y20_N7
\dp|rf|reg[7][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp|rf|reg~39_combout\,
	sclr => \reset~input_o\,
	ena => \dp|rf|reg[7][12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|reg[7][15]~q\);

-- Location: LCCOMB_X29_Y20_N18
\dp|T2_in[15]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|T2_in[15]~62_combout\ = (\dp|ir|Dout\(9) & (((\dp|ir|Dout\(10))))) # (!\dp|ir|Dout\(9) & ((\dp|ir|Dout\(10) & ((\dp|rf|reg[6][15]~q\))) # (!\dp|ir|Dout\(10) & (\dp|rf|reg[4][15]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ir|Dout\(9),
	datab => \dp|rf|reg[4][15]~q\,
	datac => \dp|rf|reg[6][15]~q\,
	datad => \dp|ir|Dout\(10),
	combout => \dp|T2_in[15]~62_combout\);

-- Location: LCCOMB_X29_Y20_N4
\dp|T2_in[15]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|T2_in[15]~63_combout\ = (\dp|T2_in[15]~62_combout\ & ((\dp|rf|reg[7][15]~q\) # ((!\dp|ir|Dout\(9))))) # (!\dp|T2_in[15]~62_combout\ & (((\dp|rf|reg[5][15]~q\ & \dp|ir|Dout\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|reg[7][15]~q\,
	datab => \dp|T2_in[15]~62_combout\,
	datac => \dp|rf|reg[5][15]~q\,
	datad => \dp|ir|Dout\(9),
	combout => \dp|T2_in[15]~63_combout\);

-- Location: LCCOMB_X29_Y21_N14
\dp|T2_in[15]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|T2_in[15]~60_combout\ = (\dp|ir|Dout\(10) & (\dp|ir|Dout\(9))) # (!\dp|ir|Dout\(10) & ((\dp|ir|Dout\(9) & (\dp|rf|reg[1][15]~q\)) # (!\dp|ir|Dout\(9) & ((\dp|rf|reg[0][15]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ir|Dout\(10),
	datab => \dp|ir|Dout\(9),
	datac => \dp|rf|reg[1][15]~q\,
	datad => \dp|rf|reg[0][15]~q\,
	combout => \dp|T2_in[15]~60_combout\);

-- Location: LCCOMB_X29_Y24_N16
\dp|T2_in[15]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|T2_in[15]~61_combout\ = (\dp|T2_in[15]~60_combout\ & (((\dp|rf|reg[3][15]~q\)) # (!\dp|ir|Dout\(10)))) # (!\dp|T2_in[15]~60_combout\ & (\dp|ir|Dout\(10) & ((\dp|rf|reg[2][15]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|T2_in[15]~60_combout\,
	datab => \dp|ir|Dout\(10),
	datac => \dp|rf|reg[3][15]~q\,
	datad => \dp|rf|reg[2][15]~q\,
	combout => \dp|T2_in[15]~61_combout\);

-- Location: LCCOMB_X30_Y20_N26
\dp|t2|Dout[15]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|t2|Dout[15]~15_combout\ = (\dp|ir|Dout\(11) & (\dp|T2_in[15]~63_combout\)) # (!\dp|ir|Dout\(11) & ((\dp|T2_in[15]~61_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|T2_in[15]~63_combout\,
	datab => \dp|T2_in[15]~61_combout\,
	datad => \dp|ir|Dout\(11),
	combout => \dp|t2|Dout[15]~15_combout\);

-- Location: FF_X30_Y20_N27
\dp|t2|Dout[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp|t2|Dout[15]~15_combout\,
	asdata => \dp|pc|Dout[15]~15_combout\,
	sload => \cp|M9~0_combout\,
	ena => \cp|WideOr20~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|t2|Dout\(15));

-- Location: LCCOMB_X35_Y21_N18
\cp|state~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \cp|state~34_combout\ = (\dp|t2|Dout\(15) & (\dp|t1|Dout\(15) & (\dp|t1|Dout\(14) $ (!\dp|t2|Dout\(14))))) # (!\dp|t2|Dout\(15) & (!\dp|t1|Dout\(15) & (\dp|t1|Dout\(14) $ (!\dp|t2|Dout\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|t2|Dout\(15),
	datab => \dp|t1|Dout\(15),
	datac => \dp|t1|Dout\(14),
	datad => \dp|t2|Dout\(14),
	combout => \cp|state~34_combout\);

-- Location: LCCOMB_X35_Y20_N6
\cp|state~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \cp|state~35_combout\ = (\cp|state~33_combout\ & (\cp|state~32_combout\ & (\cp|state~31_combout\ & \cp|state~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp|state~33_combout\,
	datab => \cp|state~32_combout\,
	datac => \cp|state~31_combout\,
	datad => \cp|state~34_combout\,
	combout => \cp|state~35_combout\);

-- Location: LCCOMB_X32_Y22_N30
\cp|state~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \cp|state~27_combout\ = (\dp|t1|Dout\(2) & (\dp|t2|Dout\(2) & (\dp|t2|Dout\(3) $ (!\dp|t1|Dout\(3))))) # (!\dp|t1|Dout\(2) & (!\dp|t2|Dout\(2) & (\dp|t2|Dout\(3) $ (!\dp|t1|Dout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|t1|Dout\(2),
	datab => \dp|t2|Dout\(2),
	datac => \dp|t2|Dout\(3),
	datad => \dp|t1|Dout\(3),
	combout => \cp|state~27_combout\);

-- Location: FF_X30_Y19_N15
\dp|t1|Dout[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp|rf|Mux14~4_combout\,
	ena => \cp|state.s2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|t1|Dout\(1));

-- Location: LCCOMB_X32_Y22_N12
\cp|state~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \cp|state~26_combout\ = (\dp|t2|Dout\(0) & (\dp|t1|Dout\(0) & (\dp|t2|Dout\(1) $ (!\dp|t1|Dout\(1))))) # (!\dp|t2|Dout\(0) & (!\dp|t1|Dout\(0) & (\dp|t2|Dout\(1) $ (!\dp|t1|Dout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|t2|Dout\(0),
	datab => \dp|t1|Dout\(0),
	datac => \dp|t2|Dout\(1),
	datad => \dp|t1|Dout\(1),
	combout => \cp|state~26_combout\);

-- Location: FF_X27_Y20_N31
\dp|rf|reg[6][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dp|rf|reg~29_combout\,
	sload => VCC,
	ena => \dp|rf|reg[6][7]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|reg[6][4]~q\);

-- Location: FF_X27_Y20_N17
\dp|rf|reg[4][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dp|rf|reg~29_combout\,
	sload => VCC,
	ena => \dp|rf|reg[4][14]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|reg[4][4]~q\);

-- Location: LCCOMB_X27_Y20_N16
\dp|rf|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|rf|Mux11~0_combout\ = (\dp|RF_A1[0]~0_combout\ & (((\dp|RF_A1[1]~1_combout\)))) # (!\dp|RF_A1[0]~0_combout\ & ((\dp|RF_A1[1]~1_combout\ & (\dp|rf|reg[6][4]~q\)) # (!\dp|RF_A1[1]~1_combout\ & ((\dp|rf|reg[4][4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|reg[6][4]~q\,
	datab => \dp|RF_A1[0]~0_combout\,
	datac => \dp|rf|reg[4][4]~q\,
	datad => \dp|RF_A1[1]~1_combout\,
	combout => \dp|rf|Mux11~0_combout\);

-- Location: FF_X27_Y22_N5
\dp|rf|reg[5][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dp|rf|reg~29_combout\,
	sload => VCC,
	ena => \dp|rf|reg[5][13]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|reg[5][4]~q\);

-- Location: LCCOMB_X27_Y22_N4
\dp|rf|Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|rf|Mux11~1_combout\ = (\dp|rf|Mux11~0_combout\ & ((\dp|rf|reg[7][4]~q\) # ((!\dp|RF_A1[0]~0_combout\)))) # (!\dp|rf|Mux11~0_combout\ & (((\dp|rf|reg[5][4]~q\ & \dp|RF_A1[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|reg[7][4]~q\,
	datab => \dp|rf|Mux11~0_combout\,
	datac => \dp|rf|reg[5][4]~q\,
	datad => \dp|RF_A1[0]~0_combout\,
	combout => \dp|rf|Mux11~1_combout\);

-- Location: FF_X29_Y21_N3
\dp|rf|reg[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dp|rf|reg~29_combout\,
	sload => VCC,
	ena => \dp|rf|reg[1][4]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|reg[1][4]~q\);

-- Location: LCCOMB_X28_Y21_N20
\dp|rf|Mux11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|rf|Mux11~2_combout\ = (\dp|RF_A1[0]~0_combout\ & ((\dp|rf|reg[1][4]~q\) # ((\dp|RF_A1[1]~1_combout\)))) # (!\dp|RF_A1[0]~0_combout\ & (((\dp|rf|reg[0][4]~q\ & !\dp|RF_A1[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|reg[1][4]~q\,
	datab => \dp|RF_A1[0]~0_combout\,
	datac => \dp|rf|reg[0][4]~q\,
	datad => \dp|RF_A1[1]~1_combout\,
	combout => \dp|rf|Mux11~2_combout\);

-- Location: FF_X29_Y22_N29
\dp|rf|reg[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dp|rf|reg~29_combout\,
	sload => VCC,
	ena => \dp|rf|reg[2][6]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|reg[2][4]~q\);

-- Location: FF_X29_Y22_N7
\dp|rf|reg[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dp|rf|reg~29_combout\,
	sload => VCC,
	ena => \dp|rf|reg[3][7]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|reg[3][4]~q\);

-- Location: LCCOMB_X29_Y22_N28
\dp|rf|Mux11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|rf|Mux11~3_combout\ = (\dp|rf|Mux11~2_combout\ & (((\dp|rf|reg[3][4]~q\)) # (!\dp|RF_A1[1]~1_combout\))) # (!\dp|rf|Mux11~2_combout\ & (\dp|RF_A1[1]~1_combout\ & (\dp|rf|reg[2][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|Mux11~2_combout\,
	datab => \dp|RF_A1[1]~1_combout\,
	datac => \dp|rf|reg[2][4]~q\,
	datad => \dp|rf|reg[3][4]~q\,
	combout => \dp|rf|Mux11~3_combout\);

-- Location: LCCOMB_X27_Y22_N20
\dp|rf|Mux11~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|rf|Mux11~4_combout\ = (\dp|RF_A1[2]~2_combout\ & (\dp|rf|Mux11~1_combout\)) # (!\dp|RF_A1[2]~2_combout\ & ((\dp|rf|Mux11~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RF_A1[2]~2_combout\,
	datac => \dp|rf|Mux11~1_combout\,
	datad => \dp|rf|Mux11~3_combout\,
	combout => \dp|rf|Mux11~4_combout\);

-- Location: FF_X27_Y22_N21
\dp|t1|Dout[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp|rf|Mux11~4_combout\,
	ena => \cp|state.s2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|t1|Dout\(4));

-- Location: LCCOMB_X35_Y22_N28
\cp|state~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \cp|state~28_combout\ = (\dp|t2|Dout\(4) & (\dp|t1|Dout\(4) & (\dp|t1|Dout\(5) $ (!\dp|t2|Dout\(5))))) # (!\dp|t2|Dout\(4) & (!\dp|t1|Dout\(4) & (\dp|t1|Dout\(5) $ (!\dp|t2|Dout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|t2|Dout\(4),
	datab => \dp|t1|Dout\(4),
	datac => \dp|t1|Dout\(5),
	datad => \dp|t2|Dout\(5),
	combout => \cp|state~28_combout\);

-- Location: LCCOMB_X31_Y22_N22
\cp|state~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \cp|state~29_combout\ = (\dp|t1|Dout\(6) & (\dp|t2|Dout\(6) & (\dp|t1|Dout\(7) $ (!\dp|t2|Dout\(7))))) # (!\dp|t1|Dout\(6) & (!\dp|t2|Dout\(6) & (\dp|t1|Dout\(7) $ (!\dp|t2|Dout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|t1|Dout\(6),
	datab => \dp|t2|Dout\(6),
	datac => \dp|t1|Dout\(7),
	datad => \dp|t2|Dout\(7),
	combout => \cp|state~29_combout\);

-- Location: LCCOMB_X35_Y20_N4
\cp|state~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \cp|state~30_combout\ = (\cp|state~27_combout\ & (\cp|state~26_combout\ & (\cp|state~28_combout\ & \cp|state~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp|state~27_combout\,
	datab => \cp|state~26_combout\,
	datac => \cp|state~28_combout\,
	datad => \cp|state~29_combout\,
	combout => \cp|state~30_combout\);

-- Location: LCCOMB_X35_Y20_N2
\cp|state~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \cp|state~36_combout\ = (\cp|state~35_combout\ & (\cp|state.s11~q\ & (\cp|state~30_combout\ & !\reset~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp|state~35_combout\,
	datab => \cp|state.s11~q\,
	datac => \cp|state~30_combout\,
	datad => \reset~input_o\,
	combout => \cp|state~36_combout\);

-- Location: FF_X35_Y20_N3
\cp|state.s12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cp|state~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp|state.s12~q\);

-- Location: LCCOMB_X35_Y22_N16
\cp|WideOr18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cp|WideOr18~0_combout\ = (!\cp|state.s12~q\ & !\cp|state.s13~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cp|state.s12~q\,
	datad => \cp|state.s13~q\,
	combout => \cp|WideOr18~0_combout\);

-- Location: LCCOMB_X32_Y23_N30
\dp|Alu_2[15]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Alu_2[15]~0_combout\ = (\cp|Equal8~0_combout\ & (!\cp|state.s4~q\ & ((\cp|Selector19~0_combout\) # (!\cp|WideOr18~0_combout\)))) # (!\cp|Equal8~0_combout\ & (!\cp|WideOr18~0_combout\ & (!\cp|Selector19~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp|WideOr18~0_combout\,
	datab => \cp|Equal8~0_combout\,
	datac => \cp|Selector19~0_combout\,
	datad => \cp|state.s4~q\,
	combout => \dp|Alu_2[15]~0_combout\);

-- Location: LCCOMB_X35_Y22_N24
\dp|Alu_2[5]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Alu_2[5]~37_combout\ = (\dp|t3|Dout\(5) & ((\dp|Alu_2[15]~0_combout\) # ((\dp|t4|Dout\(5) & !\dp|Equal15~0_combout\)))) # (!\dp|t3|Dout\(5) & (\dp|t4|Dout\(5) & (!\dp|Equal15~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|t3|Dout\(5),
	datab => \dp|t4|Dout\(5),
	datac => \dp|Equal15~0_combout\,
	datad => \dp|Alu_2[15]~0_combout\,
	combout => \dp|Alu_2[5]~37_combout\);

-- Location: LCCOMB_X35_Y22_N10
\dp|aluInst|OP~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|aluInst|OP~7_combout\ = ((!\dp|Alu_2[5]~37_combout\ & ((!\dp|Equal16~0_combout\) # (!\dp|t2|Dout\(5))))) # (!\dp|Alu_1[5]~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|t2|Dout\(5),
	datab => \dp|Alu_2[5]~37_combout\,
	datac => \dp|Alu_1[5]~17_combout\,
	datad => \dp|Equal16~0_combout\,
	combout => \dp|aluInst|OP~7_combout\);

-- Location: LCCOMB_X29_Y19_N22
\dp|pc|Dout[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|pc|Dout[5]~5_combout\ = (\cp|Alu_op~0_combout\ & (\dp|aluInst|OP~7_combout\)) # (!\cp|Alu_op~0_combout\ & ((\dp|aluInst|OP_s[5]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|aluInst|OP~7_combout\,
	datab => \cp|Alu_op~0_combout\,
	datad => \dp|aluInst|OP_s[5]~10_combout\,
	combout => \dp|pc|Dout[5]~5_combout\);

-- Location: LCCOMB_X29_Y19_N6
\dp|T3_in[5]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|T3_in[5]~16_combout\ = (\cp|WideOr19~0_combout\ & (!\cp|M11[0]~0_combout\ & ((\dp|mem|ram_rtl_0|auto_generated|mux2|result_node[5]~11_combout\)))) # (!\cp|WideOr19~0_combout\ & ((\cp|M11[0]~0_combout\) # ((\dp|pc|Dout[5]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp|WideOr19~0_combout\,
	datab => \cp|M11[0]~0_combout\,
	datac => \dp|pc|Dout[5]~5_combout\,
	datad => \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[5]~11_combout\,
	combout => \dp|T3_in[5]~16_combout\);

-- Location: LCCOMB_X29_Y19_N16
\dp|T3_in[5]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|T3_in[5]~17_combout\ = (\dp|T3_in[5]~16_combout\ & ((\dp|rf|Mux10~4_combout\) # ((!\cp|M11[0]~0_combout\)))) # (!\dp|T3_in[5]~16_combout\ & (((\dp|rf|reg[7][5]~q\ & \cp|M11[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|T3_in[5]~16_combout\,
	datab => \dp|rf|Mux10~4_combout\,
	datac => \dp|rf|reg[7][5]~q\,
	datad => \cp|M11[0]~0_combout\,
	combout => \dp|T3_in[5]~17_combout\);

-- Location: FF_X29_Y19_N17
\dp|t3|Dout[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp|T3_in[5]~17_combout\,
	ena => \cp|WideOr19~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|t3|Dout\(5));

-- Location: LCCOMB_X29_Y23_N20
\dp|RF_D3[5]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|RF_D3[5]~29_combout\ = (!\cp|M5[1]~1_combout\ & ((\dp|Equal5~0_combout\ & (\dp|t3|Dout\(5))) # (!\dp|Equal5~0_combout\ & ((\dp|pc|Dout\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|t3|Dout\(5),
	datab => \cp|M5[1]~1_combout\,
	datac => \dp|pc|Dout\(5),
	datad => \dp|Equal5~0_combout\,
	combout => \dp|RF_D3[5]~29_combout\);

-- Location: LCCOMB_X29_Y22_N22
\dp|rf|reg~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|rf|reg~30_combout\ = (!\reset~input_o\ & ((\dp|RF_D3[5]~29_combout\) # ((\cp|M5[1]~1_combout\ & \dp|t4|Dout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RF_D3[5]~29_combout\,
	datab => \cp|M5[1]~1_combout\,
	datac => \dp|t4|Dout\(5),
	datad => \reset~input_o\,
	combout => \dp|rf|reg~30_combout\);

-- Location: FF_X28_Y21_N23
\dp|rf|reg[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dp|rf|reg~30_combout\,
	sload => VCC,
	ena => \dp|rf|reg[0][10]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|reg[0][5]~q\);

-- Location: LCCOMB_X29_Y21_N12
\dp|T2_in[5]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|T2_in[5]~28_combout\ = (\dp|ir|Dout\(9) & (((\dp|rf|reg[1][5]~q\) # (\dp|ir|Dout\(10))))) # (!\dp|ir|Dout\(9) & (\dp|rf|reg[0][5]~q\ & ((!\dp|ir|Dout\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|reg[0][5]~q\,
	datab => \dp|ir|Dout\(9),
	datac => \dp|rf|reg[1][5]~q\,
	datad => \dp|ir|Dout\(10),
	combout => \dp|T2_in[5]~28_combout\);

-- Location: LCCOMB_X29_Y22_N18
\dp|T2_in[5]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|T2_in[5]~29_combout\ = (\dp|T2_in[5]~28_combout\ & (((\dp|rf|reg[3][5]~q\) # (!\dp|ir|Dout\(10))))) # (!\dp|T2_in[5]~28_combout\ & (\dp|rf|reg[2][5]~q\ & ((\dp|ir|Dout\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|T2_in[5]~28_combout\,
	datab => \dp|rf|reg[2][5]~q\,
	datac => \dp|rf|reg[3][5]~q\,
	datad => \dp|ir|Dout\(10),
	combout => \dp|T2_in[5]~29_combout\);

-- Location: LCCOMB_X26_Y21_N8
\dp|T2_in[5]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|T2_in[5]~30_combout\ = (\dp|ir|Dout\(9) & (((\dp|ir|Dout\(10))))) # (!\dp|ir|Dout\(9) & ((\dp|ir|Dout\(10) & ((\dp|rf|reg[6][5]~q\))) # (!\dp|ir|Dout\(10) & (\dp|rf|reg[4][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ir|Dout\(9),
	datab => \dp|rf|reg[4][5]~q\,
	datac => \dp|rf|reg[6][5]~q\,
	datad => \dp|ir|Dout\(10),
	combout => \dp|T2_in[5]~30_combout\);

-- Location: LCCOMB_X26_Y21_N20
\dp|T2_in[5]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|T2_in[5]~31_combout\ = (\dp|T2_in[5]~30_combout\ & (((\dp|rf|reg[7][5]~q\) # (!\dp|ir|Dout\(9))))) # (!\dp|T2_in[5]~30_combout\ & (\dp|rf|reg[5][5]~q\ & (\dp|ir|Dout\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|reg[5][5]~q\,
	datab => \dp|T2_in[5]~30_combout\,
	datac => \dp|ir|Dout\(9),
	datad => \dp|rf|reg[7][5]~q\,
	combout => \dp|T2_in[5]~31_combout\);

-- Location: LCCOMB_X30_Y20_N10
\dp|t2|Dout[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|t2|Dout[5]~5_combout\ = (\dp|ir|Dout\(11) & ((\dp|T2_in[5]~31_combout\))) # (!\dp|ir|Dout\(11) & (\dp|T2_in[5]~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|T2_in[5]~29_combout\,
	datab => \dp|T2_in[5]~31_combout\,
	datad => \dp|ir|Dout\(11),
	combout => \dp|t2|Dout[5]~5_combout\);

-- Location: FF_X30_Y20_N11
\dp|t2|Dout[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp|t2|Dout[5]~5_combout\,
	asdata => \dp|pc|Dout[5]~5_combout\,
	sload => \cp|M9~0_combout\,
	ena => \cp|WideOr20~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|t2|Dout\(5));

-- Location: LCCOMB_X30_Y20_N28
\dp|Mem_din[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Mem_din[5]~5_combout\ = (\cp|state.s6~q\ & (\dp|t2|Dout\(5))) # (!\cp|state.s6~q\ & ((\dp|t3|Dout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|t2|Dout\(5),
	datab => \dp|t3|Dout\(5),
	datad => \cp|state.s6~q\,
	combout => \dp|Mem_din[5]~5_combout\);

-- Location: M9K_X22_Y7_N0
\dp|mem|ram_rtl_0|auto_generated|ram_block1a21\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RISC1.ram0_memory_e411fb78.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "Datapath_RISC:dp|memory:mem|altsyncram:ram_rtl_0|altsyncram_ct81:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \dp|mem|ram_rtl_0|auto_generated|decode3|w_anode436w[2]~0_combout\,
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \dp|mem|ram_rtl_0|auto_generated|rden_decode|w_anode475w[2]~4_combout\,
	portadatain => \dp|mem|ram_rtl_0|auto_generated|ram_block1a21_PORTADATAIN_bus\,
	portaaddr => \dp|mem|ram_rtl_0|auto_generated|ram_block1a21_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \dp|mem|ram_rtl_0|auto_generated|ram_block1a21_PORTADATAOUT_bus\);

-- Location: M9K_X22_Y11_N0
\dp|mem|ram_rtl_0|auto_generated|ram_block1a5\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RISC1.ram0_memory_e411fb78.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "Datapath_RISC:dp|memory:mem|altsyncram:ram_rtl_0|altsyncram_ct81:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \dp|mem|ram_rtl_0|auto_generated|decode3|w_anode423w[2]~4_combout\,
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \dp|mem|ram_rtl_0|auto_generated|decode3|w_anode423w[2]~5_combout\,
	portadatain => \dp|mem|ram_rtl_0|auto_generated|ram_block1a5_PORTADATAIN_bus\,
	portaaddr => \dp|mem|ram_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \dp|mem|ram_rtl_0|auto_generated|ram_block1a5_PORTADATAOUT_bus\);

-- Location: M9K_X22_Y10_N0
\dp|mem|ram_rtl_0|auto_generated|ram_block1a37\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RISC1.ram0_memory_e411fb78.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "Datapath_RISC:dp|memory:mem|altsyncram:ram_rtl_0|altsyncram_ct81:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \dp|mem|ram_rtl_0|auto_generated|decode3|w_anode444w[2]~0_combout\,
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \dp|mem|ram_rtl_0|auto_generated|rden_decode|w_anode484w[2]~4_combout\,
	portadatain => \dp|mem|ram_rtl_0|auto_generated|ram_block1a37_PORTADATAIN_bus\,
	portaaddr => \dp|mem|ram_rtl_0|auto_generated|ram_block1a37_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \dp|mem|ram_rtl_0|auto_generated|ram_block1a37_PORTADATAOUT_bus\);

-- Location: M9K_X22_Y6_N0
\dp|mem|ram_rtl_0|auto_generated|ram_block1a53\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RISC1.ram0_memory_e411fb78.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "Datapath_RISC:dp|memory:mem|altsyncram:ram_rtl_0|altsyncram_ct81:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \dp|mem|ram_rtl_0|auto_generated|decode3|w_anode452w[2]~0_combout\,
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \dp|mem|ram_rtl_0|auto_generated|rden_decode|w_anode493w[2]~0_combout\,
	portadatain => \dp|mem|ram_rtl_0|auto_generated|ram_block1a53_PORTADATAIN_bus\,
	portaaddr => \dp|mem|ram_rtl_0|auto_generated|ram_block1a53_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \dp|mem|ram_rtl_0|auto_generated|ram_block1a53_PORTADATAOUT_bus\);

-- Location: LCCOMB_X30_Y18_N0
\dp|mem|ram_rtl_0|auto_generated|mux2|result_node[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[5]~10_combout\ = (\dp|mem|ram_rtl_0|auto_generated|address_reg_a\(1) & ((\dp|mem|ram_rtl_0|auto_generated|address_reg_a\(0) & ((\dp|mem|ram_rtl_0|auto_generated|ram_block1a53~portadataout\))) # 
-- (!\dp|mem|ram_rtl_0|auto_generated|address_reg_a\(0) & (\dp|mem|ram_rtl_0|auto_generated|ram_block1a37~portadataout\)))) # (!\dp|mem|ram_rtl_0|auto_generated|address_reg_a\(1) & (((\dp|mem|ram_rtl_0|auto_generated|address_reg_a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|mem|ram_rtl_0|auto_generated|address_reg_a\(1),
	datab => \dp|mem|ram_rtl_0|auto_generated|ram_block1a37~portadataout\,
	datac => \dp|mem|ram_rtl_0|auto_generated|address_reg_a\(0),
	datad => \dp|mem|ram_rtl_0|auto_generated|ram_block1a53~portadataout\,
	combout => \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[5]~10_combout\);

-- Location: LCCOMB_X30_Y18_N16
\dp|mem|ram_rtl_0|auto_generated|mux2|result_node[5]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[5]~11_combout\ = (\dp|mem|ram_rtl_0|auto_generated|address_reg_a\(1) & (((\dp|mem|ram_rtl_0|auto_generated|mux2|result_node[5]~10_combout\)))) # (!\dp|mem|ram_rtl_0|auto_generated|address_reg_a\(1) & 
-- ((\dp|mem|ram_rtl_0|auto_generated|mux2|result_node[5]~10_combout\ & (\dp|mem|ram_rtl_0|auto_generated|ram_block1a21~portadataout\)) # (!\dp|mem|ram_rtl_0|auto_generated|mux2|result_node[5]~10_combout\ & 
-- ((\dp|mem|ram_rtl_0|auto_generated|ram_block1a5~portadataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|mem|ram_rtl_0|auto_generated|ram_block1a21~portadataout\,
	datab => \dp|mem|ram_rtl_0|auto_generated|ram_block1a5~portadataout\,
	datac => \dp|mem|ram_rtl_0|auto_generated|address_reg_a\(1),
	datad => \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[5]~10_combout\,
	combout => \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[5]~11_combout\);

-- Location: FF_X30_Y18_N17
\dp|ir|Dout[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[5]~11_combout\,
	ena => \cp|state.s1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|ir|Dout\(5));

-- Location: LCCOMB_X30_Y24_N0
\dp|t4|Dout[12]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|t4|Dout[12]~2_combout\ = (\dp|Equal8~0_combout\ & ((\dp|SE_out[14]~0_combout\))) # (!\dp|Equal8~0_combout\ & (\dp|ir|Dout\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ir|Dout\(5),
	datab => \dp|Equal8~0_combout\,
	datad => \dp|SE_out[14]~0_combout\,
	combout => \dp|t4|Dout[12]~2_combout\);

-- Location: LCCOMB_X30_Y24_N4
\dp|pr_enc|d[12]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|pr_enc|d[12]~7_combout\ = (\dp|t4|Dout\(12) & ((\dp|t4|Dout\(11)) # (!\dp|pr_enc|v~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dp|t4|Dout\(12),
	datac => \dp|pr_enc|v~0_combout\,
	datad => \dp|t4|Dout\(11),
	combout => \dp|pr_enc|d[12]~7_combout\);

-- Location: FF_X30_Y24_N1
\dp|t4|Dout[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp|t4|Dout[12]~2_combout\,
	asdata => \dp|pr_enc|d[12]~7_combout\,
	sload => \cp|M10\(1),
	ena => \cp|Selector21~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|t4|Dout\(12));

-- Location: LCCOMB_X30_Y24_N2
\dp|pr_enc|a[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|pr_enc|a[1]~0_combout\ = (!\dp|t4|Dout\(12) & !\dp|t4|Dout\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dp|t4|Dout\(12),
	datad => \dp|t4|Dout\(11),
	combout => \dp|pr_enc|a[1]~0_combout\);

-- Location: LCCOMB_X30_Y24_N12
\dp|pr_enc|a[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|pr_enc|a[2]~6_combout\ = (\dp|pr_enc|v~0_combout\ & ((\dp|t4|Dout\(13)) # ((\dp|t4|Dout\(14)) # (!\dp|pr_enc|a[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|t4|Dout\(13),
	datab => \dp|pr_enc|a[1]~0_combout\,
	datac => \dp|pr_enc|v~0_combout\,
	datad => \dp|t4|Dout\(14),
	combout => \dp|pr_enc|a[2]~6_combout\);

-- Location: LCCOMB_X31_Y24_N6
\dp|RF_A3[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|RF_A3[2]~4_combout\ = (\cp|Selector22~0_combout\ & (((\cp|M4[0]~0_combout\)))) # (!\cp|Selector22~0_combout\ & ((\cp|M4[0]~0_combout\ & (\dp|ir|Dout\(5))) # (!\cp|M4[0]~0_combout\ & ((\dp|ir|Dout\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ir|Dout\(5),
	datab => \cp|Selector22~0_combout\,
	datac => \dp|ir|Dout\(11),
	datad => \cp|M4[0]~0_combout\,
	combout => \dp|RF_A3[2]~4_combout\);

-- Location: LCCOMB_X31_Y24_N16
\dp|RF_A3[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|RF_A3[2]~5_combout\ = (\cp|Selector22~0_combout\ & ((\dp|RF_A3[2]~4_combout\ & ((\dp|ir|Dout\(8)))) # (!\dp|RF_A3[2]~4_combout\ & (\dp|pr_enc|a[2]~6_combout\)))) # (!\cp|Selector22~0_combout\ & (((\dp|RF_A3[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|pr_enc|a[2]~6_combout\,
	datab => \cp|Selector22~0_combout\,
	datac => \dp|ir|Dout\(8),
	datad => \dp|RF_A3[2]~4_combout\,
	combout => \dp|RF_A3[2]~5_combout\);

-- Location: LCCOMB_X28_Y22_N26
\dp|rf|Decoder0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|rf|Decoder0~6_combout\ = (\cp|WideOr22~0_combout\ & (!\dp|RF_A3[1]~1_combout\ & (!\dp|RF_A3[2]~5_combout\ & !\dp|RF_A3[0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp|WideOr22~0_combout\,
	datab => \dp|RF_A3[1]~1_combout\,
	datac => \dp|RF_A3[2]~5_combout\,
	datad => \dp|RF_A3[0]~3_combout\,
	combout => \dp|rf|Decoder0~6_combout\);

-- Location: LCCOMB_X36_Y20_N20
\dp|rf|reg[0][10]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|rf|reg[0][10]~22_combout\ = (\reset~input_o\) # (\dp|rf|Decoder0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datad => \dp|rf|Decoder0~6_combout\,
	combout => \dp|rf|reg[0][10]~22_combout\);

-- Location: FF_X28_Y21_N21
\dp|rf|reg[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dp|rf|reg~29_combout\,
	sload => VCC,
	ena => \dp|rf|reg[0][10]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|reg[0][4]~q\);

-- Location: LCCOMB_X29_Y21_N2
\dp|T2_in[4]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|T2_in[4]~24_combout\ = (\dp|ir|Dout\(9) & (((\dp|rf|reg[1][4]~q\) # (\dp|ir|Dout\(10))))) # (!\dp|ir|Dout\(9) & (\dp|rf|reg[0][4]~q\ & ((!\dp|ir|Dout\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|reg[0][4]~q\,
	datab => \dp|ir|Dout\(9),
	datac => \dp|rf|reg[1][4]~q\,
	datad => \dp|ir|Dout\(10),
	combout => \dp|T2_in[4]~24_combout\);

-- Location: LCCOMB_X29_Y22_N6
\dp|T2_in[4]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|T2_in[4]~25_combout\ = (\dp|ir|Dout\(10) & ((\dp|T2_in[4]~24_combout\ & (\dp|rf|reg[3][4]~q\)) # (!\dp|T2_in[4]~24_combout\ & ((\dp|rf|reg[2][4]~q\))))) # (!\dp|ir|Dout\(10) & (\dp|T2_in[4]~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ir|Dout\(10),
	datab => \dp|T2_in[4]~24_combout\,
	datac => \dp|rf|reg[3][4]~q\,
	datad => \dp|rf|reg[2][4]~q\,
	combout => \dp|T2_in[4]~25_combout\);

-- Location: LCCOMB_X27_Y20_N30
\dp|T2_in[4]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|T2_in[4]~26_combout\ = (\dp|ir|Dout\(10) & ((\dp|ir|Dout\(9)) # ((\dp|rf|reg[6][4]~q\)))) # (!\dp|ir|Dout\(10) & (!\dp|ir|Dout\(9) & ((\dp|rf|reg[4][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ir|Dout\(10),
	datab => \dp|ir|Dout\(9),
	datac => \dp|rf|reg[6][4]~q\,
	datad => \dp|rf|reg[4][4]~q\,
	combout => \dp|T2_in[4]~26_combout\);

-- Location: LCCOMB_X28_Y20_N24
\dp|T2_in[4]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|T2_in[4]~27_combout\ = (\dp|ir|Dout\(9) & ((\dp|T2_in[4]~26_combout\ & ((\dp|rf|reg[7][4]~q\))) # (!\dp|T2_in[4]~26_combout\ & (\dp|rf|reg[5][4]~q\)))) # (!\dp|ir|Dout\(9) & (((\dp|T2_in[4]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ir|Dout\(9),
	datab => \dp|rf|reg[5][4]~q\,
	datac => \dp|T2_in[4]~26_combout\,
	datad => \dp|rf|reg[7][4]~q\,
	combout => \dp|T2_in[4]~27_combout\);

-- Location: LCCOMB_X30_Y20_N16
\dp|t2|Dout[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|t2|Dout[4]~4_combout\ = (\dp|ir|Dout\(11) & ((\dp|T2_in[4]~27_combout\))) # (!\dp|ir|Dout\(11) & (\dp|T2_in[4]~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|T2_in[4]~25_combout\,
	datab => \dp|T2_in[4]~27_combout\,
	datad => \dp|ir|Dout\(11),
	combout => \dp|t2|Dout[4]~4_combout\);

-- Location: FF_X30_Y20_N17
\dp|t2|Dout[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp|t2|Dout[4]~4_combout\,
	asdata => \dp|pc|Dout[4]~4_combout\,
	sload => \cp|M9~0_combout\,
	ena => \cp|WideOr20~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|t2|Dout\(4));

-- Location: LCCOMB_X35_Y22_N20
\dp|Alu_1[4]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Alu_1[4]~18_combout\ = (\cp|Selector17~0_combout\ & (((\cp|Selector18~2_combout\)))) # (!\cp|Selector17~0_combout\ & ((\cp|Selector18~2_combout\ & (\dp|t1|Dout\(4))) # (!\cp|Selector18~2_combout\ & ((\dp|rf|reg[7][4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|t1|Dout\(4),
	datab => \cp|Selector17~0_combout\,
	datac => \cp|Selector18~2_combout\,
	datad => \dp|rf|reg[7][4]~q\,
	combout => \dp|Alu_1[4]~18_combout\);

-- Location: LCCOMB_X35_Y22_N6
\dp|Alu_1[4]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Alu_1[4]~19_combout\ = (\dp|Alu_1[4]~18_combout\ & (((\dp|ir|Dout\(4)) # (!\cp|Selector17~0_combout\)))) # (!\dp|Alu_1[4]~18_combout\ & (\dp|t2|Dout\(4) & ((\cp|Selector17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|t2|Dout\(4),
	datab => \dp|Alu_1[4]~18_combout\,
	datac => \dp|ir|Dout\(4),
	datad => \cp|Selector17~0_combout\,
	combout => \dp|Alu_1[4]~19_combout\);

-- Location: LCCOMB_X35_Y22_N4
\dp|Alu_2[4]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Alu_2[4]~36_combout\ = (\dp|Equal15~0_combout\ & (\dp|t3|Dout\(4) & ((\dp|Alu_2[15]~0_combout\)))) # (!\dp|Equal15~0_combout\ & ((\dp|t4|Dout\(4)) # ((\dp|t3|Dout\(4) & \dp|Alu_2[15]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Equal15~0_combout\,
	datab => \dp|t3|Dout\(4),
	datac => \dp|t4|Dout\(4),
	datad => \dp|Alu_2[15]~0_combout\,
	combout => \dp|Alu_2[4]~36_combout\);

-- Location: LCCOMB_X35_Y22_N14
\dp|aluInst|OP~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|aluInst|OP~6_combout\ = ((!\dp|Alu_2[4]~36_combout\ & ((!\dp|Equal16~0_combout\) # (!\dp|t2|Dout\(4))))) # (!\dp|Alu_1[4]~19_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|t2|Dout\(4),
	datab => \dp|Alu_2[4]~36_combout\,
	datac => \dp|Alu_1[4]~19_combout\,
	datad => \dp|Equal16~0_combout\,
	combout => \dp|aluInst|OP~6_combout\);

-- Location: LCCOMB_X29_Y19_N28
\dp|pc|Dout[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|pc|Dout[4]~4_combout\ = (\cp|Alu_op~0_combout\ & ((\dp|aluInst|OP~6_combout\))) # (!\cp|Alu_op~0_combout\ & (\dp|aluInst|OP_s[4]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|aluInst|OP_s[4]~8_combout\,
	datab => \cp|Alu_op~0_combout\,
	datad => \dp|aluInst|OP~6_combout\,
	combout => \dp|pc|Dout[4]~4_combout\);

-- Location: FF_X29_Y19_N29
\dp|pc|Dout[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp|pc|Dout[4]~4_combout\,
	asdata => \dp|rf|Mux11~4_combout\,
	sload => \cp|state.s14~q\,
	ena => \cp|WideOr18~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|pc|Dout\(4));

-- Location: LCCOMB_X30_Y22_N4
\dp|RF_D3[4]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|RF_D3[4]~46_combout\ = (\dp|RF_D3[4]~28_combout\) # ((\dp|t4|Dout\(4) & (\cp|state.s3~q\ & \cp|M5[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|t4|Dout\(4),
	datab => \dp|RF_D3[4]~28_combout\,
	datac => \cp|state.s3~q\,
	datad => \cp|M5[1]~0_combout\,
	combout => \dp|RF_D3[4]~46_combout\);

-- Location: LCCOMB_X30_Y22_N18
\dp|rf|reg~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|rf|reg~7_combout\ = (\dp|rf|process_0~1_combout\ & (\dp|pc|Dout\(4))) # (!\dp|rf|process_0~1_combout\ & ((\dp|RF_D3[4]~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|pc|Dout\(4),
	datac => \dp|RF_D3[4]~46_combout\,
	datad => \dp|rf|process_0~1_combout\,
	combout => \dp|rf|reg~7_combout\);

-- Location: FF_X30_Y22_N19
\dp|rf|reg[7][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp|rf|reg~7_combout\,
	sclr => \reset~input_o\,
	ena => \dp|rf|reg[7][12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|reg[7][4]~q\);

-- Location: LCCOMB_X29_Y19_N12
\dp|T3_in[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|T3_in[4]~14_combout\ = (\cp|M11[0]~0_combout\ & (((\dp|rf|reg[7][4]~q\) # (!\cp|WideOr19~0_combout\)))) # (!\cp|M11[0]~0_combout\ & (\dp|mem|ram_rtl_0|auto_generated|mux2|result_node[4]~9_combout\ & (\cp|WideOr19~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[4]~9_combout\,
	datab => \cp|M11[0]~0_combout\,
	datac => \cp|WideOr19~0_combout\,
	datad => \dp|rf|reg[7][4]~q\,
	combout => \dp|T3_in[4]~14_combout\);

-- Location: LCCOMB_X29_Y19_N18
\dp|T3_in[4]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|T3_in[4]~15_combout\ = (\dp|T3_in[4]~14_combout\ & (((\cp|WideOr19~0_combout\) # (\dp|rf|Mux11~4_combout\)))) # (!\dp|T3_in[4]~14_combout\ & (\dp|pc|Dout[4]~4_combout\ & (!\cp|WideOr19~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|T3_in[4]~14_combout\,
	datab => \dp|pc|Dout[4]~4_combout\,
	datac => \cp|WideOr19~0_combout\,
	datad => \dp|rf|Mux11~4_combout\,
	combout => \dp|T3_in[4]~15_combout\);

-- Location: FF_X29_Y19_N19
\dp|t3|Dout[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp|T3_in[4]~15_combout\,
	ena => \cp|WideOr19~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|t3|Dout\(4));

-- Location: LCCOMB_X30_Y19_N20
\dp|Mem_din[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Mem_din[4]~4_combout\ = (\cp|state.s6~q\ & ((\dp|t2|Dout\(4)))) # (!\cp|state.s6~q\ & (\dp|t3|Dout\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp|state.s6~q\,
	datab => \dp|t3|Dout\(4),
	datac => \dp|t2|Dout\(4),
	combout => \dp|Mem_din[4]~4_combout\);

-- Location: M9K_X22_Y9_N0
\dp|mem|ram_rtl_0|auto_generated|ram_block1a4\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000020E",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RISC1.ram0_memory_e411fb78.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "Datapath_RISC:dp|memory:mem|altsyncram:ram_rtl_0|altsyncram_ct81:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \dp|mem|ram_rtl_0|auto_generated|decode3|w_anode423w[2]~4_combout\,
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \dp|mem|ram_rtl_0|auto_generated|decode3|w_anode423w[2]~5_combout\,
	portadatain => \dp|mem|ram_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\,
	portaaddr => \dp|mem|ram_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \dp|mem|ram_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\);

-- Location: M9K_X22_Y12_N0
\dp|mem|ram_rtl_0|auto_generated|ram_block1a20\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RISC1.ram0_memory_e411fb78.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "Datapath_RISC:dp|memory:mem|altsyncram:ram_rtl_0|altsyncram_ct81:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \dp|mem|ram_rtl_0|auto_generated|decode3|w_anode436w[2]~0_combout\,
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \dp|mem|ram_rtl_0|auto_generated|rden_decode|w_anode475w[2]~4_combout\,
	portadatain => \dp|mem|ram_rtl_0|auto_generated|ram_block1a20_PORTADATAIN_bus\,
	portaaddr => \dp|mem|ram_rtl_0|auto_generated|ram_block1a20_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \dp|mem|ram_rtl_0|auto_generated|ram_block1a20_PORTADATAOUT_bus\);

-- Location: M9K_X22_Y16_N0
\dp|mem|ram_rtl_0|auto_generated|ram_block1a36\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RISC1.ram0_memory_e411fb78.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "Datapath_RISC:dp|memory:mem|altsyncram:ram_rtl_0|altsyncram_ct81:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \dp|mem|ram_rtl_0|auto_generated|decode3|w_anode444w[2]~0_combout\,
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \dp|mem|ram_rtl_0|auto_generated|rden_decode|w_anode484w[2]~4_combout\,
	portadatain => \dp|mem|ram_rtl_0|auto_generated|ram_block1a36_PORTADATAIN_bus\,
	portaaddr => \dp|mem|ram_rtl_0|auto_generated|ram_block1a36_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \dp|mem|ram_rtl_0|auto_generated|ram_block1a36_PORTADATAOUT_bus\);

-- Location: M9K_X22_Y8_N0
\dp|mem|ram_rtl_0|auto_generated|ram_block1a52\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RISC1.ram0_memory_e411fb78.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "Datapath_RISC:dp|memory:mem|altsyncram:ram_rtl_0|altsyncram_ct81:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \dp|mem|ram_rtl_0|auto_generated|decode3|w_anode452w[2]~0_combout\,
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \dp|mem|ram_rtl_0|auto_generated|rden_decode|w_anode493w[2]~0_combout\,
	portadatain => \dp|mem|ram_rtl_0|auto_generated|ram_block1a52_PORTADATAIN_bus\,
	portaaddr => \dp|mem|ram_rtl_0|auto_generated|ram_block1a52_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \dp|mem|ram_rtl_0|auto_generated|ram_block1a52_PORTADATAOUT_bus\);

-- Location: LCCOMB_X23_Y23_N2
\dp|mem|ram_rtl_0|auto_generated|mux2|result_node[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[4]~8_combout\ = (\dp|mem|ram_rtl_0|auto_generated|address_reg_a\(0) & (((\dp|mem|ram_rtl_0|auto_generated|ram_block1a52~portadataout\) # (!\dp|mem|ram_rtl_0|auto_generated|address_reg_a\(1))))) # 
-- (!\dp|mem|ram_rtl_0|auto_generated|address_reg_a\(0) & (\dp|mem|ram_rtl_0|auto_generated|ram_block1a36~portadataout\ & ((\dp|mem|ram_rtl_0|auto_generated|address_reg_a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|mem|ram_rtl_0|auto_generated|address_reg_a\(0),
	datab => \dp|mem|ram_rtl_0|auto_generated|ram_block1a36~portadataout\,
	datac => \dp|mem|ram_rtl_0|auto_generated|ram_block1a52~portadataout\,
	datad => \dp|mem|ram_rtl_0|auto_generated|address_reg_a\(1),
	combout => \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[4]~8_combout\);

-- Location: LCCOMB_X23_Y23_N22
\dp|mem|ram_rtl_0|auto_generated|mux2|result_node[4]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[4]~9_combout\ = (\dp|mem|ram_rtl_0|auto_generated|address_reg_a\(1) & (((\dp|mem|ram_rtl_0|auto_generated|mux2|result_node[4]~8_combout\)))) # (!\dp|mem|ram_rtl_0|auto_generated|address_reg_a\(1) & 
-- ((\dp|mem|ram_rtl_0|auto_generated|mux2|result_node[4]~8_combout\ & ((\dp|mem|ram_rtl_0|auto_generated|ram_block1a20~portadataout\))) # (!\dp|mem|ram_rtl_0|auto_generated|mux2|result_node[4]~8_combout\ & 
-- (\dp|mem|ram_rtl_0|auto_generated|ram_block1a4~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|mem|ram_rtl_0|auto_generated|ram_block1a4~portadataout\,
	datab => \dp|mem|ram_rtl_0|auto_generated|address_reg_a\(1),
	datac => \dp|mem|ram_rtl_0|auto_generated|ram_block1a20~portadataout\,
	datad => \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[4]~8_combout\,
	combout => \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[4]~9_combout\);

-- Location: FF_X23_Y23_N23
\dp|ir|Dout[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[4]~9_combout\,
	ena => \cp|state.s1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|ir|Dout\(4));

-- Location: LCCOMB_X31_Y24_N28
\dp|RF_A3[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|RF_A3[1]~0_combout\ = (\cp|M4[0]~0_combout\ & ((\cp|Selector22~0_combout\) # ((\dp|ir|Dout\(4))))) # (!\cp|M4[0]~0_combout\ & (!\cp|Selector22~0_combout\ & ((\dp|ir|Dout\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp|M4[0]~0_combout\,
	datab => \cp|Selector22~0_combout\,
	datac => \dp|ir|Dout\(4),
	datad => \dp|ir|Dout\(10),
	combout => \dp|RF_A3[1]~0_combout\);

-- Location: LCCOMB_X29_Y24_N10
\dp|pr_enc|a[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|pr_enc|a[1]~3_combout\ = (!\dp|t4|Dout\(7) & !\dp|t4|Dout\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|t4|Dout\(7),
	datad => \dp|t4|Dout\(8),
	combout => \dp|pr_enc|a[1]~3_combout\);

-- Location: LCCOMB_X30_Y24_N18
\dp|pr_enc|a[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|pr_enc|a[1]~4_combout\ = (!\dp|t4|Dout\(12) & (!\dp|t4|Dout\(11) & ((\dp|t4|Dout\(13)) # (\dp|t4|Dout\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|t4|Dout\(13),
	datab => \dp|t4|Dout\(14),
	datac => \dp|t4|Dout\(12),
	datad => \dp|t4|Dout\(11),
	combout => \dp|pr_enc|a[1]~4_combout\);

-- Location: LCCOMB_X29_Y24_N12
\dp|pr_enc|a[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|pr_enc|a[1]~5_combout\ = (\dp|pr_enc|a[1]~3_combout\ & ((\dp|t4|Dout\(10)) # ((\dp|t4|Dout\(9)) # (\dp|pr_enc|a[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|pr_enc|a[1]~3_combout\,
	datab => \dp|t4|Dout\(10),
	datac => \dp|t4|Dout\(9),
	datad => \dp|pr_enc|a[1]~4_combout\,
	combout => \dp|pr_enc|a[1]~5_combout\);

-- Location: LCCOMB_X31_Y24_N22
\dp|RF_A3[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|RF_A3[1]~1_combout\ = (\dp|RF_A3[1]~0_combout\ & ((\dp|ir|Dout\(7)) # ((!\cp|Selector22~0_combout\)))) # (!\dp|RF_A3[1]~0_combout\ & (((\dp|pr_enc|a[1]~5_combout\ & \cp|Selector22~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ir|Dout\(7),
	datab => \dp|RF_A3[1]~0_combout\,
	datac => \dp|pr_enc|a[1]~5_combout\,
	datad => \cp|Selector22~0_combout\,
	combout => \dp|RF_A3[1]~1_combout\);

-- Location: LCCOMB_X28_Y22_N18
\dp|rf|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|rf|process_0~0_combout\ = ((!\dp|RF_A3[0]~3_combout\) # (!\dp|RF_A3[2]~5_combout\)) # (!\dp|RF_A3[1]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dp|RF_A3[1]~1_combout\,
	datac => \dp|RF_A3[2]~5_combout\,
	datad => \dp|RF_A3[0]~3_combout\,
	combout => \dp|rf|process_0~0_combout\);

-- Location: LCCOMB_X36_Y20_N4
\dp|rf|process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|rf|process_0~1_combout\ = (\cp|WideOr22~0_combout\ & (\dp|rf|process_0~0_combout\ & ((\cp|state.s15~q\) # (\cp|state.s3~q\)))) # (!\cp|WideOr22~0_combout\ & (((\cp|state.s15~q\) # (\cp|state.s3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp|WideOr22~0_combout\,
	datab => \dp|rf|process_0~0_combout\,
	datac => \cp|state.s15~q\,
	datad => \cp|state.s3~q\,
	combout => \dp|rf|process_0~1_combout\);

-- Location: LCCOMB_X29_Y23_N24
\dp|RF_D3[1]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|RF_D3[1]~24_combout\ = (\cp|state.s3~q\ & (\cp|M5[1]~0_combout\ & \dp|t4|Dout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cp|state.s3~q\,
	datac => \cp|M5[1]~0_combout\,
	datad => \dp|t4|Dout\(1),
	combout => \dp|RF_D3[1]~24_combout\);

-- Location: LCCOMB_X29_Y23_N28
\dp|rf|reg~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|rf|reg~4_combout\ = (\dp|rf|process_0~1_combout\ & (((\dp|pc|Dout\(1))))) # (!\dp|rf|process_0~1_combout\ & ((\dp|RF_D3[1]~25_combout\) # ((\dp|RF_D3[1]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RF_D3[1]~25_combout\,
	datab => \dp|rf|process_0~1_combout\,
	datac => \dp|pc|Dout\(1),
	datad => \dp|RF_D3[1]~24_combout\,
	combout => \dp|rf|reg~4_combout\);

-- Location: FF_X29_Y23_N29
\dp|rf|reg[7][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp|rf|reg~4_combout\,
	sclr => \reset~input_o\,
	ena => \dp|rf|reg[7][12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|reg[7][1]~q\);

-- Location: LCCOMB_X30_Y19_N8
\dp|Alu_1[1]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Alu_1[1]~24_combout\ = (\cp|Selector17~0_combout\ & ((\cp|Selector18~2_combout\ & (\dp|ir|Dout\(1))) # (!\cp|Selector18~2_combout\ & ((\dp|t2|Dout\(1)))))) # (!\cp|Selector17~0_combout\ & (((\cp|Selector18~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp|Selector17~0_combout\,
	datab => \dp|ir|Dout\(1),
	datac => \dp|t2|Dout\(1),
	datad => \cp|Selector18~2_combout\,
	combout => \dp|Alu_1[1]~24_combout\);

-- Location: LCCOMB_X30_Y19_N18
\dp|Alu_1[1]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Alu_1[1]~25_combout\ = (\dp|Alu_1[1]~24_combout\ & (((\dp|t1|Dout\(1)) # (\cp|Selector17~0_combout\)))) # (!\dp|Alu_1[1]~24_combout\ & (\dp|rf|reg[7][1]~q\ & ((!\cp|Selector17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|reg[7][1]~q\,
	datab => \dp|Alu_1[1]~24_combout\,
	datac => \dp|t1|Dout\(1),
	datad => \cp|Selector17~0_combout\,
	combout => \dp|Alu_1[1]~25_combout\);

-- Location: LCCOMB_X34_Y22_N10
\dp|aluInst|OP~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|aluInst|OP~3_combout\ = (!\dp|Alu_2[1]~28_combout\) # (!\dp|Alu_1[1]~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dp|Alu_1[1]~25_combout\,
	datad => \dp|Alu_2[1]~28_combout\,
	combout => \dp|aluInst|OP~3_combout\);

-- Location: LCCOMB_X34_Y22_N0
\dp|pc|Dout[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|pc|Dout[1]~1_combout\ = (\cp|Alu_op~0_combout\ & ((\dp|aluInst|OP~3_combout\))) # (!\cp|Alu_op~0_combout\ & (\dp|aluInst|OP_s[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp|Alu_op~0_combout\,
	datab => \dp|aluInst|OP_s[1]~2_combout\,
	datad => \dp|aluInst|OP~3_combout\,
	combout => \dp|pc|Dout[1]~1_combout\);

-- Location: FF_X34_Y22_N1
\dp|pc|Dout[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp|pc|Dout[1]~1_combout\,
	asdata => \dp|rf|Mux14~4_combout\,
	sload => \cp|state.s14~q\,
	ena => \cp|WideOr18~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|pc|Dout\(1));

-- Location: LCCOMB_X29_Y23_N10
\dp|RF_D3[1]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|RF_D3[1]~25_combout\ = (!\cp|M5[1]~1_combout\ & ((\dp|Equal5~0_combout\ & ((\dp|t3|Dout\(1)))) # (!\dp|Equal5~0_combout\ & (\dp|pc|Dout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|pc|Dout\(1),
	datab => \dp|t3|Dout\(1),
	datac => \cp|M5[1]~1_combout\,
	datad => \dp|Equal5~0_combout\,
	combout => \dp|RF_D3[1]~25_combout\);

-- Location: LCCOMB_X29_Y23_N30
\dp|rf|reg~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|rf|reg~26_combout\ = (!\reset~input_o\ & ((\dp|RF_D3[1]~25_combout\) # ((\dp|t4|Dout\(1) & \cp|M5[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|t4|Dout\(1),
	datab => \cp|M5[1]~1_combout\,
	datac => \reset~input_o\,
	datad => \dp|RF_D3[1]~25_combout\,
	combout => \dp|rf|reg~26_combout\);

-- Location: FF_X28_Y21_N25
\dp|rf|reg[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dp|rf|reg~26_combout\,
	sload => VCC,
	ena => \dp|rf|reg[0][10]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|reg[0][1]~q\);

-- Location: LCCOMB_X27_Y21_N8
\dp|T2_in[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|T2_in[1]~12_combout\ = (\dp|ir|Dout\(9) & (((\dp|rf|reg[1][1]~q\) # (\dp|ir|Dout\(10))))) # (!\dp|ir|Dout\(9) & (\dp|rf|reg[0][1]~q\ & ((!\dp|ir|Dout\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ir|Dout\(9),
	datab => \dp|rf|reg[0][1]~q\,
	datac => \dp|rf|reg[1][1]~q\,
	datad => \dp|ir|Dout\(10),
	combout => \dp|T2_in[1]~12_combout\);

-- Location: LCCOMB_X28_Y19_N10
\dp|T2_in[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|T2_in[1]~13_combout\ = (\dp|T2_in[1]~12_combout\ & (((\dp|rf|reg[3][1]~q\) # (!\dp|ir|Dout\(10))))) # (!\dp|T2_in[1]~12_combout\ & (\dp|rf|reg[2][1]~q\ & ((\dp|ir|Dout\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|T2_in[1]~12_combout\,
	datab => \dp|rf|reg[2][1]~q\,
	datac => \dp|rf|reg[3][1]~q\,
	datad => \dp|ir|Dout\(10),
	combout => \dp|T2_in[1]~13_combout\);

-- Location: LCCOMB_X27_Y20_N8
\dp|T2_in[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|T2_in[1]~14_combout\ = (\dp|ir|Dout\(9) & (((\dp|ir|Dout\(10))))) # (!\dp|ir|Dout\(9) & ((\dp|ir|Dout\(10) & ((\dp|rf|reg[6][1]~q\))) # (!\dp|ir|Dout\(10) & (\dp|rf|reg[4][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ir|Dout\(9),
	datab => \dp|rf|reg[4][1]~q\,
	datac => \dp|rf|reg[6][1]~q\,
	datad => \dp|ir|Dout\(10),
	combout => \dp|T2_in[1]~14_combout\);

-- Location: LCCOMB_X28_Y20_N20
\dp|T2_in[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|T2_in[1]~15_combout\ = (\dp|T2_in[1]~14_combout\ & ((\dp|rf|reg[7][1]~q\) # ((!\dp|ir|Dout\(9))))) # (!\dp|T2_in[1]~14_combout\ & (((\dp|rf|reg[5][1]~q\ & \dp|ir|Dout\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|T2_in[1]~14_combout\,
	datab => \dp|rf|reg[7][1]~q\,
	datac => \dp|rf|reg[5][1]~q\,
	datad => \dp|ir|Dout\(9),
	combout => \dp|T2_in[1]~15_combout\);

-- Location: LCCOMB_X28_Y19_N2
\dp|t2|Dout[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|t2|Dout[1]~1_combout\ = (\dp|ir|Dout\(11) & ((\dp|T2_in[1]~15_combout\))) # (!\dp|ir|Dout\(11) & (\dp|T2_in[1]~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|T2_in[1]~13_combout\,
	datab => \dp|ir|Dout\(11),
	datad => \dp|T2_in[1]~15_combout\,
	combout => \dp|t2|Dout[1]~1_combout\);

-- Location: FF_X28_Y19_N3
\dp|t2|Dout[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp|t2|Dout[1]~1_combout\,
	asdata => \dp|pc|Dout[1]~1_combout\,
	sload => \cp|M9~0_combout\,
	ena => \cp|WideOr20~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|t2|Dout\(1));

-- Location: LCCOMB_X28_Y19_N22
\dp|Mem_din[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Mem_din[1]~1_combout\ = (\cp|state.s6~q\ & (\dp|t2|Dout\(1))) # (!\cp|state.s6~q\ & ((\dp|t3|Dout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp|state.s6~q\,
	datab => \dp|t2|Dout\(1),
	datac => \dp|t3|Dout\(1),
	combout => \dp|Mem_din[1]~1_combout\);

-- Location: M9K_X33_Y32_N0
\dp|mem|ram_rtl_0|auto_generated|ram_block1a17\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RISC1.ram0_memory_e411fb78.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "Datapath_RISC:dp|memory:mem|altsyncram:ram_rtl_0|altsyncram_ct81:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \dp|mem|ram_rtl_0|auto_generated|decode3|w_anode436w[2]~0_combout\,
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \dp|mem|ram_rtl_0|auto_generated|rden_decode|w_anode475w[2]~4_combout\,
	portadatain => \dp|mem|ram_rtl_0|auto_generated|ram_block1a17_PORTADATAIN_bus\,
	portaaddr => \dp|mem|ram_rtl_0|auto_generated|ram_block1a17_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \dp|mem|ram_rtl_0|auto_generated|ram_block1a17_PORTADATAOUT_bus\);

-- Location: M9K_X33_Y31_N0
\dp|mem|ram_rtl_0|auto_generated|ram_block1a1\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000281",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RISC1.ram0_memory_e411fb78.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "Datapath_RISC:dp|memory:mem|altsyncram:ram_rtl_0|altsyncram_ct81:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \dp|mem|ram_rtl_0|auto_generated|decode3|w_anode423w[2]~4_combout\,
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \dp|mem|ram_rtl_0|auto_generated|decode3|w_anode423w[2]~5_combout\,
	portadatain => \dp|mem|ram_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\,
	portaaddr => \dp|mem|ram_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \dp|mem|ram_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\);

-- Location: M9K_X33_Y26_N0
\dp|mem|ram_rtl_0|auto_generated|ram_block1a33\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RISC1.ram0_memory_e411fb78.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "Datapath_RISC:dp|memory:mem|altsyncram:ram_rtl_0|altsyncram_ct81:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \dp|mem|ram_rtl_0|auto_generated|decode3|w_anode444w[2]~0_combout\,
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \dp|mem|ram_rtl_0|auto_generated|rden_decode|w_anode484w[2]~4_combout\,
	portadatain => \dp|mem|ram_rtl_0|auto_generated|ram_block1a33_PORTADATAIN_bus\,
	portaaddr => \dp|mem|ram_rtl_0|auto_generated|ram_block1a33_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \dp|mem|ram_rtl_0|auto_generated|ram_block1a33_PORTADATAOUT_bus\);

-- Location: M9K_X33_Y27_N0
\dp|mem|ram_rtl_0|auto_generated|ram_block1a49\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RISC1.ram0_memory_e411fb78.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "Datapath_RISC:dp|memory:mem|altsyncram:ram_rtl_0|altsyncram_ct81:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \dp|mem|ram_rtl_0|auto_generated|decode3|w_anode452w[2]~0_combout\,
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \dp|mem|ram_rtl_0|auto_generated|rden_decode|w_anode493w[2]~0_combout\,
	portadatain => \dp|mem|ram_rtl_0|auto_generated|ram_block1a49_PORTADATAIN_bus\,
	portaaddr => \dp|mem|ram_rtl_0|auto_generated|ram_block1a49_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \dp|mem|ram_rtl_0|auto_generated|ram_block1a49_PORTADATAOUT_bus\);

-- Location: LCCOMB_X34_Y23_N16
\dp|mem|ram_rtl_0|auto_generated|mux2|result_node[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[1]~2_combout\ = (\dp|mem|ram_rtl_0|auto_generated|address_reg_a\(0) & (((\dp|mem|ram_rtl_0|auto_generated|ram_block1a49~portadataout\)) # (!\dp|mem|ram_rtl_0|auto_generated|address_reg_a\(1)))) # 
-- (!\dp|mem|ram_rtl_0|auto_generated|address_reg_a\(0) & (\dp|mem|ram_rtl_0|auto_generated|address_reg_a\(1) & (\dp|mem|ram_rtl_0|auto_generated|ram_block1a33~portadataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|mem|ram_rtl_0|auto_generated|address_reg_a\(0),
	datab => \dp|mem|ram_rtl_0|auto_generated|address_reg_a\(1),
	datac => \dp|mem|ram_rtl_0|auto_generated|ram_block1a33~portadataout\,
	datad => \dp|mem|ram_rtl_0|auto_generated|ram_block1a49~portadataout\,
	combout => \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[1]~2_combout\);

-- Location: LCCOMB_X34_Y23_N8
\dp|mem|ram_rtl_0|auto_generated|mux2|result_node[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[1]~3_combout\ = (\dp|mem|ram_rtl_0|auto_generated|address_reg_a\(1) & (((\dp|mem|ram_rtl_0|auto_generated|mux2|result_node[1]~2_combout\)))) # (!\dp|mem|ram_rtl_0|auto_generated|address_reg_a\(1) & 
-- ((\dp|mem|ram_rtl_0|auto_generated|mux2|result_node[1]~2_combout\ & (\dp|mem|ram_rtl_0|auto_generated|ram_block1a17~portadataout\)) # (!\dp|mem|ram_rtl_0|auto_generated|mux2|result_node[1]~2_combout\ & 
-- ((\dp|mem|ram_rtl_0|auto_generated|ram_block1a1~portadataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|mem|ram_rtl_0|auto_generated|ram_block1a17~portadataout\,
	datab => \dp|mem|ram_rtl_0|auto_generated|address_reg_a\(1),
	datac => \dp|mem|ram_rtl_0|auto_generated|ram_block1a1~portadataout\,
	datad => \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[1]~2_combout\,
	combout => \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[1]~3_combout\);

-- Location: FF_X34_Y23_N9
\dp|ir|Dout[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[1]~3_combout\,
	ena => \cp|state.s1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|ir|Dout\(1));

-- Location: LCCOMB_X35_Y20_N8
\cp|M7\ : cycloneive_lcell_comb
-- Equation(s):
-- \cp|M7~combout\ = (\cp|state.s11~q\) # (\cp|state.s2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cp|state.s11~q\,
	datad => \cp|state.s2~q\,
	combout => \cp|M7~combout\);

-- Location: LCCOMB_X31_Y20_N22
\dp|comp|Equal0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|comp|Equal0~11_combout\ = (\cp|M7~combout\ & (\dp|t2|Dout\(8) $ (((\dp|t1|Dout\(8)))))) # (!\cp|M7~combout\ & (((\dp|t3|Dout\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|t2|Dout\(8),
	datab => \dp|t3|Dout\(8),
	datac => \dp|t1|Dout\(8),
	datad => \cp|M7~combout\,
	combout => \dp|comp|Equal0~11_combout\);

-- Location: LCCOMB_X31_Y20_N8
\dp|comp|Equal0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|comp|Equal0~12_combout\ = (\cp|M7~combout\ & (\dp|t2|Dout\(9) $ ((\dp|t1|Dout\(9))))) # (!\cp|M7~combout\ & (((\dp|t3|Dout\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp|M7~combout\,
	datab => \dp|t2|Dout\(9),
	datac => \dp|t1|Dout\(9),
	datad => \dp|t3|Dout\(9),
	combout => \dp|comp|Equal0~12_combout\);

-- Location: LCCOMB_X32_Y21_N22
\dp|comp|Equal0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|comp|Equal0~13_combout\ = (\cp|M7~combout\ & (\dp|t2|Dout\(10) $ (((\dp|t1|Dout\(10)))))) # (!\cp|M7~combout\ & (((\dp|t3|Dout\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|t2|Dout\(10),
	datab => \dp|t3|Dout\(10),
	datac => \cp|M7~combout\,
	datad => \dp|t1|Dout\(10),
	combout => \dp|comp|Equal0~13_combout\);

-- Location: LCCOMB_X31_Y19_N2
\dp|comp|Equal0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|comp|Equal0~14_combout\ = (\cp|M7~combout\ & (\dp|t2|Dout\(11) $ (((\dp|t1|Dout\(11)))))) # (!\cp|M7~combout\ & (((\dp|t3|Dout\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|t2|Dout\(11),
	datab => \dp|t3|Dout\(11),
	datac => \dp|t1|Dout\(11),
	datad => \cp|M7~combout\,
	combout => \dp|comp|Equal0~14_combout\);

-- Location: LCCOMB_X31_Y20_N2
\dp|comp|Equal0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|comp|Equal0~15_combout\ = (!\dp|comp|Equal0~11_combout\ & (!\dp|comp|Equal0~12_combout\ & (!\dp|comp|Equal0~13_combout\ & !\dp|comp|Equal0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|comp|Equal0~11_combout\,
	datab => \dp|comp|Equal0~12_combout\,
	datac => \dp|comp|Equal0~13_combout\,
	datad => \dp|comp|Equal0~14_combout\,
	combout => \dp|comp|Equal0~15_combout\);

-- Location: LCCOMB_X31_Y22_N10
\dp|comp|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|comp|Equal0~7_combout\ = (\cp|M7~combout\ & ((\dp|t2|Dout\(5) $ (\dp|t1|Dout\(5))))) # (!\cp|M7~combout\ & (\dp|t3|Dout\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|t3|Dout\(5),
	datab => \dp|t2|Dout\(5),
	datac => \cp|M7~combout\,
	datad => \dp|t1|Dout\(5),
	combout => \dp|comp|Equal0~7_combout\);

-- Location: LCCOMB_X31_Y22_N28
\dp|comp|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|comp|Equal0~8_combout\ = (\cp|M7~combout\ & (\dp|t2|Dout\(6) $ (((\dp|t1|Dout\(6)))))) # (!\cp|M7~combout\ & (((\dp|t3|Dout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp|M7~combout\,
	datab => \dp|t2|Dout\(6),
	datac => \dp|t3|Dout\(6),
	datad => \dp|t1|Dout\(6),
	combout => \dp|comp|Equal0~8_combout\);

-- Location: LCCOMB_X31_Y22_N14
\dp|comp|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|comp|Equal0~9_combout\ = (\cp|M7~combout\ & (\dp|t2|Dout\(7) $ (((\dp|t1|Dout\(7)))))) # (!\cp|M7~combout\ & (((\dp|t3|Dout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|t2|Dout\(7),
	datab => \dp|t3|Dout\(7),
	datac => \cp|M7~combout\,
	datad => \dp|t1|Dout\(7),
	combout => \dp|comp|Equal0~9_combout\);

-- Location: LCCOMB_X31_Y22_N16
\dp|comp|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|comp|Equal0~6_combout\ = (\cp|M7~combout\ & (\dp|t1|Dout\(4) $ ((\dp|t2|Dout\(4))))) # (!\cp|M7~combout\ & (((\dp|t3|Dout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|t1|Dout\(4),
	datab => \dp|t2|Dout\(4),
	datac => \cp|M7~combout\,
	datad => \dp|t3|Dout\(4),
	combout => \dp|comp|Equal0~6_combout\);

-- Location: LCCOMB_X31_Y22_N0
\dp|comp|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|comp|Equal0~10_combout\ = (!\dp|comp|Equal0~7_combout\ & (!\dp|comp|Equal0~8_combout\ & (!\dp|comp|Equal0~9_combout\ & !\dp|comp|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|comp|Equal0~7_combout\,
	datab => \dp|comp|Equal0~8_combout\,
	datac => \dp|comp|Equal0~9_combout\,
	datad => \dp|comp|Equal0~6_combout\,
	combout => \dp|comp|Equal0~10_combout\);

-- Location: LCCOMB_X34_Y20_N12
\dp|comp|Equal0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|comp|Equal0~17_combout\ = (\cp|M7~combout\ & (\dp|t2|Dout\(13) $ (((\dp|t1|Dout\(13)))))) # (!\cp|M7~combout\ & (((\dp|t3|Dout\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|t2|Dout\(13),
	datab => \dp|t3|Dout\(13),
	datac => \cp|M7~combout\,
	datad => \dp|t1|Dout\(13),
	combout => \dp|comp|Equal0~17_combout\);

-- Location: LCCOMB_X35_Y20_N28
\dp|comp|Equal0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|comp|Equal0~19_combout\ = (\cp|M7~combout\ & (\dp|t1|Dout\(15) $ ((\dp|t2|Dout\(15))))) # (!\cp|M7~combout\ & (((\dp|t3|Dout\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|t1|Dout\(15),
	datab => \cp|M7~combout\,
	datac => \dp|t2|Dout\(15),
	datad => \dp|t3|Dout\(15),
	combout => \dp|comp|Equal0~19_combout\);

-- Location: LCCOMB_X34_Y20_N26
\dp|comp|Equal0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|comp|Equal0~16_combout\ = (\cp|M7~combout\ & (\dp|t1|Dout\(12) $ ((\dp|t2|Dout\(12))))) # (!\cp|M7~combout\ & (((\dp|t3|Dout\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp|M7~combout\,
	datab => \dp|t1|Dout\(12),
	datac => \dp|t2|Dout\(12),
	datad => \dp|t3|Dout\(12),
	combout => \dp|comp|Equal0~16_combout\);

-- Location: LCCOMB_X35_Y20_N18
\dp|comp|Equal0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|comp|Equal0~18_combout\ = (\cp|M7~combout\ & (\dp|t2|Dout\(14) $ (((\dp|t1|Dout\(14)))))) # (!\cp|M7~combout\ & (((\dp|t3|Dout\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|t2|Dout\(14),
	datab => \dp|t3|Dout\(14),
	datac => \cp|M7~combout\,
	datad => \dp|t1|Dout\(14),
	combout => \dp|comp|Equal0~18_combout\);

-- Location: LCCOMB_X35_Y20_N22
\dp|comp|Equal0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|comp|Equal0~20_combout\ = (!\dp|comp|Equal0~17_combout\ & (!\dp|comp|Equal0~19_combout\ & (!\dp|comp|Equal0~16_combout\ & !\dp|comp|Equal0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|comp|Equal0~17_combout\,
	datab => \dp|comp|Equal0~19_combout\,
	datac => \dp|comp|Equal0~16_combout\,
	datad => \dp|comp|Equal0~18_combout\,
	combout => \dp|comp|Equal0~20_combout\);

-- Location: LCCOMB_X32_Y22_N6
\dp|comp|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|comp|Equal0~1_combout\ = (\cp|M7~combout\ & (\dp|t2|Dout\(0) $ ((\dp|t1|Dout\(0))))) # (!\cp|M7~combout\ & (((\dp|t3|Dout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|t2|Dout\(0),
	datab => \dp|t1|Dout\(0),
	datac => \dp|t3|Dout\(0),
	datad => \cp|M7~combout\,
	combout => \dp|comp|Equal0~1_combout\);

-- Location: LCCOMB_X32_Y22_N18
\dp|comp|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|comp|Equal0~3_combout\ = (\cp|M7~combout\ & (\dp|t2|Dout\(2) $ (((\dp|t1|Dout\(2)))))) # (!\cp|M7~combout\ & (((\dp|t3|Dout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|t2|Dout\(2),
	datab => \dp|t3|Dout\(2),
	datac => \dp|t1|Dout\(2),
	datad => \cp|M7~combout\,
	combout => \dp|comp|Equal0~3_combout\);

-- Location: LCCOMB_X32_Y22_N8
\dp|comp|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|comp|Equal0~2_combout\ = (\cp|M7~combout\ & ((\dp|t1|Dout\(1) $ (\dp|t2|Dout\(1))))) # (!\cp|M7~combout\ & (\dp|t3|Dout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|t3|Dout\(1),
	datab => \dp|t1|Dout\(1),
	datac => \dp|t2|Dout\(1),
	datad => \cp|M7~combout\,
	combout => \dp|comp|Equal0~2_combout\);

-- Location: LCCOMB_X32_Y22_N20
\dp|comp|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|comp|Equal0~4_combout\ = (\cp|M7~combout\ & (\dp|t1|Dout\(3) $ ((\dp|t2|Dout\(3))))) # (!\cp|M7~combout\ & (((\dp|t3|Dout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|t1|Dout\(3),
	datab => \cp|M7~combout\,
	datac => \dp|t2|Dout\(3),
	datad => \dp|t3|Dout\(3),
	combout => \dp|comp|Equal0~4_combout\);

-- Location: LCCOMB_X32_Y22_N14
\dp|comp|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|comp|Equal0~5_combout\ = (!\dp|comp|Equal0~1_combout\ & (!\dp|comp|Equal0~3_combout\ & (!\dp|comp|Equal0~2_combout\ & !\dp|comp|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|comp|Equal0~1_combout\,
	datab => \dp|comp|Equal0~3_combout\,
	datac => \dp|comp|Equal0~2_combout\,
	datad => \dp|comp|Equal0~4_combout\,
	combout => \dp|comp|Equal0~5_combout\);

-- Location: LCCOMB_X35_Y20_N24
\dp|comp|Equal0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|comp|Equal0~21_combout\ = (\dp|comp|Equal0~15_combout\ & (\dp|comp|Equal0~10_combout\ & (\dp|comp|Equal0~20_combout\ & \dp|comp|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|comp|Equal0~15_combout\,
	datab => \dp|comp|Equal0~10_combout\,
	datac => \dp|comp|Equal0~20_combout\,
	datad => \dp|comp|Equal0~5_combout\,
	combout => \dp|comp|Equal0~21_combout\);

-- Location: LCCOMB_X35_Y20_N0
\dp|zReg|Dout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|zReg|Dout~0_combout\ = (\cp|Selector23~0_combout\ & ((\dp|comp|Equal0~21_combout\))) # (!\cp|Selector23~0_combout\ & (\dp|zReg|Dout~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cp|Selector23~0_combout\,
	datac => \dp|zReg|Dout~q\,
	datad => \dp|comp|Equal0~21_combout\,
	combout => \dp|zReg|Dout~0_combout\);

-- Location: FF_X35_Y20_N1
\dp|zReg|Dout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp|zReg|Dout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|zReg|Dout~q\);

-- Location: LCCOMB_X34_Y21_N16
\dp|aluInst|OP_s[16]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|aluInst|OP_s[16]~32_combout\ = !\dp|aluInst|OP_s[15]~31\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \dp|aluInst|OP_s[15]~31\,
	combout => \dp|aluInst|OP_s[16]~32_combout\);

-- Location: LCCOMB_X36_Y23_N20
\cp|CEn_var~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cp|CEn_var~0_combout\ = (!\dp|ir|Dout\(15) & (!\dp|ir|Dout\(14) & (\dp|ir|Dout\(13) $ (\dp|ir|Dout\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ir|Dout\(15),
	datab => \dp|ir|Dout\(13),
	datac => \dp|ir|Dout\(12),
	datad => \dp|ir|Dout\(14),
	combout => \cp|CEn_var~0_combout\);

-- Location: LCCOMB_X32_Y23_N14
\cp|CEn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cp|CEn~0_combout\ = (\cp|state.s4~q\ & ((\cp|CEn_var~0_combout\) # ((\cp|Equal8~0_combout\ & !\dp|ir|Dout\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp|state.s4~q\,
	datab => \cp|Equal8~0_combout\,
	datac => \dp|ir|Dout\(13),
	datad => \cp|CEn_var~0_combout\,
	combout => \cp|CEn~0_combout\);

-- Location: LCCOMB_X35_Y20_N12
\dp|cReg|Dout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|cReg|Dout~0_combout\ = (\cp|CEn~0_combout\ & (!\cp|Alu_op~0_combout\ & (\dp|aluInst|OP_s[16]~32_combout\))) # (!\cp|CEn~0_combout\ & (((\dp|cReg|Dout~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp|Alu_op~0_combout\,
	datab => \dp|aluInst|OP_s[16]~32_combout\,
	datac => \dp|cReg|Dout~q\,
	datad => \cp|CEn~0_combout\,
	combout => \dp|cReg|Dout~0_combout\);

-- Location: FF_X35_Y20_N13
\dp|cReg|Dout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp|cReg|Dout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|cReg|Dout~q\);

-- Location: LCCOMB_X35_Y20_N26
\cp|Selector4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \cp|Selector4~3_combout\ = (\dp|ir|Dout\(1) & (((!\dp|ir|Dout\(0) & \dp|cReg|Dout~q\)))) # (!\dp|ir|Dout\(1) & ((\dp|zReg|Dout~q\) # ((!\dp|ir|Dout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ir|Dout\(1),
	datab => \dp|zReg|Dout~q\,
	datac => \dp|ir|Dout\(0),
	datad => \dp|cReg|Dout~q\,
	combout => \cp|Selector4~3_combout\);

-- Location: LCCOMB_X36_Y23_N30
\cp|Selector4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \cp|Selector4~5_combout\ = (\dp|ir|Dout\(12) & (((!\dp|ir|Dout\(13))))) # (!\dp|ir|Dout\(12) & ((\dp|ir|Dout\(14) & (!\dp|ir|Dout\(13))) # (!\dp|ir|Dout\(14) & ((\cp|Selector4~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ir|Dout\(12),
	datab => \dp|ir|Dout\(14),
	datac => \dp|ir|Dout\(13),
	datad => \cp|Selector4~3_combout\,
	combout => \cp|Selector4~5_combout\);

-- Location: LCCOMB_X36_Y23_N10
\cp|Selector4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \cp|Selector4~2_combout\ = (\cp|state.s4~q\ & ((\dp|ir|Dout\(15)) # ((!\cp|state~25_combout\ & \dp|ir|Dout\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp|state~25_combout\,
	datab => \cp|state.s4~q\,
	datac => \dp|ir|Dout\(13),
	datad => \dp|ir|Dout\(15),
	combout => \cp|Selector4~2_combout\);

-- Location: LCCOMB_X36_Y23_N8
\cp|Selector4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \cp|Selector4~4_combout\ = (\cp|Selector4~2_combout\) # ((\cp|Selector4~5_combout\ & (\cp|state.s2~q\ & !\dp|ir|Dout\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp|Selector4~5_combout\,
	datab => \cp|state.s2~q\,
	datac => \dp|ir|Dout\(15),
	datad => \cp|Selector4~2_combout\,
	combout => \cp|Selector4~4_combout\);

-- Location: FF_X36_Y23_N9
\cp|state.s4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cp|Selector4~4_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp|state.s4~q\);

-- Location: LCCOMB_X30_Y22_N16
\cp|Alu_op~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cp|Alu_op~0_combout\ = (\dp|ir|Dout\(13) & (\cp|Equal8~0_combout\ & \cp|state.s4~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ir|Dout\(13),
	datab => \cp|Equal8~0_combout\,
	datad => \cp|state.s4~q\,
	combout => \cp|Alu_op~0_combout\);

-- Location: LCCOMB_X32_Y22_N0
\dp|Alu_2[3]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Alu_2[3]~35_combout\ = (\dp|t3|Dout\(3) & ((\dp|Alu_2[15]~0_combout\) # ((\dp|t4|Dout\(3) & !\dp|Equal15~0_combout\)))) # (!\dp|t3|Dout\(3) & (\dp|t4|Dout\(3) & ((!\dp|Equal15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|t3|Dout\(3),
	datab => \dp|t4|Dout\(3),
	datac => \dp|Alu_2[15]~0_combout\,
	datad => \dp|Equal15~0_combout\,
	combout => \dp|Alu_2[3]~35_combout\);

-- Location: LCCOMB_X32_Y22_N26
\dp|aluInst|OP~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|aluInst|OP~5_combout\ = ((!\dp|Alu_2[3]~35_combout\ & ((!\dp|t2|Dout\(3)) # (!\dp|Equal16~0_combout\)))) # (!\dp|Alu_1[3]~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Equal16~0_combout\,
	datab => \dp|Alu_2[3]~35_combout\,
	datac => \dp|t2|Dout\(3),
	datad => \dp|Alu_1[3]~21_combout\,
	combout => \dp|aluInst|OP~5_combout\);

-- Location: LCCOMB_X30_Y23_N2
\dp|pc|Dout[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|pc|Dout[3]~3_combout\ = (\cp|Alu_op~0_combout\ & ((\dp|aluInst|OP~5_combout\))) # (!\cp|Alu_op~0_combout\ & (\dp|aluInst|OP_s[3]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cp|Alu_op~0_combout\,
	datac => \dp|aluInst|OP_s[3]~6_combout\,
	datad => \dp|aluInst|OP~5_combout\,
	combout => \dp|pc|Dout[3]~3_combout\);

-- Location: LCCOMB_X30_Y23_N20
\dp|pc|Dout[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|pc|Dout[3]~feeder_combout\ = \dp|pc|Dout[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dp|pc|Dout[3]~3_combout\,
	combout => \dp|pc|Dout[3]~feeder_combout\);

-- Location: FF_X30_Y23_N21
\dp|pc|Dout[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp|pc|Dout[3]~feeder_combout\,
	asdata => \dp|rf|Mux12~4_combout\,
	sload => \cp|state.s14~q\,
	ena => \cp|WideOr18~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|pc|Dout\(3));

-- Location: LCCOMB_X29_Y20_N22
\dp|RF_D3[3]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|RF_D3[3]~27_combout\ = (!\cp|M5[1]~1_combout\ & ((\dp|Equal5~0_combout\ & (\dp|t3|Dout\(3))) # (!\dp|Equal5~0_combout\ & ((\dp|pc|Dout\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp|M5[1]~1_combout\,
	datab => \dp|Equal5~0_combout\,
	datac => \dp|t3|Dout\(3),
	datad => \dp|pc|Dout\(3),
	combout => \dp|RF_D3[3]~27_combout\);

-- Location: LCCOMB_X29_Y20_N12
\dp|RF_D3[3]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|RF_D3[3]~45_combout\ = (\dp|RF_D3[3]~27_combout\) # ((\dp|t4|Dout\(3) & (\cp|state.s3~q\ & \cp|M5[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RF_D3[3]~27_combout\,
	datab => \dp|t4|Dout\(3),
	datac => \cp|state.s3~q\,
	datad => \cp|M5[1]~0_combout\,
	combout => \dp|RF_D3[3]~45_combout\);

-- Location: LCCOMB_X29_Y20_N2
\dp|rf|reg~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|rf|reg~6_combout\ = (\dp|rf|process_0~1_combout\ & ((\dp|pc|Dout\(3)))) # (!\dp|rf|process_0~1_combout\ & (\dp|RF_D3[3]~45_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RF_D3[3]~45_combout\,
	datab => \dp|pc|Dout\(3),
	datad => \dp|rf|process_0~1_combout\,
	combout => \dp|rf|reg~6_combout\);

-- Location: FF_X29_Y20_N3
\dp|rf|reg[7][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp|rf|reg~6_combout\,
	sclr => \reset~input_o\,
	ena => \dp|rf|reg[7][12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|reg[7][3]~q\);

-- Location: LCCOMB_X30_Y23_N18
\dp|T3_in[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|T3_in[3]~12_combout\ = (\cp|M11[0]~0_combout\ & (!\cp|WideOr19~0_combout\)) # (!\cp|M11[0]~0_combout\ & ((\cp|WideOr19~0_combout\ & (\dp|mem|ram_rtl_0|auto_generated|mux2|result_node[3]~7_combout\)) # (!\cp|WideOr19~0_combout\ & 
-- ((\dp|pc|Dout[3]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp|M11[0]~0_combout\,
	datab => \cp|WideOr19~0_combout\,
	datac => \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[3]~7_combout\,
	datad => \dp|pc|Dout[3]~3_combout\,
	combout => \dp|T3_in[3]~12_combout\);

-- Location: LCCOMB_X30_Y23_N30
\dp|T3_in[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|T3_in[3]~13_combout\ = (\cp|M11[0]~0_combout\ & ((\dp|T3_in[3]~12_combout\ & ((\dp|rf|Mux12~4_combout\))) # (!\dp|T3_in[3]~12_combout\ & (\dp|rf|reg[7][3]~q\)))) # (!\cp|M11[0]~0_combout\ & (((\dp|T3_in[3]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp|M11[0]~0_combout\,
	datab => \dp|rf|reg[7][3]~q\,
	datac => \dp|rf|Mux12~4_combout\,
	datad => \dp|T3_in[3]~12_combout\,
	combout => \dp|T3_in[3]~13_combout\);

-- Location: FF_X30_Y23_N31
\dp|t3|Dout[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp|T3_in[3]~13_combout\,
	ena => \cp|WideOr19~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|t3|Dout\(3));

-- Location: LCCOMB_X32_Y22_N4
\dp|Mem_din[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Mem_din[3]~3_combout\ = (\cp|state.s6~q\ & ((\dp|t2|Dout\(3)))) # (!\cp|state.s6~q\ & (\dp|t3|Dout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|t3|Dout\(3),
	datab => \cp|state.s6~q\,
	datac => \dp|t2|Dout\(3),
	combout => \dp|Mem_din[3]~3_combout\);

-- Location: M9K_X22_Y31_N0
\dp|mem|ram_rtl_0|auto_generated|ram_block1a3\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000209",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RISC1.ram0_memory_e411fb78.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "Datapath_RISC:dp|memory:mem|altsyncram:ram_rtl_0|altsyncram_ct81:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \dp|mem|ram_rtl_0|auto_generated|decode3|w_anode423w[2]~4_combout\,
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \dp|mem|ram_rtl_0|auto_generated|decode3|w_anode423w[2]~5_combout\,
	portadatain => \dp|mem|ram_rtl_0|auto_generated|ram_block1a3_PORTADATAIN_bus\,
	portaaddr => \dp|mem|ram_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \dp|mem|ram_rtl_0|auto_generated|ram_block1a3_PORTADATAOUT_bus\);

-- Location: M9K_X33_Y33_N0
\dp|mem|ram_rtl_0|auto_generated|ram_block1a19\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RISC1.ram0_memory_e411fb78.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "Datapath_RISC:dp|memory:mem|altsyncram:ram_rtl_0|altsyncram_ct81:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \dp|mem|ram_rtl_0|auto_generated|decode3|w_anode436w[2]~0_combout\,
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \dp|mem|ram_rtl_0|auto_generated|rden_decode|w_anode475w[2]~4_combout\,
	portadatain => \dp|mem|ram_rtl_0|auto_generated|ram_block1a19_PORTADATAIN_bus\,
	portaaddr => \dp|mem|ram_rtl_0|auto_generated|ram_block1a19_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \dp|mem|ram_rtl_0|auto_generated|ram_block1a19_PORTADATAOUT_bus\);

-- Location: M9K_X22_Y23_N0
\dp|mem|ram_rtl_0|auto_generated|ram_block1a35\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RISC1.ram0_memory_e411fb78.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "Datapath_RISC:dp|memory:mem|altsyncram:ram_rtl_0|altsyncram_ct81:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \dp|mem|ram_rtl_0|auto_generated|decode3|w_anode444w[2]~0_combout\,
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \dp|mem|ram_rtl_0|auto_generated|rden_decode|w_anode484w[2]~4_combout\,
	portadatain => \dp|mem|ram_rtl_0|auto_generated|ram_block1a35_PORTADATAIN_bus\,
	portaaddr => \dp|mem|ram_rtl_0|auto_generated|ram_block1a35_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \dp|mem|ram_rtl_0|auto_generated|ram_block1a35_PORTADATAOUT_bus\);

-- Location: M9K_X33_Y23_N0
\dp|mem|ram_rtl_0|auto_generated|ram_block1a51\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RISC1.ram0_memory_e411fb78.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "Datapath_RISC:dp|memory:mem|altsyncram:ram_rtl_0|altsyncram_ct81:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \dp|mem|ram_rtl_0|auto_generated|decode3|w_anode452w[2]~0_combout\,
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \dp|mem|ram_rtl_0|auto_generated|rden_decode|w_anode493w[2]~0_combout\,
	portadatain => \dp|mem|ram_rtl_0|auto_generated|ram_block1a51_PORTADATAIN_bus\,
	portaaddr => \dp|mem|ram_rtl_0|auto_generated|ram_block1a51_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \dp|mem|ram_rtl_0|auto_generated|ram_block1a51_PORTADATAOUT_bus\);

-- Location: LCCOMB_X23_Y23_N0
\dp|mem|ram_rtl_0|auto_generated|mux2|result_node[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[3]~6_combout\ = (\dp|mem|ram_rtl_0|auto_generated|address_reg_a\(1) & ((\dp|mem|ram_rtl_0|auto_generated|address_reg_a\(0) & ((\dp|mem|ram_rtl_0|auto_generated|ram_block1a51~portadataout\))) # 
-- (!\dp|mem|ram_rtl_0|auto_generated|address_reg_a\(0) & (\dp|mem|ram_rtl_0|auto_generated|ram_block1a35~portadataout\)))) # (!\dp|mem|ram_rtl_0|auto_generated|address_reg_a\(1) & (((\dp|mem|ram_rtl_0|auto_generated|address_reg_a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|mem|ram_rtl_0|auto_generated|ram_block1a35~portadataout\,
	datab => \dp|mem|ram_rtl_0|auto_generated|address_reg_a\(1),
	datac => \dp|mem|ram_rtl_0|auto_generated|ram_block1a51~portadataout\,
	datad => \dp|mem|ram_rtl_0|auto_generated|address_reg_a\(0),
	combout => \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[3]~6_combout\);

-- Location: LCCOMB_X23_Y23_N12
\dp|mem|ram_rtl_0|auto_generated|mux2|result_node[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[3]~7_combout\ = (\dp|mem|ram_rtl_0|auto_generated|address_reg_a\(1) & (((\dp|mem|ram_rtl_0|auto_generated|mux2|result_node[3]~6_combout\)))) # (!\dp|mem|ram_rtl_0|auto_generated|address_reg_a\(1) & 
-- ((\dp|mem|ram_rtl_0|auto_generated|mux2|result_node[3]~6_combout\ & ((\dp|mem|ram_rtl_0|auto_generated|ram_block1a19~portadataout\))) # (!\dp|mem|ram_rtl_0|auto_generated|mux2|result_node[3]~6_combout\ & 
-- (\dp|mem|ram_rtl_0|auto_generated|ram_block1a3~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|mem|ram_rtl_0|auto_generated|ram_block1a3~portadataout\,
	datab => \dp|mem|ram_rtl_0|auto_generated|address_reg_a\(1),
	datac => \dp|mem|ram_rtl_0|auto_generated|ram_block1a19~portadataout\,
	datad => \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[3]~6_combout\,
	combout => \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[3]~7_combout\);

-- Location: FF_X23_Y23_N13
\dp|ir|Dout[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[3]~7_combout\,
	ena => \cp|state.s1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|ir|Dout\(3));

-- Location: LCCOMB_X30_Y24_N28
\dp|t4|Dout[10]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|t4|Dout[10]~6_combout\ = (\dp|Equal8~0_combout\ & ((\dp|SE_out[14]~0_combout\))) # (!\dp|Equal8~0_combout\ & (\dp|ir|Dout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ir|Dout\(3),
	datab => \dp|Equal8~0_combout\,
	datad => \dp|SE_out[14]~0_combout\,
	combout => \dp|t4|Dout[10]~6_combout\);

-- Location: LCCOMB_X29_Y24_N4
\dp|pr_enc|d[10]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|pr_enc|d[10]~3_combout\ = (\dp|t4|Dout\(10) & ((\dp|t4|Dout\(7)) # ((\dp|t4|Dout\(9)) # (\dp|t4|Dout\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|t4|Dout\(7),
	datab => \dp|t4|Dout\(10),
	datac => \dp|t4|Dout\(9),
	datad => \dp|t4|Dout\(8),
	combout => \dp|pr_enc|d[10]~3_combout\);

-- Location: FF_X30_Y24_N29
\dp|t4|Dout[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp|t4|Dout[10]~6_combout\,
	asdata => \dp|pr_enc|d[10]~3_combout\,
	sload => \cp|M10\(1),
	ena => \cp|Selector21~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|t4|Dout\(10));

-- Location: LCCOMB_X31_Y23_N4
\dp|RF_D3[10]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|RF_D3[10]~36_combout\ = (!\cp|M5[1]~1_combout\ & ((\dp|Equal5~0_combout\ & ((\dp|t3|Dout\(10)))) # (!\dp|Equal5~0_combout\ & (\dp|pc|Dout\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|pc|Dout\(10),
	datab => \dp|t3|Dout\(10),
	datac => \dp|Equal5~0_combout\,
	datad => \cp|M5[1]~1_combout\,
	combout => \dp|RF_D3[10]~36_combout\);

-- Location: LCCOMB_X29_Y24_N20
\dp|rf|reg~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|rf|reg~35_combout\ = (!\reset~input_o\ & ((\dp|RF_D3[10]~36_combout\) # ((\cp|M5[1]~1_combout\ & \dp|t4|Dout\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp|M5[1]~1_combout\,
	datab => \dp|t4|Dout\(10),
	datac => \reset~input_o\,
	datad => \dp|RF_D3[10]~36_combout\,
	combout => \dp|rf|reg~35_combout\);

-- Location: FF_X28_Y21_N7
\dp|rf|reg[0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dp|rf|reg~35_combout\,
	sload => VCC,
	ena => \dp|rf|reg[0][10]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|reg[0][10]~q\);

-- Location: LCCOMB_X27_Y21_N26
\dp|T2_in[10]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|T2_in[10]~48_combout\ = (\dp|ir|Dout\(9) & (((\dp|rf|reg[1][10]~q\) # (\dp|ir|Dout\(10))))) # (!\dp|ir|Dout\(9) & (\dp|rf|reg[0][10]~q\ & ((!\dp|ir|Dout\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ir|Dout\(9),
	datab => \dp|rf|reg[0][10]~q\,
	datac => \dp|rf|reg[1][10]~q\,
	datad => \dp|ir|Dout\(10),
	combout => \dp|T2_in[10]~48_combout\);

-- Location: LCCOMB_X27_Y21_N20
\dp|T2_in[10]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|T2_in[10]~49_combout\ = (\dp|T2_in[10]~48_combout\ & (((\dp|rf|reg[3][10]~q\) # (!\dp|ir|Dout\(10))))) # (!\dp|T2_in[10]~48_combout\ & (\dp|rf|reg[2][10]~q\ & ((\dp|ir|Dout\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|T2_in[10]~48_combout\,
	datab => \dp|rf|reg[2][10]~q\,
	datac => \dp|rf|reg[3][10]~q\,
	datad => \dp|ir|Dout\(10),
	combout => \dp|T2_in[10]~49_combout\);

-- Location: LCCOMB_X26_Y21_N10
\dp|T2_in[10]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|T2_in[10]~50_combout\ = (\dp|ir|Dout\(9) & (((\dp|ir|Dout\(10))))) # (!\dp|ir|Dout\(9) & ((\dp|ir|Dout\(10) & ((\dp|rf|reg[6][10]~q\))) # (!\dp|ir|Dout\(10) & (\dp|rf|reg[4][10]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ir|Dout\(9),
	datab => \dp|rf|reg[4][10]~q\,
	datac => \dp|rf|reg[6][10]~q\,
	datad => \dp|ir|Dout\(10),
	combout => \dp|T2_in[10]~50_combout\);

-- Location: LCCOMB_X32_Y21_N20
\dp|T2_in[10]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|T2_in[10]~51_combout\ = (\dp|ir|Dout\(9) & ((\dp|T2_in[10]~50_combout\ & ((\dp|rf|reg[7][10]~q\))) # (!\dp|T2_in[10]~50_combout\ & (\dp|rf|reg[5][10]~q\)))) # (!\dp|ir|Dout\(9) & (((\dp|T2_in[10]~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|reg[5][10]~q\,
	datab => \dp|rf|reg[7][10]~q\,
	datac => \dp|ir|Dout\(9),
	datad => \dp|T2_in[10]~50_combout\,
	combout => \dp|T2_in[10]~51_combout\);

-- Location: LCCOMB_X32_Y21_N10
\dp|t2|Dout[10]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|t2|Dout[10]~10_combout\ = (\dp|ir|Dout\(11) & ((\dp|T2_in[10]~51_combout\))) # (!\dp|ir|Dout\(11) & (\dp|T2_in[10]~49_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|T2_in[10]~49_combout\,
	datab => \dp|ir|Dout\(11),
	datad => \dp|T2_in[10]~51_combout\,
	combout => \dp|t2|Dout[10]~10_combout\);

-- Location: FF_X32_Y21_N11
\dp|t2|Dout[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp|t2|Dout[10]~10_combout\,
	asdata => \dp|pc|Dout[10]~10_combout\,
	sload => \cp|M9~0_combout\,
	ena => \cp|WideOr20~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|t2|Dout\(10));

-- Location: LCCOMB_X34_Y21_N22
\dp|aluInst|OP~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|aluInst|OP~12_combout\ = ((!\dp|Alu_2[10]~7_combout\ & ((!\dp|Equal16~0_combout\) # (!\dp|t2|Dout\(10))))) # (!\dp|Alu_1[10]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|t2|Dout\(10),
	datab => \dp|Equal16~0_combout\,
	datac => \dp|Alu_1[10]~7_combout\,
	datad => \dp|Alu_2[10]~7_combout\,
	combout => \dp|aluInst|OP~12_combout\);

-- Location: LCCOMB_X34_Y21_N20
\dp|pc|Dout[10]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|pc|Dout[10]~10_combout\ = (\cp|Alu_op~0_combout\ & (\dp|aluInst|OP~12_combout\)) # (!\cp|Alu_op~0_combout\ & ((\dp|aluInst|OP_s[10]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|aluInst|OP~12_combout\,
	datab => \dp|aluInst|OP_s[10]~20_combout\,
	datad => \cp|Alu_op~0_combout\,
	combout => \dp|pc|Dout[10]~10_combout\);

-- Location: FF_X34_Y21_N21
\dp|pc|Dout[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp|pc|Dout[10]~10_combout\,
	asdata => \dp|rf|Mux5~4_combout\,
	sload => \cp|state.s14~q\,
	ena => \cp|WideOr18~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|pc|Dout\(10));

-- Location: LCCOMB_X29_Y20_N30
\dp|RF_D3[10]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|RF_D3[10]~50_combout\ = (\dp|RF_D3[10]~36_combout\) # ((\cp|state.s3~q\ & (\dp|t4|Dout\(10) & \cp|M5[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp|state.s3~q\,
	datab => \dp|t4|Dout\(10),
	datac => \dp|RF_D3[10]~36_combout\,
	datad => \cp|M5[1]~0_combout\,
	combout => \dp|RF_D3[10]~50_combout\);

-- Location: LCCOMB_X29_Y20_N28
\dp|rf|reg~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|rf|reg~13_combout\ = (\dp|rf|process_0~1_combout\ & (\dp|pc|Dout\(10))) # (!\dp|rf|process_0~1_combout\ & ((\dp|RF_D3[10]~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|pc|Dout\(10),
	datac => \dp|RF_D3[10]~50_combout\,
	datad => \dp|rf|process_0~1_combout\,
	combout => \dp|rf|reg~13_combout\);

-- Location: FF_X29_Y20_N29
\dp|rf|reg[7][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp|rf|reg~13_combout\,
	sclr => \reset~input_o\,
	ena => \dp|rf|reg[7][12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|reg[7][10]~q\);

-- Location: LCCOMB_X32_Y21_N26
\dp|T3_in[10]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|T3_in[10]~26_combout\ = (\cp|M11[0]~0_combout\ & ((\dp|rf|reg[7][10]~q\) # ((!\cp|WideOr19~0_combout\)))) # (!\cp|M11[0]~0_combout\ & (((\cp|WideOr19~0_combout\ & \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[10]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp|M11[0]~0_combout\,
	datab => \dp|rf|reg[7][10]~q\,
	datac => \cp|WideOr19~0_combout\,
	datad => \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[10]~21_combout\,
	combout => \dp|T3_in[10]~26_combout\);

-- Location: LCCOMB_X32_Y21_N8
\dp|T3_in[10]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|T3_in[10]~27_combout\ = (\dp|T3_in[10]~26_combout\ & ((\cp|WideOr19~0_combout\) # ((\dp|rf|Mux5~4_combout\)))) # (!\dp|T3_in[10]~26_combout\ & (!\cp|WideOr19~0_combout\ & (\dp|pc|Dout[10]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|T3_in[10]~26_combout\,
	datab => \cp|WideOr19~0_combout\,
	datac => \dp|pc|Dout[10]~10_combout\,
	datad => \dp|rf|Mux5~4_combout\,
	combout => \dp|T3_in[10]~27_combout\);

-- Location: FF_X32_Y21_N9
\dp|t3|Dout[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp|T3_in[10]~27_combout\,
	ena => \cp|WideOr19~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|t3|Dout\(10));

-- Location: LCCOMB_X31_Y23_N16
\dp|Mem_din[10]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Mem_din[10]~10_combout\ = (\cp|state.s6~q\ & ((\dp|t2|Dout\(10)))) # (!\cp|state.s6~q\ & (\dp|t3|Dout\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cp|state.s6~q\,
	datac => \dp|t3|Dout\(10),
	datad => \dp|t2|Dout\(10),
	combout => \dp|Mem_din[10]~10_combout\);

-- Location: M9K_X22_Y4_N0
\dp|mem|ram_rtl_0|auto_generated|ram_block1a26\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RISC1.ram0_memory_e411fb78.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "Datapath_RISC:dp|memory:mem|altsyncram:ram_rtl_0|altsyncram_ct81:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 10,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \dp|mem|ram_rtl_0|auto_generated|decode3|w_anode436w[2]~0_combout\,
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \dp|mem|ram_rtl_0|auto_generated|rden_decode|w_anode475w[2]~4_combout\,
	portadatain => \dp|mem|ram_rtl_0|auto_generated|ram_block1a26_PORTADATAIN_bus\,
	portaaddr => \dp|mem|ram_rtl_0|auto_generated|ram_block1a26_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \dp|mem|ram_rtl_0|auto_generated|ram_block1a26_PORTADATAOUT_bus\);

-- Location: M9K_X33_Y4_N0
\dp|mem|ram_rtl_0|auto_generated|ram_block1a58\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RISC1.ram0_memory_e411fb78.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "Datapath_RISC:dp|memory:mem|altsyncram:ram_rtl_0|altsyncram_ct81:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 10,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \dp|mem|ram_rtl_0|auto_generated|decode3|w_anode452w[2]~0_combout\,
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \dp|mem|ram_rtl_0|auto_generated|rden_decode|w_anode493w[2]~0_combout\,
	portadatain => \dp|mem|ram_rtl_0|auto_generated|ram_block1a58_PORTADATAIN_bus\,
	portaaddr => \dp|mem|ram_rtl_0|auto_generated|ram_block1a58_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \dp|mem|ram_rtl_0|auto_generated|ram_block1a58_PORTADATAOUT_bus\);

-- Location: M9K_X33_Y11_N0
\dp|mem|ram_rtl_0|auto_generated|ram_block1a42\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RISC1.ram0_memory_e411fb78.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "Datapath_RISC:dp|memory:mem|altsyncram:ram_rtl_0|altsyncram_ct81:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 10,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \dp|mem|ram_rtl_0|auto_generated|decode3|w_anode444w[2]~0_combout\,
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \dp|mem|ram_rtl_0|auto_generated|rden_decode|w_anode484w[2]~4_combout\,
	portadatain => \dp|mem|ram_rtl_0|auto_generated|ram_block1a42_PORTADATAIN_bus\,
	portaaddr => \dp|mem|ram_rtl_0|auto_generated|ram_block1a42_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \dp|mem|ram_rtl_0|auto_generated|ram_block1a42_PORTADATAOUT_bus\);

-- Location: LCCOMB_X32_Y17_N14
\dp|mem|ram_rtl_0|auto_generated|mux2|result_node[10]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[10]~20_combout\ = (\dp|mem|ram_rtl_0|auto_generated|address_reg_a\(0) & ((\dp|mem|ram_rtl_0|auto_generated|ram_block1a58~portadataout\) # ((!\dp|mem|ram_rtl_0|auto_generated|address_reg_a\(1))))) # 
-- (!\dp|mem|ram_rtl_0|auto_generated|address_reg_a\(0) & (((\dp|mem|ram_rtl_0|auto_generated|address_reg_a\(1) & \dp|mem|ram_rtl_0|auto_generated|ram_block1a42~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|mem|ram_rtl_0|auto_generated|address_reg_a\(0),
	datab => \dp|mem|ram_rtl_0|auto_generated|ram_block1a58~portadataout\,
	datac => \dp|mem|ram_rtl_0|auto_generated|address_reg_a\(1),
	datad => \dp|mem|ram_rtl_0|auto_generated|ram_block1a42~portadataout\,
	combout => \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[10]~20_combout\);

-- Location: M9K_X33_Y5_N0
\dp|mem|ram_rtl_0|auto_generated|ram_block1a10\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000060",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RISC1.ram0_memory_e411fb78.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "Datapath_RISC:dp|memory:mem|altsyncram:ram_rtl_0|altsyncram_ct81:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 10,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \dp|mem|ram_rtl_0|auto_generated|decode3|w_anode423w[2]~4_combout\,
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \dp|mem|ram_rtl_0|auto_generated|decode3|w_anode423w[2]~5_combout\,
	portadatain => \dp|mem|ram_rtl_0|auto_generated|ram_block1a10_PORTADATAIN_bus\,
	portaaddr => \dp|mem|ram_rtl_0|auto_generated|ram_block1a10_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \dp|mem|ram_rtl_0|auto_generated|ram_block1a10_PORTADATAOUT_bus\);

-- Location: LCCOMB_X32_Y17_N24
\dp|mem|ram_rtl_0|auto_generated|mux2|result_node[10]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[10]~21_combout\ = (\dp|mem|ram_rtl_0|auto_generated|mux2|result_node[10]~20_combout\ & ((\dp|mem|ram_rtl_0|auto_generated|ram_block1a26~portadataout\) # 
-- ((\dp|mem|ram_rtl_0|auto_generated|address_reg_a\(1))))) # (!\dp|mem|ram_rtl_0|auto_generated|mux2|result_node[10]~20_combout\ & (((!\dp|mem|ram_rtl_0|auto_generated|address_reg_a\(1) & \dp|mem|ram_rtl_0|auto_generated|ram_block1a10~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|mem|ram_rtl_0|auto_generated|ram_block1a26~portadataout\,
	datab => \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[10]~20_combout\,
	datac => \dp|mem|ram_rtl_0|auto_generated|address_reg_a\(1),
	datad => \dp|mem|ram_rtl_0|auto_generated|ram_block1a10~portadataout\,
	combout => \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[10]~21_combout\);

-- Location: FF_X32_Y17_N25
\dp|ir|Dout[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[10]~21_combout\,
	ena => \cp|state.s1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|ir|Dout\(10));

-- Location: LCCOMB_X26_Y21_N2
\dp|T2_in[12]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|T2_in[12]~58_combout\ = (\dp|ir|Dout\(9) & (\dp|ir|Dout\(10))) # (!\dp|ir|Dout\(9) & ((\dp|ir|Dout\(10) & (\dp|rf|reg[6][12]~q\)) # (!\dp|ir|Dout\(10) & ((\dp|rf|reg[4][12]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ir|Dout\(9),
	datab => \dp|ir|Dout\(10),
	datac => \dp|rf|reg[6][12]~q\,
	datad => \dp|rf|reg[4][12]~q\,
	combout => \dp|T2_in[12]~58_combout\);

-- Location: LCCOMB_X26_Y21_N30
\dp|T2_in[12]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|T2_in[12]~59_combout\ = (\dp|T2_in[12]~58_combout\ & (((\dp|rf|reg[7][12]~q\) # (!\dp|ir|Dout\(9))))) # (!\dp|T2_in[12]~58_combout\ & (\dp|rf|reg[5][12]~q\ & (\dp|ir|Dout\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|T2_in[12]~58_combout\,
	datab => \dp|rf|reg[5][12]~q\,
	datac => \dp|ir|Dout\(9),
	datad => \dp|rf|reg[7][12]~q\,
	combout => \dp|T2_in[12]~59_combout\);

-- Location: LCCOMB_X29_Y21_N28
\dp|T2_in[12]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|T2_in[12]~56_combout\ = (\dp|ir|Dout\(9) & (((\dp|rf|reg[1][12]~q\) # (\dp|ir|Dout\(10))))) # (!\dp|ir|Dout\(9) & (\dp|rf|reg[0][12]~q\ & ((!\dp|ir|Dout\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|reg[0][12]~q\,
	datab => \dp|ir|Dout\(9),
	datac => \dp|rf|reg[1][12]~q\,
	datad => \dp|ir|Dout\(10),
	combout => \dp|T2_in[12]~56_combout\);

-- Location: LCCOMB_X29_Y24_N2
\dp|T2_in[12]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|T2_in[12]~57_combout\ = (\dp|ir|Dout\(10) & ((\dp|T2_in[12]~56_combout\ & ((\dp|rf|reg[3][12]~q\))) # (!\dp|T2_in[12]~56_combout\ & (\dp|rf|reg[2][12]~q\)))) # (!\dp|ir|Dout\(10) & (((\dp|T2_in[12]~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|reg[2][12]~q\,
	datab => \dp|ir|Dout\(10),
	datac => \dp|rf|reg[3][12]~q\,
	datad => \dp|T2_in[12]~56_combout\,
	combout => \dp|T2_in[12]~57_combout\);

-- Location: LCCOMB_X30_Y20_N24
\dp|t2|Dout[12]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|t2|Dout[12]~12_combout\ = (\dp|ir|Dout\(11) & (\dp|T2_in[12]~59_combout\)) # (!\dp|ir|Dout\(11) & ((\dp|T2_in[12]~57_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|T2_in[12]~59_combout\,
	datab => \dp|ir|Dout\(11),
	datad => \dp|T2_in[12]~57_combout\,
	combout => \dp|t2|Dout[12]~12_combout\);

-- Location: FF_X30_Y20_N25
\dp|t2|Dout[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp|t2|Dout[12]~12_combout\,
	asdata => \dp|pc|Dout[12]~12_combout\,
	sload => \cp|M9~0_combout\,
	ena => \cp|WideOr20~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|t2|Dout\(12));

-- Location: LCCOMB_X34_Y20_N16
\dp|Mem_din[12]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Mem_din[12]~12_combout\ = (\cp|state.s6~q\ & (\dp|t2|Dout\(12))) # (!\cp|state.s6~q\ & ((\dp|t3|Dout\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp|state.s6~q\,
	datac => \dp|t2|Dout\(12),
	datad => \dp|t3|Dout\(12),
	combout => \dp|Mem_din[12]~12_combout\);

-- Location: M9K_X33_Y19_N0
\dp|mem|ram_rtl_0|auto_generated|ram_block1a28\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RISC1.ram0_memory_e411fb78.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "Datapath_RISC:dp|memory:mem|altsyncram:ram_rtl_0|altsyncram_ct81:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 12,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \dp|mem|ram_rtl_0|auto_generated|decode3|w_anode436w[2]~0_combout\,
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \dp|mem|ram_rtl_0|auto_generated|rden_decode|w_anode475w[2]~4_combout\,
	portadatain => \dp|mem|ram_rtl_0|auto_generated|ram_block1a28_PORTADATAIN_bus\,
	portaaddr => \dp|mem|ram_rtl_0|auto_generated|ram_block1a28_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \dp|mem|ram_rtl_0|auto_generated|ram_block1a28_PORTADATAOUT_bus\);

-- Location: M9K_X33_Y24_N0
\dp|mem|ram_rtl_0|auto_generated|ram_block1a60\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RISC1.ram0_memory_e411fb78.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "Datapath_RISC:dp|memory:mem|altsyncram:ram_rtl_0|altsyncram_ct81:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 12,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \dp|mem|ram_rtl_0|auto_generated|decode3|w_anode452w[2]~0_combout\,
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \dp|mem|ram_rtl_0|auto_generated|rden_decode|w_anode493w[2]~0_combout\,
	portadatain => \dp|mem|ram_rtl_0|auto_generated|ram_block1a60_PORTADATAIN_bus\,
	portaaddr => \dp|mem|ram_rtl_0|auto_generated|ram_block1a60_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \dp|mem|ram_rtl_0|auto_generated|ram_block1a60_PORTADATAOUT_bus\);

-- Location: M9K_X33_Y16_N0
\dp|mem|ram_rtl_0|auto_generated|ram_block1a44\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RISC1.ram0_memory_e411fb78.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "Datapath_RISC:dp|memory:mem|altsyncram:ram_rtl_0|altsyncram_ct81:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 12,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \dp|mem|ram_rtl_0|auto_generated|decode3|w_anode444w[2]~0_combout\,
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \dp|mem|ram_rtl_0|auto_generated|rden_decode|w_anode484w[2]~4_combout\,
	portadatain => \dp|mem|ram_rtl_0|auto_generated|ram_block1a44_PORTADATAIN_bus\,
	portaaddr => \dp|mem|ram_rtl_0|auto_generated|ram_block1a44_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \dp|mem|ram_rtl_0|auto_generated|ram_block1a44_PORTADATAOUT_bus\);

-- Location: LCCOMB_X34_Y23_N26
\dp|mem|ram_rtl_0|auto_generated|mux2|result_node[12]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[12]~24_combout\ = (\dp|mem|ram_rtl_0|auto_generated|address_reg_a\(1) & ((\dp|mem|ram_rtl_0|auto_generated|address_reg_a\(0) & (\dp|mem|ram_rtl_0|auto_generated|ram_block1a60~portadataout\)) # 
-- (!\dp|mem|ram_rtl_0|auto_generated|address_reg_a\(0) & ((\dp|mem|ram_rtl_0|auto_generated|ram_block1a44~portadataout\))))) # (!\dp|mem|ram_rtl_0|auto_generated|address_reg_a\(1) & (((\dp|mem|ram_rtl_0|auto_generated|address_reg_a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|mem|ram_rtl_0|auto_generated|ram_block1a60~portadataout\,
	datab => \dp|mem|ram_rtl_0|auto_generated|address_reg_a\(1),
	datac => \dp|mem|ram_rtl_0|auto_generated|address_reg_a\(0),
	datad => \dp|mem|ram_rtl_0|auto_generated|ram_block1a44~portadataout\,
	combout => \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[12]~24_combout\);

-- Location: M9K_X33_Y22_N0
\dp|mem|ram_rtl_0|auto_generated|ram_block1a12\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000273",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RISC1.ram0_memory_e411fb78.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "Datapath_RISC:dp|memory:mem|altsyncram:ram_rtl_0|altsyncram_ct81:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 12,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \dp|mem|ram_rtl_0|auto_generated|decode3|w_anode423w[2]~4_combout\,
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \dp|mem|ram_rtl_0|auto_generated|decode3|w_anode423w[2]~5_combout\,
	portadatain => \dp|mem|ram_rtl_0|auto_generated|ram_block1a12_PORTADATAIN_bus\,
	portaaddr => \dp|mem|ram_rtl_0|auto_generated|ram_block1a12_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \dp|mem|ram_rtl_0|auto_generated|ram_block1a12_PORTADATAOUT_bus\);

-- Location: LCCOMB_X34_Y23_N18
\dp|mem|ram_rtl_0|auto_generated|mux2|result_node[12]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[12]~25_combout\ = (\dp|mem|ram_rtl_0|auto_generated|address_reg_a\(1) & (((\dp|mem|ram_rtl_0|auto_generated|mux2|result_node[12]~24_combout\)))) # (!\dp|mem|ram_rtl_0|auto_generated|address_reg_a\(1) & 
-- ((\dp|mem|ram_rtl_0|auto_generated|mux2|result_node[12]~24_combout\ & (\dp|mem|ram_rtl_0|auto_generated|ram_block1a28~portadataout\)) # (!\dp|mem|ram_rtl_0|auto_generated|mux2|result_node[12]~24_combout\ & 
-- ((\dp|mem|ram_rtl_0|auto_generated|ram_block1a12~portadataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|mem|ram_rtl_0|auto_generated|ram_block1a28~portadataout\,
	datab => \dp|mem|ram_rtl_0|auto_generated|address_reg_a\(1),
	datac => \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[12]~24_combout\,
	datad => \dp|mem|ram_rtl_0|auto_generated|ram_block1a12~portadataout\,
	combout => \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[12]~25_combout\);

-- Location: FF_X34_Y23_N19
\dp|ir|Dout[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[12]~25_combout\,
	ena => \cp|state.s1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|ir|Dout\(12));

-- Location: LCCOMB_X36_Y23_N12
\cp|Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \cp|Selector3~1_combout\ = (\dp|ir|Dout\(13) & (\dp|ir|Dout\(12) & ((\cp|state.s2~q\)))) # (!\dp|ir|Dout\(13) & (((\cp|state.s4~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ir|Dout\(12),
	datab => \dp|ir|Dout\(13),
	datac => \cp|state.s4~q\,
	datad => \cp|state.s2~q\,
	combout => \cp|Selector3~1_combout\);

-- Location: LCCOMB_X36_Y23_N14
\cp|Selector3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \cp|Selector3~2_combout\ = (\cp|Selector3~1_combout\ & ((\dp|ir|Dout\(15) & (\cp|state.s3~q\)) # (!\dp|ir|Dout\(15) & ((!\dp|ir|Dout\(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ir|Dout\(15),
	datab => \cp|state.s3~q\,
	datac => \dp|ir|Dout\(14),
	datad => \cp|Selector3~1_combout\,
	combout => \cp|Selector3~2_combout\);

-- Location: LCCOMB_X31_Y23_N8
\cp|Selector3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \cp|Selector3~3_combout\ = (\cp|Selector3~2_combout\) # ((\cp|state.s5~q\) # ((\dp|ir|Dout\(13) & \dp|Equal16~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp|Selector3~2_combout\,
	datab => \dp|ir|Dout\(13),
	datac => \dp|Equal16~0_combout\,
	datad => \cp|state.s5~q\,
	combout => \cp|Selector3~3_combout\);

-- Location: FF_X31_Y23_N9
\cp|state.s3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cp|Selector3~3_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp|state.s3~q\);

-- Location: LCCOMB_X29_Y20_N10
\dp|RF_D3[0]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|RF_D3[0]~43_combout\ = (\dp|RF_D3[0]~23_combout\) # ((\cp|state.s3~q\ & (\dp|t4|Dout\(0) & \cp|M5[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp|state.s3~q\,
	datab => \dp|t4|Dout\(0),
	datac => \dp|RF_D3[0]~23_combout\,
	datad => \cp|M5[1]~0_combout\,
	combout => \dp|RF_D3[0]~43_combout\);

-- Location: LCCOMB_X29_Y20_N24
\dp|rf|reg~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|rf|reg~3_combout\ = (\dp|rf|process_0~1_combout\ & ((\dp|pc|Dout\(0)))) # (!\dp|rf|process_0~1_combout\ & (\dp|RF_D3[0]~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RF_D3[0]~43_combout\,
	datac => \dp|pc|Dout\(0),
	datad => \dp|rf|process_0~1_combout\,
	combout => \dp|rf|reg~3_combout\);

-- Location: FF_X29_Y20_N25
\dp|rf|reg[7][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp|rf|reg~3_combout\,
	sclr => \reset~input_o\,
	ena => \dp|rf|reg[7][12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|reg[7][0]~q\);

-- Location: LCCOMB_X28_Y19_N30
\dp|Mem_A[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Mem_A[0]~4_combout\ = (!\dp|Equal1~0_combout\ & ((\dp|Equal0~0_combout\ & ((\dp|t3|Dout\(0)))) # (!\dp|Equal0~0_combout\ & (\dp|rf|reg[7][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|reg[7][0]~q\,
	datab => \dp|Equal0~0_combout\,
	datac => \dp|t3|Dout\(0),
	datad => \dp|Equal1~0_combout\,
	combout => \dp|Mem_A[0]~4_combout\);

-- Location: LCCOMB_X28_Y19_N0
\dp|Mem_A[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Mem_A[0]~5_combout\ = (\dp|Mem_A[0]~4_combout\) # ((\dp|t2|Dout\(0) & \dp|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Mem_A[0]~4_combout\,
	datab => \dp|t2|Dout\(0),
	datad => \dp|Equal1~0_combout\,
	combout => \dp|Mem_A[0]~5_combout\);

-- Location: M9K_X33_Y15_N0
\dp|mem|ram_rtl_0|auto_generated|ram_block1a13\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000029B",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RISC1.ram0_memory_e411fb78.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "Datapath_RISC:dp|memory:mem|altsyncram:ram_rtl_0|altsyncram_ct81:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 13,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \dp|mem|ram_rtl_0|auto_generated|decode3|w_anode423w[2]~4_combout\,
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \dp|mem|ram_rtl_0|auto_generated|decode3|w_anode423w[2]~5_combout\,
	portadatain => \dp|mem|ram_rtl_0|auto_generated|ram_block1a13_PORTADATAIN_bus\,
	portaaddr => \dp|mem|ram_rtl_0|auto_generated|ram_block1a13_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \dp|mem|ram_rtl_0|auto_generated|ram_block1a13_PORTADATAOUT_bus\);

-- Location: M9K_X33_Y9_N0
\dp|mem|ram_rtl_0|auto_generated|ram_block1a61\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RISC1.ram0_memory_e411fb78.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "Datapath_RISC:dp|memory:mem|altsyncram:ram_rtl_0|altsyncram_ct81:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 13,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \dp|mem|ram_rtl_0|auto_generated|decode3|w_anode452w[2]~0_combout\,
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \dp|mem|ram_rtl_0|auto_generated|rden_decode|w_anode493w[2]~0_combout\,
	portadatain => \dp|mem|ram_rtl_0|auto_generated|ram_block1a61_PORTADATAIN_bus\,
	portaaddr => \dp|mem|ram_rtl_0|auto_generated|ram_block1a61_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \dp|mem|ram_rtl_0|auto_generated|ram_block1a61_PORTADATAOUT_bus\);

-- Location: M9K_X33_Y10_N0
\dp|mem|ram_rtl_0|auto_generated|ram_block1a45\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RISC1.ram0_memory_e411fb78.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "Datapath_RISC:dp|memory:mem|altsyncram:ram_rtl_0|altsyncram_ct81:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 13,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \dp|mem|ram_rtl_0|auto_generated|decode3|w_anode444w[2]~0_combout\,
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \dp|mem|ram_rtl_0|auto_generated|rden_decode|w_anode484w[2]~4_combout\,
	portadatain => \dp|mem|ram_rtl_0|auto_generated|ram_block1a45_PORTADATAIN_bus\,
	portaaddr => \dp|mem|ram_rtl_0|auto_generated|ram_block1a45_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \dp|mem|ram_rtl_0|auto_generated|ram_block1a45_PORTADATAOUT_bus\);

-- Location: LCCOMB_X32_Y17_N0
\dp|mem|ram_rtl_0|auto_generated|mux2|result_node[13]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[13]~26_combout\ = (\dp|mem|ram_rtl_0|auto_generated|address_reg_a\(0) & ((\dp|mem|ram_rtl_0|auto_generated|ram_block1a61~portadataout\) # ((!\dp|mem|ram_rtl_0|auto_generated|address_reg_a\(1))))) # 
-- (!\dp|mem|ram_rtl_0|auto_generated|address_reg_a\(0) & (((\dp|mem|ram_rtl_0|auto_generated|address_reg_a\(1) & \dp|mem|ram_rtl_0|auto_generated|ram_block1a45~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|mem|ram_rtl_0|auto_generated|address_reg_a\(0),
	datab => \dp|mem|ram_rtl_0|auto_generated|ram_block1a61~portadataout\,
	datac => \dp|mem|ram_rtl_0|auto_generated|address_reg_a\(1),
	datad => \dp|mem|ram_rtl_0|auto_generated|ram_block1a45~portadataout\,
	combout => \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[13]~26_combout\);

-- Location: M9K_X33_Y1_N0
\dp|mem|ram_rtl_0|auto_generated|ram_block1a29\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RISC1.ram0_memory_e411fb78.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "Datapath_RISC:dp|memory:mem|altsyncram:ram_rtl_0|altsyncram_ct81:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 13,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \dp|mem|ram_rtl_0|auto_generated|decode3|w_anode436w[2]~0_combout\,
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \dp|mem|ram_rtl_0|auto_generated|rden_decode|w_anode475w[2]~4_combout\,
	portadatain => \dp|mem|ram_rtl_0|auto_generated|ram_block1a29_PORTADATAIN_bus\,
	portaaddr => \dp|mem|ram_rtl_0|auto_generated|ram_block1a29_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \dp|mem|ram_rtl_0|auto_generated|ram_block1a29_PORTADATAOUT_bus\);

-- Location: LCCOMB_X34_Y23_N4
\dp|mem|ram_rtl_0|auto_generated|mux2|result_node[13]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[13]~27_combout\ = (\dp|mem|ram_rtl_0|auto_generated|mux2|result_node[13]~26_combout\ & (((\dp|mem|ram_rtl_0|auto_generated|address_reg_a\(1)) # 
-- (\dp|mem|ram_rtl_0|auto_generated|ram_block1a29~portadataout\)))) # (!\dp|mem|ram_rtl_0|auto_generated|mux2|result_node[13]~26_combout\ & (\dp|mem|ram_rtl_0|auto_generated|ram_block1a13~portadataout\ & 
-- (!\dp|mem|ram_rtl_0|auto_generated|address_reg_a\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|mem|ram_rtl_0|auto_generated|ram_block1a13~portadataout\,
	datab => \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[13]~26_combout\,
	datac => \dp|mem|ram_rtl_0|auto_generated|address_reg_a\(1),
	datad => \dp|mem|ram_rtl_0|auto_generated|ram_block1a29~portadataout\,
	combout => \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[13]~27_combout\);

-- Location: FF_X34_Y23_N5
\dp|ir|Dout[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[13]~27_combout\,
	ena => \cp|state.s1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|ir|Dout\(13));

-- Location: LCCOMB_X32_Y23_N18
\cp|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cp|Selector3~0_combout\ = (!\dp|ir|Dout\(13) & \cp|state.s4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dp|ir|Dout\(13),
	datad => \cp|state.s4~q\,
	combout => \cp|Selector3~0_combout\);

-- Location: LCCOMB_X31_Y23_N0
\cp|Equal8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \cp|Equal8~3_combout\ = (!\dp|ir|Dout\(15) & !\dp|ir|Dout\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dp|ir|Dout\(15),
	datad => \dp|ir|Dout\(12),
	combout => \cp|Equal8~3_combout\);

-- Location: LCCOMB_X31_Y23_N12
\cp|state~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \cp|state~22_combout\ = (!\reset~input_o\ & (\cp|Selector3~0_combout\ & (\dp|ir|Dout\(14) & \cp|Equal8~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \cp|Selector3~0_combout\,
	datac => \dp|ir|Dout\(14),
	datad => \cp|Equal8~3_combout\,
	combout => \cp|state~22_combout\);

-- Location: FF_X31_Y23_N13
\cp|state.s5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cp|state~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp|state.s5~q\);

-- Location: LCCOMB_X30_Y18_N24
\dp|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Equal0~0_combout\ = (\cp|Selector16~2_combout\ & ((\cp|state.s5~q\) # ((\cp|state.s6~q\) # (\cp|state.s1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp|Selector16~2_combout\,
	datab => \cp|state.s5~q\,
	datac => \cp|state.s6~q\,
	datad => \cp|state.s1~q\,
	combout => \dp|Equal0~0_combout\);

-- Location: LCCOMB_X32_Y17_N20
\dp|Mem_A[14]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Mem_A[14]~2_combout\ = (!\dp|Equal1~0_combout\ & ((\dp|Equal0~0_combout\ & (\dp|t3|Dout\(14))) # (!\dp|Equal0~0_combout\ & ((\dp|rf|reg[7][14]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|t3|Dout\(14),
	datab => \dp|Equal0~0_combout\,
	datac => \dp|Equal1~0_combout\,
	datad => \dp|rf|reg[7][14]~q\,
	combout => \dp|Mem_A[14]~2_combout\);

-- Location: LCCOMB_X32_Y17_N4
\dp|mem|ram_rtl_0|auto_generated|decode3|w_anode423w[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|mem|ram_rtl_0|auto_generated|decode3|w_anode423w[2]~5_combout\ = (!\dp|Mem_A[13]~1_combout\ & (!\dp|Mem_A[14]~2_combout\ & ((!\dp|Equal1~0_combout\) # (!\dp|t2|Dout\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Mem_A[13]~1_combout\,
	datab => \dp|t2|Dout\(14),
	datac => \dp|Equal1~0_combout\,
	datad => \dp|Mem_A[14]~2_combout\,
	combout => \dp|mem|ram_rtl_0|auto_generated|decode3|w_anode423w[2]~5_combout\);

-- Location: LCCOMB_X35_Y21_N14
\dp|Mem_din[14]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Mem_din[14]~14_combout\ = (\cp|state.s6~q\ & ((\dp|t2|Dout\(14)))) # (!\cp|state.s6~q\ & (\dp|t3|Dout\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cp|state.s6~q\,
	datac => \dp|t3|Dout\(14),
	datad => \dp|t2|Dout\(14),
	combout => \dp|Mem_din[14]~14_combout\);

-- Location: M9K_X33_Y30_N0
\dp|mem|ram_rtl_0|auto_generated|ram_block1a14\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002E0",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RISC1.ram0_memory_e411fb78.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "Datapath_RISC:dp|memory:mem|altsyncram:ram_rtl_0|altsyncram_ct81:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 14,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \dp|mem|ram_rtl_0|auto_generated|decode3|w_anode423w[2]~4_combout\,
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \dp|mem|ram_rtl_0|auto_generated|decode3|w_anode423w[2]~5_combout\,
	portadatain => \dp|mem|ram_rtl_0|auto_generated|ram_block1a14_PORTADATAIN_bus\,
	portaaddr => \dp|mem|ram_rtl_0|auto_generated|ram_block1a14_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \dp|mem|ram_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\);

-- Location: M9K_X33_Y29_N0
\dp|mem|ram_rtl_0|auto_generated|ram_block1a30\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RISC1.ram0_memory_e411fb78.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "Datapath_RISC:dp|memory:mem|altsyncram:ram_rtl_0|altsyncram_ct81:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 14,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \dp|mem|ram_rtl_0|auto_generated|decode3|w_anode436w[2]~0_combout\,
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \dp|mem|ram_rtl_0|auto_generated|rden_decode|w_anode475w[2]~4_combout\,
	portadatain => \dp|mem|ram_rtl_0|auto_generated|ram_block1a30_PORTADATAIN_bus\,
	portaaddr => \dp|mem|ram_rtl_0|auto_generated|ram_block1a30_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \dp|mem|ram_rtl_0|auto_generated|ram_block1a30_PORTADATAOUT_bus\);

-- Location: M9K_X33_Y21_N0
\dp|mem|ram_rtl_0|auto_generated|ram_block1a46\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RISC1.ram0_memory_e411fb78.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "Datapath_RISC:dp|memory:mem|altsyncram:ram_rtl_0|altsyncram_ct81:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 14,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \dp|mem|ram_rtl_0|auto_generated|decode3|w_anode444w[2]~0_combout\,
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \dp|mem|ram_rtl_0|auto_generated|rden_decode|w_anode484w[2]~4_combout\,
	portadatain => \dp|mem|ram_rtl_0|auto_generated|ram_block1a46_PORTADATAIN_bus\,
	portaaddr => \dp|mem|ram_rtl_0|auto_generated|ram_block1a46_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \dp|mem|ram_rtl_0|auto_generated|ram_block1a46_PORTADATAOUT_bus\);

-- Location: M9K_X33_Y28_N0
\dp|mem|ram_rtl_0|auto_generated|ram_block1a62\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RISC1.ram0_memory_e411fb78.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "Datapath_RISC:dp|memory:mem|altsyncram:ram_rtl_0|altsyncram_ct81:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 14,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \dp|mem|ram_rtl_0|auto_generated|decode3|w_anode452w[2]~0_combout\,
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \dp|mem|ram_rtl_0|auto_generated|rden_decode|w_anode493w[2]~0_combout\,
	portadatain => \dp|mem|ram_rtl_0|auto_generated|ram_block1a62_PORTADATAIN_bus\,
	portaaddr => \dp|mem|ram_rtl_0|auto_generated|ram_block1a62_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \dp|mem|ram_rtl_0|auto_generated|ram_block1a62_PORTADATAOUT_bus\);

-- Location: LCCOMB_X34_Y23_N20
\dp|mem|ram_rtl_0|auto_generated|mux2|result_node[14]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[14]~28_combout\ = (\dp|mem|ram_rtl_0|auto_generated|address_reg_a\(1) & ((\dp|mem|ram_rtl_0|auto_generated|address_reg_a\(0) & ((\dp|mem|ram_rtl_0|auto_generated|ram_block1a62~portadataout\))) # 
-- (!\dp|mem|ram_rtl_0|auto_generated|address_reg_a\(0) & (\dp|mem|ram_rtl_0|auto_generated|ram_block1a46~portadataout\)))) # (!\dp|mem|ram_rtl_0|auto_generated|address_reg_a\(1) & (((\dp|mem|ram_rtl_0|auto_generated|address_reg_a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|mem|ram_rtl_0|auto_generated|ram_block1a46~portadataout\,
	datab => \dp|mem|ram_rtl_0|auto_generated|address_reg_a\(1),
	datac => \dp|mem|ram_rtl_0|auto_generated|address_reg_a\(0),
	datad => \dp|mem|ram_rtl_0|auto_generated|ram_block1a62~portadataout\,
	combout => \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[14]~28_combout\);

-- Location: LCCOMB_X34_Y23_N6
\dp|mem|ram_rtl_0|auto_generated|mux2|result_node[14]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[14]~29_combout\ = (\dp|mem|ram_rtl_0|auto_generated|address_reg_a\(1) & (((\dp|mem|ram_rtl_0|auto_generated|mux2|result_node[14]~28_combout\)))) # (!\dp|mem|ram_rtl_0|auto_generated|address_reg_a\(1) & 
-- ((\dp|mem|ram_rtl_0|auto_generated|mux2|result_node[14]~28_combout\ & ((\dp|mem|ram_rtl_0|auto_generated|ram_block1a30~portadataout\))) # (!\dp|mem|ram_rtl_0|auto_generated|mux2|result_node[14]~28_combout\ & 
-- (\dp|mem|ram_rtl_0|auto_generated|ram_block1a14~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|mem|ram_rtl_0|auto_generated|ram_block1a14~portadataout\,
	datab => \dp|mem|ram_rtl_0|auto_generated|address_reg_a\(1),
	datac => \dp|mem|ram_rtl_0|auto_generated|ram_block1a30~portadataout\,
	datad => \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[14]~28_combout\,
	combout => \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[14]~29_combout\);

-- Location: FF_X34_Y23_N7
\dp|ir|Dout[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[14]~29_combout\,
	ena => \cp|state.s1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|ir|Dout\(14));

-- Location: LCCOMB_X34_Y23_N10
\cp|state~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \cp|state~39_combout\ = (\dp|ir|Dout\(14) & (\cp|state~37_combout\ & !\dp|ir|Dout\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ir|Dout\(14),
	datac => \cp|state~37_combout\,
	datad => \dp|ir|Dout\(12),
	combout => \cp|state~39_combout\);

-- Location: FF_X34_Y23_N11
\cp|state.s11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cp|state~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp|state.s11~q\);

-- Location: LCCOMB_X36_Y20_N30
\cp|Selector15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \cp|Selector15~2_combout\ = (\cp|state.s12~q\) # ((\cp|state.s14~q\) # ((\cp|state.s13~q\) # (\cp|state.s6~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp|state.s12~q\,
	datab => \cp|state.s14~q\,
	datac => \cp|state.s13~q\,
	datad => \cp|state.s6~q\,
	combout => \cp|Selector15~2_combout\);

-- Location: LCCOMB_X36_Y20_N0
\cp|Selector15~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \cp|Selector15~3_combout\ = (\cp|Selector15~2_combout\) # ((!\dp|pr_enc|v~1_combout\ & \cp|state.s9~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp|Selector15~2_combout\,
	datac => \dp|pr_enc|v~1_combout\,
	datad => \cp|state.s9~q\,
	combout => \cp|Selector15~3_combout\);

-- Location: LCCOMB_X35_Y20_N10
\cp|next_state~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \cp|next_state~18_combout\ = (\dp|ir|Dout\(0) & ((\dp|ir|Dout\(1) & ((\cp|state.s15~q\))) # (!\dp|ir|Dout\(1) & (!\dp|zReg|Dout~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ir|Dout\(1),
	datab => \dp|zReg|Dout~q\,
	datac => \dp|ir|Dout\(0),
	datad => \cp|state.s15~q\,
	combout => \cp|next_state~18_combout\);

-- Location: LCCOMB_X35_Y20_N14
\cp|next_state~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \cp|next_state~19_combout\ = (\cp|next_state~18_combout\) # ((!\dp|cReg|Dout~q\ & (\dp|ir|Dout\(1) & !\dp|ir|Dout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|cReg|Dout~q\,
	datab => \dp|ir|Dout\(1),
	datac => \dp|ir|Dout\(0),
	datad => \cp|next_state~18_combout\,
	combout => \cp|next_state~19_combout\);

-- Location: LCCOMB_X36_Y23_N16
\cp|Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cp|Selector15~0_combout\ = (!\dp|ir|Dout\(12) & (!\dp|ir|Dout\(15) & \cp|state.s2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ir|Dout\(12),
	datac => \dp|ir|Dout\(15),
	datad => \cp|state.s2~q\,
	combout => \cp|Selector15~0_combout\);

-- Location: LCCOMB_X36_Y23_N26
\cp|Selector15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \cp|Selector15~1_combout\ = (\cp|Selector15~0_combout\ & ((\dp|ir|Dout\(14) & ((\dp|ir|Dout\(13)))) # (!\dp|ir|Dout\(14) & (\cp|next_state~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp|next_state~19_combout\,
	datab => \dp|ir|Dout\(14),
	datac => \dp|ir|Dout\(13),
	datad => \cp|Selector15~0_combout\,
	combout => \cp|Selector15~1_combout\);

-- Location: LCCOMB_X35_Y20_N16
\cp|Selector15~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \cp|Selector15~4_combout\ = (\cp|Selector15~3_combout\) # ((\cp|Selector15~1_combout\) # ((\cp|state.s11~q\ & !\dp|comp|Equal0~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp|state.s11~q\,
	datab => \dp|comp|Equal0~21_combout\,
	datac => \cp|Selector15~3_combout\,
	datad => \cp|Selector15~1_combout\,
	combout => \cp|Selector15~4_combout\);

-- Location: FF_X35_Y20_N17
\cp|state.s15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cp|Selector15~4_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp|state.s15~q\);

-- Location: LCCOMB_X36_Y20_N28
\cp|Selector16~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \cp|Selector16~3_combout\ = (\cp|state.s8~q\) # ((\cp|state.s15~q\ & \cp|Selector16~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp|state.s15~q\,
	datab => \cp|Selector16~1_combout\,
	datad => \cp|state.s8~q\,
	combout => \cp|Selector16~3_combout\);

-- Location: FF_X36_Y20_N29
\cp|state.s7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cp|Selector16~3_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp|state.s7~q\);

-- Location: LCCOMB_X36_Y20_N6
\cp|state~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \cp|state~20_combout\ = (!\reset~input_o\ & (\cp|state.s7~q\ & \dp|pr_enc|v~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \cp|state.s7~q\,
	datac => \dp|pr_enc|v~1_combout\,
	combout => \cp|state~20_combout\);

-- Location: FF_X36_Y20_N7
\cp|state.s8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cp|state~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp|state.s8~q\);

-- Location: LCCOMB_X36_Y20_N18
\cp|Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cp|Selector16~0_combout\ = (\cp|state.s6~q\) # ((\cp|state.s9~q\) # ((\cp|state.s5~q\) # (\cp|state.s10~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp|state.s6~q\,
	datab => \cp|state.s9~q\,
	datac => \cp|state.s5~q\,
	datad => \cp|state.s10~q\,
	combout => \cp|Selector16~0_combout\);

-- Location: LCCOMB_X36_Y20_N12
\cp|Selector16~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \cp|Selector16~2_combout\ = (\cp|state.s8~q\) # ((\cp|Selector16~0_combout\) # ((\cp|state.s15~q\ & \cp|Selector16~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp|state.s8~q\,
	datab => \cp|Selector16~0_combout\,
	datac => \cp|state.s15~q\,
	datad => \cp|Selector16~1_combout\,
	combout => \cp|Selector16~2_combout\);

-- Location: LCCOMB_X30_Y18_N26
\dp|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Equal1~0_combout\ = (\cp|Selector16~2_combout\ & (!\cp|state.s5~q\ & (!\cp|state.s6~q\ & !\cp|state.s1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp|Selector16~2_combout\,
	datab => \cp|state.s5~q\,
	datac => \cp|state.s6~q\,
	datad => \cp|state.s1~q\,
	combout => \dp|Equal1~0_combout\);

-- Location: LCCOMB_X32_Y17_N12
\dp|Mem_A[13]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Mem_A[13]~1_combout\ = (\dp|Mem_A[13]~0_combout\) # ((\dp|Equal1~0_combout\ & \dp|t2|Dout\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Mem_A[13]~0_combout\,
	datac => \dp|Equal1~0_combout\,
	datad => \dp|t2|Dout\(13),
	combout => \dp|Mem_A[13]~1_combout\);

-- Location: FF_X32_Y17_N13
\dp|mem|ram_rtl_0|auto_generated|address_reg_a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp|Mem_A[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|mem|ram_rtl_0|auto_generated|address_reg_a\(0));

-- Location: LCCOMB_X31_Y20_N6
\dp|Mem_din[9]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Mem_din[9]~9_combout\ = (\cp|state.s6~q\ & (\dp|t2|Dout\(9))) # (!\cp|state.s6~q\ & ((\dp|t3|Dout\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dp|t2|Dout\(9),
	datac => \cp|state.s6~q\,
	datad => \dp|t3|Dout\(9),
	combout => \dp|Mem_din[9]~9_combout\);

-- Location: M9K_X33_Y3_N0
\dp|mem|ram_rtl_0|auto_generated|ram_block1a57\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RISC1.ram0_memory_e411fb78.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "Datapath_RISC:dp|memory:mem|altsyncram:ram_rtl_0|altsyncram_ct81:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 9,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \dp|mem|ram_rtl_0|auto_generated|decode3|w_anode452w[2]~0_combout\,
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \dp|mem|ram_rtl_0|auto_generated|rden_decode|w_anode493w[2]~0_combout\,
	portadatain => \dp|mem|ram_rtl_0|auto_generated|ram_block1a57_PORTADATAIN_bus\,
	portaaddr => \dp|mem|ram_rtl_0|auto_generated|ram_block1a57_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \dp|mem|ram_rtl_0|auto_generated|ram_block1a57_PORTADATAOUT_bus\);

-- Location: M9K_X33_Y7_N0
\dp|mem|ram_rtl_0|auto_generated|ram_block1a41\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RISC1.ram0_memory_e411fb78.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "Datapath_RISC:dp|memory:mem|altsyncram:ram_rtl_0|altsyncram_ct81:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 9,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \dp|mem|ram_rtl_0|auto_generated|decode3|w_anode444w[2]~0_combout\,
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \dp|mem|ram_rtl_0|auto_generated|rden_decode|w_anode484w[2]~4_combout\,
	portadatain => \dp|mem|ram_rtl_0|auto_generated|ram_block1a41_PORTADATAIN_bus\,
	portaaddr => \dp|mem|ram_rtl_0|auto_generated|ram_block1a41_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \dp|mem|ram_rtl_0|auto_generated|ram_block1a41_PORTADATAOUT_bus\);

-- Location: LCCOMB_X30_Y18_N30
\dp|mem|ram_rtl_0|auto_generated|mux2|result_node[9]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[9]~18_combout\ = (\dp|mem|ram_rtl_0|auto_generated|address_reg_a\(1) & ((\dp|mem|ram_rtl_0|auto_generated|address_reg_a\(0) & (\dp|mem|ram_rtl_0|auto_generated|ram_block1a57~portadataout\)) # 
-- (!\dp|mem|ram_rtl_0|auto_generated|address_reg_a\(0) & ((\dp|mem|ram_rtl_0|auto_generated|ram_block1a41~portadataout\))))) # (!\dp|mem|ram_rtl_0|auto_generated|address_reg_a\(1) & (\dp|mem|ram_rtl_0|auto_generated|address_reg_a\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|mem|ram_rtl_0|auto_generated|address_reg_a\(1),
	datab => \dp|mem|ram_rtl_0|auto_generated|address_reg_a\(0),
	datac => \dp|mem|ram_rtl_0|auto_generated|ram_block1a57~portadataout\,
	datad => \dp|mem|ram_rtl_0|auto_generated|ram_block1a41~portadataout\,
	combout => \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[9]~18_combout\);

-- Location: M9K_X33_Y2_N0
\dp|mem|ram_rtl_0|auto_generated|ram_block1a25\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RISC1.ram0_memory_e411fb78.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "Datapath_RISC:dp|memory:mem|altsyncram:ram_rtl_0|altsyncram_ct81:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 9,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \dp|mem|ram_rtl_0|auto_generated|decode3|w_anode436w[2]~0_combout\,
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \dp|mem|ram_rtl_0|auto_generated|rden_decode|w_anode475w[2]~4_combout\,
	portadatain => \dp|mem|ram_rtl_0|auto_generated|ram_block1a25_PORTADATAIN_bus\,
	portaaddr => \dp|mem|ram_rtl_0|auto_generated|ram_block1a25_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \dp|mem|ram_rtl_0|auto_generated|ram_block1a25_PORTADATAOUT_bus\);

-- Location: M9K_X33_Y6_N0
\dp|mem|ram_rtl_0|auto_generated|ram_block1a9\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004E",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RISC1.ram0_memory_e411fb78.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "Datapath_RISC:dp|memory:mem|altsyncram:ram_rtl_0|altsyncram_ct81:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 9,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \dp|mem|ram_rtl_0|auto_generated|decode3|w_anode423w[2]~4_combout\,
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \dp|mem|ram_rtl_0|auto_generated|decode3|w_anode423w[2]~5_combout\,
	portadatain => \dp|mem|ram_rtl_0|auto_generated|ram_block1a9_PORTADATAIN_bus\,
	portaaddr => \dp|mem|ram_rtl_0|auto_generated|ram_block1a9_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \dp|mem|ram_rtl_0|auto_generated|ram_block1a9_PORTADATAOUT_bus\);

-- Location: LCCOMB_X30_Y18_N22
\dp|mem|ram_rtl_0|auto_generated|mux2|result_node[9]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[9]~19_combout\ = (\dp|mem|ram_rtl_0|auto_generated|mux2|result_node[9]~18_combout\ & ((\dp|mem|ram_rtl_0|auto_generated|ram_block1a25~portadataout\) # 
-- ((\dp|mem|ram_rtl_0|auto_generated|address_reg_a\(1))))) # (!\dp|mem|ram_rtl_0|auto_generated|mux2|result_node[9]~18_combout\ & (((!\dp|mem|ram_rtl_0|auto_generated|address_reg_a\(1) & \dp|mem|ram_rtl_0|auto_generated|ram_block1a9~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[9]~18_combout\,
	datab => \dp|mem|ram_rtl_0|auto_generated|ram_block1a25~portadataout\,
	datac => \dp|mem|ram_rtl_0|auto_generated|address_reg_a\(1),
	datad => \dp|mem|ram_rtl_0|auto_generated|ram_block1a9~portadataout\,
	combout => \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[9]~19_combout\);

-- Location: FF_X30_Y18_N23
\dp|ir|Dout[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[9]~19_combout\,
	ena => \cp|state.s1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|ir|Dout\(9));

-- Location: LCCOMB_X29_Y23_N8
\dp|rf|reg~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|rf|reg~16_combout\ = (!\reset~input_o\ & ((\dp|RF_D3[13]~21_combout\) # ((\cp|M5[1]~1_combout\ & \dp|t4|Dout\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \dp|RF_D3[13]~21_combout\,
	datac => \cp|M5[1]~1_combout\,
	datad => \dp|t4|Dout\(13),
	combout => \dp|rf|reg~16_combout\);

-- Location: FF_X30_Y21_N27
\dp|rf|reg[0][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dp|rf|reg~16_combout\,
	sload => VCC,
	ena => \dp|rf|reg[0][10]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|reg[0][13]~q\);

-- Location: FF_X29_Y21_N17
\dp|rf|reg[1][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dp|rf|reg~16_combout\,
	sload => VCC,
	ena => \dp|rf|reg[1][4]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|reg[1][13]~q\);

-- Location: LCCOMB_X29_Y21_N16
\dp|T2_in[13]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|T2_in[13]~0_combout\ = (\dp|ir|Dout\(9) & (((\dp|rf|reg[1][13]~q\) # (\dp|ir|Dout\(10))))) # (!\dp|ir|Dout\(9) & (\dp|rf|reg[0][13]~q\ & ((!\dp|ir|Dout\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ir|Dout\(9),
	datab => \dp|rf|reg[0][13]~q\,
	datac => \dp|rf|reg[1][13]~q\,
	datad => \dp|ir|Dout\(10),
	combout => \dp|T2_in[13]~0_combout\);

-- Location: FF_X29_Y23_N9
\dp|rf|reg[3][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp|rf|reg~16_combout\,
	ena => \dp|rf|reg[3][7]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|reg[3][13]~q\);

-- Location: FF_X30_Y21_N9
\dp|rf|reg[2][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dp|rf|reg~16_combout\,
	sload => VCC,
	ena => \dp|rf|reg[2][6]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|reg[2][13]~q\);

-- Location: LCCOMB_X30_Y21_N4
\dp|T2_in[13]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|T2_in[13]~1_combout\ = (\dp|T2_in[13]~0_combout\ & ((\dp|rf|reg[3][13]~q\) # ((!\dp|ir|Dout\(10))))) # (!\dp|T2_in[13]~0_combout\ & (((\dp|rf|reg[2][13]~q\ & \dp|ir|Dout\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|T2_in[13]~0_combout\,
	datab => \dp|rf|reg[3][13]~q\,
	datac => \dp|rf|reg[2][13]~q\,
	datad => \dp|ir|Dout\(10),
	combout => \dp|T2_in[13]~1_combout\);

-- Location: FF_X28_Y20_N17
\dp|rf|reg[5][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dp|rf|reg~16_combout\,
	sload => VCC,
	ena => \dp|rf|reg[5][13]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|reg[5][13]~q\);

-- Location: FF_X27_Y20_N11
\dp|rf|reg[4][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dp|rf|reg~16_combout\,
	sload => VCC,
	ena => \dp|rf|reg[4][14]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|reg[4][13]~q\);

-- Location: FF_X27_Y20_N25
\dp|rf|reg[6][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dp|rf|reg~16_combout\,
	sload => VCC,
	ena => \dp|rf|reg[6][7]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|reg[6][13]~q\);

-- Location: LCCOMB_X27_Y20_N24
\dp|T2_in[13]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|T2_in[13]~2_combout\ = (\dp|ir|Dout\(9) & (((\dp|ir|Dout\(10))))) # (!\dp|ir|Dout\(9) & ((\dp|ir|Dout\(10) & ((\dp|rf|reg[6][13]~q\))) # (!\dp|ir|Dout\(10) & (\dp|rf|reg[4][13]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|reg[4][13]~q\,
	datab => \dp|ir|Dout\(9),
	datac => \dp|rf|reg[6][13]~q\,
	datad => \dp|ir|Dout\(10),
	combout => \dp|T2_in[13]~2_combout\);

-- Location: LCCOMB_X28_Y20_N18
\dp|T2_in[13]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|T2_in[13]~3_combout\ = (\dp|ir|Dout\(9) & ((\dp|T2_in[13]~2_combout\ & ((\dp|rf|reg[7][13]~q\))) # (!\dp|T2_in[13]~2_combout\ & (\dp|rf|reg[5][13]~q\)))) # (!\dp|ir|Dout\(9) & (((\dp|T2_in[13]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ir|Dout\(9),
	datab => \dp|rf|reg[5][13]~q\,
	datac => \dp|T2_in[13]~2_combout\,
	datad => \dp|rf|reg[7][13]~q\,
	combout => \dp|T2_in[13]~3_combout\);

-- Location: LCCOMB_X30_Y20_N8
\dp|t2|Dout[13]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|t2|Dout[13]~13_combout\ = (\dp|ir|Dout\(11) & ((\dp|T2_in[13]~3_combout\))) # (!\dp|ir|Dout\(11) & (\dp|T2_in[13]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|T2_in[13]~1_combout\,
	datab => \dp|ir|Dout\(11),
	datad => \dp|T2_in[13]~3_combout\,
	combout => \dp|t2|Dout[13]~13_combout\);

-- Location: FF_X30_Y20_N9
\dp|t2|Dout[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp|t2|Dout[13]~13_combout\,
	asdata => \dp|pc|Dout[13]~13_combout\,
	sload => \cp|M9~0_combout\,
	ena => \cp|WideOr20~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|t2|Dout\(13));

-- Location: LCCOMB_X32_Y17_N10
\dp|mem|ram_rtl_0|auto_generated|rden_decode|w_anode475w[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|mem|ram_rtl_0|auto_generated|rden_decode|w_anode475w[2]~4_combout\ = (!\dp|Mem_A[14]~3_combout\ & ((\dp|Mem_A[13]~0_combout\) # ((\dp|t2|Dout\(13) & \dp|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Mem_A[13]~0_combout\,
	datab => \dp|t2|Dout\(13),
	datac => \dp|Equal1~0_combout\,
	datad => \dp|Mem_A[14]~3_combout\,
	combout => \dp|mem|ram_rtl_0|auto_generated|rden_decode|w_anode475w[2]~4_combout\);

-- Location: LCCOMB_X31_Y22_N8
\dp|Mem_din[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Mem_din[7]~7_combout\ = (\cp|state.s6~q\ & ((\dp|t2|Dout\(7)))) # (!\cp|state.s6~q\ & (\dp|t3|Dout\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dp|t3|Dout\(7),
	datac => \cp|state.s6~q\,
	datad => \dp|t2|Dout\(7),
	combout => \dp|Mem_din[7]~7_combout\);

-- Location: M9K_X22_Y2_N0
\dp|mem|ram_rtl_0|auto_generated|ram_block1a23\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RISC1.ram0_memory_e411fb78.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "Datapath_RISC:dp|memory:mem|altsyncram:ram_rtl_0|altsyncram_ct81:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \dp|mem|ram_rtl_0|auto_generated|decode3|w_anode436w[2]~0_combout\,
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \dp|mem|ram_rtl_0|auto_generated|rden_decode|w_anode475w[2]~4_combout\,
	portadatain => \dp|mem|ram_rtl_0|auto_generated|ram_block1a23_PORTADATAIN_bus\,
	portaaddr => \dp|mem|ram_rtl_0|auto_generated|ram_block1a23_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \dp|mem|ram_rtl_0|auto_generated|ram_block1a23_PORTADATAOUT_bus\);

-- Location: M9K_X22_Y5_N0
\dp|mem|ram_rtl_0|auto_generated|ram_block1a7\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000108",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RISC1.ram0_memory_e411fb78.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "Datapath_RISC:dp|memory:mem|altsyncram:ram_rtl_0|altsyncram_ct81:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \dp|mem|ram_rtl_0|auto_generated|decode3|w_anode423w[2]~4_combout\,
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \dp|mem|ram_rtl_0|auto_generated|decode3|w_anode423w[2]~5_combout\,
	portadatain => \dp|mem|ram_rtl_0|auto_generated|ram_block1a7_PORTADATAIN_bus\,
	portaaddr => \dp|mem|ram_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \dp|mem|ram_rtl_0|auto_generated|ram_block1a7_PORTADATAOUT_bus\);

-- Location: M9K_X22_Y18_N0
\dp|mem|ram_rtl_0|auto_generated|ram_block1a55\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RISC1.ram0_memory_e411fb78.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "Datapath_RISC:dp|memory:mem|altsyncram:ram_rtl_0|altsyncram_ct81:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \dp|mem|ram_rtl_0|auto_generated|decode3|w_anode452w[2]~0_combout\,
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \dp|mem|ram_rtl_0|auto_generated|rden_decode|w_anode493w[2]~0_combout\,
	portadatain => \dp|mem|ram_rtl_0|auto_generated|ram_block1a55_PORTADATAIN_bus\,
	portaaddr => \dp|mem|ram_rtl_0|auto_generated|ram_block1a55_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \dp|mem|ram_rtl_0|auto_generated|ram_block1a55_PORTADATAOUT_bus\);

-- Location: M9K_X33_Y8_N0
\dp|mem|ram_rtl_0|auto_generated|ram_block1a39\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RISC1.ram0_memory_e411fb78.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "Datapath_RISC:dp|memory:mem|altsyncram:ram_rtl_0|altsyncram_ct81:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \dp|mem|ram_rtl_0|auto_generated|decode3|w_anode444w[2]~0_combout\,
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \dp|mem|ram_rtl_0|auto_generated|rden_decode|w_anode484w[2]~4_combout\,
	portadatain => \dp|mem|ram_rtl_0|auto_generated|ram_block1a39_PORTADATAIN_bus\,
	portaaddr => \dp|mem|ram_rtl_0|auto_generated|ram_block1a39_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \dp|mem|ram_rtl_0|auto_generated|ram_block1a39_PORTADATAOUT_bus\);

-- Location: LCCOMB_X30_Y18_N18
\dp|mem|ram_rtl_0|auto_generated|mux2|result_node[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[7]~14_combout\ = (\dp|mem|ram_rtl_0|auto_generated|address_reg_a\(0) & ((\dp|mem|ram_rtl_0|auto_generated|ram_block1a55~portadataout\) # ((!\dp|mem|ram_rtl_0|auto_generated|address_reg_a\(1))))) # 
-- (!\dp|mem|ram_rtl_0|auto_generated|address_reg_a\(0) & (((\dp|mem|ram_rtl_0|auto_generated|address_reg_a\(1) & \dp|mem|ram_rtl_0|auto_generated|ram_block1a39~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|mem|ram_rtl_0|auto_generated|ram_block1a55~portadataout\,
	datab => \dp|mem|ram_rtl_0|auto_generated|address_reg_a\(0),
	datac => \dp|mem|ram_rtl_0|auto_generated|address_reg_a\(1),
	datad => \dp|mem|ram_rtl_0|auto_generated|ram_block1a39~portadataout\,
	combout => \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[7]~14_combout\);

-- Location: LCCOMB_X30_Y18_N2
\dp|mem|ram_rtl_0|auto_generated|mux2|result_node[7]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[7]~15_combout\ = (\dp|mem|ram_rtl_0|auto_generated|address_reg_a\(1) & (((\dp|mem|ram_rtl_0|auto_generated|mux2|result_node[7]~14_combout\)))) # (!\dp|mem|ram_rtl_0|auto_generated|address_reg_a\(1) & 
-- ((\dp|mem|ram_rtl_0|auto_generated|mux2|result_node[7]~14_combout\ & (\dp|mem|ram_rtl_0|auto_generated|ram_block1a23~portadataout\)) # (!\dp|mem|ram_rtl_0|auto_generated|mux2|result_node[7]~14_combout\ & 
-- ((\dp|mem|ram_rtl_0|auto_generated|ram_block1a7~portadataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|mem|ram_rtl_0|auto_generated|ram_block1a23~portadataout\,
	datab => \dp|mem|ram_rtl_0|auto_generated|ram_block1a7~portadataout\,
	datac => \dp|mem|ram_rtl_0|auto_generated|address_reg_a\(1),
	datad => \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[7]~14_combout\,
	combout => \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[7]~15_combout\);

-- Location: FF_X30_Y18_N3
\dp|ir|Dout[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[7]~15_combout\,
	ena => \cp|state.s1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|ir|Dout\(7));

-- Location: LCCOMB_X31_Y24_N4
\dp|RF_A1[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|RF_A1[1]~1_combout\ = (\cp|state.s9~q\ & ((\dp|pr_enc|a[1]~5_combout\))) # (!\cp|state.s9~q\ & (\dp|ir|Dout\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ir|Dout\(7),
	datab => \cp|state.s9~q\,
	datac => \dp|pr_enc|a[1]~5_combout\,
	combout => \dp|RF_A1[1]~1_combout\);

-- Location: LCCOMB_X27_Y20_N10
\dp|rf|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|rf|Mux2~0_combout\ = (\dp|RF_A1[1]~1_combout\ & ((\dp|rf|reg[6][13]~q\) # ((\dp|RF_A1[0]~0_combout\)))) # (!\dp|RF_A1[1]~1_combout\ & (((\dp|rf|reg[4][13]~q\ & !\dp|RF_A1[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RF_A1[1]~1_combout\,
	datab => \dp|rf|reg[6][13]~q\,
	datac => \dp|rf|reg[4][13]~q\,
	datad => \dp|RF_A1[0]~0_combout\,
	combout => \dp|rf|Mux2~0_combout\);

-- Location: LCCOMB_X28_Y20_N16
\dp|rf|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|rf|Mux2~1_combout\ = (\dp|rf|Mux2~0_combout\ & ((\dp|rf|reg[7][13]~q\) # ((!\dp|RF_A1[0]~0_combout\)))) # (!\dp|rf|Mux2~0_combout\ & (((\dp|rf|reg[5][13]~q\ & \dp|RF_A1[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|Mux2~0_combout\,
	datab => \dp|rf|reg[7][13]~q\,
	datac => \dp|rf|reg[5][13]~q\,
	datad => \dp|RF_A1[0]~0_combout\,
	combout => \dp|rf|Mux2~1_combout\);

-- Location: LCCOMB_X30_Y21_N26
\dp|rf|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|rf|Mux2~2_combout\ = (\dp|RF_A1[1]~1_combout\ & (((\dp|RF_A1[0]~0_combout\)))) # (!\dp|RF_A1[1]~1_combout\ & ((\dp|RF_A1[0]~0_combout\ & (\dp|rf|reg[1][13]~q\)) # (!\dp|RF_A1[0]~0_combout\ & ((\dp|rf|reg[0][13]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|reg[1][13]~q\,
	datab => \dp|RF_A1[1]~1_combout\,
	datac => \dp|rf|reg[0][13]~q\,
	datad => \dp|RF_A1[0]~0_combout\,
	combout => \dp|rf|Mux2~2_combout\);

-- Location: LCCOMB_X30_Y21_N8
\dp|rf|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|rf|Mux2~3_combout\ = (\dp|rf|Mux2~2_combout\ & (((\dp|rf|reg[3][13]~q\)) # (!\dp|RF_A1[1]~1_combout\))) # (!\dp|rf|Mux2~2_combout\ & (\dp|RF_A1[1]~1_combout\ & (\dp|rf|reg[2][13]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|Mux2~2_combout\,
	datab => \dp|RF_A1[1]~1_combout\,
	datac => \dp|rf|reg[2][13]~q\,
	datad => \dp|rf|reg[3][13]~q\,
	combout => \dp|rf|Mux2~3_combout\);

-- Location: LCCOMB_X30_Y19_N0
\dp|rf|Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|rf|Mux2~4_combout\ = (\dp|RF_A1[2]~2_combout\ & (\dp|rf|Mux2~1_combout\)) # (!\dp|RF_A1[2]~2_combout\ & ((\dp|rf|Mux2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|Mux2~1_combout\,
	datab => \dp|RF_A1[2]~2_combout\,
	datad => \dp|rf|Mux2~3_combout\,
	combout => \dp|rf|Mux2~4_combout\);

-- Location: LCCOMB_X30_Y23_N22
\dp|T3_in[13]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|T3_in[13]~1_combout\ = (\cp|M11[0]~0_combout\ & (((\dp|rf|reg[7][13]~q\)) # (!\cp|WideOr19~0_combout\))) # (!\cp|M11[0]~0_combout\ & (\cp|WideOr19~0_combout\ & ((\dp|mem|ram_rtl_0|auto_generated|mux2|result_node[13]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp|M11[0]~0_combout\,
	datab => \cp|WideOr19~0_combout\,
	datac => \dp|rf|reg[7][13]~q\,
	datad => \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[13]~27_combout\,
	combout => \dp|T3_in[13]~1_combout\);

-- Location: LCCOMB_X30_Y23_N12
\dp|T3_in[13]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|T3_in[13]~0_combout\ = (\cp|Alu_op~0_combout\ & (\dp|aluInst|OP~0_combout\)) # (!\cp|Alu_op~0_combout\ & ((\dp|aluInst|OP_s[13]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|aluInst|OP~0_combout\,
	datac => \dp|aluInst|OP_s[13]~26_combout\,
	datad => \cp|Alu_op~0_combout\,
	combout => \dp|T3_in[13]~0_combout\);

-- Location: LCCOMB_X30_Y23_N26
\dp|T3_in[13]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|T3_in[13]~2_combout\ = (\cp|WideOr19~0_combout\ & (((\dp|T3_in[13]~1_combout\)))) # (!\cp|WideOr19~0_combout\ & ((\dp|T3_in[13]~1_combout\ & (\dp|rf|Mux2~4_combout\)) # (!\dp|T3_in[13]~1_combout\ & ((\dp|T3_in[13]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|Mux2~4_combout\,
	datab => \cp|WideOr19~0_combout\,
	datac => \dp|T3_in[13]~1_combout\,
	datad => \dp|T3_in[13]~0_combout\,
	combout => \dp|T3_in[13]~2_combout\);

-- Location: FF_X30_Y23_N27
\dp|t3|Dout[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp|T3_in[13]~2_combout\,
	ena => \cp|WideOr19~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|t3|Dout\(13));

-- Location: LCCOMB_X30_Y19_N16
\dp|Mem_A[13]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Mem_A[13]~0_combout\ = (!\dp|Equal1~0_combout\ & ((\dp|Equal0~0_combout\ & (\dp|t3|Dout\(13))) # (!\dp|Equal0~0_combout\ & ((\dp|rf|reg[7][13]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|t3|Dout\(13),
	datab => \dp|Equal1~0_combout\,
	datac => \dp|rf|reg[7][13]~q\,
	datad => \dp|Equal0~0_combout\,
	combout => \dp|Mem_A[13]~0_combout\);

-- Location: LCCOMB_X32_Y17_N22
\dp|mem|ram_rtl_0|auto_generated|rden_decode|w_anode493w[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|mem|ram_rtl_0|auto_generated|rden_decode|w_anode493w[2]~0_combout\ = (\dp|Mem_A[14]~3_combout\ & ((\dp|Mem_A[13]~0_combout\) # ((\dp|t2|Dout\(13) & \dp|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Mem_A[13]~0_combout\,
	datab => \dp|t2|Dout\(13),
	datac => \dp|Equal1~0_combout\,
	datad => \dp|Mem_A[14]~3_combout\,
	combout => \dp|mem|ram_rtl_0|auto_generated|rden_decode|w_anode493w[2]~0_combout\);

-- Location: LCCOMB_X32_Y20_N8
\dp|Mem_din[15]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Mem_din[15]~15_combout\ = (\cp|state.s6~q\ & (\dp|t2|Dout\(15))) # (!\cp|state.s6~q\ & ((\dp|t3|Dout\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|t2|Dout\(15),
	datac => \cp|state.s6~q\,
	datad => \dp|t3|Dout\(15),
	combout => \dp|Mem_din[15]~15_combout\);

-- Location: M9K_X22_Y3_N0
\dp|mem|ram_rtl_0|auto_generated|ram_block1a63\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RISC1.ram0_memory_e411fb78.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "Datapath_RISC:dp|memory:mem|altsyncram:ram_rtl_0|altsyncram_ct81:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 15,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \dp|mem|ram_rtl_0|auto_generated|decode3|w_anode452w[2]~0_combout\,
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \dp|mem|ram_rtl_0|auto_generated|rden_decode|w_anode493w[2]~0_combout\,
	portadatain => \dp|mem|ram_rtl_0|auto_generated|ram_block1a63_PORTADATAIN_bus\,
	portaaddr => \dp|mem|ram_rtl_0|auto_generated|ram_block1a63_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \dp|mem|ram_rtl_0|auto_generated|ram_block1a63_PORTADATAOUT_bus\);

-- Location: M9K_X33_Y13_N0
\dp|mem|ram_rtl_0|auto_generated|ram_block1a47\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RISC1.ram0_memory_e411fb78.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "Datapath_RISC:dp|memory:mem|altsyncram:ram_rtl_0|altsyncram_ct81:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 15,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \dp|mem|ram_rtl_0|auto_generated|decode3|w_anode444w[2]~0_combout\,
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \dp|mem|ram_rtl_0|auto_generated|rden_decode|w_anode484w[2]~4_combout\,
	portadatain => \dp|mem|ram_rtl_0|auto_generated|ram_block1a47_PORTADATAIN_bus\,
	portaaddr => \dp|mem|ram_rtl_0|auto_generated|ram_block1a47_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \dp|mem|ram_rtl_0|auto_generated|ram_block1a47_PORTADATAOUT_bus\);

-- Location: LCCOMB_X32_Y17_N18
\dp|mem|ram_rtl_0|auto_generated|mux2|result_node[15]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[15]~30_combout\ = (\dp|mem|ram_rtl_0|auto_generated|address_reg_a\(1) & ((\dp|mem|ram_rtl_0|auto_generated|address_reg_a\(0) & (\dp|mem|ram_rtl_0|auto_generated|ram_block1a63~portadataout\)) # 
-- (!\dp|mem|ram_rtl_0|auto_generated|address_reg_a\(0) & ((\dp|mem|ram_rtl_0|auto_generated|ram_block1a47~portadataout\))))) # (!\dp|mem|ram_rtl_0|auto_generated|address_reg_a\(1) & (((\dp|mem|ram_rtl_0|auto_generated|address_reg_a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|mem|ram_rtl_0|auto_generated|ram_block1a63~portadataout\,
	datab => \dp|mem|ram_rtl_0|auto_generated|ram_block1a47~portadataout\,
	datac => \dp|mem|ram_rtl_0|auto_generated|address_reg_a\(1),
	datad => \dp|mem|ram_rtl_0|auto_generated|address_reg_a\(0),
	combout => \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[15]~30_combout\);

-- Location: M9K_X22_Y1_N0
\dp|mem|ram_rtl_0|auto_generated|ram_block1a31\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RISC1.ram0_memory_e411fb78.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "Datapath_RISC:dp|memory:mem|altsyncram:ram_rtl_0|altsyncram_ct81:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 15,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \dp|mem|ram_rtl_0|auto_generated|decode3|w_anode436w[2]~0_combout\,
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \dp|mem|ram_rtl_0|auto_generated|rden_decode|w_anode475w[2]~4_combout\,
	portadatain => \dp|mem|ram_rtl_0|auto_generated|ram_block1a31_PORTADATAIN_bus\,
	portaaddr => \dp|mem|ram_rtl_0|auto_generated|ram_block1a31_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \dp|mem|ram_rtl_0|auto_generated|ram_block1a31_PORTADATAOUT_bus\);

-- Location: M9K_X33_Y20_N0
\dp|mem|ram_rtl_0|auto_generated|ram_block1a15\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RISC1.ram0_memory_e411fb78.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "Datapath_RISC:dp|memory:mem|altsyncram:ram_rtl_0|altsyncram_ct81:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 15,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \dp|mem|ram_rtl_0|auto_generated|decode3|w_anode423w[2]~4_combout\,
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \dp|mem|ram_rtl_0|auto_generated|decode3|w_anode423w[2]~5_combout\,
	portadatain => \dp|mem|ram_rtl_0|auto_generated|ram_block1a15_PORTADATAIN_bus\,
	portaaddr => \dp|mem|ram_rtl_0|auto_generated|ram_block1a15_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \dp|mem|ram_rtl_0|auto_generated|ram_block1a15_PORTADATAOUT_bus\);

-- Location: LCCOMB_X31_Y24_N8
\dp|mem|ram_rtl_0|auto_generated|mux2|result_node[15]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[15]~31_combout\ = (\dp|mem|ram_rtl_0|auto_generated|mux2|result_node[15]~30_combout\ & ((\dp|mem|ram_rtl_0|auto_generated|address_reg_a\(1)) # 
-- ((\dp|mem|ram_rtl_0|auto_generated|ram_block1a31~portadataout\)))) # (!\dp|mem|ram_rtl_0|auto_generated|mux2|result_node[15]~30_combout\ & (!\dp|mem|ram_rtl_0|auto_generated|address_reg_a\(1) & 
-- ((\dp|mem|ram_rtl_0|auto_generated|ram_block1a15~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[15]~30_combout\,
	datab => \dp|mem|ram_rtl_0|auto_generated|address_reg_a\(1),
	datac => \dp|mem|ram_rtl_0|auto_generated|ram_block1a31~portadataout\,
	datad => \dp|mem|ram_rtl_0|auto_generated|ram_block1a15~portadataout\,
	combout => \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[15]~31_combout\);

-- Location: FF_X31_Y24_N9
\dp|ir|Dout[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[15]~31_combout\,
	ena => \cp|state.s1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|ir|Dout\(15));

-- Location: LCCOMB_X31_Y23_N6
\cp|Equal8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \cp|Equal8~2_combout\ = (!\dp|ir|Dout\(15) & \dp|ir|Dout\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dp|ir|Dout\(15),
	datad => \dp|ir|Dout\(12),
	combout => \cp|Equal8~2_combout\);

-- Location: LCCOMB_X31_Y23_N18
\cp|state~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \cp|state~21_combout\ = (\cp|Equal8~2_combout\ & (\cp|Selector3~0_combout\ & (\dp|ir|Dout\(14) & !\reset~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp|Equal8~2_combout\,
	datab => \cp|Selector3~0_combout\,
	datac => \dp|ir|Dout\(14),
	datad => \reset~input_o\,
	combout => \cp|state~21_combout\);

-- Location: FF_X31_Y23_N19
\cp|state.s6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cp|state~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp|state.s6~q\);

-- Location: LCCOMB_X32_Y17_N28
\dp|mem|ram_rtl_0|auto_generated|decode3|w_anode452w[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|mem|ram_rtl_0|auto_generated|decode3|w_anode452w[2]~0_combout\ = (\dp|Mem_A[14]~3_combout\ & (\dp|Mem_A[13]~1_combout\ & ((\cp|state.s10~q\) # (\cp|state.s6~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Mem_A[14]~3_combout\,
	datab => \cp|state.s10~q\,
	datac => \cp|state.s6~q\,
	datad => \dp|Mem_A[13]~1_combout\,
	combout => \dp|mem|ram_rtl_0|auto_generated|decode3|w_anode452w[2]~0_combout\);

-- Location: LCCOMB_X31_Y23_N30
\dp|Mem_din[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Mem_din[6]~6_combout\ = (\cp|state.s6~q\ & ((\dp|t2|Dout\(6)))) # (!\cp|state.s6~q\ & (\dp|t3|Dout\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cp|state.s6~q\,
	datac => \dp|t3|Dout\(6),
	datad => \dp|t2|Dout\(6),
	combout => \dp|Mem_din[6]~6_combout\);

-- Location: M9K_X22_Y28_N0
\dp|mem|ram_rtl_0|auto_generated|ram_block1a54\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RISC1.ram0_memory_e411fb78.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "Datapath_RISC:dp|memory:mem|altsyncram:ram_rtl_0|altsyncram_ct81:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \dp|mem|ram_rtl_0|auto_generated|decode3|w_anode452w[2]~0_combout\,
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \dp|mem|ram_rtl_0|auto_generated|rden_decode|w_anode493w[2]~0_combout\,
	portadatain => \dp|mem|ram_rtl_0|auto_generated|ram_block1a54_PORTADATAIN_bus\,
	portaaddr => \dp|mem|ram_rtl_0|auto_generated|ram_block1a54_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \dp|mem|ram_rtl_0|auto_generated|ram_block1a54_PORTADATAOUT_bus\);

-- Location: M9K_X22_Y25_N0
\dp|mem|ram_rtl_0|auto_generated|ram_block1a38\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RISC1.ram0_memory_e411fb78.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "Datapath_RISC:dp|memory:mem|altsyncram:ram_rtl_0|altsyncram_ct81:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \dp|mem|ram_rtl_0|auto_generated|decode3|w_anode444w[2]~0_combout\,
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \dp|mem|ram_rtl_0|auto_generated|rden_decode|w_anode484w[2]~4_combout\,
	portadatain => \dp|mem|ram_rtl_0|auto_generated|ram_block1a38_PORTADATAIN_bus\,
	portaaddr => \dp|mem|ram_rtl_0|auto_generated|ram_block1a38_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \dp|mem|ram_rtl_0|auto_generated|ram_block1a38_PORTADATAOUT_bus\);

-- Location: LCCOMB_X23_Y23_N4
\dp|mem|ram_rtl_0|auto_generated|mux2|result_node[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[6]~12_combout\ = (\dp|mem|ram_rtl_0|auto_generated|address_reg_a\(1) & ((\dp|mem|ram_rtl_0|auto_generated|address_reg_a\(0) & (\dp|mem|ram_rtl_0|auto_generated|ram_block1a54~portadataout\)) # 
-- (!\dp|mem|ram_rtl_0|auto_generated|address_reg_a\(0) & ((\dp|mem|ram_rtl_0|auto_generated|ram_block1a38~portadataout\))))) # (!\dp|mem|ram_rtl_0|auto_generated|address_reg_a\(1) & (((\dp|mem|ram_rtl_0|auto_generated|address_reg_a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|mem|ram_rtl_0|auto_generated|ram_block1a54~portadataout\,
	datab => \dp|mem|ram_rtl_0|auto_generated|address_reg_a\(1),
	datac => \dp|mem|ram_rtl_0|auto_generated|ram_block1a38~portadataout\,
	datad => \dp|mem|ram_rtl_0|auto_generated|address_reg_a\(0),
	combout => \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[6]~12_combout\);

-- Location: M9K_X22_Y32_N0
\dp|mem|ram_rtl_0|auto_generated|ram_block1a22\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RISC1.ram0_memory_e411fb78.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "Datapath_RISC:dp|memory:mem|altsyncram:ram_rtl_0|altsyncram_ct81:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \dp|mem|ram_rtl_0|auto_generated|decode3|w_anode436w[2]~0_combout\,
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \dp|mem|ram_rtl_0|auto_generated|rden_decode|w_anode475w[2]~4_combout\,
	portadatain => \dp|mem|ram_rtl_0|auto_generated|ram_block1a22_PORTADATAIN_bus\,
	portaaddr => \dp|mem|ram_rtl_0|auto_generated|ram_block1a22_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \dp|mem|ram_rtl_0|auto_generated|ram_block1a22_PORTADATAOUT_bus\);

-- Location: M9K_X22_Y30_N0
\dp|mem|ram_rtl_0|auto_generated|ram_block1a6\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000108",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RISC1.ram0_memory_e411fb78.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "Datapath_RISC:dp|memory:mem|altsyncram:ram_rtl_0|altsyncram_ct81:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \dp|mem|ram_rtl_0|auto_generated|decode3|w_anode423w[2]~4_combout\,
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \dp|mem|ram_rtl_0|auto_generated|decode3|w_anode423w[2]~5_combout\,
	portadatain => \dp|mem|ram_rtl_0|auto_generated|ram_block1a6_PORTADATAIN_bus\,
	portaaddr => \dp|mem|ram_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \dp|mem|ram_rtl_0|auto_generated|ram_block1a6_PORTADATAOUT_bus\);

-- Location: LCCOMB_X23_Y23_N24
\dp|mem|ram_rtl_0|auto_generated|mux2|result_node[6]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[6]~13_combout\ = (\dp|mem|ram_rtl_0|auto_generated|mux2|result_node[6]~12_combout\ & ((\dp|mem|ram_rtl_0|auto_generated|ram_block1a22~portadataout\) # 
-- ((\dp|mem|ram_rtl_0|auto_generated|address_reg_a\(1))))) # (!\dp|mem|ram_rtl_0|auto_generated|mux2|result_node[6]~12_combout\ & (((\dp|mem|ram_rtl_0|auto_generated|ram_block1a6~portadataout\ & !\dp|mem|ram_rtl_0|auto_generated|address_reg_a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[6]~12_combout\,
	datab => \dp|mem|ram_rtl_0|auto_generated|ram_block1a22~portadataout\,
	datac => \dp|mem|ram_rtl_0|auto_generated|ram_block1a6~portadataout\,
	datad => \dp|mem|ram_rtl_0|auto_generated|address_reg_a\(1),
	combout => \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[6]~13_combout\);

-- Location: FF_X23_Y23_N25
\dp|ir|Dout[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[6]~13_combout\,
	ena => \cp|state.s1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|ir|Dout\(6));

-- Location: LCCOMB_X30_Y24_N10
\dp|t4|Dout[13]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|t4|Dout[13]~3_combout\ = (\dp|Equal8~0_combout\ & ((\dp|SE_out[14]~0_combout\))) # (!\dp|Equal8~0_combout\ & (\dp|ir|Dout\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ir|Dout\(6),
	datab => \dp|Equal8~0_combout\,
	datad => \dp|SE_out[14]~0_combout\,
	combout => \dp|t4|Dout[13]~3_combout\);

-- Location: LCCOMB_X30_Y24_N22
\dp|pr_enc|d[13]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|pr_enc|d[13]~8_combout\ = (\dp|t4|Dout\(13) & ((\dp|t4|Dout\(12)) # ((\dp|t4|Dout\(11)) # (!\dp|pr_enc|v~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|t4|Dout\(13),
	datab => \dp|t4|Dout\(12),
	datac => \dp|pr_enc|v~0_combout\,
	datad => \dp|t4|Dout\(11),
	combout => \dp|pr_enc|d[13]~8_combout\);

-- Location: FF_X30_Y24_N11
\dp|t4|Dout[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp|t4|Dout[13]~3_combout\,
	asdata => \dp|pr_enc|d[13]~8_combout\,
	sload => \cp|M10\(1),
	ena => \cp|Selector21~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|t4|Dout\(13));

-- Location: LCCOMB_X30_Y24_N20
\dp|pr_enc|v~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|pr_enc|v~1_combout\ = (\dp|t4|Dout\(13)) # (((\dp|t4|Dout\(14)) # (!\dp|pr_enc|v~0_combout\)) # (!\dp|pr_enc|a[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|t4|Dout\(13),
	datab => \dp|pr_enc|a[1]~0_combout\,
	datac => \dp|pr_enc|v~0_combout\,
	datad => \dp|t4|Dout\(14),
	combout => \dp|pr_enc|v~1_combout\);

-- Location: LCCOMB_X36_Y20_N16
\cp|state~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \cp|state~23_combout\ = (!\reset~input_o\ & (\cp|state.s9~q\ & \dp|pr_enc|v~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \cp|state.s9~q\,
	datac => \dp|pr_enc|v~1_combout\,
	combout => \cp|state~23_combout\);

-- Location: FF_X36_Y20_N17
\cp|state.s10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cp|state~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp|state.s10~q\);

-- Location: LCCOMB_X36_Y23_N6
\cp|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cp|Selector9~0_combout\ = (!\dp|ir|Dout\(15) & (\dp|ir|Dout\(13) & (\dp|ir|Dout\(12) & \dp|ir|Dout\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|ir|Dout\(15),
	datab => \dp|ir|Dout\(13),
	datac => \dp|ir|Dout\(12),
	datad => \dp|ir|Dout\(14),
	combout => \cp|Selector9~0_combout\);

-- Location: LCCOMB_X36_Y20_N2
\cp|Selector9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \cp|Selector9~1_combout\ = (\cp|state.s10~q\) # ((\cp|state.s2~q\ & \cp|Selector9~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cp|state.s10~q\,
	datac => \cp|state.s2~q\,
	datad => \cp|Selector9~0_combout\,
	combout => \cp|Selector9~1_combout\);

-- Location: FF_X36_Y20_N3
\cp|state.s9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cp|Selector9~1_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cp|state.s9~q\);

-- Location: LCCOMB_X29_Y19_N30
\cp|WideOr19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cp|WideOr19~0_combout\ = (!\cp|state.s9~q\ & !\cp|state.s4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cp|state.s9~q\,
	datad => \cp|state.s4~q\,
	combout => \cp|WideOr19~0_combout\);

-- Location: LCCOMB_X32_Y20_N20
\dp|T3_in[14]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|T3_in[14]~4_combout\ = (\cp|WideOr19~0_combout\ & ((\cp|M11[0]~0_combout\ & (\dp|rf|reg[7][14]~q\)) # (!\cp|M11[0]~0_combout\ & ((\dp|mem|ram_rtl_0|auto_generated|mux2|result_node[14]~29_combout\))))) # (!\cp|WideOr19~0_combout\ & 
-- (\cp|M11[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp|WideOr19~0_combout\,
	datab => \cp|M11[0]~0_combout\,
	datac => \dp|rf|reg[7][14]~q\,
	datad => \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[14]~29_combout\,
	combout => \dp|T3_in[14]~4_combout\);

-- Location: LCCOMB_X32_Y20_N10
\dp|T3_in[14]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|T3_in[14]~3_combout\ = (\cp|Alu_op~0_combout\ & ((\dp|aluInst|OP~1_combout\))) # (!\cp|Alu_op~0_combout\ & (\dp|aluInst|OP_s[14]~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|aluInst|OP_s[14]~28_combout\,
	datac => \cp|Alu_op~0_combout\,
	datad => \dp|aluInst|OP~1_combout\,
	combout => \dp|T3_in[14]~3_combout\);

-- Location: LCCOMB_X32_Y20_N12
\dp|T3_in[14]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|T3_in[14]~5_combout\ = (\cp|WideOr19~0_combout\ & (\dp|T3_in[14]~4_combout\)) # (!\cp|WideOr19~0_combout\ & ((\dp|T3_in[14]~4_combout\ & (\dp|rf|Mux1~4_combout\)) # (!\dp|T3_in[14]~4_combout\ & ((\dp|T3_in[14]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp|WideOr19~0_combout\,
	datab => \dp|T3_in[14]~4_combout\,
	datac => \dp|rf|Mux1~4_combout\,
	datad => \dp|T3_in[14]~3_combout\,
	combout => \dp|T3_in[14]~5_combout\);

-- Location: FF_X32_Y20_N13
\dp|t3|Dout[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp|T3_in[14]~5_combout\,
	ena => \cp|WideOr19~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|t3|Dout\(14));

-- Location: LCCOMB_X32_Y20_N30
\dp|RF_D3[14]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|RF_D3[14]~22_combout\ = (!\cp|M5[1]~1_combout\ & ((\dp|Equal5~0_combout\ & (\dp|t3|Dout\(14))) # (!\dp|Equal5~0_combout\ & ((\dp|pc|Dout\(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|t3|Dout\(14),
	datab => \dp|pc|Dout\(14),
	datac => \cp|M5[1]~1_combout\,
	datad => \dp|Equal5~0_combout\,
	combout => \dp|RF_D3[14]~22_combout\);

-- Location: LCCOMB_X31_Y23_N26
\dp|rf|reg~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|rf|reg~24_combout\ = (!\reset~input_o\ & ((\dp|RF_D3[14]~22_combout\) # ((\dp|t4|Dout\(14) & \cp|M5[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|RF_D3[14]~22_combout\,
	datab => \dp|t4|Dout\(14),
	datac => \cp|M5[1]~1_combout\,
	datad => \reset~input_o\,
	combout => \dp|rf|reg~24_combout\);

-- Location: FF_X30_Y21_N1
\dp|rf|reg[0][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dp|rf|reg~24_combout\,
	sload => VCC,
	ena => \dp|rf|reg[0][10]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|reg[0][14]~q\);

-- Location: LCCOMB_X29_Y21_N18
\dp|T2_in[14]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|T2_in[14]~4_combout\ = (\dp|ir|Dout\(9) & (((\dp|rf|reg[1][14]~q\) # (\dp|ir|Dout\(10))))) # (!\dp|ir|Dout\(9) & (\dp|rf|reg[0][14]~q\ & ((!\dp|ir|Dout\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|reg[0][14]~q\,
	datab => \dp|ir|Dout\(9),
	datac => \dp|rf|reg[1][14]~q\,
	datad => \dp|ir|Dout\(10),
	combout => \dp|T2_in[14]~4_combout\);

-- Location: LCCOMB_X30_Y21_N2
\dp|T2_in[14]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|T2_in[14]~5_combout\ = (\dp|T2_in[14]~4_combout\ & (((\dp|rf|reg[3][14]~q\) # (!\dp|ir|Dout\(10))))) # (!\dp|T2_in[14]~4_combout\ & (\dp|rf|reg[2][14]~q\ & ((\dp|ir|Dout\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|T2_in[14]~4_combout\,
	datab => \dp|rf|reg[2][14]~q\,
	datac => \dp|rf|reg[3][14]~q\,
	datad => \dp|ir|Dout\(10),
	combout => \dp|T2_in[14]~5_combout\);

-- Location: LCCOMB_X27_Y20_N4
\dp|T2_in[14]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|T2_in[14]~6_combout\ = (\dp|ir|Dout\(9) & (((\dp|ir|Dout\(10))))) # (!\dp|ir|Dout\(9) & ((\dp|ir|Dout\(10) & ((\dp|rf|reg[6][14]~q\))) # (!\dp|ir|Dout\(10) & (\dp|rf|reg[4][14]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|reg[4][14]~q\,
	datab => \dp|ir|Dout\(9),
	datac => \dp|rf|reg[6][14]~q\,
	datad => \dp|ir|Dout\(10),
	combout => \dp|T2_in[14]~6_combout\);

-- Location: LCCOMB_X27_Y22_N6
\dp|T2_in[14]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|T2_in[14]~7_combout\ = (\dp|T2_in[14]~6_combout\ & ((\dp|rf|reg[7][14]~q\) # ((!\dp|ir|Dout\(9))))) # (!\dp|T2_in[14]~6_combout\ & (((\dp|rf|reg[5][14]~q\ & \dp|ir|Dout\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|reg[7][14]~q\,
	datab => \dp|rf|reg[5][14]~q\,
	datac => \dp|T2_in[14]~6_combout\,
	datad => \dp|ir|Dout\(9),
	combout => \dp|T2_in[14]~7_combout\);

-- Location: LCCOMB_X30_Y20_N18
\dp|t2|Dout[14]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|t2|Dout[14]~14_combout\ = (\dp|ir|Dout\(11) & ((\dp|T2_in[14]~7_combout\))) # (!\dp|ir|Dout\(11) & (\dp|T2_in[14]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|T2_in[14]~5_combout\,
	datab => \dp|ir|Dout\(11),
	datad => \dp|T2_in[14]~7_combout\,
	combout => \dp|t2|Dout[14]~14_combout\);

-- Location: FF_X30_Y20_N19
\dp|t2|Dout[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp|t2|Dout[14]~14_combout\,
	asdata => \dp|pc|Dout[14]~14_combout\,
	sload => \cp|M9~0_combout\,
	ena => \cp|WideOr20~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|t2|Dout\(14));

-- Location: LCCOMB_X32_Y17_N6
\dp|Mem_A[14]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Mem_A[14]~3_combout\ = (\dp|Mem_A[14]~2_combout\) # ((\dp|t2|Dout\(14) & \dp|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dp|t2|Dout\(14),
	datac => \dp|Equal1~0_combout\,
	datad => \dp|Mem_A[14]~2_combout\,
	combout => \dp|Mem_A[14]~3_combout\);

-- Location: LCCOMB_X32_Y17_N16
\dp|mem|ram_rtl_0|auto_generated|decode3|w_anode436w[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|mem|ram_rtl_0|auto_generated|decode3|w_anode436w[2]~0_combout\ = (!\dp|Mem_A[14]~3_combout\ & (\dp|Mem_A[13]~1_combout\ & ((\cp|state.s10~q\) # (\cp|state.s6~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Mem_A[14]~3_combout\,
	datab => \cp|state.s10~q\,
	datac => \cp|state.s6~q\,
	datad => \dp|Mem_A[13]~1_combout\,
	combout => \dp|mem|ram_rtl_0|auto_generated|decode3|w_anode436w[2]~0_combout\);

-- Location: LCCOMB_X28_Y19_N12
\dp|Mem_din[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|Mem_din[0]~0_combout\ = (\cp|state.s6~q\ & (\dp|t2|Dout\(0))) # (!\cp|state.s6~q\ & ((\dp|t3|Dout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cp|state.s6~q\,
	datab => \dp|t2|Dout\(0),
	datac => \dp|t3|Dout\(0),
	combout => \dp|Mem_din[0]~0_combout\);

-- Location: M9K_X22_Y26_N0
\dp|mem|ram_rtl_0|auto_generated|ram_block1a16\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RISC1.ram0_memory_e411fb78.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "Datapath_RISC:dp|memory:mem|altsyncram:ram_rtl_0|altsyncram_ct81:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \dp|mem|ram_rtl_0|auto_generated|decode3|w_anode436w[2]~0_combout\,
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \dp|mem|ram_rtl_0|auto_generated|rden_decode|w_anode475w[2]~4_combout\,
	portadatain => \dp|mem|ram_rtl_0|auto_generated|ram_block1a16_PORTADATAIN_bus\,
	portaaddr => \dp|mem|ram_rtl_0|auto_generated|ram_block1a16_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \dp|mem|ram_rtl_0|auto_generated|ram_block1a16_PORTADATAOUT_bus\);

-- Location: M9K_X22_Y24_N0
\dp|mem|ram_rtl_0|auto_generated|ram_block1a32\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RISC1.ram0_memory_e411fb78.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "Datapath_RISC:dp|memory:mem|altsyncram:ram_rtl_0|altsyncram_ct81:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \dp|mem|ram_rtl_0|auto_generated|decode3|w_anode444w[2]~0_combout\,
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \dp|mem|ram_rtl_0|auto_generated|rden_decode|w_anode484w[2]~4_combout\,
	portadatain => \dp|mem|ram_rtl_0|auto_generated|ram_block1a32_PORTADATAIN_bus\,
	portaaddr => \dp|mem|ram_rtl_0|auto_generated|ram_block1a32_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \dp|mem|ram_rtl_0|auto_generated|ram_block1a32_PORTADATAOUT_bus\);

-- Location: M9K_X22_Y19_N0
\dp|mem|ram_rtl_0|auto_generated|ram_block1a48\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RISC1.ram0_memory_e411fb78.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "Datapath_RISC:dp|memory:mem|altsyncram:ram_rtl_0|altsyncram_ct81:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \dp|mem|ram_rtl_0|auto_generated|decode3|w_anode452w[2]~0_combout\,
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \dp|mem|ram_rtl_0|auto_generated|rden_decode|w_anode493w[2]~0_combout\,
	portadatain => \dp|mem|ram_rtl_0|auto_generated|ram_block1a48_PORTADATAIN_bus\,
	portaaddr => \dp|mem|ram_rtl_0|auto_generated|ram_block1a48_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \dp|mem|ram_rtl_0|auto_generated|ram_block1a48_PORTADATAOUT_bus\);

-- Location: LCCOMB_X23_Y23_N28
\dp|mem|ram_rtl_0|auto_generated|mux2|result_node[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[0]~0_combout\ = (\dp|mem|ram_rtl_0|auto_generated|address_reg_a\(0) & (((\dp|mem|ram_rtl_0|auto_generated|ram_block1a48~portadataout\) # (!\dp|mem|ram_rtl_0|auto_generated|address_reg_a\(1))))) # 
-- (!\dp|mem|ram_rtl_0|auto_generated|address_reg_a\(0) & (\dp|mem|ram_rtl_0|auto_generated|ram_block1a32~portadataout\ & ((\dp|mem|ram_rtl_0|auto_generated|address_reg_a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|mem|ram_rtl_0|auto_generated|address_reg_a\(0),
	datab => \dp|mem|ram_rtl_0|auto_generated|ram_block1a32~portadataout\,
	datac => \dp|mem|ram_rtl_0|auto_generated|ram_block1a48~portadataout\,
	datad => \dp|mem|ram_rtl_0|auto_generated|address_reg_a\(1),
	combout => \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[0]~0_combout\);

-- Location: M9K_X22_Y27_N0
\dp|mem|ram_rtl_0|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002D0",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/RISC1.ram0_memory_e411fb78.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "Datapath_RISC:dp|memory:mem|altsyncram:ram_rtl_0|altsyncram_ct81:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \dp|mem|ram_rtl_0|auto_generated|decode3|w_anode423w[2]~4_combout\,
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \dp|mem|ram_rtl_0|auto_generated|decode3|w_anode423w[2]~5_combout\,
	portadatain => \dp|mem|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \dp|mem|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \dp|mem|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X23_Y23_N8
\dp|mem|ram_rtl_0|auto_generated|mux2|result_node[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[0]~1_combout\ = (\dp|mem|ram_rtl_0|auto_generated|mux2|result_node[0]~0_combout\ & ((\dp|mem|ram_rtl_0|auto_generated|ram_block1a16~portadataout\) # ((\dp|mem|ram_rtl_0|auto_generated|address_reg_a\(1))))) 
-- # (!\dp|mem|ram_rtl_0|auto_generated|mux2|result_node[0]~0_combout\ & (((\dp|mem|ram_rtl_0|auto_generated|ram_block1a0~portadataout\ & !\dp|mem|ram_rtl_0|auto_generated|address_reg_a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|mem|ram_rtl_0|auto_generated|ram_block1a16~portadataout\,
	datab => \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[0]~0_combout\,
	datac => \dp|mem|ram_rtl_0|auto_generated|ram_block1a0~portadataout\,
	datad => \dp|mem|ram_rtl_0|auto_generated|address_reg_a\(1),
	combout => \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[0]~1_combout\);

-- Location: FF_X23_Y23_N9
\dp|ir|Dout[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp|mem|ram_rtl_0|auto_generated|mux2|result_node[0]~1_combout\,
	ena => \cp|state.s1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|ir|Dout\(0));

ww_x(0) <= \x[0]~output_o\;

ww_x(1) <= \x[1]~output_o\;

ww_x(2) <= \x[2]~output_o\;

ww_x(3) <= \x[3]~output_o\;

ww_x(4) <= \x[4]~output_o\;

ww_x(5) <= \x[5]~output_o\;

ww_x(6) <= \x[6]~output_o\;

ww_x(7) <= \x[7]~output_o\;

ww_x(8) <= \x[8]~output_o\;

ww_x(9) <= \x[9]~output_o\;

ww_x(10) <= \x[10]~output_o\;

ww_x(11) <= \x[11]~output_o\;

ww_x(12) <= \x[12]~output_o\;

ww_x(13) <= \x[13]~output_o\;

ww_x(14) <= \x[14]~output_o\;

ww_x(15) <= \x[15]~output_o\;
END structure;


