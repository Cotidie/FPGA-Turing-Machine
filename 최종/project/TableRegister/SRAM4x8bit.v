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
// CREATED		"Tue Dec 21 12:04:39 2021"

module SRAM4x8bit(
	clk,
	rst_n,
	RW,
	Address,
	Din,
	Dout
);


input wire	clk;
input wire	rst_n;
input wire	RW;
input wire	[1:0] Address;
input wire	[7:0] Din;
output wire	[7:0] Dout;

wire	[3:0] Addr;
wire	[7:0] SYNTHESIZED_WIRE_0;
wire	[7:0] SYNTHESIZED_WIRE_1;
wire	[7:0] SYNTHESIZED_WIRE_2;
wire	[7:0] SYNTHESIZED_WIRE_3;
wire	[1:0] SYNTHESIZED_WIRE_4;





Register8	b2v_inst(
	.ce(Addr[3]),
	.clk(clk),
	.rst_n(rst_n),
	.Din(Din),
	.Dout(SYNTHESIZED_WIRE_3));


Register8	b2v_inst11(
	.ce(Addr[0]),
	.clk(clk),
	.rst_n(rst_n),
	.Din(Din),
	.Dout(SYNTHESIZED_WIRE_0));


Register8	b2v_inst6(
	.ce(Addr[2]),
	.clk(clk),
	.rst_n(rst_n),
	.Din(Din),
	.Dout(SYNTHESIZED_WIRE_2));


Register8	b2v_inst7(
	.ce(Addr[1]),
	.clk(clk),
	.rst_n(rst_n),
	.Din(Din),
	.Dout(SYNTHESIZED_WIRE_1));


Mux8bit4x1	b2v_mux8(
	.Din0(SYNTHESIZED_WIRE_0),
	.Din1(SYNTHESIZED_WIRE_1),
	.Din2(SYNTHESIZED_WIRE_2),
	.Din3(SYNTHESIZED_WIRE_3),
	.sel(SYNTHESIZED_WIRE_4),
	.Dout(Dout));


Selector	b2v_selector(
	.RW(RW),
	.Address(Address),
	.Read(SYNTHESIZED_WIRE_4),
	.Write(Addr));


endmodule
