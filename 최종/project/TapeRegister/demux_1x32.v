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
// CREATED		"Fri Dec 17 16:27:34 2021"

module demux_1x32(
	Din,
	sel,
	Dout_0,
	Dout_1,
	Dout_2,
	Dout_3,
	Dout_4,
	Dout_5,
	Dout_6,
	Dout_7,
	Dout_8,
	Dout_9,
	Dout_10,
	Dout_11,
	Dout_12,
	Dout_13,
	Dout_14,
	Dout_15,
	Dout_16,
	Dout_17,
	Dout_18,
	Dout_19,
	Dout_20,
	Dout_21,
	Dout_22,
	Dout_23,
	Dout_24,
	Dout_25,
	Dout_26,
	Dout_27,
	Dout_28,
	Dout_29,
	Dout_30,
	Dout_31
);


input wire	Din;
input wire	[4:0] sel;
output wire	Dout_0;
output wire	Dout_1;
output wire	Dout_2;
output wire	Dout_3;
output wire	Dout_4;
output wire	Dout_5;
output wire	Dout_6;
output wire	Dout_7;
output wire	Dout_8;
output wire	Dout_9;
output wire	Dout_10;
output wire	Dout_11;
output wire	Dout_12;
output wire	Dout_13;
output wire	Dout_14;
output wire	Dout_15;
output wire	Dout_16;
output wire	Dout_17;
output wire	Dout_18;
output wire	Dout_19;
output wire	Dout_20;
output wire	Dout_21;
output wire	Dout_22;
output wire	Dout_23;
output wire	Dout_24;
output wire	Dout_25;
output wire	Dout_26;
output wire	Dout_27;
output wire	Dout_28;
output wire	Dout_29;
output wire	Dout_30;
output wire	Dout_31;

wire	SYNTHESIZED_WIRE_0;
wire	[3:0] SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_2;





demux_1x16	b2v_inst(
	.Din(SYNTHESIZED_WIRE_0),
	.sel(SYNTHESIZED_WIRE_4),
	.Dout_15(Dout_31),
	.Dout_14(Dout_30),
	.Dout_13(Dout_29),
	.Dout_12(Dout_28),
	.Dout_11(Dout_27),
	.Dout_10(Dout_26),
	.Dout_9(Dout_25),
	.Dout_8(Dout_24),
	.Dout_7(Dout_23),
	.Dout_6(Dout_22),
	.Dout_5(Dout_21),
	.Dout_4(Dout_20),
	.Dout_3(Dout_19),
	.Dout_2(Dout_18),
	.Dout_1(Dout_17),
	.Dout_0(Dout_16));


demux_1x16	b2v_inst1(
	.Din(SYNTHESIZED_WIRE_2),
	.sel(SYNTHESIZED_WIRE_4),
	.Dout_15(Dout_15),
	.Dout_14(Dout_14),
	.Dout_13(Dout_13),
	.Dout_12(Dout_12),
	.Dout_11(Dout_11),
	.Dout_10(Dout_10),
	.Dout_9(Dout_9),
	.Dout_8(Dout_8),
	.Dout_7(Dout_7),
	.Dout_6(Dout_6),
	.Dout_5(Dout_5),
	.Dout_4(Dout_4),
	.Dout_3(Dout_3),
	.Dout_2(Dout_2),
	.Dout_1(Dout_1),
	.Dout_0(Dout_0));


demux_1x2	b2v_inst2(
	.Din(Din),
	.sel(sel[0]),
	.Dout_1(SYNTHESIZED_WIRE_0),
	.Dout_0(SYNTHESIZED_WIRE_2));


cvt_1x4_4x1	b2v_inst3(
	.Din3(sel[4]),
	.Din2(sel[3]),
	.Din1(sel[2]),
	.Din0(sel[1]),
	.Dout(SYNTHESIZED_WIRE_4));


endmodule
