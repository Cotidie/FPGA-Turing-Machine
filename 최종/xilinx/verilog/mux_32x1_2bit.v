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
// CREATED		"Tue Dec 21 11:59:45 2021"

module mux_32x1_2bit(
	Din0_,
	Din10_,
	Din11_,
	Din12_,
	Din13_,
	Din14_,
	Din15_,
	Din16_,
	Din17_,
	Din18_,
	Din19_,
	Din1_,
	Din20_,
	Din21_,
	Din22_,
	Din23_,
	Din24_,
	Din25_,
	Din26_,
	Din27_,
	Din28_,
	Din29_,
	Din2_,
	Din30_,
	Din31_,
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
input wire	[1:0] Din16_;
input wire	[1:0] Din17_;
input wire	[1:0] Din18_;
input wire	[1:0] Din19_;
input wire	[1:0] Din1_;
input wire	[1:0] Din20_;
input wire	[1:0] Din21_;
input wire	[1:0] Din22_;
input wire	[1:0] Din23_;
input wire	[1:0] Din24_;
input wire	[1:0] Din25_;
input wire	[1:0] Din26_;
input wire	[1:0] Din27_;
input wire	[1:0] Din28_;
input wire	[1:0] Din29_;
input wire	[1:0] Din2_;
input wire	[1:0] Din30_;
input wire	[1:0] Din31_;
input wire	[1:0] Din3_;
input wire	[1:0] Din4_;
input wire	[1:0] Din5_;
input wire	[1:0] Din6_;
input wire	[1:0] Din7_;
input wire	[1:0] Din8_;
input wire	[1:0] Din9_;
input wire	[4:0] sel;
output wire	[1:0] Dout;

wire	[3:0] SYNTHESIZED_WIRE_4;
wire	[1:0] SYNTHESIZED_WIRE_2;
wire	[1:0] SYNTHESIZED_WIRE_3;





mux_16x1_2bit	b2v_inst(
	.Din0_(Din0_),
	.Din10_(Din10_),
	.Din11_(Din11_),
	.Din12_(Din12_),
	.Din13_(Din13_),
	.Din14_(Din14_),
	.Din15_(Din15_),
	.Din1_(Din1_),
	.Din2_(Din2_),
	.Din3_(Din3_),
	.Din4_(Din4_),
	.Din5_(Din5_),
	.Din6_(Din6_),
	.Din7_(Din7_),
	.Din8_(Din8_),
	.Din9_(Din9_),
	.sel(SYNTHESIZED_WIRE_4),
	.Dout(SYNTHESIZED_WIRE_2));


mux_16x1_2bit	b2v_inst1(
	.Din0_(Din16_),
	.Din10_(Din26_),
	.Din11_(Din27_),
	.Din12_(Din28_),
	.Din13_(Din29_),
	.Din14_(Din30_),
	.Din15_(Din31_),
	.Din1_(Din17_),
	.Din2_(Din18_),
	.Din3_(Din19_),
	.Din4_(Din20_),
	.Din5_(Din21_),
	.Din6_(Din22_),
	.Din7_(Din23_),
	.Din8_(Din24_),
	.Din9_(Din25_),
	.sel(SYNTHESIZED_WIRE_4),
	.Dout(SYNTHESIZED_WIRE_3));


cvt_1x4_4x1	b2v_inst2(
	.Din3(sel[4]),
	.Din2(sel[3]),
	.Din1(sel[2]),
	.Din0(sel[1]),
	.Dout(SYNTHESIZED_WIRE_4));


mux_2x1_2bit	b2v_inst3(
	.sel(sel[0]),
	.Din0_(SYNTHESIZED_WIRE_2),
	.Din1_(SYNTHESIZED_WIRE_3),
	.Dout(Dout));


endmodule
