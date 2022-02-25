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
// CREATED		"Tue Dec 21 11:58:43 2021"

module s9(
	clk,
	s8,
	s11,
	stable,
	rst_n,
	s9
);


input wire	clk;
input wire	s8;
input wire	s11;
input wire	stable;
input wire	rst_n;
output reg	s9;

wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;





always@(posedge clk or negedge rst_n)
begin
if (!rst_n)
	begin
	s9 <= 0;
	end
else
	begin
	s9 <= SYNTHESIZED_WIRE_0;
	end
end

assign	SYNTHESIZED_WIRE_2 = s11 & SYNTHESIZED_WIRE_1;

assign	SYNTHESIZED_WIRE_1 =  ~stable;

assign	SYNTHESIZED_WIRE_0 = SYNTHESIZED_WIRE_2 | s8;


endmodule
