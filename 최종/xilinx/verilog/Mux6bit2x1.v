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
// CREATED		"Tue Dec 21 12:01:45 2021"

module Mux6bit2x1(
	sel,
	din0,
	din1,
	dout
);


input wire	sel;
input wire	[5:0] din0;
input wire	[5:0] din1;
output wire	[5:0] dout;

wire	[5:0] dout_ALTERA_SYNTHESIZED;





Mux1bit2x1	b2v_mux0(
	.d0(din0[0]),
	.d1(din1[0]),
	.sel(sel),
	.dout(dout_ALTERA_SYNTHESIZED[0]));


Mux1bit2x1	b2v_mux1(
	.d0(din0[1]),
	.d1(din1[1]),
	.sel(sel),
	.dout(dout_ALTERA_SYNTHESIZED[1]));


Mux1bit2x1	b2v_mux2(
	.d0(din0[2]),
	.d1(din1[2]),
	.sel(sel),
	.dout(dout_ALTERA_SYNTHESIZED[2]));


Mux1bit2x1	b2v_mux3(
	.d0(din0[3]),
	.d1(din1[3]),
	.sel(sel),
	.dout(dout_ALTERA_SYNTHESIZED[3]));


Mux1bit2x1	b2v_mux4(
	.d0(din0[4]),
	.d1(din1[4]),
	.sel(sel),
	.dout(dout_ALTERA_SYNTHESIZED[4]));


Mux1bit2x1	b2v_mux5(
	.d0(din0[5]),
	.d1(din1[5]),
	.sel(sel),
	.dout(dout_ALTERA_SYNTHESIZED[5]));

assign	dout = dout_ALTERA_SYNTHESIZED;

endmodule
