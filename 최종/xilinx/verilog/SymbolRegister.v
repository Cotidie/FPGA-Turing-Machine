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
// CREATED		"Tue Dec 21 12:04:22 2021"

module SymbolRegister(
	clk,
	rst_n,
	s9,
	s3,
	trigger,
	keypad,
	readS,
	symbol
);


input wire	clk;
input wire	rst_n;
input wire	s9;
input wire	s3;
input wire	trigger;
input wire	[2:0] keypad;
input wire	[1:0] readS;
output wire	[1:0] symbol;

wire	SYNTHESIZED_WIRE_0;
wire	[1:0] SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;





Register2	b2v_inst(
	.ce(SYNTHESIZED_WIRE_0),
	.clk(clk),
	.rst_n(rst_n),
	.Din(SYNTHESIZED_WIRE_1),
	.Dout(symbol));

assign	SYNTHESIZED_WIRE_0 = s9 | SYNTHESIZED_WIRE_2;

assign	SYNTHESIZED_WIRE_2 = s3 & trigger;


Mux2bit2x1	b2v_inst5(
	.sel(s9),
	.Din0(keypad[1:0]),
	.Din1(readS),
	.Dout(SYNTHESIZED_WIRE_1));


endmodule
