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
// CREATED		"Tue Dec 21 12:04:44 2021"

module SRAM32x8bit(
	RW,
	rst_n,
	clk,
	Address,
	Din,
	Dout
);


input wire	RW;
input wire	rst_n;
input wire	clk;
input wire	[4:0] Address;
input wire	[7:0] Din;
output wire	[7:0] Dout;

wire	[7:0] Write;
wire	[7:0] SYNTHESIZED_WIRE_0;
wire	[7:0] SYNTHESIZED_WIRE_1;
wire	[7:0] SYNTHESIZED_WIRE_2;
wire	[7:0] SYNTHESIZED_WIRE_3;
wire	[7:0] SYNTHESIZED_WIRE_4;
wire	[7:0] SYNTHESIZED_WIRE_5;
wire	[7:0] SYNTHESIZED_WIRE_6;
wire	[7:0] SYNTHESIZED_WIRE_7;
wire	[2:0] SYNTHESIZED_WIRE_8;





Selector3	b2v_inst8(
	.RW(RW),
	.Address(Address[4:2]),
	.Read(SYNTHESIZED_WIRE_8),
	.Write(Write));


Mux8bit8x1	b2v_mux8(
	.Din0(SYNTHESIZED_WIRE_0),
	.Din1(SYNTHESIZED_WIRE_1),
	.Din2(SYNTHESIZED_WIRE_2),
	.Din3(SYNTHESIZED_WIRE_3),
	.Din4(SYNTHESIZED_WIRE_4),
	.Din5(SYNTHESIZED_WIRE_5),
	.Din6(SYNTHESIZED_WIRE_6),
	.Din7(SYNTHESIZED_WIRE_7),
	.sel(SYNTHESIZED_WIRE_8),
	.Dout(Dout));


SRAM4x8bit	b2v_row0(
	.RW(Write[0]),
	.clk(clk),
	.rst_n(rst_n),
	.Address(Address[1:0]),
	.Din(Din),
	.Dout(SYNTHESIZED_WIRE_0));


SRAM4x8bit	b2v_row1(
	.RW(Write[1]),
	.clk(clk),
	.rst_n(rst_n),
	.Address(Address[1:0]),
	.Din(Din),
	.Dout(SYNTHESIZED_WIRE_1));


SRAM4x8bit	b2v_row2(
	.RW(Write[2]),
	.clk(clk),
	.rst_n(rst_n),
	.Address(Address[1:0]),
	.Din(Din),
	.Dout(SYNTHESIZED_WIRE_2));


SRAM4x8bit	b2v_row3(
	.RW(Write[3]),
	.clk(clk),
	.rst_n(rst_n),
	.Address(Address[1:0]),
	.Din(Din),
	.Dout(SYNTHESIZED_WIRE_3));


SRAM4x8bit	b2v_row4(
	.RW(Write[4]),
	.clk(clk),
	.rst_n(rst_n),
	.Address(Address[1:0]),
	.Din(Din),
	.Dout(SYNTHESIZED_WIRE_4));


SRAM4x8bit	b2v_row5(
	.RW(Write[5]),
	.clk(clk),
	.rst_n(rst_n),
	.Address(Address[1:0]),
	.Din(Din),
	.Dout(SYNTHESIZED_WIRE_5));


SRAM4x8bit	b2v_row6(
	.RW(Write[6]),
	.clk(clk),
	.rst_n(rst_n),
	.Address(Address[1:0]),
	.Din(Din),
	.Dout(SYNTHESIZED_WIRE_6));


SRAM4x8bit	b2v_row7(
	.RW(Write[7]),
	.clk(clk),
	.rst_n(rst_n),
	.Address(Address[1:0]),
	.Din(Din),
	.Dout(SYNTHESIZED_WIRE_7));


endmodule
