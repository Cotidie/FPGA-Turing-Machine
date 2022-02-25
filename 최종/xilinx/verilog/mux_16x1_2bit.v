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
// CREATED		"Tue Dec 21 12:00:32 2021"

module mux_16x1_2bit(
	Din0_,
	Din10_,
	Din11_,
	Din12_,
	Din13_,
	Din14_,
	Din15_,
	Din1_,
	Din2_,
	Din3_,
	Din4_,
	Din5_,
	Din6_,
	Din7_,
	Din8_,
	Din9_,
	sel,
	Dout
);


input wire	[1:0] Din0_;
input wire	[1:0] Din10_;
input wire	[1:0] Din11_;
input wire	[1:0] Din12_;
input wire	[1:0] Din13_;
input wire	[1:0] Din14_;
input wire	[1:0] Din15_;
input wire	[1:0] Din1_;
input wire	[1:0] Din2_;
input wire	[1:0] Din3_;
input wire	[1:0] Din4_;
input wire	[1:0] Din5_;
input wire	[1:0] Din6_;
input wire	[1:0] Din7_;
input wire	[1:0] Din8_;
input wire	[1:0] Din9_;
input wire	[3:0] sel;
output wire	[1:0] Dout;

wire	[2:0] SYNTHESIZED_WIRE_4;
wire	[1:0] SYNTHESIZED_WIRE_2;
wire	[1:0] SYNTHESIZED_WIRE_3;





mux_8x1_2bit	b2v_inst(
	.Din0_(Din0_),
	.Din1_(Din1_),
	.Din2_(Din2_),
	.Din3_(Din3_),
	.Din4_(Din4_),
	.Din5_(Din5_),
	.Din6_(Din6_),
	.Din7_(Din7_),
	.sel(SYNTHESIZED_WIRE_4),
	.Dout(SYNTHESIZED_WIRE_2));


mux_8x1_2bit	b2v_inst1(
	.Din0_(Din8_),
	.Din1_(Din9_),
	.Din2_(Din10_),
	.Din3_(Din11_),
	.Din4_(Din12_),
	.Din5_(Din13_),
	.Din6_(Din14_),
	.Din7_(Din15_),
	.sel(SYNTHESIZED_WIRE_4),
	.Dout(SYNTHESIZED_WIRE_3));


cvt_1x3_3x1	b2v_inst2(
	.Din0(sel[1]),
	.Din1(sel[2]),
	.Din2(sel[3]),
	.Dout(SYNTHESIZED_WIRE_4));


mux_2x1_2bit	b2v_inst3(
	.sel(sel[0]),
	.Din0_(SYNTHESIZED_WIRE_2),
	.Din1_(SYNTHESIZED_WIRE_3),
	.Dout(Dout));


endmodule
