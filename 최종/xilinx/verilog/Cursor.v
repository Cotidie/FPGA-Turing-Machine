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
// CREATED		"Wed Dec 22 03:54:08 2021"

module Cursor(
	clk,
	rst_n,
	trigger,
	keypad,
	move,
	s,
	Addr
);


input wire	clk;
input wire	rst_n;
input wire	trigger;
input wire	[2:0] keypad;
input wire	[1:0] move;
input wire	[13:0] s;
output wire	[5:0] Addr;

wire	[5:0] b;
wire	[1:0] Dout;
wire	[1:0] mov;
wire	SYNTHESIZED_WIRE_0;
wire	[5:0] SYNTHESIZED_WIRE_15;
wire	[1:0] SYNTHESIZED_WIRE_2;
wire	[5:0] SYNTHESIZED_WIRE_4;
wire	[5:0] SYNTHESIZED_WIRE_5;
wire	[0:5] SYNTHESIZED_WIRE_6;
wire	[1:0] SYNTHESIZED_WIRE_7;
wire	SYNTHESIZED_WIRE_8;
wire	SYNTHESIZED_WIRE_9;
wire	SYNTHESIZED_WIRE_10;
wire	[5:0] SYNTHESIZED_WIRE_11;
wire	SYNTHESIZED_WIRE_12;
wire	SYNTHESIZED_WIRE_13;
wire	SYNTHESIZED_WIRE_14;

assign	Addr = SYNTHESIZED_WIRE_15;
assign	SYNTHESIZED_WIRE_6 = 0;




RippleCarryAdder6bit	b2v_adder(
	.sub(SYNTHESIZED_WIRE_0),
	.a(SYNTHESIZED_WIRE_15),
	.b(b),
	
	.s(SYNTHESIZED_WIRE_4));

assign	SYNTHESIZED_WIRE_14 = trigger & s[12];


CursorMode	b2v_cursorMode(
	.move(SYNTHESIZED_WIRE_2),
	.s(s),
	.mode(SYNTHESIZED_WIRE_7));


assign	SYNTHESIZED_WIRE_13 = trigger & s[1];


Mux6bit4x1	b2v_inst1(
	.Din0(SYNTHESIZED_WIRE_15),
	.Din1(SYNTHESIZED_WIRE_4),
	.Din2(SYNTHESIZED_WIRE_5),
	.Din3(SYNTHESIZED_WIRE_6),
	.sel(SYNTHESIZED_WIRE_7),
	.Dout(SYNTHESIZED_WIRE_11));


InitialAddress	b2v_inst11(
	.init(SYNTHESIZED_WIRE_5));

assign	SYNTHESIZED_WIRE_0 = SYNTHESIZED_WIRE_8 & SYNTHESIZED_WIRE_9;


Register6	b2v_inst2(
	.ce(SYNTHESIZED_WIRE_10),
	.clk(clk),
	.rst_n(rst_n),
	.Din(SYNTHESIZED_WIRE_11),
	.Dout(SYNTHESIZED_WIRE_15));

assign	SYNTHESIZED_WIRE_9 =  ~s[1];


Register2	b2v_inst23(
	.ce(s[10]),
	.clk(clk),
	.rst_n(rst_n),
	.Din(mov),
	.Dout(Dout));


Mux1bit2x1	b2v_inst24(
	.d0(mov[1]),
	.d1(Dout[1]),
	.sel(s[11]),
	.dout(SYNTHESIZED_WIRE_12));


Mux2bit2x1	b2v_inst3(
	.sel(s[11]),
	.Din0(mov),
	.Din1(Dout),
	.Dout(SYNTHESIZED_WIRE_2));



Mux2bit2x1	b2v_inst5(
	.sel(s[12]),
	.Din0(move),
	.Din1(keypad[1:0]),
	.Dout(mov));

assign	SYNTHESIZED_WIRE_8 =  ~SYNTHESIZED_WIRE_12;

assign	SYNTHESIZED_WIRE_10 = SYNTHESIZED_WIRE_13 | s[11] | s[8] | s[0] | s[13] | SYNTHESIZED_WIRE_14;


assign	b[0] = 1;
assign	b[1] = 0;
assign	b[2] = 0;
assign	b[3] = 0;
assign	b[4] = 0;
assign	b[5] = 0;

endmodule
