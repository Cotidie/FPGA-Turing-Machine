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
// CREATED		"Tue Dec 21 12:02:15 2021"

module DeMux4bit1x2(
	sel,
	Din,
	Dout0,
	Dout1
);


input wire	sel;
input wire	[3:0] Din;
output wire	[3:0] Dout0;
output wire	[3:0] Dout1;

wire	[3:0] Dout_ALTERA_SYNTHESIZED0;
wire	[3:0] Dout_ALTERA_SYNTHESIZED1;





DeMux1bit1x2	b2v_DeMux0(
	.Din(Din[3]),
	.sel(sel),
	.Dout1(Dout_ALTERA_SYNTHESIZED1[3]),
	.Dout0(Dout_ALTERA_SYNTHESIZED0[3]));


DeMux1bit1x2	b2v_DeMux1(
	.Din(Din[2]),
	.sel(sel),
	.Dout1(Dout_ALTERA_SYNTHESIZED1[2]),
	.Dout0(Dout_ALTERA_SYNTHESIZED0[2]));


DeMux1bit1x2	b2v_DeMux2(
	.Din(Din[1]),
	.sel(sel),
	.Dout1(Dout_ALTERA_SYNTHESIZED1[1]),
	.Dout0(Dout_ALTERA_SYNTHESIZED0[1]));


DeMux1bit1x2	b2v_DeMux3(
	.Din(Din[0]),
	.sel(sel),
	.Dout1(Dout_ALTERA_SYNTHESIZED1[0]),
	.Dout0(Dout_ALTERA_SYNTHESIZED0[0]));

assign	Dout0 = Dout_ALTERA_SYNTHESIZED0;
assign	Dout1 = Dout_ALTERA_SYNTHESIZED1;

endmodule
