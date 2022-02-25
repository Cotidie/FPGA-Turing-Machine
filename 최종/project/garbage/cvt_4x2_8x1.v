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
// CREATED		"Fri Dec 17 15:03:34 2021"

module cvt_4x2_8x1(
	Din0,
	Din1,
	Dout
);


input wire	[3:0] Din0;
input wire	[3:0] Din1;
output wire	[7:0] Dout;

wire	[7:0] Dout_ALTERA_SYNTHESIZED;





cvt_4x1_1x4	b2v_inst(
	.Din(Din0),
	.Dout0(Dout_ALTERA_SYNTHESIZED[0]),
	.Dout1(Dout_ALTERA_SYNTHESIZED[1]),
	.Dout2(Dout_ALTERA_SYNTHESIZED[2]),
	.Dout3(Dout_ALTERA_SYNTHESIZED[3]));


cvt_4x1_1x4	b2v_inst1(
	.Din(Din1),
	.Dout0(Dout_ALTERA_SYNTHESIZED[4]),
	.Dout1(Dout_ALTERA_SYNTHESIZED[5]),
	.Dout2(Dout_ALTERA_SYNTHESIZED[6]),
	.Dout3(Dout_ALTERA_SYNTHESIZED[7]));

assign	Dout = Dout_ALTERA_SYNTHESIZED;

endmodule
