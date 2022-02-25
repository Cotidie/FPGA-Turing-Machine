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
// CREATED		"Wed Dec 22 02:10:32 2021"

module clk_modifier(
	clk,
	rst_n,
	s,
	div
);


input wire	clk;
input wire	rst_n;
input wire	[13:0] s;
output wire	div;

wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;

assign	SYNTHESIZED_WIRE_0 = 1;




PNU_CLK_DIV	b2v_inst(
	.clk(clk),
	.rst_n(rst_n),
	.en(SYNTHESIZED_WIRE_0),
	.div_clk(SYNTHESIZED_WIRE_1));
	defparam	b2v_inst.cnt_num = 16666;


Mux1bit2x1	b2v_inst1(
	.d0(clk),
	.d1(SYNTHESIZED_WIRE_1),
	.sel(SYNTHESIZED_WIRE_2),
	.dout(div));


assign	SYNTHESIZED_WIRE_2 = s[8] | s[10] | s[9] | s[11] | s[12] | s[13];


endmodule
