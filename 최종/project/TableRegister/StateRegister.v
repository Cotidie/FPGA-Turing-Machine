// Copyright (C) 2020  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and any partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel FPGA IP License Agreement, or other applicable license
// agreement, including, without limitation, that your use is for
// the sole purpose of programming logic devices manufactured by
// Intel and sold by Intel or its authorized distributors.  Please
// refer to the applicable agreement for further details, at
// https://fpgasoftware.intel.com/eula.

// PROGRAM		"Quartus Prime"
// VERSION		"Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"
// CREATED		"Tue Dec 21 12:04:26 2021"

module StateRegister(
	clk,
	rst_n,
	s2,
	trigger,
	s10,
	keypad,
	nextQ,
	state
);


input wire	clk;
input wire	rst_n;
input wire	s2;
input wire	trigger;
input wire	s10;
input wire	[2:0] keypad;
input wire	[2:0] nextQ;
output wire	[2:0] state;

wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	[2:0] SYNTHESIZED_WIRE_2;




assign	SYNTHESIZED_WIRE_0 = s2 & trigger;

assign	SYNTHESIZED_WIRE_1 = s10 | SYNTHESIZED_WIRE_0;


Mux3bit2x1	b2v_mux3(
	.sel(s10),
	.Din0(keypad),
	.Din1(nextQ),
	.Dout(SYNTHESIZED_WIRE_2));


Register3	b2v_reg3(
	.ce(SYNTHESIZED_WIRE_1),
	.clk(clk),
	.rst_n(rst_n),
	.Din(SYNTHESIZED_WIRE_2),
	.Dout(state));


endmodule
