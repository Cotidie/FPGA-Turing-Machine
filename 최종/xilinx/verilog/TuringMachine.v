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
// CREATED		"Wed Dec 22 11:20:21 2021"

module TuringMachine(
	clk,
	rst,
	quit,
	resume,
	rerun,
	key0,
	key1,
	key2,
	key3,
	key4,
	key5,
	key6,
	keyHash,
	com1,
	com2,
	com3,
	com4,
	com5,
	com6,
	com7,
	com8,
	led1,
	led2,
	led3,
	led4,
	led5,
	led6,
	led7,
	led8,
	sega,
	segb,
	segc,
	segd,
	sege,
	segf,
	segg,
	single_a,
	single_b,
	single_c,
	single_d,
	single_e,
	single_f,
	single_g
);


input wire	clk;
input wire	rst;
input wire	quit;
input wire	resume;
input wire	rerun;
input wire	key0;
input wire	key1;
input wire	key2;
input wire	key3;
input wire	key4;
input wire	key5;
input wire	key6;
input wire	keyHash;
output wire	com1;
output wire	com2;
output wire	com3;
output wire	com4;
output wire	com5;
output wire	com6;
output wire	com7;
output wire	com8;
output wire	led1;
output wire	led2;
output wire	led3;
output wire	led4;
output wire	led5;
output wire	led6;
output wire	led7;
output wire	led8;
output wire	sega;
output wire	segb;
output wire	segc;
output wire	segd;
output wire	sege;
output wire	segf;
output wire	segg;
output wire	single_a;
output wire	single_b;
output wire	single_c;
output wire	single_d;
output wire	single_e;
output wire	single_f;
output wire	single_g;

wire	[3:0] b_in;
wire	[13:0] s;
wire	SYNTHESIZED_WIRE_36;
wire	[5:0] SYNTHESIZED_WIRE_37;
wire	[127:0] SYNTHESIZED_WIRE_38;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_39;
wire	[15:0] SYNTHESIZED_WIRE_8;
wire	[1:0] SYNTHESIZED_WIRE_11;
wire	[1:0] SYNTHESIZED_WIRE_40;
wire	[2:0] SYNTHESIZED_WIRE_15;
wire	[1:0] SYNTHESIZED_WIRE_41;
wire	SYNTHESIZED_WIRE_42;
wire	[2:0] SYNTHESIZED_WIRE_43;
wire	[5:0] SYNTHESIZED_WIRE_24;
wire	[1:0] SYNTHESIZED_WIRE_29;





BinaryToSeg3Bit	b2v_btoseg3bit(
	.b_in(b_in),
	.a(single_a),
	.b(single_b),
	.c(single_c),
	.d(single_d),
	.e(single_e),
	.f(single_f),
	.g(single_g));


clk_modifier	b2v_clkmod(
	.clk(clk),
	.rst_n(SYNTHESIZED_WIRE_36),
	.s(s),
	.div(SYNTHESIZED_WIRE_39));


assign	SYNTHESIZED_WIRE_36 =  ~rst;


window	b2v_inst1(
	.pos(SYNTHESIZED_WIRE_37),
	.tapeData(SYNTHESIZED_WIRE_38),
	.lcdData(SYNTHESIZED_WIRE_8));

assign	led2 = s[10] | s[3];

assign	led3 = s[11] | s[4];

assign	led4 = s[12] | s[5];


ControlUnit	b2v_inst18(
	.quit(quit),
	.resume(resume),
	.trigger(SYNTHESIZED_WIRE_3),
	.rerun(rerun),
	.stable(SYNTHESIZED_WIRE_4),
	.clk(SYNTHESIZED_WIRE_39),
	.rst_n(SYNTHESIZED_WIRE_36),
	.sig(s));


SegDisplay	b2v_inst2(
	.clk(clk),
	.rst_n(SYNTHESIZED_WIRE_36),
	.lcdData(SYNTHESIZED_WIRE_8),
	.a(sega),
	.b(segb),
	.c(segc),
	.d(segd),
	.e(sege),
	.f(segf),
	.g(segg),
	.com0(com1),
	.com1(com2),
	.com2(com3),
	.com3(com4),
	.com4(com5),
	.com5(com6),
	.com6(com7),
	.com7(com8));


triggerMode	b2v_inst20(
	.s(s),
	.mode(SYNTHESIZED_WIRE_11));


keypad	b2v_inst3(
	.key_0(key0),
	.key_1(key1),
	.key_2(key2),
	.key_3(key3),
	.key_4(key4),
	.key_5(key5),
	.key_6(key6),
	.key_hash(keyHash),
	.clk(SYNTHESIZED_WIRE_39),
	.rst_n(SYNTHESIZED_WIRE_36),
	.mode(SYNTHESIZED_WIRE_11),
	.up(SYNTHESIZED_WIRE_3),
	.down(SYNTHESIZED_WIRE_42),
	.data(SYNTHESIZED_WIRE_43));


IsStable	b2v_inst4(
	.clk(SYNTHESIZED_WIRE_39),
	.rst_n(SYNTHESIZED_WIRE_36),
	.cur(b_in[2:0]),
	.move(SYNTHESIZED_WIRE_40),
	.nextQ(SYNTHESIZED_WIRE_15),
	.s(s),
	.writeS(SYNTHESIZED_WIRE_41),
	.same(SYNTHESIZED_WIRE_4));


Cursor	b2v_inst5(
	.trigger(SYNTHESIZED_WIRE_42),
	.clk(SYNTHESIZED_WIRE_39),
	.rst_n(SYNTHESIZED_WIRE_36),
	.keypad(SYNTHESIZED_WIRE_43),
	.move(SYNTHESIZED_WIRE_40),
	.s(s),
	.Addr(SYNTHESIZED_WIRE_24));

assign	led1 = s[9] | s[2];


tapeSymbolFinder	b2v_inst8(
	.sel(SYNTHESIZED_WIRE_37),
	.tapeData(SYNTHESIZED_WIRE_38),
	.tapeSymbol(SYNTHESIZED_WIRE_29));


Reverser6bit	b2v_inst9(
	.din(SYNTHESIZED_WIRE_24),
	.rev(SYNTHESIZED_WIRE_37));

assign	led5 = s[13] | s[6];


TableRegister	b2v_tableReg(
	.trigger(SYNTHESIZED_WIRE_42),
	.clk(SYNTHESIZED_WIRE_39),
	.rst_n(SYNTHESIZED_WIRE_36),
	.Keypad(SYNTHESIZED_WIRE_43),
	.readS(SYNTHESIZED_WIRE_29),
	.s(s),
	.cur(b_in[2:0]),
	.move(SYNTHESIZED_WIRE_40),
	.nextQ(SYNTHESIZED_WIRE_15),
	.writeS(SYNTHESIZED_WIRE_41));


tape_64	b2v_tapereg(
	.trigger(SYNTHESIZED_WIRE_42),
	.rst_n(SYNTHESIZED_WIRE_36),
	.clk(SYNTHESIZED_WIRE_39),
	.Din(SYNTHESIZED_WIRE_41),
	.keypad(SYNTHESIZED_WIRE_43),
	.pos(SYNTHESIZED_WIRE_37),
	.s(s),
	.tapeData(SYNTHESIZED_WIRE_38));

assign	led6 = s[7];
assign	led7 = s[1];
assign	led8 = s[8];
assign	b_in[3] = 0;

endmodule
