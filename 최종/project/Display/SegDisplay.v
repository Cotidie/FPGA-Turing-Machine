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
// CREATED		"Tue Dec 21 12:03:19 2021"

module SegDisplay(
	clk,
	rst_n,
	lcdData,
	com0,
	com1,
	com2,
	com3,
	com4,
	com5,
	com6,
	com7,
	a,
	b,
	c,
	d,
	e,
	f,
	g
);


input wire	clk;
input wire	rst_n;
input wire	[15:0] lcdData;
output wire	com0;
output wire	com1;
output wire	com2;
output wire	com3;
output wire	com4;
output wire	com5;
output wire	com6;
output wire	com7;
output wire	a;
output wire	b;
output wire	c;
output wire	d;
output wire	e;
output wire	f;
output wire	g;

wire	[7:0] Dout;
wire	SYNTHESIZED_WIRE_0;
wire	[1:0] SYNTHESIZED_WIRE_1;
wire	[1:0] SYNTHESIZED_WIRE_2;
wire	[1:0] SYNTHESIZED_WIRE_3;
wire	[1:0] SYNTHESIZED_WIRE_4;
wire	[1:0] SYNTHESIZED_WIRE_5;
wire	[1:0] SYNTHESIZED_WIRE_6;
wire	[1:0] SYNTHESIZED_WIRE_7;
wire	[1:0] SYNTHESIZED_WIRE_8;
wire	[1:0] SYNTHESIZED_WIRE_9;
wire	[2:0] SYNTHESIZED_WIRE_12;

assign	SYNTHESIZED_WIRE_0 = 1;




count_8	b2v_inst(
	.ce(SYNTHESIZED_WIRE_0),
	.clk(clk),
	.rst_n(rst_n),
	.cnt(SYNTHESIZED_WIRE_12));


BinaryToSeg2Bit	b2v_inst10(
	.din(SYNTHESIZED_WIRE_1),
	.a(a),
	.b(b),
	.c(c),
	.d(d),
	.e(e),
	.f(f),
	.g(g));

assign	com5 =  ~Dout[5];

assign	com6 =  ~Dout[6];

assign	com7 =  ~Dout[7];


cvt_1x2_2x1	b2v_inst16(
	.Din0(lcdData[0]),
	.Din1(lcdData[1]),
	.Dout(SYNTHESIZED_WIRE_2));


cvt_1x2_2x1	b2v_inst17(
	.Din0(lcdData[2]),
	.Din1(lcdData[3]),
	.Dout(SYNTHESIZED_WIRE_3));


cvt_1x2_2x1	b2v_inst18(
	.Din0(lcdData[4]),
	.Din1(lcdData[5]),
	.Dout(SYNTHESIZED_WIRE_4));


cvt_1x2_2x1	b2v_inst19(
	.Din0(lcdData[6]),
	.Din1(lcdData[7]),
	.Dout(SYNTHESIZED_WIRE_5));


cvt_1x2_2x1	b2v_inst20(
	.Din0(lcdData[8]),
	.Din1(lcdData[9]),
	.Dout(SYNTHESIZED_WIRE_6));


cvt_1x2_2x1	b2v_inst21(
	.Din0(lcdData[10]),
	.Din1(lcdData[11]),
	.Dout(SYNTHESIZED_WIRE_7));


cvt_1x2_2x1	b2v_inst22(
	.Din0(lcdData[12]),
	.Din1(lcdData[13]),
	.Dout(SYNTHESIZED_WIRE_8));


cvt_1x2_2x1	b2v_inst23(
	.Din0(lcdData[14]),
	.Din1(lcdData[15]),
	.Dout(SYNTHESIZED_WIRE_9));



Mux2bit8x1	b2v_inst4(
	.Din0(SYNTHESIZED_WIRE_2),
	.Din1(SYNTHESIZED_WIRE_3),
	.Din2(SYNTHESIZED_WIRE_4),
	.Din3(SYNTHESIZED_WIRE_5),
	.Din4(SYNTHESIZED_WIRE_6),
	.Din5(SYNTHESIZED_WIRE_7),
	.Din6(SYNTHESIZED_WIRE_8),
	.Din7(SYNTHESIZED_WIRE_9),
	.sel(SYNTHESIZED_WIRE_12),
	.Dout(SYNTHESIZED_WIRE_1));

assign	com0 =  ~Dout[0];

assign	com1 =  ~Dout[1];

assign	com2 =  ~Dout[2];

assign	com3 =  ~Dout[3];

assign	com4 =  ~Dout[4];


OneHotEncoder3	b2v_onehot(
	.Din(SYNTHESIZED_WIRE_12),
	.Dout(Dout));


endmodule
