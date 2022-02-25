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
// CREATED		"Fri Dec 17 14:40:10 2021"

module keypad(
	key_1,
	key_2,
	key_3,
	key_4,
	key_5,
	key_6,
	key_hash,
	key_0,
	clk,
	rst_n,
	mode,
	up,
	down,
	data
);


input wire	key_1;
input wire	key_2;
input wire	key_3;
input wire	key_4;
input wire	key_5;
input wire	key_6;
input wire	key_hash;
input wire	key_0;
input wire	clk;
input wire	rst_n;
input wire	[1:0] mode;
output wire	up;
output wire	down;
output wire	[2:0] data;

wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_7;
wire	SYNTHESIZED_WIRE_40;
wire	SYNTHESIZED_WIRE_9;
wire	SYNTHESIZED_WIRE_10;
wire	SYNTHESIZED_WIRE_41;
wire	SYNTHESIZED_WIRE_13;
wire	SYNTHESIZED_WIRE_14;
wire	SYNTHESIZED_WIRE_16;
wire	SYNTHESIZED_WIRE_19;
wire	SYNTHESIZED_WIRE_20;
wire	SYNTHESIZED_WIRE_23;
wire	SYNTHESIZED_WIRE_24;
wire	SYNTHESIZED_WIRE_42;
wire	SYNTHESIZED_WIRE_27;
wire	SYNTHESIZED_WIRE_28;
wire	SYNTHESIZED_WIRE_29;
wire	SYNTHESIZED_WIRE_31;
wire	SYNTHESIZED_WIRE_32;
wire	SYNTHESIZED_WIRE_33;
wire	SYNTHESIZED_WIRE_34;
wire	SYNTHESIZED_WIRE_35;
wire	SYNTHESIZED_WIRE_36;
wire	SYNTHESIZED_WIRE_37;
wire	SYNTHESIZED_WIRE_38;
wire	SYNTHESIZED_WIRE_39;





ud_trigger	b2v_inst(
	.Din(key_0),
	.CLK(clk),
	.rst_n(rst_n),
	.up(SYNTHESIZED_WIRE_32),
	.down(SYNTHESIZED_WIRE_0));


ud_trigger	b2v_inst1(
	.Din(key_1),
	.CLK(clk),
	.rst_n(rst_n),
	.up(SYNTHESIZED_WIRE_34),
	.down(SYNTHESIZED_WIRE_2));

assign	down = SYNTHESIZED_WIRE_0 | SYNTHESIZED_WIRE_1 | SYNTHESIZED_WIRE_2 | SYNTHESIZED_WIRE_3 | SYNTHESIZED_WIRE_4 | SYNTHESIZED_WIRE_5 | SYNTHESIZED_WIRE_6 | SYNTHESIZED_WIRE_7;


b2d_2bit	b2v_inst12(
	.b(mode),
	.d0(SYNTHESIZED_WIRE_28),
	.d1(SYNTHESIZED_WIRE_29),
	
	.d3(SYNTHESIZED_WIRE_40));

assign	SYNTHESIZED_WIRE_39 = SYNTHESIZED_WIRE_40 & SYNTHESIZED_WIRE_9;

assign	SYNTHESIZED_WIRE_7 = SYNTHESIZED_WIRE_10 & SYNTHESIZED_WIRE_40;

assign	SYNTHESIZED_WIRE_38 = SYNTHESIZED_WIRE_41 & SYNTHESIZED_WIRE_13;

assign	SYNTHESIZED_WIRE_6 = SYNTHESIZED_WIRE_14 & SYNTHESIZED_WIRE_41;

assign	SYNTHESIZED_WIRE_4 = SYNTHESIZED_WIRE_16 & SYNTHESIZED_WIRE_41;

assign	SYNTHESIZED_WIRE_36 = SYNTHESIZED_WIRE_41 & SYNTHESIZED_WIRE_19;

assign	SYNTHESIZED_WIRE_5 = SYNTHESIZED_WIRE_20 & SYNTHESIZED_WIRE_41;


ud_trigger	b2v_inst2(
	.Din(key_2),
	.CLK(clk),
	.rst_n(rst_n),
	.up(SYNTHESIZED_WIRE_33),
	.down(SYNTHESIZED_WIRE_1));

assign	SYNTHESIZED_WIRE_37 = SYNTHESIZED_WIRE_41 & SYNTHESIZED_WIRE_23;

assign	SYNTHESIZED_WIRE_3 = SYNTHESIZED_WIRE_24 & SYNTHESIZED_WIRE_42;

assign	SYNTHESIZED_WIRE_35 = SYNTHESIZED_WIRE_42 & SYNTHESIZED_WIRE_27;

assign	SYNTHESIZED_WIRE_42 =  ~SYNTHESIZED_WIRE_28;

assign	SYNTHESIZED_WIRE_31 =  ~SYNTHESIZED_WIRE_29;

assign	SYNTHESIZED_WIRE_41 = SYNTHESIZED_WIRE_42 & SYNTHESIZED_WIRE_31;


ud_trigger	b2v_inst3(
	.Din(key_3),
	.CLK(clk),
	.rst_n(rst_n),
	.up(SYNTHESIZED_WIRE_27),
	.down(SYNTHESIZED_WIRE_24));


ud_trigger	b2v_inst4(
	.Din(key_4),
	.CLK(clk),
	.rst_n(rst_n),
	.up(SYNTHESIZED_WIRE_23),
	.down(SYNTHESIZED_WIRE_20));


ud_trigger	b2v_inst5(
	.Din(key_5),
	.CLK(clk),
	.rst_n(rst_n),
	.up(SYNTHESIZED_WIRE_19),
	.down(SYNTHESIZED_WIRE_16));


ud_trigger	b2v_inst6(
	.Din(key_6),
	.CLK(clk),
	.rst_n(rst_n),
	.up(SYNTHESIZED_WIRE_13),
	.down(SYNTHESIZED_WIRE_14));


ud_trigger	b2v_inst7(
	.Din(key_hash),
	.CLK(clk),
	.rst_n(rst_n),
	.up(SYNTHESIZED_WIRE_9),
	.down(SYNTHESIZED_WIRE_10));


d2b_3bit	b2v_inst8(
	.d0(key_0),
	.d1(key_1),
	.d2(key_2),
	.d3(key_3),
	.d4(key_4),
	.d5(key_5),
	.d6(key_6),
	.d7(key_hash),
	.b(data));

assign	up = SYNTHESIZED_WIRE_32 | SYNTHESIZED_WIRE_33 | SYNTHESIZED_WIRE_34 | SYNTHESIZED_WIRE_35 | SYNTHESIZED_WIRE_36 | SYNTHESIZED_WIRE_37 | SYNTHESIZED_WIRE_38 | SYNTHESIZED_WIRE_39;


endmodule
