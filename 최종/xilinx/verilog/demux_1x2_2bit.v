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
// CREATED		"Tue Dec 21 12:02:20 2021"

module demux_1x2_2bit(
	sel,
	Din,
	Dout_0_,
	Dout_1_
);


input wire	sel;
input wire	[1:0] Din;
output wire	[1:0] Dout_0_;
output wire	[1:0] Dout_1_;

wire	[1:0] Dout_0_ALTERA_SYNTHESIZED;
wire	[1:0] Dout_1_ALTERA_SYNTHESIZED;





demux_1x2	b2v_inst(
	.Din(Din[0]),
	.sel(sel),
	.Dout_1(Dout_1_ALTERA_SYNTHESIZED[0]),
	.Dout_0(Dout_0_ALTERA_SYNTHESIZED[0]));


demux_1x2	b2v_inst1(
	.Din(Din[1]),
	.sel(sel),
	.Dout_1(Dout_1_ALTERA_SYNTHESIZED[1]),
	.Dout_0(Dout_0_ALTERA_SYNTHESIZED[1]));

assign	Dout_0_ = Dout_0_ALTERA_SYNTHESIZED;
assign	Dout_1_ = Dout_1_ALTERA_SYNTHESIZED;

endmodule
