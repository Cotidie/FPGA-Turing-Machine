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
// CREATED		"Fri Dec 17 16:28:18 2021"

module render_tapeSymbol(
	Din,
	pos,
	symbol,
	com1,
	com2,
	com3,
	com4,
	com5,
	com6,
	com7,
	com8,
	a,
	b,
	c,
	d,
	e,
	f,
	g
);


input wire	Din;
input wire	[2:0] pos;
input wire	[1:0] symbol;
output wire	com1;
output wire	com2;
output wire	com3;
output wire	com4;
output wire	com5;
output wire	com6;
output wire	com7;
output wire	com8;
output wire	a;
output wire	b;
output wire	c;
output wire	d;
output wire	e;
output wire	f;
output wire	g;

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
wire	SYNTHESIZED_WIRE_11;
wire	SYNTHESIZED_WIRE_12;
wire	SYNTHESIZED_WIRE_13;
wire	SYNTHESIZED_WIRE_14;
wire	SYNTHESIZED_WIRE_15;
wire	SYNTHESIZED_WIRE_16;
wire	SYNTHESIZED_WIRE_17;
wire	SYNTHESIZED_WIRE_18;
wire	SYNTHESIZED_WIRE_19;
wire	SYNTHESIZED_WIRE_20;
wire	SYNTHESIZED_WIRE_21;
wire	SYNTHESIZED_WIRE_22;
wire	SYNTHESIZED_WIRE_23;
wire	SYNTHESIZED_WIRE_24;
wire	SYNTHESIZED_WIRE_25;
wire	SYNTHESIZED_WIRE_26;
wire	SYNTHESIZED_WIRE_27;
wire	SYNTHESIZED_WIRE_28;
wire	SYNTHESIZED_WIRE_29;
wire	SYNTHESIZED_WIRE_30;
wire	SYNTHESIZED_WIRE_31;
wire	SYNTHESIZED_WIRE_32;
wire	SYNTHESIZED_WIRE_33;
wire	SYNTHESIZED_WIRE_34;
wire	SYNTHESIZED_WIRE_35;
wire	SYNTHESIZED_WIRE_36;
wire	SYNTHESIZED_WIRE_37;
wire	SYNTHESIZED_WIRE_38;
wire	SYNTHESIZED_WIRE_39;





demux_1x8	b2v_inst(
	.Din(Din),
	.sel(pos),
	.Dout_7(SYNTHESIZED_WIRE_23),
	.Dout_6(SYNTHESIZED_WIRE_32),
	.Dout_5(SYNTHESIZED_WIRE_34),
	.Dout_4(SYNTHESIZED_WIRE_35),
	.Dout_3(SYNTHESIZED_WIRE_36),
	.Dout_2(SYNTHESIZED_WIRE_37),
	.Dout_1(SYNTHESIZED_WIRE_38),
	.Dout_0(SYNTHESIZED_WIRE_39));


demux_1x4	b2v_inst1(
	.Din(Din),
	.sel(symbol),
	.Dout_3(SYNTHESIZED_WIRE_2),
	.Dout_2(SYNTHESIZED_WIRE_1),
	.Dout_1(SYNTHESIZED_WIRE_0),
	.Dout_0(SYNTHESIZED_WIRE_33));


render_tapeSymbol_1	b2v_inst10(
	.Din(SYNTHESIZED_WIRE_0),
	.a(SYNTHESIZED_WIRE_4),
	.b(SYNTHESIZED_WIRE_8),
	.c(SYNTHESIZED_WIRE_12),
	.d(SYNTHESIZED_WIRE_16),
	.e(SYNTHESIZED_WIRE_20),
	.f(SYNTHESIZED_WIRE_25),
	.g(SYNTHESIZED_WIRE_29));


render_tapeSymbol_2	b2v_inst11(
	.Din(SYNTHESIZED_WIRE_1),
	.a(SYNTHESIZED_WIRE_6),
	.b(SYNTHESIZED_WIRE_10),
	.c(SYNTHESIZED_WIRE_14),
	.d(SYNTHESIZED_WIRE_18),
	.e(SYNTHESIZED_WIRE_22),
	.f(SYNTHESIZED_WIRE_27),
	.g(SYNTHESIZED_WIRE_31));


render_tapeSymbol_3	b2v_inst12(
	.Din(SYNTHESIZED_WIRE_2),
	.a(SYNTHESIZED_WIRE_3),
	.b(SYNTHESIZED_WIRE_7),
	.c(SYNTHESIZED_WIRE_11),
	.d(SYNTHESIZED_WIRE_15),
	.e(SYNTHESIZED_WIRE_19),
	.f(SYNTHESIZED_WIRE_24),
	.g(SYNTHESIZED_WIRE_28));

assign	a = SYNTHESIZED_WIRE_3 | SYNTHESIZED_WIRE_4 | SYNTHESIZED_WIRE_5 | SYNTHESIZED_WIRE_6;

assign	b = SYNTHESIZED_WIRE_7 | SYNTHESIZED_WIRE_8 | SYNTHESIZED_WIRE_9 | SYNTHESIZED_WIRE_10;

assign	c = SYNTHESIZED_WIRE_11 | SYNTHESIZED_WIRE_12 | SYNTHESIZED_WIRE_13 | SYNTHESIZED_WIRE_14;

assign	d = SYNTHESIZED_WIRE_15 | SYNTHESIZED_WIRE_16 | SYNTHESIZED_WIRE_17 | SYNTHESIZED_WIRE_18;

assign	e = SYNTHESIZED_WIRE_19 | SYNTHESIZED_WIRE_20 | SYNTHESIZED_WIRE_21 | SYNTHESIZED_WIRE_22;

assign	com8 =  ~SYNTHESIZED_WIRE_23;

assign	f = SYNTHESIZED_WIRE_24 | SYNTHESIZED_WIRE_25 | SYNTHESIZED_WIRE_26 | SYNTHESIZED_WIRE_27;

assign	g = SYNTHESIZED_WIRE_28 | SYNTHESIZED_WIRE_29 | SYNTHESIZED_WIRE_30 | SYNTHESIZED_WIRE_31;

assign	com7 =  ~SYNTHESIZED_WIRE_32;


render_tapeSymbol_0	b2v_inst3516321(
	.Din(SYNTHESIZED_WIRE_33),
	.a(SYNTHESIZED_WIRE_5),
	.b(SYNTHESIZED_WIRE_9),
	.c(SYNTHESIZED_WIRE_13),
	.d(SYNTHESIZED_WIRE_17),
	.e(SYNTHESIZED_WIRE_21),
	.f(SYNTHESIZED_WIRE_26),
	.g(SYNTHESIZED_WIRE_30));

assign	com6 =  ~SYNTHESIZED_WIRE_34;

assign	com5 =  ~SYNTHESIZED_WIRE_35;

assign	com4 =  ~SYNTHESIZED_WIRE_36;

assign	com3 =  ~SYNTHESIZED_WIRE_37;

assign	com2 =  ~SYNTHESIZED_WIRE_38;

assign	com1 =  ~SYNTHESIZED_WIRE_39;


endmodule
