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
// CREATED		"Tue Dec 21 12:03:07 2021"

module Mux2bit4x1(
	Din0,
	Din1,
	Din2,
	Din3,
	sel,
	Dout
);


input wire	[1:0] Din0;
input wire	[1:0] Din1;
input wire	[1:0] Din2;
input wire	[1:0] Din3;
input wire	[1:0] sel;
output wire	[1:0] Dout;

wire	[1:0] SYNTHESIZED_WIRE_0;
wire	[1:0] SYNTHESIZED_WIRE_1;





Mux2bit2x1	b2v_inst(
	.sel(sel[0]),
	.Din0(Din0),
	.Din1(Din1),
	.Dout(SYNTHESIZED_WIRE_0));


Mux2bit2x1	b2v_inst1(
	.sel(sel[0]),
	.Din0(Din2),
	.Din1(Din3),
	.Dout(SYNTHESIZED_WIRE_1));


Mux2bit2x1	b2v_inst2(
	.sel(sel[1]),
	.Din0(SYNTHESIZED_WIRE_0),
	.Din1(SYNTHESIZED_WIRE_1),
	.Dout(Dout));


endmodule
