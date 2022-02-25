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
// CREATED		"Fri Dec 17 17:24:53 2021"

module demux_1x32_2bit(
	Din,
	sel,
	Dout_0_,
	Dout_10_,
	Dout_11_,
	Dout_12_,
	Dout_13_,
	Dout_14_,
	Dout_15_,
	Dout_16_,
	Dout_17_,
	Dout_18_,
	Dout_19_,
	Dout_1_,
	Dout_20_,
	Dout_21_,
	Dout_22_,
	Dout_23_,
	Dout_24_,
	Dout_25_,
	Dout_26_,
	Dout_27_,
	Dout_28_,
	Dout_29_,
	Dout_2_,
	Dout_30_,
	Dout_31_,
	Dout_3_,
	Dout_4_,
	Dout_5_,
	Dout_6_,
	Dout_7_,
	Dout_8_,
	Dout_9_
);


input wire	[1:0] Din;
input wire	[4:0] sel;
output wire	[1:0] Dout_0_;
output wire	[1:0] Dout_10_;
output wire	[1:0] Dout_11_;
output wire	[1:0] Dout_12_;
output wire	[1:0] Dout_13_;
output wire	[1:0] Dout_14_;
output wire	[1:0] Dout_15_;
output wire	[1:0] Dout_16_;
output wire	[1:0] Dout_17_;
output wire	[1:0] Dout_18_;
output wire	[1:0] Dout_19_;
output wire	[1:0] Dout_1_;
output wire	[1:0] Dout_20_;
output wire	[1:0] Dout_21_;
output wire	[1:0] Dout_22_;
output wire	[1:0] Dout_23_;
output wire	[1:0] Dout_24_;
output wire	[1:0] Dout_25_;
output wire	[1:0] Dout_26_;
output wire	[1:0] Dout_27_;
output wire	[1:0] Dout_28_;
output wire	[1:0] Dout_29_;
output wire	[1:0] Dout_2_;
output wire	[1:0] Dout_30_;
output wire	[1:0] Dout_31_;
output wire	[1:0] Dout_3_;
output wire	[1:0] Dout_4_;
output wire	[1:0] Dout_5_;
output wire	[1:0] Dout_6_;
output wire	[1:0] Dout_7_;
output wire	[1:0] Dout_8_;
output wire	[1:0] Dout_9_;

wire	[1:0] SYNTHESIZED_WIRE_0;
wire	[3:0] SYNTHESIZED_WIRE_4;
wire	[1:0] SYNTHESIZED_WIRE_2;





demux_1x16_2bit	b2v_inst(
	.Din(SYNTHESIZED_WIRE_0),
	.sel(SYNTHESIZED_WIRE_4),
	.Dout_0_(Dout_16_),
	.Dout_10_(Dout_26_),
	.Dout_11_(Dout_27_),
	.Dout_12_(Dout_28_),
	.Dout_13_(Dout_29_),
	.Dout_14_(Dout_30_),
	.Dout_15_(Dout_31_),
	.Dout_1_(Dout_17_),
	.Dout_2_(Dout_18_),
	.Dout_3_(Dout_19_),
	.Dout_4_(Dout_20_),
	.Dout_5_(Dout_21_),
	.Dout_6_(Dout_22_),
	.Dout_7_(Dout_23_),
	.Dout_8_(Dout_24_),
	.Dout_9_(Dout_25_));


demux_1x16_2bit	b2v_inst1(
	.Din(SYNTHESIZED_WIRE_2),
	.sel(SYNTHESIZED_WIRE_4),
	.Dout_0_(Dout_0_),
	.Dout_10_(Dout_10_),
	.Dout_11_(Dout_11_),
	.Dout_12_(Dout_12_),
	.Dout_13_(Dout_13_),
	.Dout_14_(Dout_14_),
	.Dout_15_(Dout_15_),
	.Dout_1_(Dout_1_),
	.Dout_2_(Dout_2_),
	.Dout_3_(Dout_3_),
	.Dout_4_(Dout_4_),
	.Dout_5_(Dout_5_),
	.Dout_6_(Dout_6_),
	.Dout_7_(Dout_7_),
	.Dout_8_(Dout_8_),
	.Dout_9_(Dout_9_));


cvt_1x4_4x1	b2v_inst2(
	.Din3(sel[4]),
	.Din2(sel[3]),
	.Din1(sel[2]),
	.Din0(sel[1]),
	.Dout(SYNTHESIZED_WIRE_4));


demux_1x2_2bit	b2v_inst3(
	.sel(sel[0]),
	.Din(Din),
	.Dout_0_(SYNTHESIZED_WIRE_2),
	.Dout_1_(SYNTHESIZED_WIRE_0));


endmodule
