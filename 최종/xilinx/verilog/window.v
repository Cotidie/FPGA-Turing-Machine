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
// CREATED		"Tue Dec 21 13:13:31 2021"

module window(
	pos,
	tapeData,
	lcdData
);


input wire	[5:0] pos;
input wire	[127:0] tapeData;
output wire	[15:0] lcdData;

wire	[15:0] lcdData_ALTERA_SYNTHESIZED;
wire	[1:0] SYNTHESIZED_WIRE_0;
wire	[5:0] SYNTHESIZED_WIRE_1;
wire	[1:0] SYNTHESIZED_WIRE_2;
wire	[1:0] SYNTHESIZED_WIRE_3;
wire	[1:0] SYNTHESIZED_WIRE_4;
wire	[1:0] SYNTHESIZED_WIRE_5;
wire	[1:0] SYNTHESIZED_WIRE_6;
wire	[1:0] SYNTHESIZED_WIRE_7;
wire	SYNTHESIZED_WIRE_44;
wire	[5:0] SYNTHESIZED_WIRE_45;
wire	[5:0] SYNTHESIZED_WIRE_10;
wire	[1:0] SYNTHESIZED_WIRE_11;
wire	[5:0] SYNTHESIZED_WIRE_12;
wire	[5:0] SYNTHESIZED_WIRE_13;
wire	[5:0] SYNTHESIZED_WIRE_16;
wire	[5:0] SYNTHESIZED_WIRE_17;
wire	[5:0] SYNTHESIZED_WIRE_20;
wire	[5:0] SYNTHESIZED_WIRE_21;
wire	[5:0] SYNTHESIZED_WIRE_24;
wire	[5:0] SYNTHESIZED_WIRE_25;
wire	SYNTHESIZED_WIRE_46;
wire	[5:0] SYNTHESIZED_WIRE_28;
wire	[5:0] SYNTHESIZED_WIRE_29;
wire	[5:0] SYNTHESIZED_WIRE_32;
wire	[5:0] SYNTHESIZED_WIRE_33;
wire	[5:0] SYNTHESIZED_WIRE_34;
wire	[5:0] SYNTHESIZED_WIRE_37;
wire	[5:0] SYNTHESIZED_WIRE_38;
wire	[5:0] SYNTHESIZED_WIRE_39;
wire	[5:0] SYNTHESIZED_WIRE_41;
wire	[5:0] SYNTHESIZED_WIRE_42;
wire	[5:0] SYNTHESIZED_WIRE_43;

assign	SYNTHESIZED_WIRE_44 = 1;
assign	SYNTHESIZED_WIRE_46 = 0;




cvt_2x1_1x2	b2v_inst(
	.Din(SYNTHESIZED_WIRE_0),
	.Dout0(lcdData_ALTERA_SYNTHESIZED[0]),
	.Dout1(lcdData_ALTERA_SYNTHESIZED[1]));


tapeSymbolFinder	b2v_inst1(
	.sel(SYNTHESIZED_WIRE_1),
	.tapeData(tapeData),
	.tapeSymbol(SYNTHESIZED_WIRE_0));


Reverser6bit	b2v_inst10(
	.din(pos),
	.rev(SYNTHESIZED_WIRE_45));


cvt_2x1_1x2	b2v_inst11(
	.Din(SYNTHESIZED_WIRE_2),
	.Dout0(lcdData_ALTERA_SYNTHESIZED[2]),
	.Dout1(lcdData_ALTERA_SYNTHESIZED[3]));


cvt_2x1_1x2	b2v_inst12(
	.Din(SYNTHESIZED_WIRE_3),
	.Dout0(lcdData_ALTERA_SYNTHESIZED[4]),
	.Dout1(lcdData_ALTERA_SYNTHESIZED[5]));


cvt_2x1_1x2	b2v_inst13(
	.Din(SYNTHESIZED_WIRE_4),
	.Dout0(lcdData_ALTERA_SYNTHESIZED[6]),
	.Dout1(lcdData_ALTERA_SYNTHESIZED[7]));


cvt_2x1_1x2	b2v_inst14(
	.Din(SYNTHESIZED_WIRE_5),
	.Dout0(lcdData_ALTERA_SYNTHESIZED[8]),
	.Dout1(lcdData_ALTERA_SYNTHESIZED[9]));


cvt_2x1_1x2	b2v_inst15(
	.Din(SYNTHESIZED_WIRE_6),
	.Dout0(lcdData_ALTERA_SYNTHESIZED[10]),
	.Dout1(lcdData_ALTERA_SYNTHESIZED[11]));


cvt_2x1_1x2	b2v_inst16(
	.Din(SYNTHESIZED_WIRE_7),
	.Dout0(lcdData_ALTERA_SYNTHESIZED[14]),
	.Dout1(lcdData_ALTERA_SYNTHESIZED[15]));


RippleCarryAdder6bit	b2v_inst17(
	.sub(SYNTHESIZED_WIRE_44),
	.a(SYNTHESIZED_WIRE_45),
	.b(SYNTHESIZED_WIRE_10),
	
	.s(SYNTHESIZED_WIRE_12));


