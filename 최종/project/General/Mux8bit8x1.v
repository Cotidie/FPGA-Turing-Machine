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
// CREATED		"Tue Dec 21 12:01:27 2021"

module Mux8bit8x1(
	Din0,
	Din1,
	Din2,
	Din3,
	Din4,
	Din5,
	Din6,
	Din7,
	sel,
	Dout
);


input wire	[7:0] Din0;
input wire	[7:0] Din1;
input wire	[7:0] Din2;
input wire	[7:0] Din3;
input wire	[7:0] Din4;
input wire	[7:0] Din5;
input wire	[7:0] Din6;
input wire	[7:0] Din7;
input wire	[2:0] sel;
output wire	[7:0] Dout;

wire	[7:0] SYNTHESIZED_WIRE_0;
wire	[7:0] SYNTHESIZED_WIRE_1;





Mux8bit4x1	b2v_mux0(
	.Din0(Din0),
	.Din1(Din1),
	.Din2(Din2),
	.Din3(Din3),
	.sel(sel[1:0]),
	.Dout(SYNTHESIZED_WIRE_0));


Mux8bit4x1	b2v_mux1(
	.Din0(Din4),
	.Din1(Din5),
	.Din2(Din6),
	.Din3(Din7),
	.sel(sel[1:0]),
	.Dout(SYNTHESIZED_WIRE_1));


Mux8bit2x1	b2v_mux2(
	.sel(sel[2]),
	.din0(SYNTHESIZED_WIRE_0),
	.din1(SYNTHESIZED_WIRE_1),
	.dout(Dout));


endmodule
