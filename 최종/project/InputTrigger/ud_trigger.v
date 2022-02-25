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
// CREATED		"Fri Dec 17 14:40:41 2021"

module ud_trigger(
	CLK,
	Din,
	rst_n,
	down,
	up
);


input wire	CLK;
input wire	Din;
input wire	rst_n;
output wire	down;
output wire	up;

reg	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
reg	SYNTHESIZED_WIRE_3;




assign	down = SYNTHESIZED_WIRE_2 & SYNTHESIZED_WIRE_0;

assign	up = SYNTHESIZED_WIRE_1 & SYNTHESIZED_WIRE_3;


always@(posedge CLK or negedge rst_n)
begin
if (!rst_n)
	begin
	SYNTHESIZED_WIRE_2 <= 0;
	end
else
	begin
	SYNTHESIZED_WIRE_2 <= Din;
	end
end


always@(posedge CLK or negedge rst_n)
begin
if (!rst_n)
	begin
	SYNTHESIZED_WIRE_3 <= 0;
	end
else
	begin
	SYNTHESIZED_WIRE_3 <= SYNTHESIZED_WIRE_2;
	end
end

assign	SYNTHESIZED_WIRE_0 =  ~SYNTHESIZED_WIRE_3;

assign	SYNTHESIZED_WIRE_1 =  ~SYNTHESIZED_WIRE_2;


endmodule
