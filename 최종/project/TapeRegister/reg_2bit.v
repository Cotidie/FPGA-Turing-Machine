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
// CREATED		"Fri Dec 17 15:00:27 2021"

module reg_2bit(
	Ce,
	clk,
	rst_n,
	Din,
	Dout
);


input wire	Ce;
input wire	clk;
input wire	rst_n;
input wire	[1:0] Din;
output wire	[1:0] Dout;

wire	[1:0] Dout_ALTERA_SYNTHESIZED;





reg_1bit	b2v_inst(
	.D(Din[0]),
	.Ce(Ce),
	.clk(clk),
	.rst_n(rst_n),
	.Q(Dout_ALTERA_SYNTHESIZED[0]));


reg_1bit	b2v_inst1(
	.D(Din[1]),
	.Ce(Ce),
	.clk(clk),
	.rst_n(rst_n),
	.Q(Dout_ALTERA_SYNTHESIZED[1]));

assign	Dout = Dout_ALTERA_SYNTHESIZED;

endmodule
