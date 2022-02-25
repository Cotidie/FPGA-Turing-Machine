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
// CREATED		"Wed Dec 22 02:02:50 2021"

module s_gather(
	s0,
	s1,
	s2,
	s3,
	s4,
	s5,
	s6,
	s7,
	s8,
	s9,
	sa,
	sb,
	sc,
	sd,
	out
);


input wire	s0;
input wire	s1;
input wire	s2;
input wire	s3;
input wire	s4;
input wire	s5;
input wire	s6;
input wire	s7;
input wire	s8;
input wire	s9;
input wire	sa;
input wire	sb;
input wire	sc;
input wire	sd;
output wire	[13:0] out;

wire	[13:0] out_ALTERA_SYNTHESIZED;




assign	out = out_ALTERA_SYNTHESIZED;
assign	out_ALTERA_SYNTHESIZED[0] = s0;
assign	out_ALTERA_SYNTHESIZED[1] = s1;
assign	out_ALTERA_SYNTHESIZED[2] = s2;
assign	out_ALTERA_SYNTHESIZED[3] = s3;
assign	out_ALTERA_SYNTHESIZED[4] = s4;
assign	out_ALTERA_SYNTHESIZED[5] = s5;
assign	out_ALTERA_SYNTHESIZED[6] = s6;
assign	out_ALTERA_SYNTHESIZED[7] = s7;
assign	out_ALTERA_SYNTHESIZED[8] = s8;
assign	out_ALTERA_SYNTHESIZED[10] = sa;
assign	out_ALTERA_SYNTHESIZED[9] = s9;
assign	out_ALTERA_SYNTHESIZED[11] = sb;
assign	out_ALTERA_SYNTHESIZED[12] = sc;
assign	out_ALTERA_SYNTHESIZED[13] = sd;

endmodule
