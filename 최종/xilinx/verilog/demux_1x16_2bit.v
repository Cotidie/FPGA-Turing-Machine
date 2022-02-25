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
// CREATED		"Tue Dec 21 12:01:31 2021"

module demux_1x16_2bit(
	Din,
	sel,
	Dout_0_,
	Dout_10_,
	Dout_11_,
	Dout_12_,
	Dout_13_,
	Dout_14_,
	Dout_15_,
	Dout_1_,
	Dout_2_,
	Dout_3_,
	Dout_4_,
	Dout_5_,
	Dout_6_,
	Dout_7_,
	Dout_8_,
	Dout_9_
);


input wire	[1:0] Din;
input wire	[3:0] sel;
output wire	[1:0] Dout_0_;
output wire	[1:0] Dout_10_;
output wire	[1:0] Dout_11_;
output wire	[1:0] Dout_12_;
output wire	[1:0] Dout_13_;
output wire	[1:0] Dout_14_;
output wire	[1:0] Dout_15_;
output wire	[1:0] Dout_1_;
output wire	[1:0] Dout_2_;
output wire	[1:0] Dout_3_;
output wire	[1:0] Dout_4_;
output wire	[1:0] Dout_5_;
output wire	[1:0] Dout_6_;
output wire	[1:0] Dout_7_;
output wire	[1:0] Dout_8_;
output wire	[1:0] Dout_9_;

wire	[1:0] SYNTHESIZED_WIRE_0;
wire	[2:0] SYNTHESIZED_WIRE_4;
wire	[1:0] SYNTHESIZED_WIRE_2;





demux_1x8_2bit	b2v_inst(
	.Din(SYNTHESIZED_WIRE_0),
	.sel(SYNTHESIZED_WIRE_4),
	.Dout_0_(Dout_8_),
	.Dout_1_(Dout_9_),
	.Dout_2_(Dout_10_),
	.Dout_3_(Dout_11_),
	.Dout_4_(Dout_12_),
	.Dout_5_(Dout_13_),
	.Dout_6_(Dout_14_),
	.Dout_7_(Dout_15_));


demux_1x8_2bit	b2v_inst1(
	.Din(SYNTHESIZED_WIRE_2),
	.sel(SYNTHESIZED_WIRE_4),
	.Dout_0_(Dout_0_),
	.Dout_1_(Dout_1_),
	.Dout_2_(Dout_2_),
	.Dout_3_(Dout_3_),
	.Dout_4_(Dout_4_),
	.Dout_5_(Dout_5_),
	.Dout_6_(Dout_6_),
	.Dout_7_(Dout_7_));


demux_1x2_2bit	b2v_inst2(
	.sel(sel[0]),
	.Din(Din),
	.Dout_0_(SYNTHESIZED_WIRE_2),
	.Dout_1_(SYNTHESIZED_WIRE_0));


cvt_1x3_3x1	b2v_inst3(
	.Din0(sel[1]),
	.Din1(sel[2]),
	.Din2(sel[3]),
	.Dout(SYNTHESIZED_WIRE_4));


endmodule
