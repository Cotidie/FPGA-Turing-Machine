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
// CREATED		"Tue Dec 21 12:00:43 2021"

module mux_2x1_2bit(
	sel,
	Din0_,
	Din1_,
	Dout
);


input wire	sel;
input wire	[1:0] Din0_;
input wire	[1:0] Din1_;
output wire	[1:0] Dout;

wire	[1:0] Dout_ALTERA_SYNTHESIZED;





mux_2x1	b2v_inst(
	.d0(Din0_[0]),
	.d1(Din1_[0]),
	.sel(sel),
	.dout(Dout_ALTERA_SYNTHESIZED[0]));


mux_2x1	b2v_inst1(
	.d0(Din0_[1]),
	.d1(Din1_[1]),
	.sel(sel),
	.dout(Dout_ALTERA_SYNTHESIZED[1]));

assign	Dout = Dout_ALTERA_SYNTHESIZED;

endmodule
