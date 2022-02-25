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
// CREATED		"Wed Dec 22 02:06:14 2021"

module ControlUnit(
	clk,
	trigger,
	quit,
	resume,
	rerun,
	stable,
	rst_n,
	sig
);


input wire	clk;
input wire	trigger;
input wire	quit;
input wire	resume;
input wire	rerun;
input wire	stable;
input wire	rst_n;
output wire	[13:0] sig;

wire	SYNTHESIZED_WIRE_25;
wire	SYNTHESIZED_WIRE_26;
wire	SYNTHESIZED_WIRE_27;
wire	SYNTHESIZED_WIRE_28;
wire	SYNTHESIZED_WIRE_29;
wire	SYNTHESIZED_WIRE_30;
wire	SYNTHESIZED_WIRE_31;
wire	SYNTHESIZED_WIRE_32;
wire	SYNTHESIZED_WIRE_33;
wire	SYNTHESIZED_WIRE_34;
reg	SYNTHESIZED_WIRE_35;
reg	SYNTHESIZED_WIRE_36;
wire	SYNTHESIZED_WIRE_37;
wire	SYNTHESIZED_WIRE_38;





s2	b2v_inst(
	.q0(SYNTHESIZED_WIRE_25),
	.trigger(trigger),
	.resume(resume),
	.q7(SYNTHESIZED_WIRE_26),
	.clk(clk),
	.rst_n(rst_n),
	.s2(SYNTHESIZED_WIRE_28));


s_gather	b2v_inst10(
	.s0(SYNTHESIZED_WIRE_25),
	.s1(SYNTHESIZED_WIRE_27),
	.s2(SYNTHESIZED_WIRE_28),
	.s3(SYNTHESIZED_WIRE_29),
	.s4(SYNTHESIZED_WIRE_30),
	.s5(SYNTHESIZED_WIRE_31),
	.s6(SYNTHESIZED_WIRE_32),
	.s7(SYNTHESIZED_WIRE_26),
	.s8(SYNTHESIZED_WIRE_33),
	.s9(SYNTHESIZED_WIRE_34),
	.sa(SYNTHESIZED_WIRE_35),
	.sb(SYNTHESIZED_WIRE_36),
	.sc(SYNTHESIZED_WIRE_37),
	.sd(SYNTHESIZED_WIRE_38),
	.out(sig));


s1	b2v_inst2(
	.q7(SYNTHESIZED_WIRE_26),
	.quit(quit),
	.q13(SYNTHESIZED_WIRE_38),
	.resume(resume),
	.clk(clk),
	.rst_n(rst_n),
	.s1(SYNTHESIZED_WIRE_27));


s8	b2v_inst3(
	.s1(SYNTHESIZED_WIRE_27),
	.resume(resume),
	.clk(clk),
	.rst_n(rst_n),
	.s8(SYNTHESIZED_WIRE_33));


s13	b2v_inst4(
	.s12(SYNTHESIZED_WIRE_37),
	.rerun(rerun),
	.clk(clk),
	.rst_n(rst_n),
	.s13(SYNTHESIZED_WIRE_38));


s7	b2v_inst5(
	.q6(SYNTHESIZED_WIRE_32),
	.resume(resume),
	.quit(quit),
	.trigger(trigger),
	.clk(clk),
	.rst_n(rst_n),
	.s7(SYNTHESIZED_WIRE_26));


s3456	b2v_inst6(
	.q_prev(SYNTHESIZED_WIRE_31),
	.trigger(trigger),
	.clk(clk),
	.rst_n(rst_n),
	.s(SYNTHESIZED_WIRE_32));


s3456	b2v_inst7(
	.q_prev(SYNTHESIZED_WIRE_30),
	.trigger(trigger),
	.clk(clk),
	.rst_n(rst_n),
	.s(SYNTHESIZED_WIRE_31));


s3456	b2v_inst8(
	.q_prev(SYNTHESIZED_WIRE_29),
	.trigger(trigger),
	.clk(clk),
	.rst_n(rst_n),
	.s(SYNTHESIZED_WIRE_30));


s3456	b2v_inst9(
	.q_prev(SYNTHESIZED_WIRE_28),
	.trigger(trigger),
	.clk(clk),
	.rst_n(rst_n),
	.s(SYNTHESIZED_WIRE_29));


s0	b2v_s_0(
	.reset(rst_n),
	.clk(clk),
	.s0(SYNTHESIZED_WIRE_25));


always@(posedge clk or negedge rst_n)
begin
if (!rst_n)
	begin
	SYNTHESIZED_WIRE_35 <= 0;
	end
else
	begin
	SYNTHESIZED_WIRE_35 <= SYNTHESIZED_WIRE_34;
	end
end


always@(posedge clk or negedge rst_n)
begin
if (!rst_n)
	begin
	SYNTHESIZED_WIRE_36 <= 0;
	end
else
	begin
	SYNTHESIZED_WIRE_36 <= SYNTHESIZED_WIRE_35;
	end
end


s12	b2v_s_12(
	.s11(SYNTHESIZED_WIRE_36),
	.stable(stable),
	.rerun(rerun),
	.clk(clk),
	.rst_n(rst_n),
	.q12(SYNTHESIZED_WIRE_37));


s9	b2v_s_9(
	.s8(SYNTHESIZED_WIRE_33),
	.s11(SYNTHESIZED_WIRE_36),
	.stable(stable),
	.clk(clk),
	.rst_n(rst_n),
	.s9(SYNTHESIZED_WIRE_34));


endmodule
