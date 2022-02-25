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
// CREATED		"Fri Dec 17 14:41:45 2021"

module b2d_2bit(
	b,
	d0,
	d1,
	d2,
	d3
);


input wire	[1:0] b;
output wire	d0;
output wire	d1;
output wire	d2;
output wire	d3;

wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;




assign	d0 = SYNTHESIZED_WIRE_0 & SYNTHESIZED_WIRE_1;

assign	SYNTHESIZED_WIRE_0 =  ~b[1];

assign	SYNTHESIZED_WIRE_1 =  ~b[0];

assign	SYNTHESIZED_WIRE_2 =  ~b[1];

assign	SYNTHESIZED_WIRE_3 =  ~b[0];

assign	d1 = SYNTHESIZED_WIRE_2 & b[0];

assign	d2 = b[1] & SYNTHESIZED_WIRE_3;

assign	d3 = b[1] & b[0];


endmodule
