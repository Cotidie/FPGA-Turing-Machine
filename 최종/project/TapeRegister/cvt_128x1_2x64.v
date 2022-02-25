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
// CREATED		"Fri Dec 17 17:12:02 2021"

module cvt_128x1_2x64(
	Din,
	Dout0_,
	Dout10_,
	Dout11_,
	Dout12_,
	Dout13_,
	Dout14_,
	Dout15_,
	Dout16_,
	Dout17_,
	Dout18_,
	Dout19_,
	Dout1_,
	Dout20_,
	Dout21_,
	Dout22_,
	Dout23_,
	Dout24_,
	Dout25_,
	Dout26_,
	Dout27_,
	Dout28_,
	Dout29_,
	Dout2_,
	Dout30_,
	Dout31_,
	Dout32_,
	Dout33_,
	Dout34_,
	Dout35_,
	Dout36_,
	Dout37_,
	Dout38_,
	Dout39_,
	Dout3_,
	Dout40_,
	Dout41_,
	Dout42_,
	Dout43_,
	Dout44_,
	Dout45_,
	Dout46_,
	Dout47_,
	Dout48_,
	Dout49_,
	Dout4_,
	Dout50_,
	Dout51_,
	Dout52_,
	Dout53_,
	Dout54_,
	Dout55_,
	Dout56_,
	Dout57_,
	Dout58_,
	Dout59_,
	Dout5_,
	Dout60_,
	Dout61_,
	Dout62_,
	Dout63_,
	Dout6_,
	Dout7_,
	Dout8_,
	Dout9_
);


input wire	[127:0] Din;
output wire	[1:0] Dout0_;
output wire	[1:0] Dout10_;
output wire	[1:0] Dout11_;
output wire	[1:0] Dout12_;
output wire	[1:0] Dout13_;
output wire	[1:0] Dout14_;
output wire	[1:0] Dout15_;
output wire	[1:0] Dout16_;
output wire	[1:0] Dout17_;
output wire	[1:0] Dout18_;
output wire	[1:0] Dout19_;
output wire	[1:0] Dout1_;
output wire	[1:0] Dout20_;
output wire	[1:0] Dout21_;
output wire	[1:0] Dout22_;
output wire	[1:0] Dout23_;
output wire	[1:0] Dout24_;
output wire	[1:0] Dout25_;
output wire	[1:0] Dout26_;
output wire	[1:0] Dout27_;
output wire	[1:0] Dout28_;
output wire	[1:0] Dout29_;
output wire	[1:0] Dout2_;
output wire	[1:0] Dout30_;
output wire	[1:0] Dout31_;
output wire	[1:0] Dout32_;
output wire	[1:0] Dout33_;
output wire	[1:0] Dout34_;
output wire	[1:0] Dout35_;
output wire	[1:0] Dout36_;
output wire	[1:0] Dout37_;
output wire	[1:0] Dout38_;
output wire	[1:0] Dout39_;
output wire	[1:0] Dout3_;
output wire	[1:0] Dout40_;
output wire	[1:0] Dout41_;
output wire	[1:0] Dout42_;
output wire	[1:0] Dout43_;
output wire	[1:0] Dout44_;
output wire	[1:0] Dout45_;
output wire	[1:0] Dout46_;
output wire	[1:0] Dout47_;
output wire	[1:0] Dout48_;
output wire	[1:0] Dout49_;
output wire	[1:0] Dout4_;
output wire	[1:0] Dout50_;
output wire	[1:0] Dout51_;
output wire	[1:0] Dout52_;
output wire	[1:0] Dout53_;
output wire	[1:0] Dout54_;
output wire	[1:0] Dout55_;
output wire	[1:0] Dout56_;
output wire	[1:0] Dout57_;
output wire	[1:0] Dout58_;
output wire	[1:0] Dout59_;
output wire	[1:0] Dout5_;
output wire	[1:0] Dout60_;
output wire	[1:0] Dout61_;
output wire	[1:0] Dout62_;
output wire	[1:0] Dout63_;
output wire	[1:0] Dout6_;
output wire	[1:0] Dout7_;
output wire	[1:0] Dout8_;
output wire	[1:0] Dout9_;






cvt_1x2_2x1	b2v_inst(
	.Din0(Din[0]),
	.Din1(Din[1]),
	.Dout(Dout0_));


cvt_1x2_2x1	b2v_inst1(
	.Din0(Din[2]),
	.Din1(Din[3]),
	.Dout(Dout1_));


cvt_1x2_2x1	b2v_inst10(
	.Din0(Din[20]),
	.Din1(Din[21]),
	.Dout(Dout10_));


