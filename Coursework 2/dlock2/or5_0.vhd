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
-- CREATED		"Sat Dec 29 21:55:56 2018"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY altera;
USE altera.maxplus2.all; 

LIBRARY work;

ENTITY or5_0 IS 
PORT 
( 
	IN1	:	IN	 STD_LOGIC;
	IN3	:	IN	 STD_LOGIC;
	IN2	:	IN	 STD_LOGIC;
	IN5	:	IN	 STD_LOGIC;
	IN4	:	IN	 STD_LOGIC;
	OUT	:	OUT	 STD_LOGIC
); 
END or5_0;

ARCHITECTURE bdf_type OF or5_0 IS 
BEGIN 

-- instantiate macrofunction 

b2v_inst29 : or5
PORT MAP(IN1 => IN1,
		 IN3 => IN3,
		 IN2 => IN2,
		 IN5 => IN5,
		 IN4 => IN4,
		 OUT => OUT);

END bdf_type; 