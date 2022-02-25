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
// CREATED		"Fri Dec 17 15:03:23 2021"

module cvt_4x1_1x4(
	Din,
	Dout0,
	Dout1,
	Dout2,
	Dout3
);


input wire	[3:0] Din;
output wire	Dout0;
output wire	Dout1;
output wire	Dout2;
output wire	Dout3;


assign	Dout0 = Din[0];
assign	Dout1 = Din[1];
assign	Dout2 = Din[2];
assign	Dout3 = Din[3];




endmodule
