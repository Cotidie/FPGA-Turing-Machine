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
// CREATED		"Tue Dec 21 12:01:17 2021"

module OneHotDecoder3(
	Din,
	Dout
);


input wire	[7:0] Din;
output wire	[2:0] Dout;

wire	[2:0] Dout_ALTERA_SYNTHESIZED;
wire	[1:0] SYNTHESIZED_WIRE_0;
wire	[1:0] SYNTHESIZED_WIRE_1;





OneHotDecoder2	b2v_dec0(
	.Din(Din[3:0]),
	.Dout(SYNTHESIZED_WIRE_0));


OneHotDecoder2	b2v_dec1(
	.Din(Din[7:4]),
	.Dout(SYNTHESIZED_WIRE_1));

assign	Dout_ALTERA_SYNTHESIZED[2] = Din[4] | Din[6] | Din[7] | Din[5];


Mux2bit2x1	b2v_mux(
	.sel(Dout_ALTERA_SYNTHESIZED[2]),
	.Din0(SYNTHESIZED_WIRE_0),
	.Din1(SYNTHESIZED_WIRE_1),
	.Dout(Dout_ALTERA_SYNTHESIZED[1:0]));

assign	Dout = Dout_ALTERA_SYNTHESIZED;

endmodule
