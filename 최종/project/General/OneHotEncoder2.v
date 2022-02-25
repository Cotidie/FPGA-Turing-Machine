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
// CREATED		"Tue Dec 21 12:01:12 2021"

module OneHotEncoder2(
	Din,
	Dout
);


input wire	[1:0] Din;
output wire	[3:0] Dout;

wire	[3:0] Dout_ALTERA_SYNTHESIZED;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_5;




assign	Dout_ALTERA_SYNTHESIZED[0] = SYNTHESIZED_WIRE_4 & SYNTHESIZED_WIRE_5;

assign	SYNTHESIZED_WIRE_4 =  ~Din[1];

assign	SYNTHESIZED_WIRE_5 =  ~Din[0];

assign	Dout_ALTERA_SYNTHESIZED[1] = SYNTHESIZED_WIRE_4 & Din[0];

assign	Dout_ALTERA_SYNTHESIZED[2] = Din[1] & SYNTHESIZED_WIRE_5;

assign	Dout_ALTERA_SYNTHESIZED[3] = Din[1] & Din[0];

assign	Dout = Dout_ALTERA_SYNTHESIZED;

endmodule
