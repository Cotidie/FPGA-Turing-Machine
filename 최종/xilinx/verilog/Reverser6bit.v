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
// CREATED		"Tue Dec 21 12:00:50 2021"

module Reverser6bit(
	din,
	rev
);


input wire	[5:0] din;
output wire	[5:0] rev;

wire	[5:0] rev_ALTERA_SYNTHESIZED;
wire	SYNTHESIZED_WIRE_6;

assign	SYNTHESIZED_WIRE_6 = 1;




Mux1bit2x1	b2v_inst(
	.d0(din[0]),
	.d1(din[5]),
	.sel(SYNTHESIZED_WIRE_6),
	.dout(rev_ALTERA_SYNTHESIZED[0]));


Mux1bit2x1	b2v_inst3(
	.d0(din[1]),
	.d1(din[4]),
	.sel(SYNTHESIZED_WIRE_6),
	.dout(rev_ALTERA_SYNTHESIZED[1]));


Mux1bit2x1	b2v_inst4(
	.d0(din[2]),
	.d1(din[3]),
	.sel(SYNTHESIZED_WIRE_6),
	.dout(rev_ALTERA_SYNTHESIZED[2]));


Mux1bit2x1	b2v_inst5(
	.d0(din[3]),
	.d1(din[2]),
	.sel(SYNTHESIZED_WIRE_6),
	.dout(rev_ALTERA_SYNTHESIZED[3]));


Mux1bit2x1	b2v_inst6(
	.d0(din[4]),
	.d1(din[1]),
	.sel(SYNTHESIZED_WIRE_6),
	.dout(rev_ALTERA_SYNTHESIZED[4]));


Mux1bit2x1	b2v_inst7(
	.d0(din[5]),
	.d1(din[0]),
	.sel(SYNTHESIZED_WIRE_6),
	.dout(rev_ALTERA_SYNTHESIZED[5]));


assign	rev = rev_ALTERA_SYNTHESIZED;

endmodule
