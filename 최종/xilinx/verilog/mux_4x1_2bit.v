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
// CREATED		"Tue Dec 21 12:00:37 2021"

module mux_4x1_2bit(
	Din0_,
	Din1_,
	Din2_,
	Din3_,
	sel,
	Dout
);


input wire	[1:0] Din0_;
input wire	[1:0] Din1_;
input wire	[1:0] Din2_;
input wire	[1:0] Din3_;
input wire	[1:0] sel;
output wire	[1:0] Dout;

wire	[1:0] SYNTHESIZED_WIRE_0;
wire	[1:0] SYNTHESIZED_WIRE_1;





mux_2x1_2bit	b2v_inst(
	.sel(sel[1]),
	.Din0_(Din0_),
	.Din1_(Din1_),
	.Dout(SYNTHESIZED_WIRE_0));


mux_2x1_2bit	b2v_inst1(
	.sel(sel[1]),
	.Din0_(Din2_),
	.Din1_(Din3_),
	.Dout(SYNTHESIZED_WIRE_1));


mux_2x1_2bit	b2v_inst2(
	.sel(sel[0]),
	.Din0_(SYNTHESIZED_WIRE_0),
	.Din1_(SYNTHESIZED_WIRE_1),
	.Dout(Dout));


endmodule