cvt_2x1_1x2	b2v_inst18(
	.Din(SYNTHESIZED_WIRE_11),
	.Dout0(lcdData_ALTERA_SYNTHESIZED[12]),
	.Dout1(lcdData_ALTERA_SYNTHESIZED[13]));


Reverser6bit	b2v_inst19(
	.din(SYNTHESIZED_WIRE_12),
	.rev(SYNTHESIZED_WIRE_1));


tapeSymbolFinder	b2v_inst2(
	.sel(SYNTHESIZED_WIRE_13),
	.tapeData(tapeData),
	.tapeSymbol(SYNTHESIZED_WIRE_2));


RippleCarryAdder6bit	b2v_inst20(
	.sub(SYNTHESIZED_WIRE_44),
	.a(SYNTHESIZED_WIRE_45),
	.b(SYNTHESIZED_WIRE_16),
	
	.s(SYNTHESIZED_WIRE_17));


Reverser6bit	b2v_inst21(
	.din(SYNTHESIZED_WIRE_17),
	.rev(SYNTHESIZED_WIRE_13));


RippleCarryAdder6bit	b2v_inst22(
	.sub(SYNTHESIZED_WIRE_44),
	.a(SYNTHESIZED_WIRE_45),
	.b(SYNTHESIZED_WIRE_20),
	
	.s(SYNTHESIZED_WIRE_21));



Reverser6bit	b2v_inst24(
	.din(SYNTHESIZED_WIRE_21),
	.rev(SYNTHESIZED_WIRE_33));


RippleCarryAdder6bit	b2v_inst25(
	.sub(SYNTHESIZED_WIRE_44),
	.a(SYNTHESIZED_WIRE_45),
	.b(SYNTHESIZED_WIRE_24),
	
	.s(SYNTHESIZED_WIRE_25));


Reverser6bit	b2v_inst26(
	.din(SYNTHESIZED_WIRE_25),
	.rev(SYNTHESIZED_WIRE_39));


RippleCarryAdder6bit	b2v_inst27(
	.sub(SYNTHESIZED_WIRE_46),
	.a(SYNTHESIZED_WIRE_45),
	.b(SYNTHESIZED_WIRE_28),
	
	.s(SYNTHESIZED_WIRE_29));


Reverser6bit	b2v_inst28(
	.din(SYNTHESIZED_WIRE_29),
	.rev(SYNTHESIZED_WIRE_41));


RippleCarryAdder6bit	b2v_inst29(
	.sub(SYNTHESIZED_WIRE_46),
	.a(SYNTHESIZED_WIRE_45),
	.b(SYNTHESIZED_WIRE_32),
	
	.s(SYNTHESIZED_WIRE_34));


tapeSymbolFinder	b2v_inst3(
	.sel(SYNTHESIZED_WIRE_33),
	.tapeData(tapeData),
	.tapeSymbol(SYNTHESIZED_WIRE_3));


Reverser6bit	b2v_inst30(
	.din(SYNTHESIZED_WIRE_34),
	.rev(SYNTHESIZED_WIRE_42));


RippleCarryAdder6bit	b2v_inst31(
	.sub(SYNTHESIZED_WIRE_46),
	.a(SYNTHESIZED_WIRE_45),
	.b(SYNTHESIZED_WIRE_37),
	
	.s(SYNTHESIZED_WIRE_38));


Reverser6bit	b2v_inst32(
	.din(SYNTHESIZED_WIRE_38),
	.rev(SYNTHESIZED_WIRE_43));


Bus6bit3	b2v_inst34(
	.dout(SYNTHESIZED_WIRE_16));


Bus6bit4	b2v_inst35(
	.dout(SYNTHESIZED_WIRE_10));


Bus6bit2	b2v_inst36(
	.dout(SYNTHESIZED_WIRE_20));


Bus6bit1	b2v_inst37(
	.dout(SYNTHESIZED_WIRE_24));


Bus6bit1	b2v_inst38(
	.dout(SYNTHESIZED_WIRE_28));


Bus6bit2	b2v_inst39(
	.dout(SYNTHESIZED_WIRE_32));


tapeSymbolFinder	b2v_inst4(
	.sel(SYNTHESIZED_WIRE_39),
	.tapeData(tapeData),
	.tapeSymbol(SYNTHESIZED_WIRE_4));


Bus6bit3	b2v_inst40(
	.dout(SYNTHESIZED_WIRE_37));


tapeSymbolFinder	b2v_inst5(
	.sel(SYNTHESIZED_WIRE_45),
	.tapeData(tapeData),
	.tapeSymbol(SYNTHESIZED_WIRE_5));



tapeSymbolFinder	b2v_inst6(
	.sel(SYNTHESIZED_WIRE_41),
	.tapeData(tapeData),
	.tapeSymbol(SYNTHESIZED_WIRE_6));


tapeSymbolFinder	b2v_inst7(
	.sel(SYNTHESIZED_WIRE_42),
	.tapeData(tapeData),
	.tapeSymbol(SYNTHESIZED_WIRE_11));


tapeSymbolFinder	b2v_inst9(
	.sel(SYNTHESIZED_WIRE_43),
	.tapeData(tapeData),
	.tapeSymbol(SYNTHESIZED_WIRE_7));

assign	lcdData = lcdData_ALTERA_SYNTHESIZED;

endmodule
