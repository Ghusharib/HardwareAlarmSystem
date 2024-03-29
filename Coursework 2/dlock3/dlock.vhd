-- Copyright (C) 1991-2011 Altera Corporation
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

-- PROGRAM		"Quartus II 32-bit"
-- VERSION		"Version 11.1 Build 259 01/25/2012 Service Pack 2 SJ Web Edition"
-- CREATED		"Fri Jan 11 09:36:03 2019"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY dlock IS 
	PORT
	(
		DATA :  IN  STD_LOGIC;
		CLOCK :  IN  STD_LOGIC;
		RESET :  IN  STD_LOGIC;
		ALARM :  OUT  STD_LOGIC;
		LOCK :  OUT  STD_LOGIC
	);
END dlock;

ARCHITECTURE bdf_type OF dlock IS 

SIGNAL	D0 :  STD_LOGIC;
SIGNAL	D1 :  STD_LOGIC;
SIGNAL	D2 :  STD_LOGIC;
SIGNAL	NDATA :  STD_LOGIC;
SIGNAL	NQ0 :  STD_LOGIC;
SIGNAL	NQ1 :  STD_LOGIC;
SIGNAL	NQ2 :  STD_LOGIC;
SIGNAL	Q0 :  STD_LOGIC;
SIGNAL	Q1 :  STD_LOGIC;
SIGNAL	Q2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_20 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_8 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_9 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_10 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_21 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_12 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_14 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_16 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_17 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_18 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_19 :  STD_LOGIC;


BEGIN 



PROCESS(CLOCK,SYNTHESIZED_WIRE_20)
BEGIN
IF (SYNTHESIZED_WIRE_20 = '0') THEN
	Q0 <= '0';
ELSIF (RISING_EDGE(CLOCK)) THEN
	Q0 <= D0;
END IF;
END PROCESS;


PROCESS(CLOCK,SYNTHESIZED_WIRE_20)
BEGIN
IF (SYNTHESIZED_WIRE_20 = '0') THEN
	Q1 <= '0';
ELSIF (RISING_EDGE(CLOCK)) THEN
	Q1 <= D1;
END IF;
END PROCESS;


PROCESS(CLOCK,SYNTHESIZED_WIRE_20)
BEGIN
IF (SYNTHESIZED_WIRE_20 = '0') THEN
	Q2 <= '0';
ELSIF (RISING_EDGE(CLOCK)) THEN
	Q2 <= D2;
END IF;
END PROCESS;


NQ0 <= NOT(Q0);



SYNTHESIZED_WIRE_19 <= Q2 AND Q1;


SYNTHESIZED_WIRE_5 <= NOT(SYNTHESIZED_WIRE_3 AND SYNTHESIZED_WIRE_4);


SYNTHESIZED_WIRE_17 <= NOT(NQ0 AND SYNTHESIZED_WIRE_5);


SYNTHESIZED_WIRE_6 <= NOT(Q1 AND NDATA);


SYNTHESIZED_WIRE_10 <= NOT(Q2 AND SYNTHESIZED_WIRE_6);


SYNTHESIZED_WIRE_8 <= Q1 AND NQ0 AND DATA;


SYNTHESIZED_WIRE_20 <= NOT(RESET);



SYNTHESIZED_WIRE_9 <= NOT(Q0 AND Q1);


NQ1 <= NOT(Q1);



SYNTHESIZED_WIRE_12 <= NOT(Q0 AND NQ1);


SYNTHESIZED_WIRE_21 <= NOT(NQ2 AND NDATA);


SYNTHESIZED_WIRE_16 <= NOT(Q0 AND Q2);


SYNTHESIZED_WIRE_14 <= NOT(SYNTHESIZED_WIRE_7 OR SYNTHESIZED_WIRE_8);


D2 <= NOT(SYNTHESIZED_WIRE_9 AND SYNTHESIZED_WIRE_10 AND SYNTHESIZED_WIRE_21);


D1 <= NOT(SYNTHESIZED_WIRE_12 AND SYNTHESIZED_WIRE_21 AND SYNTHESIZED_WIRE_14);


NQ2 <= NOT(Q2);



D0 <= NOT(SYNTHESIZED_WIRE_21 AND SYNTHESIZED_WIRE_16 AND SYNTHESIZED_WIRE_17);


SYNTHESIZED_WIRE_18 <= NOT(Q0 OR NQ1);


ALARM <= Q2 AND Q1 AND Q0;


SYNTHESIZED_WIRE_7 <= NOT(NQ2 OR SYNTHESIZED_WIRE_18);


LOCK <= NOT(NQ0 AND SYNTHESIZED_WIRE_19);


NDATA <= NOT(DATA);



SYNTHESIZED_WIRE_4 <= NOT(NQ1 AND DATA);


SYNTHESIZED_WIRE_3 <= NOT(Q1 AND NQ2);


END bdf_type;