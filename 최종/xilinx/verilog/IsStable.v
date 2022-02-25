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
// CREATED		"Wed Dec 22 02:53:30 2021"

module IsStable(
	clk,
	rst_n,
	cur,
	move,
	nextQ,
	s,
	writeS,
	same
);


input wire	clk;
input wire	rst_n;
input wire	[2:0] cur;
input wire	[1:0] move;
input wire	[2:0] nextQ;
input wire	[13:0] s;
input wire	[1:0] writeS;
output wire	same;

wire	[2:0] SYNTHESIZED_WIRE_0;
wire	[1:0] SYNTHESIZED_WIRE_1;
wire	[1:0] SYNTHESIZED_WIRE_2;
wire	[2:0] SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_7;
wire	SYNTHESIZED_WIRE_8;





Register3	b2v_curReg(
	.ce(s[11]),
	.clk(clk),
	.rst_n(rst_n),
	.Din(cur),
	.Dout(SYNTHESIZED_WIRE_3));


Compare3bit	b2v_inst(
	.a(SYNTHESIZED_WIRE_0),
	.b(nextQ),
	.same(SYNTHESIZED_WIRE_5));


Compare2bit	b2v_inst5(
	.a(SYNTHESIZED_WIRE_1),
	.b(writeS),
	.same(SYNTHESIZED_WIRE_6));


Compare2bit	b2v_inst6(
	.a(SYNTHESIZED_WIRE_2),
	.b(move),
	.same(SYNTHESIZED_WIRE_7));


Compare3bit	b2v_inst7(
	.a(SYNTHESIZED_WIRE_3),
	.b(cur),
	.same(SYNTHESIZED_WIRE_4));

assign	SYNTHESIZED_WIRE_8 = SYNTHESIZED_WIRE_4 & SYNTHESIZED_WIRE_5 & SYNTHESIZED_WIRE_6 & SYNTHESIZED_WIRE_7;

assign	same = s[11] & SYNTHESIZED_WIRE_8;


Register2	b2v_moveReg(
	.ce(s[11]),
	.clk(clk),
	.rst_n(rst_n),
	.Din(move),
	.Dout(SYNTHESIZED_WIRE_2));


Register3	b2v_nextReg(
	.ce(s[11]),
	.clk(clk),
	.rst_n(rst_n),
	.Din(nextQ),
	.Dout(SYNTHESIZED_WIRE_0));


Register2	b2v_writeReg(
	.ce(s[11]),
	.clk(clk),
	.rst_n(rst_n),
	.Din(writeS),
	.Dout(SYNTHESIZED_WIRE_1));


endmodule
