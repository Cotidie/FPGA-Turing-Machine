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
// CREATED		"Wed Dec 22 03:53:57 2021"

module CursorMode(
	move,
	s,
	mode
);


input wire	[1:0] move;
input wire	[13:0] s;
output wire	[1:0] mode;

wire	[1:0] mode_ALTERA_SYNTHESIZED;
wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;




assign	SYNTHESIZED_WIRE_0 = move[0] ^ move[1];

assign	SYNTHESIZED_WIRE_1 = SYNTHESIZED_WIRE_0 & s[11];

assign	mode_ALTERA_SYNTHESIZED[1] = s[13] | s[0] | s[8];

assign	mode_ALTERA_SYNTHESIZED[0] = s[12] | s[1] | SYNTHESIZED_WIRE_1;

assign	mode = mode_ALTERA_SYNTHESIZED;

endmodule
