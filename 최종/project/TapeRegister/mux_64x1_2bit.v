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
// CREATED		"Fri Dec 17 17:17:01 2021"

module mux_64x1_2bit(
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
	Din32_,
	Din33_,
	Din34_,
	Din35_,
	Din36_,
	Din37_,
	Din38_,
	Din39_,
	Din3_,
	Din40_,
	Din41_,
	Din42_,
	Din43_,
	Din44_,
	Din45_,
	Din46_,
	Din47_,
	Din48_,
	Din49_,
	Din4_,
	Din50_,
	Din51_,
	Din52_,
	Din53_,
	Din54_,
	Din55_,
	Din56_,
	Din57_,
	Din58_,
	Din59_,
	Din5_,
	Din60_,
	Din61_,
	Din62_,
	Din63_,
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
input wire	[1:0] Din32_;
input wire	[1:0] Din33_;
input wire	[1:0] Din34_;
input wire	[1:0] Din35_;
input wire	[1:0] Din36_;
input wire	[1:0] Din37_;
input wire	[1:0] Din38_;
input wire	[1:0] Din39_;
input wire	[1:0] Din3_;
input wire	[1:0] Din40_;
input wire	[1:0] Din41_;
input wire	[1:0] Din42_;
input wire	[1:0] Din43_;
input wire	[1:0] Din44_;
input wire	[1:0] Din45_;
input wire	[1:0] Din46_;
input wire	[1:0] Din47_;
input wire	[1:0] Din48_;
input wire	[1:0] Din49_;
input wire	[1:0] Din4_;
input wire	[1:0] Din50_;
input wire	[1:0] Din51_;
input wire	[1:0] Din52_;
input wire	[1:0] Din53_;
input wire	[1:0] Din54_;
input wire	[1:0] Din55_;
input wire	[1:0] Din56_;
input wire	[1:0] Din57_;
input wire	[1:0] Din58_;
input wire	[1:0] Din59_;
input wire	[1:0] Din5_;
input wire	[1:0] Din60_;
input wire	[1:0] Din61_;
input wire	[1:0] Din62_;
input wire	[1:0] Din63_;
input wire	[1:0] Din6_;
input wire	[1:0] Din7_;
input wire	[1:0] Din8_;
input wire	[1:0] Din9_;
input wire	[5:0] sel;
output wire	[1:0] Dout;

wire	[4:0] SYNTHESIZED_WIRE_4;
wire	[1:0] SYNTHESIZED_WIRE_2;
wire	[1:0] SYNTHESIZED_WIRE_3;





mux_32x1_2bit	b2v_inst(
	.Din0_(Din0_),
	.Din10_(Din10_),
	.Din11_(Din11_),
	.Din12_(Din12_),
	.Din13_(Din13_),
	.Din14_(Din14_),
	.Din15_(Din15_),
	.Din16_(Din16_),
	.Din17_(Din17_),
	.Din18_(Din18_),
	.Din19_(Din19_),
	.Din1_(Din1_),
	.Din20_(Din20_),
	.Din21_(Din21_),
	.Din22_(Din22_),
	.Din23_(Din23_),
	.Din24_(Din24_),
	.Din25_(Din25_),
	.Din26_(Din26_),
	.Din27_(Din27_),
	.Din28_(Din28_),
	.Din29_(Din29_),
	.Din2_(Din2_),
	.Din30_(Din30_),
	.Din31_(Din31_),
	.Din3_(Din3_),
	.Din4_(Din4_),
	.Din5_(Din5_),
	.Din6_(Din6_),
	.Din7_(Din7_),
	.Din8_(Din8_),
	.Din9_(Din9_),
	.sel(SYNTHESIZED_WIRE_4),
	.Dout(SYNTHESIZED_WIRE_2));


mux_32x1_2bit	b2v_inst1(
	.Din0_(Din32_),
	.Din10_(Din42_),
	.Din11_(Din43_),
	.Din12_(Din44_),
	.Din13_(Din45_),
	.Din14_(Din46_),
	.Din15_(Din47_),
	.Din16_(Din48_),
	.Din17_(Din49_),
	.Din18_(Din50_),
	.Din19_(Din51_),
	.Din1_(Din33_),
	.Din20_(Din52_),
	.Din21_(Din53_),
	.Din22_(Din54_),
	.Din23_(Din55_),
	.Din24_(Din56_),
	.Din25_(Din57_),
	.Din26_(Din58_),
	.Din27_(Din59_),
	.Din28_(Din60_),
	.Din29_(Din61_),
	.Din2_(Din34_),
	.Din30_(Din62_),
	.Din31_(Din63_),
	.Din3_(Din35_),
	.Din4_(Din36_),
	.Din5_(Din37_),
	.Din6_(Din38_),
	.Din7_(Din39_),
	.Din8_(Din40_),
	.Din9_(Din41_),
	.sel(SYNTHESIZED_WIRE_4),
	.Dout(SYNTHESIZED_WIRE_3));


cvt_1x5_5x1	b2v_inst2(
	.Din0(sel[1]),
	.Din1(sel[2]),
	.Din2(sel[3]),
	.Din3(sel[4]),
	.Din4(sel[5]),
	.Dout(SYNTHESIZED_WIRE_4));


mux_2x1_2bit	b2v_inst3(
	.sel(sel[0]),
	.Din0_(SYNTHESIZED_WIRE_2),
	.Din1_(SYNTHESIZED_WIRE_3),
	.Dout(Dout));


endmodule
