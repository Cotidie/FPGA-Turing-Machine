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
// CREATED		"Tue Dec 21 12:01:21 2021"

module demux_1x64_2bit(
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
	Dout_32_,
	Dout_33_,
	Dout_34_,
	Dout_35_,
	Dout_36_,
	Dout_37_,
	Dout_38_,
	Dout_39_,
	Dout_3_,
	Dout_40_,
	Dout_41_,
	Dout_42_,
	Dout_43_,
	Dout_44_,
	Dout_45_,
	Dout_46_,
	Dout_47_,
	Dout_48_,
	Dout_49_,
	Dout_4_,
	Dout_50_,
	Dout_51_,
	Dout_52_,
	Dout_53_,
	Dout_54_,
	Dout_55_,
	Dout_56_,
	Dout_57_,
	Dout_58_,
	Dout_59_,
	Dout_5_,
	Dout_60_,
	Dout_61_,
	Dout_62_,
	Dout_63_,
	Dout_6_,
	Dout_7_,
	Dout_8_,
	Dout_9_
);


input wire	[1:0] Din;
input wire	[5:0] sel;
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
output wire	[1:0] Dout_32_;
output wire	[1:0] Dout_33_;
output wire	[1:0] Dout_34_;
output wire	[1:0] Dout_35_;
output wire	[1:0] Dout_36_;
output wire	[1:0] Dout_37_;
output wire	[1:0] Dout_38_;
output wire	[1:0] Dout_39_;
output wire	[1:0] Dout_3_;
output wire	[1:0] Dout_40_;
output wire	[1:0] Dout_41_;
output wire	[1:0] Dout_42_;
output wire	[1:0] Dout_43_;
output wire	[1:0] Dout_44_;
output wire	[1:0] Dout_45_;
output wire	[1:0] Dout_46_;
output wire	[1:0] Dout_47_;
output wire	[1:0] Dout_48_;
output wire	[1:0] Dout_49_;
output wire	[1:0] Dout_4_;
output wire	[1:0] Dout_50_;
output wire	[1:0] Dout_51_;
output wire	[1:0] Dout_52_;
output wire	[1:0] Dout_53_;
output wire	[1:0] Dout_54_;
output wire	[1:0] Dout_55_;
output wire	[1:0] Dout_56_;
output wire	[1:0] Dout_57_;
output wire	[1:0] Dout_58_;
output wire	[1:0] Dout_59_;
output wire	[1:0] Dout_5_;
output wire	[1:0] Dout_60_;
output wire	[1:0] Dout_61_;
output wire	[1:0] Dout_62_;
output wire	[1:0] Dout_63_;
output wire	[1:0] Dout_6_;
output wire	[1:0] Dout_7_;
output wire	[1:0] Dout_8_;
output wire	[1:0] Dout_9_;

wire	[1:0] SYNTHESIZED_WIRE_0;
wire	[4:0] SYNTHESIZED_WIRE_4;
wire	[1:0] SYNTHESIZED_WIRE_2;





demux_1x32_2bit	b2v_inst(
	.Din(SYNTHESIZED_WIRE_0),
	.sel(SYNTHESIZED_WIRE_4),
	.Dout_0_(Dout_32_),
	.Dout_10_(Dout_42_),
	.Dout_11_(Dout_43_),
	.Dout_12_(Dout_44_),
	.Dout_13_(Dout_45_),
	.Dout_14_(Dout_46_),
	.Dout_15_(Dout_47_),
	.Dout_16_(Dout_48_),
	.Dout_17_(Dout_49_),
	.Dout_18_(Dout_50_),
	.Dout_19_(Dout_51_),
	.Dout_1_(Dout_33_),
	.Dout_20_(Dout_52_),
	.Dout_21_(Dout_53_),
	.Dout_22_(Dout_54_),
	.Dout_23_(Dout_55_),
	.Dout_24_(Dout_56_),
	.Dout_25_(Dout_57_),
	.Dout_26_(Dout_58_),
	.Dout_27_(Dout_59_),
	.Dout_28_(Dout_60_),
	.Dout_29_(Dout_61_),
	.Dout_2_(Dout_34_),
	.Dout_30_(Dout_62_),
	.Dout_31_(Dout_63_),
	.Dout_3_(Dout_35_),
	.Dout_4_(Dout_36_),
	.Dout_5_(Dout_37_),
	.Dout_6_(Dout_38_),
	.Dout_7_(Dout_39_),
	.Dout_8_(Dout_40_),
	.Dout_9_(Dout_41_));


demux_1x32_2bit	b2v_inst1(
	.Din(SYNTHESIZED_WIRE_2),
	.sel(SYNTHESIZED_WIRE_4),
	.Dout_0_(Dout_0_),
	.Dout_10_(Dout_10_),
	.Dout_11_(Dout_11_),
	.Dout_12_(Dout_12_),
	.Dout_13_(Dout_13_),
	.Dout_14_(Dout_14_),
	.Dout_15_(Dout_15_),
	.Dout_16_(Dout_16_),
	.Dout_17_(Dout_17_),
	.Dout_18_(Dout_18_),
	.Dout_19_(Dout_19_),
	.Dout_1_(Dout_1_),
	.Dout_20_(Dout_20_),
	.Dout_21_(Dout_21_),
	.Dout_22_(Dout_22_),
	.Dout_23_(Dout_23_),
	.Dout_24_(Dout_24_),
	.Dout_25_(Dout_25_),
	.Dout_26_(Dout_26_),
	.Dout_27_(Dout_27_),
	.Dout_28_(Dout_28_),
	.Dout_29_(Dout_29_),
	.Dout_2_(Dout_2_),
	.Dout_30_(Dout_30_),
	.Dout_31_(Dout_31_),
	.Dout_3_(Dout_3_),
	.Dout_4_(Dout_4_),
	.Dout_5_(Dout_5_),
	.Dout_6_(Dout_6_),
	.Dout_7_(Dout_7_),
	.Dout_8_(Dout_8_),
	.Dout_9_(Dout_9_));


demux_1x2_2bit	b2v_inst2(
	.sel(sel[0]),
	.Din(Din),
	.Dout_0_(SYNTHESIZED_WIRE_2),
	.Dout_1_(SYNTHESIZED_WIRE_0));


cvt_1x5_5x1	b2v_inst3(
	.Din0(sel[1]),
	.Din1(sel[2]),
	.Din2(sel[3]),
	.Din3(sel[4]),
	.Din4(sel[5]),
	.Dout(SYNTHESIZED_WIRE_4));


endmodule
