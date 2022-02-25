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
// CREATED		"Fri Dec 17 17:05:25 2021"

module demux_1x4_2bit(
	Din,
	sel,
	Dout_0_,
	Dout_1_,
	Dout_2_,
	Dout_3_
);


input wire	[1:0] Din;
input wire	[1:0] sel;
output wire	[1:0] Dout_0_;
output wire	[1:0] Dout_1_;
output wire	[1:0] Dout_2_;
output wire	[1:0] Dout_3_;

wire	[1:0] SYNTHESIZED_WIRE_0;
wire	[1:0] SYNTHESIZED_WIRE_1;





demux_1x2_2bit	b2v_inst(
	.sel(sel[0]),
	.Din(Din),
	.Dout_0_(SYNTHESIZED_WIRE_0),
	.Dout_1_(SYNTHESIZED_WIRE_1));


demux_1x2_2bit	b2v_inst1(
	.sel(sel[1]),
	.Din(SYNTHESIZED_WIRE_0),
	.Dout_0_(Dout_0_),
	.Dout_1_(Dout_1_));


demux_1x2_2bit	b2v_inst2(
	.sel(sel[1]),
	.Din(SYNTHESIZED_WIRE_1),
	.Dout_0_(Dout_2_),
	.Dout_1_(Dout_3_));


endmodule
