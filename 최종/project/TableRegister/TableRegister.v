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
// CREATED		"Wed Dec 22 02:17:04 2021"

module TableRegister(
	clk,
	rst_n,
	trigger,
	Keypad,
	readS,
	s,
	cur,
	move,
	nextQ,
	writeS
);


input wire	clk;
input wire	rst_n;
input wire	trigger;
input wire	[2:0] Keypad;
input wire	[1:0] readS;
input wire	[13:0] s;
output wire	[2:0] cur;
output wire	[1:0] move;
output wire	[2:0] nextQ;
output wire	[1:0] writeS;

wire	[4:0] Address;
wire	[7:0] Din;
wire	[7:0] Dout;
wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;




assign	SYNTHESIZED_WIRE_1 = s[4] & trigger;

assign	SYNTHESIZED_WIRE_2 = s[5] & trigger;

assign	SYNTHESIZED_WIRE_0 = s[6] & trigger;



StateRegister	b2v_inst1(
	.s2(s[2]),
	.s10(s[10]),
	.trigger(trigger),
	.clk(clk),
	.rst_n(rst_n),
	.keypad(Keypad),
	.nextQ(Dout[7:5]),
	.state(Address[4:2]));


SymbolRegister	b2v_inst2(
	.s3(s[3]),
	.s9(s[9]),
	.trigger(trigger),
	.clk(clk),
	.rst_n(rst_n),
	.keypad(Keypad),
	.readS(readS),
	.symbol(Address[1:0]));


Register2	b2v_moveReg(
	.ce(SYNTHESIZED_WIRE_0),
	.clk(clk),
	.rst_n(rst_n),
	.Din(Keypad[1:0]),
	.Dout(Din[2:1]));


Register3	b2v_nextState(
	.ce(SYNTHESIZED_WIRE_1),
	.clk(clk),
	.rst_n(rst_n),
	.Din(Keypad),
	.Dout(Din[7:5]));


SRAM32x8bit	b2v_sram(
	.RW(s[7]),
	.clk(clk),
	.rst_n(rst_n),
	.Address(Address),
	.Din(Din),
	.Dout(Dout));


Register2	b2v_writeSymbol(
	.ce(SYNTHESIZED_WIRE_2),
	.clk(clk),
	.rst_n(rst_n),
	.Din(Keypad[1:0]),
	.Dout(Din[4:3]));

assign	cur[2:0] = Address[4:2];
assign	move[1:0] = Dout[2:1];
assign	nextQ[2:0] = Dout[7:5];
assign	writeS[1:0] = Dout[4:3];
assign	Din[0] = 0;

endmodule
