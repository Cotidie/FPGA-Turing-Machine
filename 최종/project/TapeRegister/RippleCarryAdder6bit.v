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
// CREATED		"Fri Dec 17 14:57:28 2021"

module RippleCarryAdder6bit(
	sub,
	a,
	b,
	carry,
	s
);


input wire	sub;
input wire	[5:0] a;
input wire	[5:0] b;
output wire	carry;
output wire	[5:0] s;

wire	[5:0] s_ALTERA_SYNTHESIZED;
wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_7;
wire	SYNTHESIZED_WIRE_8;
wire	SYNTHESIZED_WIRE_9;
wire	SYNTHESIZED_WIRE_10;




assign	SYNTHESIZED_WIRE_4 = b[0] ^ sub;

assign	SYNTHESIZED_WIRE_0 = b[4] ^ sub;


FullAdder	b2v_inst11(
	.a(a[4]),
	.b(SYNTHESIZED_WIRE_0),
	.c_in(SYNTHESIZED_WIRE_1),
	.sum(s_ALTERA_SYNTHESIZED[4]),
	.carry(SYNTHESIZED_WIRE_3));

assign	SYNTHESIZED_WIRE_2 = b[5] ^ sub;


FullAdder	b2v_inst13(
	.a(a[5]),
	.b(SYNTHESIZED_WIRE_2),
	.c_in(SYNTHESIZED_WIRE_3),
	.sum(s_ALTERA_SYNTHESIZED[5]),
	.carry(carry));


FullAdder	b2v_inst3(
	.a(a[0]),
	.b(SYNTHESIZED_WIRE_4),
	.c_in(sub),
	.sum(s_ALTERA_SYNTHESIZED[0]),
	.carry(SYNTHESIZED_WIRE_6));

assign	SYNTHESIZED_WIRE_5 = b[1] ^ sub;


FullAdder	b2v_inst5(
	.a(a[1]),
	.b(SYNTHESIZED_WIRE_5),
	.c_in(SYNTHESIZED_WIRE_6),
	.sum(s_ALTERA_SYNTHESIZED[1]),
	.carry(SYNTHESIZED_WIRE_8));

assign	SYNTHESIZED_WIRE_7 = b[2] ^ sub;


FullAdder	b2v_inst7(
	.a(a[2]),
	.b(SYNTHESIZED_WIRE_7),
	.c_in(SYNTHESIZED_WIRE_8),
	.sum(s_ALTERA_SYNTHESIZED[2]),
	.carry(SYNTHESIZED_WIRE_10));

assign	SYNTHESIZED_WIRE_9 = b[3] ^ sub;


FullAdder	b2v_inst9(
	.a(a[3]),
	.b(SYNTHESIZED_WIRE_9),
	.c_in(SYNTHESIZED_WIRE_10),
	.sum(s_ALTERA_SYNTHESIZED[3]),
	.carry(SYNTHESIZED_WIRE_1));

assign	s = s_ALTERA_SYNTHESIZED;

endmodule
