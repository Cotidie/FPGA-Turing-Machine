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
// CREATED		"Tue Dec 21 12:01:08 2021"

module OneHotEncoder3(
	Din,
	Dout
);


input wire	[2:0] Din;
output wire	[7:0] Dout;

wire	[7:0] Dout_ALTERA_SYNTHESIZED;
wire	[3:0] SYNTHESIZED_WIRE_4;
wire	[0:3] SYNTHESIZED_WIRE_1;
wire	[0:3] SYNTHESIZED_WIRE_2;

assign	SYNTHESIZED_WIRE_1 = 0;
assign	SYNTHESIZED_WIRE_2 = 0;




Mux4bit2x1	b2v_BusMux0(
	.sel(Din[2]),
	.Din0(SYNTHESIZED_WIRE_4),
	.Din1(SYNTHESIZED_WIRE_1),
	.Dout(Dout_ALTERA_SYNTHESIZED[3:0]));


Mux4bit2x1	b2v_BusMux1(
	.sel(Din[2]),
	.Din0(SYNTHESIZED_WIRE_2),
	.Din1(SYNTHESIZED_WIRE_4),
	.Dout(Dout_ALTERA_SYNTHESIZED[7:4]));




OneHotEncoder2	b2v_OneHot2(
	.Din(Din[1:0]),
	.Dout(SYNTHESIZED_WIRE_4));

assign	Dout = Dout_ALTERA_SYNTHESIZED;

endmodule