cvt_1x2_2x1	b2v_inst11(
	.Din0(Din[22]),
	.Din1(Din[23]),
	.Dout(Dout11_));


cvt_1x2_2x1	b2v_inst12(
	.Din0(Din[24]),
	.Din1(Din[25]),
	.Dout(Dout12_));


cvt_1x2_2x1	b2v_inst13(
	.Din0(Din[26]),
	.Din1(Din[27]),
	.Dout(Dout13_));


cvt_1x2_2x1	b2v_inst14(
	.Din0(Din[28]),
	.Din1(Din[29]),
	.Dout(Dout14_));


cvt_1x2_2x1	b2v_inst15(
	.Din0(Din[30]),
	.Din1(Din[31]),
	.Dout(Dout15_));


cvt_1x2_2x1	b2v_inst16(
	.Din0(Din[32]),
	.Din1(Din[33]),
	.Dout(Dout16_));


cvt_1x2_2x1	b2v_inst17(
	.Din0(Din[34]),
	.Din1(Din[35]),
	.Dout(Dout17_));


cvt_1x2_2x1	b2v_inst18(
	.Din0(Din[36]),
	.Din1(Din[37]),
	.Dout(Dout18_));


cvt_1x2_2x1	b2v_inst19(
	.Din0(Din[38]),
	.Din1(Din[39]),
	.Dout(Dout19_));


cvt_1x2_2x1	b2v_inst2(
	.Din0(Din[4]),
	.Din1(Din[5]),
	.Dout(Dout2_));


cvt_1x2_2x1	b2v_inst20(
	.Din0(Din[40]),
	.Din1(Din[41]),
	.Dout(Dout20_));


cvt_1x2_2x1	b2v_inst21(
	.Din0(Din[42]),
	.Din1(Din[43]),
	.Dout(Dout21_));


cvt_1x2_2x1	b2v_inst22(
	.Din0(Din[44]),
	.Din1(Din[45]),
	.Dout(Dout22_));


cvt_1x2_2x1	b2v_inst23(
	.Din0(Din[46]),
	.Din1(Din[47]),
	.Dout(Dout23_));


cvt_1x2_2x1	b2v_inst24(
	.Din0(Din[48]),
	.Din1(Din[49]),
	.Dout(Dout24_));


cvt_1x2_2x1	b2v_inst25(
	.Din0(Din[50]),
	.Din1(Din[51]),
	.Dout(Dout25_));


cvt_1x2_2x1	b2v_inst26(
	.Din0(Din[52]),
	.Din1(Din[53]),
	.Dout(Dout26_));


cvt_1x2_2x1	b2v_inst27(
	.Din0(Din[54]),
	.Din1(Din[55]),
	.Dout(Dout27_));


cvt_1x2_2x1	b2v_inst28(
	.Din0(Din[56]),
	.Din1(Din[57]),
	.Dout(Dout28_));


cvt_1x2_2x1	b2v_inst29(
	.Din0(Din[58]),
	.Din1(Din[59]),
	.Dout(Dout29_));


cvt_1x2_2x1	b2v_inst3(
	.Din0(Din[6]),
	.Din1(Din[7]),
	.Dout(Dout3_));


cvt_1x2_2x1	b2v_inst30(
	.Din0(Din[60]),
	.Din1(Din[61]),
	.Dout(Dout30_));


cvt_1x2_2x1	b2v_inst31(
	.Din0(Din[62]),
	.Din1(Din[63]),
	.Dout(Dout31_));


cvt_1x2_2x1	b2v_inst32(
	.Din0(Din[66]),
	.Din1(Din[67]),
	.Dout(Dout33_));


cvt_1x2_2x1	b2v_inst33(
	.Din0(Din[64]),
	.Din1(Din[65]),
	.Dout(Dout32_));


cvt_1x2_2x1	b2v_inst34(
	.Din0(Din[68]),
	.Din1(Din[69]),
	.Dout(Dout34_));


cvt_1x2_2x1	b2v_inst35(
	.Din0(Din[70]),
	.Din1(Din[71]),
	.Dout(Dout35_));


cvt_1x2_2x1	b2v_inst36(
	.Din0(Din[72]),
	.Din1(Din[73]),
	.Dout(Dout36_));


cvt_1x2_2x1	b2v_inst37(
	.Din0(Din[74]),
	.Din1(Din[75]),
	.Dout(Dout37_));


cvt_1x2_2x1	b2v_inst38(
	.Din0(Din[76]),
	.Din1(Din[77]),
	.Dout(Dout38_));


cvt_1x2_2x1	b2v_inst39(
	.Din0(Din[78]),
	.Din1(Din[79]),
	.Dout(Dout39_));


