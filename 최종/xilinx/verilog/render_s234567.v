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
// CREATED		"Fri Dec 17 16:28:27 2021"

module render_s234567(
	clk,
	rst_n,
	Din,
	s,
	a,
	b,
	c,
	d,
	e,
	f,
	g,
	dp,
	com1,
	com2,
	com3,
	com4,
	com5,
	com6,
	com7,
	com8
);


input wire	clk;
input wire	rst_n;
input wire	Din;
input wire	[2:0] s;
output wire	a;
output wire	b;
output wire	c;
output wire	d;
output wire	e;
output wire	f;
output wire	g;
output wire	dp;
output wire	com1;
output wire	com2;
output wire	com3;
output wire	com4;
output wire	com5;
output wire	com6;
output wire	com7;
output wire	com8;

wire	SYNTHESIZED_WIRE_52;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_53;
wire	SYNTHESIZED_WIRE_54;
wire	SYNTHESIZED_WIRE_55;
wire	SYNTHESIZED_WIRE_56;
wire	SYNTHESIZED_WIRE_57;
wire	SYNTHESIZED_WIRE_58;
wire	SYNTHESIZED_WIRE_59;
wire	SYNTHESIZED_WIRE_27;
wire	SYNTHESIZED_WIRE_40;
wire	SYNTHESIZED_WIRE_60;
wire	SYNTHESIZED_WIRE_47;
wire	SYNTHESIZED_WIRE_49;
wire	SYNTHESIZED_WIRE_51;

assign	dp = 0;
assign	com3 = 1;
assign	com4 = 1;
assign	com5 = 1;
assign	com6 = 1;
assign	com7 = 1;
assign	com8 = 1;
assign	SYNTHESIZED_WIRE_27 = 0;




assign	SYNTHESIZED_WIRE_60 =  ~Din;

assign	SYNTHESIZED_WIRE_56 = SYNTHESIZED_WIRE_52 & SYNTHESIZED_WIRE_1;

assign	SYNTHESIZED_WIRE_54 = SYNTHESIZED_WIRE_52 & SYNTHESIZED_WIRE_3;

assign	SYNTHESIZED_WIRE_55 = SYNTHESIZED_WIRE_52 & SYNTHESIZED_WIRE_5;

assign	a = SYNTHESIZED_WIRE_53 | SYNTHESIZED_WIRE_54 | SYNTHESIZED_WIRE_55 | SYNTHESIZED_WIRE_56 | SYNTHESIZED_WIRE_57 | SYNTHESIZED_WIRE_58;

assign	b = SYNTHESIZED_WIRE_55 | SYNTHESIZED_WIRE_57 | SYNTHESIZED_WIRE_58 | SYNTHESIZED_WIRE_59;

assign	c = SYNTHESIZED_WIRE_53 | SYNTHESIZED_WIRE_54 | SYNTHESIZED_WIRE_55 | SYNTHESIZED_WIRE_56 | SYNTHESIZED_WIRE_59 | SYNTHESIZED_WIRE_57;

assign	d = SYNTHESIZED_WIRE_53 | SYNTHESIZED_WIRE_56 | SYNTHESIZED_WIRE_54 | SYNTHESIZED_WIRE_57 | SYNTHESIZED_WIRE_58 | SYNTHESIZED_WIRE_27;


assign	e = SYNTHESIZED_WIRE_58 | SYNTHESIZED_WIRE_54;

assign	f = SYNTHESIZED_WIRE_53 | SYNTHESIZED_WIRE_56 | SYNTHESIZED_WIRE_59 | SYNTHESIZED_WIRE_54;


assign	g = SYNTHESIZED_WIRE_53 | SYNTHESIZED_WIRE_56 | SYNTHESIZED_WIRE_54 | SYNTHESIZED_WIRE_59 | SYNTHESIZED_WIRE_57 | SYNTHESIZED_WIRE_58;

assign	com2 = SYNTHESIZED_WIRE_40 | SYNTHESIZED_WIRE_60;


demux_1x8	b2v_inst22(
	.Din(Din),
	.sel(s),
	.Dout_7(SYNTHESIZED_WIRE_5),
	.Dout_6(SYNTHESIZED_WIRE_3),
	.Dout_5(SYNTHESIZED_WIRE_1),
	.Dout_4(SYNTHESIZED_WIRE_51),
	.Dout_3(SYNTHESIZED_WIRE_49),
	.Dout_2(SYNTHESIZED_WIRE_47)
	
	);


count_2	b2v_inst3(
	.clk(clk),
	.rst_n(rst_n),
	.Dout(SYNTHESIZED_WIRE_52));

assign	SYNTHESIZED_WIRE_40 =  ~SYNTHESIZED_WIRE_52;

assign	SYNTHESIZED_WIRE_53 =  ~SYNTHESIZED_WIRE_52;

assign	com1 = SYNTHESIZED_WIRE_52 | SYNTHESIZED_WIRE_60;

assign	SYNTHESIZED_WIRE_58 = SYNTHESIZED_WIRE_52 & SYNTHESIZED_WIRE_47;

assign	SYNTHESIZED_WIRE_57 = SYNTHESIZED_WIRE_52 & SYNTHESIZED_WIRE_49;

assign	SYNTHESIZED_WIRE_59 = SYNTHESIZED_WIRE_52 & SYNTHESIZED_WIRE_51;


endmodule
