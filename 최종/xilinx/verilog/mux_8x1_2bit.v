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
// CREATED		"Tue Dec 21 12:00:09 2021"

module mux_8x1_2bit(
	Din0_,
	Din1_,
	Din2_,
	Din3_,
	Din4_,
	Din5_,
	Din6_,
	Din7_,
	sel,
	Dout
);


input wire	[1:0] Din0_;
input wire	[1:0] Din1_;
input wire	[1:0] Din2_;
input wire	[1:0] Din3_;
input wire	[1:0] Din4_;
input wire	[1:0] Din5_;
input wire	[1:0] Din6_;
input wire	[1:0] Din7_;
input wire	[2:0] sel;
output wire	[1:0] Dout;

wire	[1:0] SYNTHESIZED_WIRE_4;
wire	[1:0] SYNTHESIZED_WIRE_2;
wire	[1:0] SYNTHESIZED_WIRE_3;





mux_4x1_2bit	b2v_inst(
	.Din0_(Din0_),
	.Din1_(Din1_),
	.Din2_(Din2_),
	.Din3_(Din3_),
	.sel(SYNTHESIZED_WIRE_4),
	.Dout(SYNTHESIZED_WIRE_2));


mux_4x1_2bit	b2v_inst1(
	.Din0_(Din4_),
	.Din1_(Din5_),
	.Din2_(Din6_),
	.Din3_(Din7_),
	.sel(SYNTHESIZED_WIRE_4),
	.Dout(SYNTHESIZED_WIRE_3));


mux_2x1_2bit	b2v_inst2(
	.sel(sel[0]),
	.Din0_(SYNTHESIZED_WIRE_2),
	.Din1_(SYNTHESIZED_WIRE_3),
	.Dout(Dout));


cvt_1x2_2x1	b2v_inst3(
	.Din0(sel[1]),
	.Din1(sel[2]),
	.Dout(SYNTHESIZED_WIRE_4));


endmodule
