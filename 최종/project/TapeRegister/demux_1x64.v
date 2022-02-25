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
// CREATED		"Fri Dec 17 16:27:41 2021"

module demux_1x64(
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
	Dout_31,
	Dout_32,
	Dout_33,
	Dout_34,
	Dout_35,
	Dout_36,
	Dout_37,
	Dout_38,
	Dout_39,
	Dout_40,
	Dout_41,
	Dout_42,
	Dout_43,
	Dout_44,
	Dout_45,
	Dout_46,
	Dout_47,
	Dout_48,
	Dout_49,
	Dout_50,
	Dout_51,
	Dout_52,
	Dout_53,
	Dout_54,
	Dout_55,
	Dout_56,
	Dout_57,
	Dout_58,
	Dout_59,
	Dout_60,
	Dout_61,
	Dout_62,
	Dout_63
);


input wire	Din;
input wire	[5:0] sel;
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
output wire	Dout_32;
output wire	Dout_33;
output wire	Dout_34;
output wire	Dout_35;
output wire	Dout_36;
output wire	Dout_37;
output wire	Dout_38;
output wire	Dout_39;
output wire	Dout_40;
output wire	Dout_41;
output wire	Dout_42;
output wire	Dout_43;
output wire	Dout_44;
output wire	Dout_45;
output wire	Dout_46;
output wire	Dout_47;
output wire	Dout_48;
output wire	Dout_49;
output wire	Dout_50;
output wire	Dout_51;
output wire	Dout_52;
output wire	Dout_53;
output wire	Dout_54;
output wire	Dout_55;
output wire	Dout_56;
output wire	Dout_57;
output wire	Dout_58;
output wire	Dout_59;
output wire	Dout_60;
output wire	Dout_61;
output wire	Dout_62;
output wire	Dout_63;

wire	SYNTHESIZED_WIRE_0;
wire	[4:0] SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_2;





demux_1x32	b2v_inst(
	.Din(SYNTHESIZED_WIRE_0),
	.sel(SYNTHESIZED_WIRE_4),
	.Dout_31(Dout_63),
	.Dout_30(Dout_62),
	.Dout_29(Dout_61),
	.Dout_28(Dout_60),
	.Dout_27(Dout_59),
	.Dout_26(Dout_58),
	.Dout_25(Dout_57),
	.Dout_24(Dout_56),
	.Dout_23(Dout_55),
	.Dout_22(Dout_54),
	.Dout_21(Dout_53),
	.Dout_20(Dout_52),
	.Dout_19(Dout_51),
	.Dout_18(Dout_50),
	.Dout_17(Dout_49),
	.Dout_16(Dout_48),
	.Dout_15(Dout_47),
	.Dout_14(Dout_46),
	.Dout_13(Dout_45),
	.Dout_12(Dout_44),
	.Dout_11(Dout_43),
	.Dout_10(Dout_42),
	.Dout_9(Dout_41),
	.Dout_8(Dout_40),
	.Dout_7(Dout_39),
	.Dout_6(Dout_38),
	.Dout_5(Dout_37),
	.Dout_4(Dout_36),
	.Dout_3(Dout_35),
	.Dout_2(Dout_34),
	.Dout_1(Dout_33),
	.Dout_0(Dout_32));


demux_1x32	b2v_inst1(
	.Din(SYNTHESIZED_WIRE_2),
	.sel(SYNTHESIZED_WIRE_4),
	.Dout_31(Dout_31),
	.Dout_30(Dout_30),
	.Dout_29(Dout_29),
	.Dout_28(Dout_28),
	.Dout_27(Dout_27),
	.Dout_26(Dout_26),
	.Dout_25(Dout_25),
	.Dout_24(Dout_24),
	.Dout_23(Dout_23),
	.Dout_22(Dout_22),
	.Dout_21(Dout_21),
	.Dout_20(Dout_20),
	.Dout_19(Dout_19),
	.Dout_18(Dout_18),
	.Dout_17(Dout_17),
	.Dout_16(Dout_16),
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


cvt_1x5_5x1	b2v_inst3(
	.Din0(sel[1]),
	.Din1(sel[2]),
	.Din2(sel[3]),
	.Din3(sel[4]),
	.Din4(sel[5]),
	.Dout(SYNTHESIZED_WIRE_4));


endmodule
