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
// CREATED		"Tue Dec 21 12:02:37 2021"

module Register6(
	clk,
	rst_n,
	ce,
	Din,
	Dout
);


input wire	clk;
input wire	rst_n;
input wire	ce;
input wire	[5:0] Din;
output wire	[5:0] Dout;

wire	[5:0] Dout_ALTERA_SYNTHESIZED;





Register3	b2v_inst(
	.ce(ce),
	.clk(clk),
	.rst_n(rst_n),
	.Din(Din[2:0]),
	.Dout(Dout_ALTERA_SYNTHESIZED[2:0]));


Register3	b2v_inst1(
	.ce(ce),
	.clk(clk),
	.rst_n(rst_n),
	.Din(Din[5:3]),
	.Dout(Dout_ALTERA_SYNTHESIZED[5:3]));

assign	Dout = Dout_ALTERA_SYNTHESIZED;

endmodule
