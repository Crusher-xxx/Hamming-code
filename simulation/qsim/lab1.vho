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
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "02/22/2021 20:05:18"

-- 
-- Device: Altera 5CEBA2F17C8 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	lab1 IS
    PORT (
	C : IN std_logic;
	data : IN std_logic_vector(0 TO 15);
	Q : OUT std_logic_vector(0 TO 20)
	);
END lab1;

-- Design Ports Information
-- C	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[20]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[19]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[18]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[17]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[16]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[15]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[14]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[13]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[12]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[11]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[10]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[9]	=>  Location: PIN_L10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[8]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[7]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[6]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[5]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[4]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[3]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[2]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[1]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[0]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[15]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[14]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[13]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[12]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[11]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[10]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[9]	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[8]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[7]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[6]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[5]	=>  Location: PIN_M13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[4]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[3]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[2]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[1]	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[0]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_C : std_logic;
SIGNAL ww_data : std_logic_vector(0 TO 15);
SIGNAL ww_Q : std_logic_vector(0 TO 20);
SIGNAL \C~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \data[15]~input_o\ : std_logic;
SIGNAL \data[14]~input_o\ : std_logic;
SIGNAL \data[13]~input_o\ : std_logic;
SIGNAL \data[12]~input_o\ : std_logic;
SIGNAL \data[11]~input_o\ : std_logic;
SIGNAL \Add34~0_combout\ : std_logic;
SIGNAL \data[10]~input_o\ : std_logic;
SIGNAL \data[9]~input_o\ : std_logic;
SIGNAL \data[8]~input_o\ : std_logic;
SIGNAL \data[7]~input_o\ : std_logic;
SIGNAL \data[6]~input_o\ : std_logic;
SIGNAL \data[5]~input_o\ : std_logic;
SIGNAL \data[4]~input_o\ : std_logic;
SIGNAL \Add34~1_combout\ : std_logic;
SIGNAL \Add30~0_combout\ : std_logic;
SIGNAL \data[3]~input_o\ : std_logic;
SIGNAL \data[2]~input_o\ : std_logic;
SIGNAL \data[1]~input_o\ : std_logic;
SIGNAL \Add24~0_combout\ : std_logic;
SIGNAL \data[0]~input_o\ : std_logic;
SIGNAL \Add34~2_combout\ : std_logic;
SIGNAL \Add16~0_combout\ : std_logic;
SIGNAL \Add8~0_combout\ : std_logic;
SIGNAL \ALT_INV_Add34~1_combout\ : std_logic;
SIGNAL \ALT_INV_Add34~2_combout\ : std_logic;
SIGNAL \ALT_INV_data[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_data[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_data[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_data[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_data[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_data[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_data[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_data[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_data[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_data[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_data[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_data[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_data[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_data[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_data[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_data[0]~input_o\ : std_logic;

BEGIN

ww_C <= C;
ww_data <= data;
Q <= ww_Q;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Add34~1_combout\ <= NOT \Add34~1_combout\;
\ALT_INV_Add34~2_combout\ <= NOT \Add34~2_combout\;
\ALT_INV_data[12]~input_o\ <= NOT \data[12]~input_o\;
\ALT_INV_data[11]~input_o\ <= NOT \data[11]~input_o\;
\ALT_INV_data[10]~input_o\ <= NOT \data[10]~input_o\;
\ALT_INV_data[9]~input_o\ <= NOT \data[9]~input_o\;
\ALT_INV_data[8]~input_o\ <= NOT \data[8]~input_o\;
\ALT_INV_data[15]~input_o\ <= NOT \data[15]~input_o\;
\ALT_INV_data[14]~input_o\ <= NOT \data[14]~input_o\;
\ALT_INV_data[13]~input_o\ <= NOT \data[13]~input_o\;
\ALT_INV_data[7]~input_o\ <= NOT \data[7]~input_o\;
\ALT_INV_data[6]~input_o\ <= NOT \data[6]~input_o\;
\ALT_INV_data[5]~input_o\ <= NOT \data[5]~input_o\;
\ALT_INV_data[4]~input_o\ <= NOT \data[4]~input_o\;
\ALT_INV_data[3]~input_o\ <= NOT \data[3]~input_o\;
\ALT_INV_data[2]~input_o\ <= NOT \data[2]~input_o\;
\ALT_INV_data[1]~input_o\ <= NOT \data[1]~input_o\;
\ALT_INV_data[0]~input_o\ <= NOT \data[0]~input_o\;

-- Location: IOOBUF_X24_Y0_N2
\Q[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \data[15]~input_o\,
	devoe => ww_devoe,
	o => ww_Q(20));

-- Location: IOOBUF_X14_Y0_N36
\Q[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \data[14]~input_o\,
	devoe => ww_devoe,
	o => ww_Q(19));

-- Location: IOOBUF_X23_Y0_N93
\Q[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \data[13]~input_o\,
	devoe => ww_devoe,
	o => ww_Q(18));

-- Location: IOOBUF_X11_Y0_N19
\Q[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \data[12]~input_o\,
	devoe => ww_devoe,
	o => ww_Q(17));

-- Location: IOOBUF_X33_Y0_N59
\Q[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \data[11]~input_o\,
	devoe => ww_devoe,
	o => ww_Q(16));

-- Location: IOOBUF_X29_Y0_N36
\Q[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add34~0_combout\,
	devoe => ww_devoe,
	o => ww_Q(15));

-- Location: IOOBUF_X11_Y0_N36
\Q[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \data[10]~input_o\,
	devoe => ww_devoe,
	o => ww_Q(14));

-- Location: IOOBUF_X34_Y0_N36
\Q[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \data[9]~input_o\,
	devoe => ww_devoe,
	o => ww_Q(13));

-- Location: IOOBUF_X12_Y0_N19
\Q[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \data[8]~input_o\,
	devoe => ww_devoe,
	o => ww_Q(12));

-- Location: IOOBUF_X25_Y0_N36
\Q[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \data[7]~input_o\,
	devoe => ww_devoe,
	o => ww_Q(11));

-- Location: IOOBUF_X29_Y0_N53
\Q[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \data[6]~input_o\,
	devoe => ww_devoe,
	o => ww_Q(10));

-- Location: IOOBUF_X34_Y0_N2
\Q[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \data[5]~input_o\,
	devoe => ww_devoe,
	o => ww_Q(9));

-- Location: IOOBUF_X23_Y0_N59
\Q[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \data[4]~input_o\,
	devoe => ww_devoe,
	o => ww_Q(8));

-- Location: IOOBUF_X24_Y0_N36
\Q[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add30~0_combout\,
	devoe => ww_devoe,
	o => ww_Q(7));

-- Location: IOOBUF_X24_Y0_N19
\Q[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \data[3]~input_o\,
	devoe => ww_devoe,
	o => ww_Q(6));

-- Location: IOOBUF_X25_Y0_N2
\Q[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \data[2]~input_o\,
	devoe => ww_devoe,
	o => ww_Q(5));

-- Location: IOOBUF_X12_Y0_N2
\Q[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \data[1]~input_o\,
	devoe => ww_devoe,
	o => ww_Q(4));

-- Location: IOOBUF_X14_Y0_N19
\Q[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add24~0_combout\,
	devoe => ww_devoe,
	o => ww_Q(3));

-- Location: IOOBUF_X10_Y0_N59
\Q[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \data[0]~input_o\,
	devoe => ww_devoe,
	o => ww_Q(2));

-- Location: IOOBUF_X14_Y0_N2
\Q[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add16~0_combout\,
	devoe => ww_devoe,
	o => ww_Q(1));

-- Location: IOOBUF_X33_Y0_N42
\Q[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add8~0_combout\,
	devoe => ww_devoe,
	o => ww_Q(0));

-- Location: IOIBUF_X24_Y0_N52
\data[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(15),
	o => \data[15]~input_o\);

-- Location: IOIBUF_X14_Y0_N52
\data[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(14),
	o => \data[14]~input_o\);

-- Location: IOIBUF_X23_Y0_N75
\data[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(13),
	o => \data[13]~input_o\);

-- Location: IOIBUF_X11_Y0_N1
\data[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(12),
	o => \data[12]~input_o\);

-- Location: IOIBUF_X33_Y0_N92
\data[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(11),
	o => \data[11]~input_o\);

-- Location: MLABCELL_X23_Y1_N30
\Add34~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add34~0_combout\ = ( \data[12]~input_o\ & ( \data[11]~input_o\ & ( !\data[13]~input_o\ $ (!\data[14]~input_o\ $ (\data[15]~input_o\)) ) ) ) # ( !\data[12]~input_o\ & ( \data[11]~input_o\ & ( !\data[13]~input_o\ $ (!\data[14]~input_o\ $ 
-- (!\data[15]~input_o\)) ) ) ) # ( \data[12]~input_o\ & ( !\data[11]~input_o\ & ( !\data[13]~input_o\ $ (!\data[14]~input_o\ $ (!\data[15]~input_o\)) ) ) ) # ( !\data[12]~input_o\ & ( !\data[11]~input_o\ & ( !\data[13]~input_o\ $ (!\data[14]~input_o\ $ 
-- (\data[15]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000011110000110011110011000011001111000011110011000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_data[13]~input_o\,
	datac => \ALT_INV_data[14]~input_o\,
	datad => \ALT_INV_data[15]~input_o\,
	datae => \ALT_INV_data[12]~input_o\,
	dataf => \ALT_INV_data[11]~input_o\,
	combout => \Add34~0_combout\);

-- Location: IOIBUF_X11_Y0_N52
\data[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(10),
	o => \data[10]~input_o\);

-- Location: IOIBUF_X34_Y0_N18
\data[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(9),
	o => \data[9]~input_o\);

-- Location: IOIBUF_X12_Y0_N35
\data[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(8),
	o => \data[8]~input_o\);

-- Location: IOIBUF_X25_Y0_N18
\data[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(7),
	o => \data[7]~input_o\);

-- Location: IOIBUF_X29_Y0_N1
\data[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(6),
	o => \data[6]~input_o\);

-- Location: IOIBUF_X34_Y0_N52
\data[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(5),
	o => \data[5]~input_o\);

-- Location: IOIBUF_X23_Y0_N41
\data[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(4),
	o => \data[4]~input_o\);

-- Location: MLABCELL_X23_Y1_N6
\Add34~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add34~1_combout\ = ( \data[10]~input_o\ & ( !\data[9]~input_o\ $ (!\data[8]~input_o\ $ (!\data[7]~input_o\)) ) ) # ( !\data[10]~input_o\ & ( !\data[9]~input_o\ $ (!\data[8]~input_o\ $ (\data[7]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000011001111001100001111000011001111001100001100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_data[9]~input_o\,
	datac => \ALT_INV_data[8]~input_o\,
	datad => \ALT_INV_data[7]~input_o\,
	dataf => \ALT_INV_data[10]~input_o\,
	combout => \Add34~1_combout\);

-- Location: MLABCELL_X23_Y1_N9
\Add30~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add30~0_combout\ = ( \data[5]~input_o\ & ( !\data[4]~input_o\ $ (!\data[6]~input_o\ $ (!\Add34~1_combout\)) ) ) # ( !\data[5]~input_o\ & ( !\data[4]~input_o\ $ (!\data[6]~input_o\ $ (\Add34~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101010110101010010110100101010110101010010101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_data[4]~input_o\,
	datac => \ALT_INV_data[6]~input_o\,
	datad => \ALT_INV_Add34~1_combout\,
	dataf => \ALT_INV_data[5]~input_o\,
	combout => \Add30~0_combout\);

-- Location: IOIBUF_X29_Y0_N18
\data[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(3),
	o => \data[3]~input_o\);

-- Location: IOIBUF_X25_Y0_N52
\data[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(2),
	o => \data[2]~input_o\);

-- Location: IOIBUF_X12_Y0_N52
\data[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(1),
	o => \data[1]~input_o\);

-- Location: MLABCELL_X23_Y1_N12
\Add24~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add24~0_combout\ = ( \data[3]~input_o\ & ( \data[15]~input_o\ & ( !\data[14]~input_o\ $ (!\Add34~1_combout\ $ (!\data[1]~input_o\ $ (!\data[2]~input_o\))) ) ) ) # ( !\data[3]~input_o\ & ( \data[15]~input_o\ & ( !\data[14]~input_o\ $ (!\Add34~1_combout\ $ 
-- (!\data[1]~input_o\ $ (\data[2]~input_o\))) ) ) ) # ( \data[3]~input_o\ & ( !\data[15]~input_o\ & ( !\data[14]~input_o\ $ (!\Add34~1_combout\ $ (!\data[1]~input_o\ $ (\data[2]~input_o\))) ) ) ) # ( !\data[3]~input_o\ & ( !\data[15]~input_o\ & ( 
-- !\data[14]~input_o\ $ (!\Add34~1_combout\ $ (!\data[1]~input_o\ $ (!\data[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110010110100101100110100110010110011010010110100110010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_data[14]~input_o\,
	datab => \ALT_INV_Add34~1_combout\,
	datac => \ALT_INV_data[1]~input_o\,
	datad => \ALT_INV_data[2]~input_o\,
	datae => \ALT_INV_data[3]~input_o\,
	dataf => \ALT_INV_data[15]~input_o\,
	combout => \Add24~0_combout\);

-- Location: IOIBUF_X10_Y0_N92
\data[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(0),
	o => \data[0]~input_o\);

-- Location: MLABCELL_X23_Y1_N18
\Add34~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add34~2_combout\ = ( \data[3]~input_o\ & ( \data[6]~input_o\ & ( !\data[10]~input_o\ $ (!\data[0]~input_o\ $ (\data[13]~input_o\)) ) ) ) # ( !\data[3]~input_o\ & ( \data[6]~input_o\ & ( !\data[10]~input_o\ $ (!\data[0]~input_o\ $ (!\data[13]~input_o\)) ) 
-- ) ) # ( \data[3]~input_o\ & ( !\data[6]~input_o\ & ( !\data[10]~input_o\ $ (!\data[0]~input_o\ $ (!\data[13]~input_o\)) ) ) ) # ( !\data[3]~input_o\ & ( !\data[6]~input_o\ & ( !\data[10]~input_o\ $ (!\data[0]~input_o\ $ (\data[13]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000011110000110011110011000011001111000011110011000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_data[10]~input_o\,
	datac => \ALT_INV_data[0]~input_o\,
	datad => \ALT_INV_data[13]~input_o\,
	datae => \ALT_INV_data[3]~input_o\,
	dataf => \ALT_INV_data[6]~input_o\,
	combout => \Add34~2_combout\);

-- Location: MLABCELL_X23_Y1_N27
\Add16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add16~0_combout\ = ( \data[12]~input_o\ & ( \data[5]~input_o\ & ( !\Add34~2_combout\ $ (!\data[9]~input_o\ $ (\data[2]~input_o\)) ) ) ) # ( !\data[12]~input_o\ & ( \data[5]~input_o\ & ( !\Add34~2_combout\ $ (!\data[9]~input_o\ $ (!\data[2]~input_o\)) ) ) 
-- ) # ( \data[12]~input_o\ & ( !\data[5]~input_o\ & ( !\Add34~2_combout\ $ (!\data[9]~input_o\ $ (!\data[2]~input_o\)) ) ) ) # ( !\data[12]~input_o\ & ( !\data[5]~input_o\ & ( !\Add34~2_combout\ $ (!\data[9]~input_o\ $ (\data[2]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001100101101001011010010110100101100110100101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add34~2_combout\,
	datab => \ALT_INV_data[9]~input_o\,
	datac => \ALT_INV_data[2]~input_o\,
	datae => \ALT_INV_data[12]~input_o\,
	dataf => \ALT_INV_data[5]~input_o\,
	combout => \Add16~0_combout\);

-- Location: MLABCELL_X23_Y1_N0
\Add8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~0_combout\ = ( \data[4]~input_o\ & ( \data[11]~input_o\ & ( !\data[1]~input_o\ $ (!\data[15]~input_o\ $ (!\Add34~2_combout\ $ (!\data[8]~input_o\))) ) ) ) # ( !\data[4]~input_o\ & ( \data[11]~input_o\ & ( !\data[1]~input_o\ $ (!\data[15]~input_o\ $ 
-- (!\Add34~2_combout\ $ (\data[8]~input_o\))) ) ) ) # ( \data[4]~input_o\ & ( !\data[11]~input_o\ & ( !\data[1]~input_o\ $ (!\data[15]~input_o\ $ (!\Add34~2_combout\ $ (\data[8]~input_o\))) ) ) ) # ( !\data[4]~input_o\ & ( !\data[11]~input_o\ & ( 
-- !\data[1]~input_o\ $ (!\data[15]~input_o\ $ (!\Add34~2_combout\ $ (!\data[8]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110010110100101100110100110010110011010010110100110010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_data[1]~input_o\,
	datab => \ALT_INV_data[15]~input_o\,
	datac => \ALT_INV_Add34~2_combout\,
	datad => \ALT_INV_data[8]~input_o\,
	datae => \ALT_INV_data[4]~input_o\,
	dataf => \ALT_INV_data[11]~input_o\,
	combout => \Add8~0_combout\);

-- Location: IOIBUF_X54_Y21_N55
\C~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C,
	o => \C~input_o\);

-- Location: MLABCELL_X49_Y44_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