cvt_1x2_2x1	b2v_inst4(
	.Din0(Din[10]),
	.Din1(Din[11]),
	.Dout(Dout5_));


cvt_1x2_2x1	b2v_inst40(
	.Din0(Din[80]),
	.Din1(Din[81]),
	.Dout(Dout40_));


cvt_1x2_2x1	b2v_inst41(
	.Din0(Din[82]),
	.Din1(Din[83]),
	.Dout(Dout41_));


cvt_1x2_2x1	b2v_inst42(
	.Din0(Din[84]),
	.Din1(Din[85]),
	.Dout(Dout42_));


cvt_1x2_2x1	b2v_inst43(
	.Din0(Din[86]),
	.Din1(Din[87]),
	.Dout(Dout43_));


cvt_1x2_2x1	b2v_inst44(
	.Din0(Din[88]),
	.Din1(Din[89]),
	.Dout(Dout44_));


cvt_1x2_2x1	b2v_inst45(
	.Din0(Din[90]),
	.Din1(Din[91]),
	.Dout(Dout45_));


cvt_1x2_2x1	b2v_inst46(
	.Din0(Din[92]),
	.Din1(Din[93]),
	.Dout(Dout46_));


cvt_1x2_2x1	b2v_inst47(
	.Din0(Din[94]),
	.Din1(Din[95]),
	.Dout(Dout47_));


cvt_1x2_2x1	b2v_inst48(
	.Din0(Din[96]),
	.Din1(Din[97]),
	.Dout(Dout48_));


cvt_1x2_2x1	b2v_inst49(
	.Din0(Din[98]),
	.Din1(Din[99]),
	.Dout(Dout49_));


cvt_1x2_2x1	b2v_inst5(
	.Din0(Din[8]),
	.Din1(Din[9]),
	.Dout(Dout4_));


cvt_1x2_2x1	b2v_inst50(
	.Din0(Din[100]),
	.Din1(Din[101]),
	.Dout(Dout50_));


cvt_1x2_2x1	b2v_inst51(
	.Din0(Din[102]),
	.Din1(Din[103]),
	.Dout(Dout51_));


cvt_1x2_2x1	b2v_inst52(
	.Din0(Din[104]),
	.Din1(Din[105]),
	.Dout(Dout52_));


cvt_1x2_2x1	b2v_inst53(
	.Din0(Din[106]),
	.Din1(Din[107]),
	.Dout(Dout53_));


cvt_1x2_2x1	b2v_inst54(
	.Din0(Din[108]),
	.Din1(Din[109]),
	.Dout(Dout54_));


cvt_1x2_2x1	b2v_inst55(
	.Din0(Din[110]),
	.Din1(Din[111]),
	.Dout(Dout55_));


cvt_1x2_2x1	b2v_inst56(
	.Din0(Din[112]),
	.Din1(Din[113]),
	.Dout(Dout56_));


cvt_1x2_2x1	b2v_inst57(
	.Din0(Din[114]),
	.Din1(Din[115]),
	.Dout(Dout57_));


cvt_1x2_2x1	b2v_inst58(
	.Din0(Din[116]),
	.Din1(Din[117]),
	.Dout(Dout58_));


cvt_1x2_2x1	b2v_inst59(
	.Din0(Din[118]),
	.Din1(Din[119]),
	.Dout(Dout59_));


cvt_1x2_2x1	b2v_inst6(
	.Din0(Din[12]),
	.Din1(Din[13]),
	.Dout(Dout6_));


cvt_1x2_2x1	b2v_inst60(
	.Din0(Din[120]),
	.Din1(Din[121]),
	.Dout(Dout60_));


cvt_1x2_2x1	b2v_inst61(
	.Din0(Din[122]),
	.Din1(Din[123]),
	.Dout(Dout61_));


cvt_1x2_2x1	b2v_inst62(
	.Din0(Din[124]),
	.Din1(Din[125]),
	.Dout(Dout62_));


cvt_1x2_2x1	b2v_inst63(
	.Din0(Din[126]),
	.Din1(Din[127]),
	.Dout(Dout63_));


cvt_1x2_2x1	b2v_inst7(
	.Din0(Din[14]),
	.Din1(Din[15]),
	.Dout(Dout7_));


cvt_1x2_2x1	b2v_inst8(
	.Din0(Din[16]),
	.Din1(Din[17]),
	.Dout(Dout8_));


cvt_1x2_2x1	b2v_inst9(
	.Din0(Din[18]),
	.Din1(Din[19]),
	.Dout(Dout9_));


endmodule
