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
// CREATED		"Tue Dec 21 12:02:42 2021"

module Register8(
	rst_n,
	clk,
	ce,
	Din,
	Dout
);


input wire	rst_n;
input wire	clk;
input wire	ce;
input wire	[7:0] Din;
output wire	[7:0] Dout;

wire	[7:0] Dout_ALTERA_SYNTHESIZED;





Register1	b2v_inst(
	.D(Din[0]),
	.Ce(ce),
	.clk(clk),
	.rst_n(rst_n),
	.Q(Dout_ALTERA_SYNTHESIZED[0]));


Register1	b2v_inst10(
	.D(Din[1]),
	.Ce(ce),
	.clk(clk),
	.rst_n(rst_n),
	.Q(Dout_ALTERA_SYNTHESIZED[1]));


Register1	b2v_inst11(
	.D(Din[2]),
	.Ce(ce),
	.clk(clk),
	.rst_n(rst_n),
	.Q(Dout_ALTERA_SYNTHESIZED[2]));


Register1	b2v_inst12(
	.D(Din[3]),
	.Ce(ce),
	.clk(clk),
	.rst_n(rst_n),
	.Q(Dout_ALTERA_SYNTHESIZED[3]));


Register1	b2v_inst13(
	.D(Din[4]),
	.Ce(ce),
	.clk(clk),
	.rst_n(rst_n),
	.Q(Dout_ALTERA_SYNTHESIZED[4]));


Register1	b2v_inst15(
	.D(Din[5]),
	.Ce(ce),
	.clk(clk),
	.rst_n(rst_n),
	.Q(Dout_ALTERA_SYNTHESIZED[5]));


Register1	b2v_inst16(
	.D(Din[6]),
	.Ce(ce),
	.clk(clk),
	.rst_n(rst_n),
	.Q(Dout_ALTERA_SYNTHESIZED[6]));


Register1	b2v_inst17(
	.D(Din[7]),
	.Ce(ce),
	.clk(clk),
	.rst_n(rst_n),
	.Q(Dout_ALTERA_SYNTHESIZED[7]));

assign	Dout = Dout_ALTERA_SYNTHESIZED;

endmodule
