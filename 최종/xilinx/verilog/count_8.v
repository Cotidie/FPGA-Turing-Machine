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
// CREATED		"Tue Dec 21 12:04:10 2021"

module count_8(
	ce,
	clk,
	rst_n,
	cnt
);


input wire	ce;
input wire	clk;
input wire	rst_n;
output wire	[2:0] cnt;

wire	A_bar;
wire	B_bar;
wire	C_bar;
wire	[2:0] cnt_ALTERA_SYNTHESIZED;
wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_4;




assign	A_bar =  ~cnt_ALTERA_SYNTHESIZED[2];

assign	B_bar =  ~cnt_ALTERA_SYNTHESIZED[1];

assign	C_bar =  ~cnt_ALTERA_SYNTHESIZED[0];

assign	SYNTHESIZED_WIRE_4 = cnt_ALTERA_SYNTHESIZED[1] ^ cnt_ALTERA_SYNTHESIZED[0];

assign	SYNTHESIZED_WIRE_3 = SYNTHESIZED_WIRE_0 | SYNTHESIZED_WIRE_1 | SYNTHESIZED_WIRE_2;

assign	SYNTHESIZED_WIRE_2 = cnt_ALTERA_SYNTHESIZED[2] & B_bar;

assign	SYNTHESIZED_WIRE_0 = A_bar & cnt_ALTERA_SYNTHESIZED[1] & cnt_ALTERA_SYNTHESIZED[0];

assign	SYNTHESIZED_WIRE_1 = cnt_ALTERA_SYNTHESIZED[2] & cnt_ALTERA_SYNTHESIZED[1] & C_bar;


Register1	b2v_reg_a(
	.D(SYNTHESIZED_WIRE_3),
	.Ce(ce),
	.clk(clk),
	.rst_n(rst_n),
	.Q(cnt_ALTERA_SYNTHESIZED[2]));


Register1	b2v_reg_b(
	.D(SYNTHESIZED_WIRE_4),
	.Ce(ce),
	.clk(clk),
	.rst_n(rst_n),
	.Q(cnt_ALTERA_SYNTHESIZED[1]));


Register1	b2v_reg_c(
	.D(C_bar),
	.Ce(ce),
	.clk(clk),
	.rst_n(rst_n),
	.Q(cnt_ALTERA_SYNTHESIZED[0]));

assign	cnt = cnt_ALTERA_SYNTHESIZED;

endmodule
