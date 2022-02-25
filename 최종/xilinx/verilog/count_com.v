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
// CREATED		"Fri Dec 17 15:02:47 2021"

module count_com(
	clk,
	rst_n,
	com0,
	com1,
	com2,
	com3,
	com4,
	com5,
	com6,
	com7
);


input wire	clk;
input wire	rst_n;
output wire	com0;
output wire	com1;
output wire	com2;
output wire	com3;
output wire	com4;
output wire	com5;
output wire	com6;
output wire	com7;

wire	[7:0] Dout;
wire	SYNTHESIZED_WIRE_0;
wire	[2:0] SYNTHESIZED_WIRE_1;

assign	SYNTHESIZED_WIRE_0 = 1;




count_8	b2v_inst(
	.ce(SYNTHESIZED_WIRE_0),
	.clk(clk),
	.rst_n(rst_n),
	.cnt(SYNTHESIZED_WIRE_1));

assign	com5 =  ~Dout[5];

assign	com6 =  ~Dout[6];

assign	com7 =  ~Dout[7];



OneHotEncoder3	b2v_inst3(
	.Din(SYNTHESIZED_WIRE_1),
	.Dout(Dout));

assign	com0 =  ~Dout[0];

assign	com1 =  ~Dout[1];

assign	com2 =  ~Dout[2];

assign	com3 =  ~Dout[3];

assign	com4 =  ~Dout[4];


endmodule
