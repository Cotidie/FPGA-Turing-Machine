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
// CREATED		"Fri Dec 17 14:59:47 2021"

module render_tapeSymbol_3(
	Din,
	a,
	b,
	c,
	d,
	e,
	f,
	g
);


input wire	Din;
output wire	a;
output wire	b;
output wire	c;
output wire	d;
output wire	e;
output wire	f;
output wire	g;

wire	SYNTHESIZED_WIRE_0;

assign	a = Din;
assign	b = Din;
assign	c = Din;
assign	d = Din;
assign	g = Din;
assign	e = SYNTHESIZED_WIRE_0;
assign	f = SYNTHESIZED_WIRE_0;



assign	SYNTHESIZED_WIRE_0 =  ~Din;


endmodule
