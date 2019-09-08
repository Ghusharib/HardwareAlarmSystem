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
-- CREATED		"Sat Dec 29 23:12:15 2018"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY dlock IS 
	PORT
	(
		DATA :  IN  STD_LOGIC;
		CLOCK :  IN  STD_LOGIC;
		RESET :  IN  STD_LOGIC;
		LOCK :  OUT  STD_LOGIC;
		ALARM :  OUT  STD_LOGIC
	);
END dlock;

ARCHITECTURE bdf_type OF dlock IS 

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	DFF_inst :  STD_LOGIC;


BEGIN 
LOCK <= DFF_inst;
ALARM <= DFF_inst;



PROCESS(CLOCK,SYNTHESIZED_WIRE_0)
BEGIN
IF (SYNTHESIZED_WIRE_0 = '0') THEN
	DFF_inst <= '0';
ELSIF (RISING_EDGE(CLOCK)) THEN
	DFF_inst <= DATA;
END IF;
END PROCESS;


SYNTHESIZED_WIRE_0 <= NOT(RESET);



END bdf_type;