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

// VENDOR "Altera"
// PROGRAM "Quartus Prime"
// VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

// DATE "06/04/2021 23:56:52"

// 
// Device: Altera 5CSEMA5F31C6 Package FBGA896
// 

// 
// This greybox netlist file is for third party Synthesis Tools
// for timing and resource estimation only.
// 


module FP_MULT (
	dataa,
	datab,
	n,
	result)/* synthesis synthesis_greybox=0 */;
input 	[31:0] dataa;
input 	[31:0] datab;
input 	[3:0] n;
output 	[31:0] result;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \nios_custom_instr_floating_point_2_combi_0|Mux31~3_combout ;
wire \nios_custom_instr_floating_point_2_combi_0|Mux30~2_combout ;
wire \nios_custom_instr_floating_point_2_combi_0|Mux29~0_combout ;
wire \nios_custom_instr_floating_point_2_combi_0|Mux28~0_combout ;
wire \nios_custom_instr_floating_point_2_combi_0|Mux27~0_combout ;
wire \nios_custom_instr_floating_point_2_combi_0|Mux26~0_combout ;
wire \nios_custom_instr_floating_point_2_combi_0|Mux25~0_combout ;
wire \nios_custom_instr_floating_point_2_combi_0|Mux24~0_combout ;
wire \nios_custom_instr_floating_point_2_combi_0|Mux23~0_combout ;
wire \nios_custom_instr_floating_point_2_combi_0|Mux22~0_combout ;
wire \nios_custom_instr_floating_point_2_combi_0|Mux21~0_combout ;
wire \nios_custom_instr_floating_point_2_combi_0|Mux20~0_combout ;
wire \nios_custom_instr_floating_point_2_combi_0|Mux19~0_combout ;
wire \nios_custom_instr_floating_point_2_combi_0|Mux18~0_combout ;
wire \nios_custom_instr_floating_point_2_combi_0|Mux17~0_combout ;
wire \nios_custom_instr_floating_point_2_combi_0|Mux16~0_combout ;
wire \nios_custom_instr_floating_point_2_combi_0|Mux15~0_combout ;
wire \nios_custom_instr_floating_point_2_combi_0|Mux14~0_combout ;
wire \nios_custom_instr_floating_point_2_combi_0|Mux13~0_combout ;
wire \nios_custom_instr_floating_point_2_combi_0|Mux12~0_combout ;
wire \nios_custom_instr_floating_point_2_combi_0|Mux11~0_combout ;
wire \nios_custom_instr_floating_point_2_combi_0|Mux10~0_combout ;
wire \nios_custom_instr_floating_point_2_combi_0|Mux9~0_combout ;
wire \nios_custom_instr_floating_point_2_combi_0|Mux8~0_combout ;
wire \nios_custom_instr_floating_point_2_combi_0|Mux7~0_combout ;
wire \nios_custom_instr_floating_point_2_combi_0|Mux6~0_combout ;
wire \nios_custom_instr_floating_point_2_combi_0|Mux5~0_combout ;
wire \nios_custom_instr_floating_point_2_combi_0|Mux4~0_combout ;
wire \nios_custom_instr_floating_point_2_combi_0|Mux3~0_combout ;
wire \nios_custom_instr_floating_point_2_combi_0|Mux2~0_combout ;
wire \nios_custom_instr_floating_point_2_combi_0|Mux1~0_combout ;
wire \nios_custom_instr_floating_point_2_combi_0|Mux0~2_combout ;
wire \n[1]~input_o ;
wire \n[2]~input_o ;
wire \dataa[0]~input_o ;
wire \n[3]~input_o ;
wire \datab[0]~input_o ;
wire \datab[18]~input_o ;
wire \datab[19]~input_o ;
wire \datab[20]~input_o ;
wire \datab[21]~input_o ;
wire \datab[22]~input_o ;
wire \datab[12]~input_o ;
wire \datab[13]~input_o ;
wire \datab[14]~input_o ;
wire \datab[15]~input_o ;
wire \datab[16]~input_o ;
wire \datab[17]~input_o ;
wire \datab[1]~input_o ;
wire \datab[2]~input_o ;
wire \datab[3]~input_o ;
wire \datab[4]~input_o ;
wire \datab[5]~input_o ;
wire \datab[6]~input_o ;
wire \datab[7]~input_o ;
wire \datab[8]~input_o ;
wire \datab[9]~input_o ;
wire \datab[10]~input_o ;
wire \datab[11]~input_o ;
wire \datab[23]~input_o ;
wire \datab[24]~input_o ;
wire \datab[25]~input_o ;
wire \datab[26]~input_o ;
wire \datab[27]~input_o ;
wire \datab[28]~input_o ;
wire \datab[29]~input_o ;
wire \datab[30]~input_o ;
wire \dataa[18]~input_o ;
wire \dataa[19]~input_o ;
wire \dataa[20]~input_o ;
wire \dataa[21]~input_o ;
wire \dataa[22]~input_o ;
wire \dataa[12]~input_o ;
wire \dataa[13]~input_o ;
wire \dataa[14]~input_o ;
wire \dataa[15]~input_o ;
wire \dataa[16]~input_o ;
wire \dataa[17]~input_o ;
wire \dataa[1]~input_o ;
wire \dataa[2]~input_o ;
wire \dataa[3]~input_o ;
wire \dataa[4]~input_o ;
wire \dataa[5]~input_o ;
wire \dataa[6]~input_o ;
wire \dataa[7]~input_o ;
wire \dataa[8]~input_o ;
wire \dataa[9]~input_o ;
wire \dataa[10]~input_o ;
wire \dataa[11]~input_o ;
wire \dataa[23]~input_o ;
wire \dataa[24]~input_o ;
wire \dataa[25]~input_o ;
wire \dataa[26]~input_o ;
wire \dataa[27]~input_o ;
wire \dataa[28]~input_o ;
wire \dataa[29]~input_o ;
wire \dataa[30]~input_o ;
wire \dataa[31]~input_o ;
wire \datab[31]~input_o ;
wire \n[0]~input_o ;


FP_MULT_fpoint2_combi nios_custom_instr_floating_point_2_combi_0(
	.Mux31(\nios_custom_instr_floating_point_2_combi_0|Mux31~3_combout ),
	.Mux30(\nios_custom_instr_floating_point_2_combi_0|Mux30~2_combout ),
	.Mux29(\nios_custom_instr_floating_point_2_combi_0|Mux29~0_combout ),
	.Mux28(\nios_custom_instr_floating_point_2_combi_0|Mux28~0_combout ),
	.Mux27(\nios_custom_instr_floating_point_2_combi_0|Mux27~0_combout ),
	.Mux26(\nios_custom_instr_floating_point_2_combi_0|Mux26~0_combout ),
	.Mux25(\nios_custom_instr_floating_point_2_combi_0|Mux25~0_combout ),
	.Mux24(\nios_custom_instr_floating_point_2_combi_0|Mux24~0_combout ),
	.Mux23(\nios_custom_instr_floating_point_2_combi_0|Mux23~0_combout ),
	.Mux22(\nios_custom_instr_floating_point_2_combi_0|Mux22~0_combout ),
	.Mux21(\nios_custom_instr_floating_point_2_combi_0|Mux21~0_combout ),
	.Mux20(\nios_custom_instr_floating_point_2_combi_0|Mux20~0_combout ),
	.Mux19(\nios_custom_instr_floating_point_2_combi_0|Mux19~0_combout ),
	.Mux18(\nios_custom_instr_floating_point_2_combi_0|Mux18~0_combout ),
	.Mux17(\nios_custom_instr_floating_point_2_combi_0|Mux17~0_combout ),
	.Mux16(\nios_custom_instr_floating_point_2_combi_0|Mux16~0_combout ),
	.Mux15(\nios_custom_instr_floating_point_2_combi_0|Mux15~0_combout ),
	.Mux14(\nios_custom_instr_floating_point_2_combi_0|Mux14~0_combout ),
	.Mux13(\nios_custom_instr_floating_point_2_combi_0|Mux13~0_combout ),
	.Mux12(\nios_custom_instr_floating_point_2_combi_0|Mux12~0_combout ),
	.Mux11(\nios_custom_instr_floating_point_2_combi_0|Mux11~0_combout ),
	.Mux10(\nios_custom_instr_floating_point_2_combi_0|Mux10~0_combout ),
	.Mux9(\nios_custom_instr_floating_point_2_combi_0|Mux9~0_combout ),
	.Mux8(\nios_custom_instr_floating_point_2_combi_0|Mux8~0_combout ),
	.Mux7(\nios_custom_instr_floating_point_2_combi_0|Mux7~0_combout ),
	.Mux6(\nios_custom_instr_floating_point_2_combi_0|Mux6~0_combout ),
	.Mux5(\nios_custom_instr_floating_point_2_combi_0|Mux5~0_combout ),
	.Mux4(\nios_custom_instr_floating_point_2_combi_0|Mux4~0_combout ),
	.Mux3(\nios_custom_instr_floating_point_2_combi_0|Mux3~0_combout ),
	.Mux2(\nios_custom_instr_floating_point_2_combi_0|Mux2~0_combout ),
	.Mux1(\nios_custom_instr_floating_point_2_combi_0|Mux1~0_combout ),
	.Mux0(\nios_custom_instr_floating_point_2_combi_0|Mux0~2_combout ),
	.n_1(\n[1]~input_o ),
	.n_2(\n[2]~input_o ),
	.dataa_0(\dataa[0]~input_o ),
	.n_3(\n[3]~input_o ),
	.datab_0(\datab[0]~input_o ),
	.datab_18(\datab[18]~input_o ),
	.datab_19(\datab[19]~input_o ),
	.datab_20(\datab[20]~input_o ),
	.datab_21(\datab[21]~input_o ),
	.datab_22(\datab[22]~input_o ),
	.datab_12(\datab[12]~input_o ),
	.datab_13(\datab[13]~input_o ),
	.datab_14(\datab[14]~input_o ),
	.datab_15(\datab[15]~input_o ),
	.datab_16(\datab[16]~input_o ),
	.datab_17(\datab[17]~input_o ),
	.datab_1(\datab[1]~input_o ),
	.datab_2(\datab[2]~input_o ),
	.datab_3(\datab[3]~input_o ),
	.datab_4(\datab[4]~input_o ),
	.datab_5(\datab[5]~input_o ),
	.datab_6(\datab[6]~input_o ),
	.datab_7(\datab[7]~input_o ),
	.datab_8(\datab[8]~input_o ),
	.datab_9(\datab[9]~input_o ),
	.datab_10(\datab[10]~input_o ),
	.datab_11(\datab[11]~input_o ),
	.datab_23(\datab[23]~input_o ),
	.datab_24(\datab[24]~input_o ),
	.datab_25(\datab[25]~input_o ),
	.datab_26(\datab[26]~input_o ),
	.datab_27(\datab[27]~input_o ),
	.datab_28(\datab[28]~input_o ),
	.datab_29(\datab[29]~input_o ),
	.datab_30(\datab[30]~input_o ),
	.dataa_18(\dataa[18]~input_o ),
	.dataa_19(\dataa[19]~input_o ),
	.dataa_20(\dataa[20]~input_o ),
	.dataa_21(\dataa[21]~input_o ),
	.dataa_22(\dataa[22]~input_o ),
	.dataa_12(\dataa[12]~input_o ),
	.dataa_13(\dataa[13]~input_o ),
	.dataa_14(\dataa[14]~input_o ),
	.dataa_15(\dataa[15]~input_o ),
	.dataa_16(\dataa[16]~input_o ),
	.dataa_17(\dataa[17]~input_o ),
	.dataa_1(\dataa[1]~input_o ),
	.dataa_2(\dataa[2]~input_o ),
	.dataa_3(\dataa[3]~input_o ),
	.dataa_4(\dataa[4]~input_o ),
	.dataa_5(\dataa[5]~input_o ),
	.dataa_6(\dataa[6]~input_o ),
	.dataa_7(\dataa[7]~input_o ),
	.dataa_8(\dataa[8]~input_o ),
	.dataa_9(\dataa[9]~input_o ),
	.dataa_10(\dataa[10]~input_o ),
	.dataa_11(\dataa[11]~input_o ),
	.dataa_23(\dataa[23]~input_o ),
	.dataa_24(\dataa[24]~input_o ),
	.dataa_25(\dataa[25]~input_o ),
	.dataa_26(\dataa[26]~input_o ),
	.dataa_27(\dataa[27]~input_o ),
	.dataa_28(\dataa[28]~input_o ),
	.dataa_29(\dataa[29]~input_o ),
	.dataa_30(\dataa[30]~input_o ),
	.dataa_31(\dataa[31]~input_o ),
	.datab_31(\datab[31]~input_o ),
	.n_0(\n[0]~input_o ));

assign \n[1]~input_o  = n[1];

assign \n[2]~input_o  = n[2];

assign \dataa[0]~input_o  = dataa[0];

assign \n[3]~input_o  = n[3];

assign \datab[0]~input_o  = datab[0];

assign \datab[18]~input_o  = datab[18];

assign \datab[19]~input_o  = datab[19];

assign \datab[20]~input_o  = datab[20];

assign \datab[21]~input_o  = datab[21];

assign \datab[22]~input_o  = datab[22];

assign \datab[12]~input_o  = datab[12];

assign \datab[13]~input_o  = datab[13];

assign \datab[14]~input_o  = datab[14];

assign \datab[15]~input_o  = datab[15];

assign \datab[16]~input_o  = datab[16];

assign \datab[17]~input_o  = datab[17];

assign \datab[1]~input_o  = datab[1];

assign \datab[2]~input_o  = datab[2];

assign \datab[3]~input_o  = datab[3];

assign \datab[4]~input_o  = datab[4];

assign \datab[5]~input_o  = datab[5];

assign \datab[6]~input_o  = datab[6];

assign \datab[7]~input_o  = datab[7];

assign \datab[8]~input_o  = datab[8];

assign \datab[9]~input_o  = datab[9];

assign \datab[10]~input_o  = datab[10];

assign \datab[11]~input_o  = datab[11];

assign \datab[23]~input_o  = datab[23];

assign \datab[24]~input_o  = datab[24];

assign \datab[25]~input_o  = datab[25];

assign \datab[26]~input_o  = datab[26];

assign \datab[27]~input_o  = datab[27];

assign \datab[28]~input_o  = datab[28];

assign \datab[29]~input_o  = datab[29];

assign \datab[30]~input_o  = datab[30];

assign \dataa[18]~input_o  = dataa[18];

assign \dataa[19]~input_o  = dataa[19];

assign \dataa[20]~input_o  = dataa[20];

assign \dataa[21]~input_o  = dataa[21];

assign \dataa[22]~input_o  = dataa[22];

assign \dataa[12]~input_o  = dataa[12];

assign \dataa[13]~input_o  = dataa[13];

assign \dataa[14]~input_o  = dataa[14];

assign \dataa[15]~input_o  = dataa[15];

assign \dataa[16]~input_o  = dataa[16];

assign \dataa[17]~input_o  = dataa[17];

assign \dataa[1]~input_o  = dataa[1];

assign \dataa[2]~input_o  = dataa[2];

assign \dataa[3]~input_o  = dataa[3];

assign \dataa[4]~input_o  = dataa[4];

assign \dataa[5]~input_o  = dataa[5];

assign \dataa[6]~input_o  = dataa[6];

assign \dataa[7]~input_o  = dataa[7];

assign \dataa[8]~input_o  = dataa[8];

assign \dataa[9]~input_o  = dataa[9];

assign \dataa[10]~input_o  = dataa[10];

assign \dataa[11]~input_o  = dataa[11];

assign \dataa[23]~input_o  = dataa[23];

assign \dataa[24]~input_o  = dataa[24];

assign \dataa[25]~input_o  = dataa[25];

assign \dataa[26]~input_o  = dataa[26];

assign \dataa[27]~input_o  = dataa[27];

assign \dataa[28]~input_o  = dataa[28];

assign \dataa[29]~input_o  = dataa[29];

assign \dataa[30]~input_o  = dataa[30];

assign \dataa[31]~input_o  = dataa[31];

assign \datab[31]~input_o  = datab[31];

assign \n[0]~input_o  = n[0];

assign result[0] = \nios_custom_instr_floating_point_2_combi_0|Mux31~3_combout ;

assign result[1] = \nios_custom_instr_floating_point_2_combi_0|Mux30~2_combout ;

assign result[2] = \nios_custom_instr_floating_point_2_combi_0|Mux29~0_combout ;

assign result[3] = \nios_custom_instr_floating_point_2_combi_0|Mux28~0_combout ;

assign result[4] = \nios_custom_instr_floating_point_2_combi_0|Mux27~0_combout ;

assign result[5] = \nios_custom_instr_floating_point_2_combi_0|Mux26~0_combout ;

assign result[6] = \nios_custom_instr_floating_point_2_combi_0|Mux25~0_combout ;

assign result[7] = \nios_custom_instr_floating_point_2_combi_0|Mux24~0_combout ;

assign result[8] = \nios_custom_instr_floating_point_2_combi_0|Mux23~0_combout ;

assign result[9] = \nios_custom_instr_floating_point_2_combi_0|Mux22~0_combout ;

assign result[10] = \nios_custom_instr_floating_point_2_combi_0|Mux21~0_combout ;

assign result[11] = \nios_custom_instr_floating_point_2_combi_0|Mux20~0_combout ;

assign result[12] = \nios_custom_instr_floating_point_2_combi_0|Mux19~0_combout ;

assign result[13] = \nios_custom_instr_floating_point_2_combi_0|Mux18~0_combout ;

assign result[14] = \nios_custom_instr_floating_point_2_combi_0|Mux17~0_combout ;

assign result[15] = \nios_custom_instr_floating_point_2_combi_0|Mux16~0_combout ;

assign result[16] = \nios_custom_instr_floating_point_2_combi_0|Mux15~0_combout ;

assign result[17] = \nios_custom_instr_floating_point_2_combi_0|Mux14~0_combout ;

assign result[18] = \nios_custom_instr_floating_point_2_combi_0|Mux13~0_combout ;

assign result[19] = \nios_custom_instr_floating_point_2_combi_0|Mux12~0_combout ;

assign result[20] = \nios_custom_instr_floating_point_2_combi_0|Mux11~0_combout ;

assign result[21] = \nios_custom_instr_floating_point_2_combi_0|Mux10~0_combout ;

assign result[22] = \nios_custom_instr_floating_point_2_combi_0|Mux9~0_combout ;

assign result[23] = \nios_custom_instr_floating_point_2_combi_0|Mux8~0_combout ;

assign result[24] = \nios_custom_instr_floating_point_2_combi_0|Mux7~0_combout ;

assign result[25] = \nios_custom_instr_floating_point_2_combi_0|Mux6~0_combout ;

assign result[26] = \nios_custom_instr_floating_point_2_combi_0|Mux5~0_combout ;

assign result[27] = \nios_custom_instr_floating_point_2_combi_0|Mux4~0_combout ;

assign result[28] = \nios_custom_instr_floating_point_2_combi_0|Mux3~0_combout ;

assign result[29] = \nios_custom_instr_floating_point_2_combi_0|Mux2~0_combout ;

assign result[30] = \nios_custom_instr_floating_point_2_combi_0|Mux1~0_combout ;

assign result[31] = \nios_custom_instr_floating_point_2_combi_0|Mux0~2_combout ;

endmodule

module FP_MULT_fpoint2_combi (
	Mux31,
	Mux30,
	Mux29,
	Mux28,
	Mux27,
	Mux26,
	Mux25,
	Mux24,
	Mux23,
	Mux22,
	Mux21,
	Mux20,
	Mux19,
	Mux18,
	Mux17,
	Mux16,
	Mux15,
	Mux14,
	Mux13,
	Mux12,
	Mux11,
	Mux10,
	Mux9,
	Mux8,
	Mux7,
	Mux6,
	Mux5,
	Mux4,
	Mux3,
	Mux2,
	Mux1,
	Mux0,
	n_1,
	n_2,
	dataa_0,
	n_3,
	datab_0,
	datab_18,
	datab_19,
	datab_20,
	datab_21,
	datab_22,
	datab_12,
	datab_13,
	datab_14,
	datab_15,
	datab_16,
	datab_17,
	datab_1,
	datab_2,
	datab_3,
	datab_4,
	datab_5,
	datab_6,
	datab_7,
	datab_8,
	datab_9,
	datab_10,
	datab_11,
	datab_23,
	datab_24,
	datab_25,
	datab_26,
	datab_27,
	datab_28,
	datab_29,
	datab_30,
	dataa_18,
	dataa_19,
	dataa_20,
	dataa_21,
	dataa_22,
	dataa_12,
	dataa_13,
	dataa_14,
	dataa_15,
	dataa_16,
	dataa_17,
	dataa_1,
	dataa_2,
	dataa_3,
	dataa_4,
	dataa_5,
	dataa_6,
	dataa_7,
	dataa_8,
	dataa_9,
	dataa_10,
	dataa_11,
	dataa_23,
	dataa_24,
	dataa_25,
	dataa_26,
	dataa_27,
	dataa_28,
	dataa_29,
	dataa_30,
	dataa_31,
	datab_31,
	n_0)/* synthesis synthesis_greybox=0 */;
output 	Mux31;
output 	Mux30;
output 	Mux29;
output 	Mux28;
output 	Mux27;
output 	Mux26;
output 	Mux25;
output 	Mux24;
output 	Mux23;
output 	Mux22;
output 	Mux21;
output 	Mux20;
output 	Mux19;
output 	Mux18;
output 	Mux17;
output 	Mux16;
output 	Mux15;
output 	Mux14;
output 	Mux13;
output 	Mux12;
output 	Mux11;
output 	Mux10;
output 	Mux9;
output 	Mux8;
output 	Mux7;
output 	Mux6;
output 	Mux5;
output 	Mux4;
output 	Mux3;
output 	Mux2;
output 	Mux1;
output 	Mux0;
input 	n_1;
input 	n_2;
input 	dataa_0;
input 	n_3;
input 	datab_0;
input 	datab_18;
input 	datab_19;
input 	datab_20;
input 	datab_21;
input 	datab_22;
input 	datab_12;
input 	datab_13;
input 	datab_14;
input 	datab_15;
input 	datab_16;
input 	datab_17;
input 	datab_1;
input 	datab_2;
input 	datab_3;
input 	datab_4;
input 	datab_5;
input 	datab_6;
input 	datab_7;
input 	datab_8;
input 	datab_9;
input 	datab_10;
input 	datab_11;
input 	datab_23;
input 	datab_24;
input 	datab_25;
input 	datab_26;
input 	datab_27;
input 	datab_28;
input 	datab_29;
input 	datab_30;
input 	dataa_18;
input 	dataa_19;
input 	dataa_20;
input 	dataa_21;
input 	dataa_22;
input 	dataa_12;
input 	dataa_13;
input 	dataa_14;
input 	dataa_15;
input 	dataa_16;
input 	dataa_17;
input 	dataa_1;
input 	dataa_2;
input 	dataa_3;
input 	dataa_4;
input 	dataa_5;
input 	dataa_6;
input 	dataa_7;
input 	dataa_8;
input 	dataa_9;
input 	dataa_10;
input 	dataa_11;
input 	dataa_23;
input 	dataa_24;
input 	dataa_25;
input 	dataa_26;
input 	dataa_27;
input 	dataa_28;
input 	dataa_29;
input 	dataa_30;
input 	dataa_31;
input 	datab_31;
input 	n_0;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \COMP_GEN:compare|Add1~1_sumout ;
wire \COMP_GEN:compare|Add0~1_sumout ;
wire \COMP_GEN:compare|exc_N_uid35_fpCompareFusedTest_q[0]~combout ;
wire \COMP_GEN:compare|exc_N_uid18_fpCompareFusedTest_q[0]~combout ;
wire \COMP_GEN:FPMinMax|d0Mux_uid62_fpMinMaxFusedTest_q[0]~0_combout ;
wire \COMP_GEN:compare|rLT_uid68_fpCompareFusedTest_q[0]~4_combout ;
wire \COMP_GEN:compare|rEQ_uid74_fpCompareFusedTest_q[0]~combout ;
wire \COMP_GEN:compare|Mux0~0_combout ;
wire \COMP_GEN:compare|oneIsNaN_uid88_fpCompareFusedTest_q[0]~0_combout ;
wire \COMP_GEN:FPMinMax|oneNaNOutput_uid44_fpMinMaxFusedTest_q[23]~combout ;
wire \COMP_GEN:FPMinMax|oneNaNOutput_uid44_fpMinMaxFusedTest_q[24]~combout ;
wire \COMP_GEN:FPMinMax|oneNaNOutput_uid44_fpMinMaxFusedTest_q[25]~combout ;
wire \COMP_GEN:FPMinMax|oneNaNOutput_uid44_fpMinMaxFusedTest_q[26]~combout ;
wire \COMP_GEN:FPMinMax|oneNaNOutput_uid44_fpMinMaxFusedTest_q[27]~combout ;
wire \COMP_GEN:FPMinMax|oneNaNOutput_uid44_fpMinMaxFusedTest_q[28]~combout ;
wire \COMP_GEN:FPMinMax|oneNaNOutput_uid44_fpMinMaxFusedTest_q[29]~combout ;
wire \COMP_GEN:FPMinMax|oneNaNOutput_uid44_fpMinMaxFusedTest_q[30]~combout ;
wire \Equal0~0_combout ;
wire \Mux31~0_combout ;
wire \Mux32~0_combout ;
wire \Mux34~0_combout ;
wire \Mux33~0_combout ;
wire \Mux31~1_combout ;
wire \Mux31~2_combout ;
wire \Equal0~1_combout ;
wire \Mux30~0_combout ;
wire \Mux30~1_combout ;
wire \Mux30~3_combout ;
wire \Mux30~4_combout ;
wire \Mux0~0_combout ;
wire \Mux0~1_combout ;


FP_MULT_FPCompareFused \COMP_GEN:compare (
	.Add1(\COMP_GEN:compare|Add1~1_sumout ),
	.Add0(\COMP_GEN:compare|Add0~1_sumout ),
	.exc_N_uid35_fpCompareFusedTest_q_0(\COMP_GEN:compare|exc_N_uid35_fpCompareFusedTest_q[0]~combout ),
	.exc_N_uid18_fpCompareFusedTest_q_0(\COMP_GEN:compare|exc_N_uid18_fpCompareFusedTest_q[0]~combout ),
	.rLT_uid68_fpCompareFusedTest_q_0(\COMP_GEN:compare|rLT_uid68_fpCompareFusedTest_q[0]~4_combout ),
	.rEQ_uid74_fpCompareFusedTest_q_0(\COMP_GEN:compare|rEQ_uid74_fpCompareFusedTest_q[0]~combout ),
	.Mux34(\Mux34~0_combout ),
	.Mux33(\Mux33~0_combout ),
	.Mux0(\COMP_GEN:compare|Mux0~0_combout ),
	.oneIsNaN_uid88_fpCompareFusedTest_q_0(\COMP_GEN:compare|oneIsNaN_uid88_fpCompareFusedTest_q[0]~0_combout ),
	.dataa_0(dataa_0),
	.datab_0(datab_0),
	.datab_18(datab_18),
	.datab_19(datab_19),
	.datab_20(datab_20),
	.datab_21(datab_21),
	.datab_22(datab_22),
	.datab_12(datab_12),
	.datab_13(datab_13),
	.datab_14(datab_14),
	.datab_15(datab_15),
	.datab_16(datab_16),
	.datab_17(datab_17),
	.datab_1(datab_1),
	.datab_2(datab_2),
	.datab_3(datab_3),
	.datab_4(datab_4),
	.datab_5(datab_5),
	.datab_6(datab_6),
	.datab_7(datab_7),
	.datab_8(datab_8),
	.datab_9(datab_9),
	.datab_10(datab_10),
	.datab_11(datab_11),
	.datab_23(datab_23),
	.datab_24(datab_24),
	.datab_25(datab_25),
	.datab_26(datab_26),
	.datab_27(datab_27),
	.datab_28(datab_28),
	.datab_29(datab_29),
	.datab_30(datab_30),
	.dataa_18(dataa_18),
	.dataa_19(dataa_19),
	.dataa_20(dataa_20),
	.dataa_21(dataa_21),
	.dataa_22(dataa_22),
	.dataa_12(dataa_12),
	.dataa_13(dataa_13),
	.dataa_14(dataa_14),
	.dataa_15(dataa_15),
	.dataa_16(dataa_16),
	.dataa_17(dataa_17),
	.dataa_1(dataa_1),
	.dataa_2(dataa_2),
	.dataa_3(dataa_3),
	.dataa_4(dataa_4),
	.dataa_5(dataa_5),
	.dataa_6(dataa_6),
	.dataa_7(dataa_7),
	.dataa_8(dataa_8),
	.dataa_9(dataa_9),
	.dataa_10(dataa_10),
	.dataa_11(dataa_11),
	.dataa_23(dataa_23),
	.dataa_24(dataa_24),
	.dataa_25(dataa_25),
	.dataa_26(dataa_26),
	.dataa_27(dataa_27),
	.dataa_28(dataa_28),
	.dataa_29(dataa_29),
	.dataa_30(dataa_30),
	.dataa_31(dataa_31),
	.datab_31(datab_31));

FP_MULT_FPMinMaxFused \COMP_GEN:FPMinMax (
	.Add1(\COMP_GEN:compare|Add1~1_sumout ),
	.exc_N_uid35_fpCompareFusedTest_q_0(\COMP_GEN:compare|exc_N_uid35_fpCompareFusedTest_q[0]~combout ),
	.exc_N_uid18_fpCompareFusedTest_q_0(\COMP_GEN:compare|exc_N_uid18_fpCompareFusedTest_q[0]~combout ),
	.Equal0(\Equal0~1_combout ),
	.d0Mux_uid62_fpMinMaxFusedTest_q_0(\COMP_GEN:FPMinMax|d0Mux_uid62_fpMinMaxFusedTest_q[0]~0_combout ),
	.oneNaNOutput_uid44_fpMinMaxFusedTest_q_23(\COMP_GEN:FPMinMax|oneNaNOutput_uid44_fpMinMaxFusedTest_q[23]~combout ),
	.oneNaNOutput_uid44_fpMinMaxFusedTest_q_24(\COMP_GEN:FPMinMax|oneNaNOutput_uid44_fpMinMaxFusedTest_q[24]~combout ),
	.oneNaNOutput_uid44_fpMinMaxFusedTest_q_25(\COMP_GEN:FPMinMax|oneNaNOutput_uid44_fpMinMaxFusedTest_q[25]~combout ),
	.oneNaNOutput_uid44_fpMinMaxFusedTest_q_26(\COMP_GEN:FPMinMax|oneNaNOutput_uid44_fpMinMaxFusedTest_q[26]~combout ),
	.oneNaNOutput_uid44_fpMinMaxFusedTest_q_27(\COMP_GEN:FPMinMax|oneNaNOutput_uid44_fpMinMaxFusedTest_q[27]~combout ),
	.oneNaNOutput_uid44_fpMinMaxFusedTest_q_28(\COMP_GEN:FPMinMax|oneNaNOutput_uid44_fpMinMaxFusedTest_q[28]~combout ),
	.oneNaNOutput_uid44_fpMinMaxFusedTest_q_29(\COMP_GEN:FPMinMax|oneNaNOutput_uid44_fpMinMaxFusedTest_q[29]~combout ),
	.oneNaNOutput_uid44_fpMinMaxFusedTest_q_30(\COMP_GEN:FPMinMax|oneNaNOutput_uid44_fpMinMaxFusedTest_q[30]~combout ),
	.datab_23(datab_23),
	.datab_24(datab_24),
	.datab_25(datab_25),
	.datab_26(datab_26),
	.datab_27(datab_27),
	.datab_28(datab_28),
	.datab_29(datab_29),
	.datab_30(datab_30),
	.dataa_23(dataa_23),
	.dataa_24(dataa_24),
	.dataa_25(dataa_25),
	.dataa_26(dataa_26),
	.dataa_27(dataa_27),
	.dataa_28(dataa_28),
	.dataa_29(dataa_29),
	.dataa_30(dataa_30),
	.dataa_31(dataa_31),
	.datab_31(datab_31));

cyclonev_lcell_comb \Mux31~3 (
	.dataa(!\Equal0~0_combout ),
	.datab(!\Mux31~0_combout ),
	.datac(!\Mux32~0_combout ),
	.datad(!\COMP_GEN:compare|Mux0~0_combout ),
	.datae(!\Mux31~2_combout ),
	.dataf(!\COMP_GEN:compare|oneIsNaN_uid88_fpCompareFusedTest_q[0]~0_combout ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(Mux31),
	.sumout(),
	.cout(),
	.shareout());
defparam \Mux31~3 .extended_lut = "off";
defparam \Mux31~3 .lut_mask = 64'h4444444444E4EEEE;
defparam \Mux31~3 .shared_arith = "off";

cyclonev_lcell_comb \Mux30~2 (
	.dataa(!datab_1),
	.datab(!dataa_1),
	.datac(!\COMP_GEN:compare|exc_N_uid35_fpCompareFusedTest_q[0]~combout ),
	.datad(!\COMP_GEN:compare|exc_N_uid18_fpCompareFusedTest_q[0]~combout ),
	.datae(!\Mux30~0_combout ),
	.dataf(!\Mux30~1_combout ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(Mux30),
	.sumout(),
	.cout(),
	.shareout());
defparam \Mux30~2 .extended_lut = "off";
defparam \Mux30~2 .lut_mask = 64'h0000000033335355;
defparam \Mux30~2 .shared_arith = "off";

cyclonev_lcell_comb \Mux29~0 (
	.dataa(!datab_2),
	.datab(!dataa_2),
	.datac(!\COMP_GEN:compare|exc_N_uid35_fpCompareFusedTest_q[0]~combout ),
	.datad(!\COMP_GEN:compare|exc_N_uid18_fpCompareFusedTest_q[0]~combout ),
	.datae(!\Mux30~0_combout ),
	.dataf(!\Mux30~1_combout ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(Mux29),
	.sumout(),
	.cout(),
	.shareout());
defparam \Mux29~0 .extended_lut = "off";
defparam \Mux29~0 .lut_mask = 64'h0000000033335355;
defparam \Mux29~0 .shared_arith = "off";

cyclonev_lcell_comb \Mux28~0 (
	.dataa(!datab_3),
	.datab(!dataa_3),
	.datac(!\COMP_GEN:compare|exc_N_uid35_fpCompareFusedTest_q[0]~combout ),
	.datad(!\COMP_GEN:compare|exc_N_uid18_fpCompareFusedTest_q[0]~combout ),
	.datae(!\Mux30~0_combout ),
	.dataf(!\Mux30~1_combout ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(Mux28),
	.sumout(),
	.cout(),
	.shareout());
defparam \Mux28~0 .extended_lut = "off";
defparam \Mux28~0 .lut_mask = 64'h0000000033335355;
defparam \Mux28~0 .shared_arith = "off";

cyclonev_lcell_comb \Mux27~0 (
	.dataa(!datab_4),
	.datab(!dataa_4),
	.datac(!\COMP_GEN:compare|exc_N_uid35_fpCompareFusedTest_q[0]~combout ),
	.datad(!\COMP_GEN:compare|exc_N_uid18_fpCompareFusedTest_q[0]~combout ),
	.datae(!\Mux30~0_combout ),
	.dataf(!\Mux30~1_combout ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(Mux27),
	.sumout(),
	.cout(),
	.shareout());
defparam \Mux27~0 .extended_lut = "off";
defparam \Mux27~0 .lut_mask = 64'h0000000033335355;
defparam \Mux27~0 .shared_arith = "off";

cyclonev_lcell_comb \Mux26~0 (
	.dataa(!datab_5),
	.datab(!dataa_5),
	.datac(!\COMP_GEN:compare|exc_N_uid35_fpCompareFusedTest_q[0]~combout ),
	.datad(!\COMP_GEN:compare|exc_N_uid18_fpCompareFusedTest_q[0]~combout ),
	.datae(!\Mux30~0_combout ),
	.dataf(!\Mux30~1_combout ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(Mux26),
	.sumout(),
	.cout(),
	.shareout());
defparam \Mux26~0 .extended_lut = "off";
defparam \Mux26~0 .lut_mask = 64'h0000000033335355;
defparam \Mux26~0 .shared_arith = "off";

cyclonev_lcell_comb \Mux25~0 (
	.dataa(!datab_6),
	.datab(!dataa_6),
	.datac(!\COMP_GEN:compare|exc_N_uid35_fpCompareFusedTest_q[0]~combout ),
	.datad(!\COMP_GEN:compare|exc_N_uid18_fpCompareFusedTest_q[0]~combout ),
	.datae(!\Mux30~0_combout ),
	.dataf(!\Mux30~1_combout ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(Mux25),
	.sumout(),
	.cout(),
	.shareout());
defparam \Mux25~0 .extended_lut = "off";
defparam \Mux25~0 .lut_mask = 64'h0000000033335355;
defparam \Mux25~0 .shared_arith = "off";

cyclonev_lcell_comb \Mux24~0 (
	.dataa(!datab_7),
	.datab(!dataa_7),
	.datac(!\COMP_GEN:compare|exc_N_uid35_fpCompareFusedTest_q[0]~combout ),
	.datad(!\COMP_GEN:compare|exc_N_uid18_fpCompareFusedTest_q[0]~combout ),
	.datae(!\Mux30~0_combout ),
	.dataf(!\Mux30~1_combout ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(Mux24),
	.sumout(),
	.cout(),
	.shareout());
defparam \Mux24~0 .extended_lut = "off";
defparam \Mux24~0 .lut_mask = 64'h0000000033335355;
defparam \Mux24~0 .shared_arith = "off";

cyclonev_lcell_comb \Mux23~0 (
	.dataa(!datab_8),
	.datab(!dataa_8),
	.datac(!\COMP_GEN:compare|exc_N_uid35_fpCompareFusedTest_q[0]~combout ),
	.datad(!\COMP_GEN:compare|exc_N_uid18_fpCompareFusedTest_q[0]~combout ),
	.datae(!\Mux30~0_combout ),
	.dataf(!\Mux30~1_combout ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(Mux23),
	.sumout(),
	.cout(),
	.shareout());
defparam \Mux23~0 .extended_lut = "off";
defparam \Mux23~0 .lut_mask = 64'h0000000033335355;
defparam \Mux23~0 .shared_arith = "off";

cyclonev_lcell_comb \Mux22~0 (
	.dataa(!datab_9),
	.datab(!dataa_9),
	.datac(!\COMP_GEN:compare|exc_N_uid35_fpCompareFusedTest_q[0]~combout ),
	.datad(!\COMP_GEN:compare|exc_N_uid18_fpCompareFusedTest_q[0]~combout ),
	.datae(!\Mux30~0_combout ),
	.dataf(!\Mux30~1_combout ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(Mux22),
	.sumout(),
	.cout(),
	.shareout());
defparam \Mux22~0 .extended_lut = "off";
defparam \Mux22~0 .lut_mask = 64'h0000000033335355;
defparam \Mux22~0 .shared_arith = "off";

cyclonev_lcell_comb \Mux21~0 (
	.dataa(!datab_10),
	.datab(!dataa_10),
	.datac(!\COMP_GEN:compare|exc_N_uid35_fpCompareFusedTest_q[0]~combout ),
	.datad(!\COMP_GEN:compare|exc_N_uid18_fpCompareFusedTest_q[0]~combout ),
	.datae(!\Mux30~0_combout ),
	.dataf(!\Mux30~1_combout ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(Mux21),
	.sumout(),
	.cout(),
	.shareout());
defparam \Mux21~0 .extended_lut = "off";
defparam \Mux21~0 .lut_mask = 64'h0000000033335355;
defparam \Mux21~0 .shared_arith = "off";

cyclonev_lcell_comb \Mux20~0 (
	.dataa(!datab_11),
	.datab(!dataa_11),
	.datac(!\COMP_GEN:compare|exc_N_uid35_fpCompareFusedTest_q[0]~combout ),
	.datad(!\COMP_GEN:compare|exc_N_uid18_fpCompareFusedTest_q[0]~combout ),
	.datae(!\Mux30~0_combout ),
	.dataf(!\Mux30~1_combout ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(Mux20),
	.sumout(),
	.cout(),
	.shareout());
defparam \Mux20~0 .extended_lut = "off";
defparam \Mux20~0 .lut_mask = 64'h0000000033335355;
defparam \Mux20~0 .shared_arith = "off";

cyclonev_lcell_comb \Mux19~0 (
	.dataa(!datab_12),
	.datab(!dataa_12),
	.datac(!\COMP_GEN:compare|exc_N_uid35_fpCompareFusedTest_q[0]~combout ),
	.datad(!\COMP_GEN:compare|exc_N_uid18_fpCompareFusedTest_q[0]~combout ),
	.datae(!\Mux30~0_combout ),
	.dataf(!\Mux30~1_combout ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(Mux19),
	.sumout(),
	.cout(),
	.shareout());
defparam \Mux19~0 .extended_lut = "off";
defparam \Mux19~0 .lut_mask = 64'h0000000033335355;
defparam \Mux19~0 .shared_arith = "off";

cyclonev_lcell_comb \Mux18~0 (
	.dataa(!datab_13),
	.datab(!dataa_13),
	.datac(!\COMP_GEN:compare|exc_N_uid35_fpCompareFusedTest_q[0]~combout ),
	.datad(!\COMP_GEN:compare|exc_N_uid18_fpCompareFusedTest_q[0]~combout ),
	.datae(!\Mux30~0_combout ),
	.dataf(!\Mux30~1_combout ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(Mux18),
	.sumout(),
	.cout(),
	.shareout());
defparam \Mux18~0 .extended_lut = "off";
defparam \Mux18~0 .lut_mask = 64'h0000000033335355;
defparam \Mux18~0 .shared_arith = "off";

cyclonev_lcell_comb \Mux17~0 (
	.dataa(!datab_14),
	.datab(!dataa_14),
	.datac(!\COMP_GEN:compare|exc_N_uid35_fpCompareFusedTest_q[0]~combout ),
	.datad(!\COMP_GEN:compare|exc_N_uid18_fpCompareFusedTest_q[0]~combout ),
	.datae(!\Mux30~0_combout ),
	.dataf(!\Mux30~1_combout ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(Mux17),
	.sumout(),
	.cout(),
	.shareout());
defparam \Mux17~0 .extended_lut = "off";
defparam \Mux17~0 .lut_mask = 64'h0000000033335355;
defparam \Mux17~0 .shared_arith = "off";

cyclonev_lcell_comb \Mux16~0 (
	.dataa(!datab_15),
	.datab(!dataa_15),
	.datac(!\COMP_GEN:compare|exc_N_uid35_fpCompareFusedTest_q[0]~combout ),
	.datad(!\COMP_GEN:compare|exc_N_uid18_fpCompareFusedTest_q[0]~combout ),
	.datae(!\Mux30~0_combout ),
	.dataf(!\Mux30~1_combout ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(Mux16),
	.sumout(),
	.cout(),
	.shareout());
defparam \Mux16~0 .extended_lut = "off";
defparam \Mux16~0 .lut_mask = 64'h0000000033335355;
defparam \Mux16~0 .shared_arith = "off";

cyclonev_lcell_comb \Mux15~0 (
	.dataa(!datab_16),
	.datab(!dataa_16),
	.datac(!\COMP_GEN:compare|exc_N_uid35_fpCompareFusedTest_q[0]~combout ),
	.datad(!\COMP_GEN:compare|exc_N_uid18_fpCompareFusedTest_q[0]~combout ),
	.datae(!\Mux30~0_combout ),
	.dataf(!\Mux30~1_combout ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(Mux15),
	.sumout(),
	.cout(),
	.shareout());
defparam \Mux15~0 .extended_lut = "off";
defparam \Mux15~0 .lut_mask = 64'h0000000033335355;
defparam \Mux15~0 .shared_arith = "off";

cyclonev_lcell_comb \Mux14~0 (
	.dataa(!datab_17),
	.datab(!dataa_17),
	.datac(!\COMP_GEN:compare|exc_N_uid35_fpCompareFusedTest_q[0]~combout ),
	.datad(!\COMP_GEN:compare|exc_N_uid18_fpCompareFusedTest_q[0]~combout ),
	.datae(!\Mux30~0_combout ),
	.dataf(!\Mux30~1_combout ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(Mux14),
	.sumout(),
	.cout(),
	.shareout());
defparam \Mux14~0 .extended_lut = "off";
defparam \Mux14~0 .lut_mask = 64'h0000000033335355;
defparam \Mux14~0 .shared_arith = "off";

cyclonev_lcell_comb \Mux13~0 (
	.dataa(!datab_18),
	.datab(!dataa_18),
	.datac(!\COMP_GEN:compare|exc_N_uid35_fpCompareFusedTest_q[0]~combout ),
	.datad(!\COMP_GEN:compare|exc_N_uid18_fpCompareFusedTest_q[0]~combout ),
	.datae(!\Mux30~0_combout ),
	.dataf(!\Mux30~1_combout ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(Mux13),
	.sumout(),
	.cout(),
	.shareout());
defparam \Mux13~0 .extended_lut = "off";
defparam \Mux13~0 .lut_mask = 64'h0000000033335355;
defparam \Mux13~0 .shared_arith = "off";

cyclonev_lcell_comb \Mux12~0 (
	.dataa(!datab_19),
	.datab(!dataa_19),
	.datac(!\COMP_GEN:compare|exc_N_uid35_fpCompareFusedTest_q[0]~combout ),
	.datad(!\COMP_GEN:compare|exc_N_uid18_fpCompareFusedTest_q[0]~combout ),
	.datae(!\Mux30~0_combout ),
	.dataf(!\Mux30~1_combout ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(Mux12),
	.sumout(),
	.cout(),
	.shareout());
defparam \Mux12~0 .extended_lut = "off";
defparam \Mux12~0 .lut_mask = 64'h0000000033335355;
defparam \Mux12~0 .shared_arith = "off";

cyclonev_lcell_comb \Mux11~0 (
	.dataa(!datab_20),
	.datab(!dataa_20),
	.datac(!\COMP_GEN:compare|exc_N_uid35_fpCompareFusedTest_q[0]~combout ),
	.datad(!\COMP_GEN:compare|exc_N_uid18_fpCompareFusedTest_q[0]~combout ),
	.datae(!\Mux30~0_combout ),
	.dataf(!\Mux30~1_combout ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(Mux11),
	.sumout(),
	.cout(),
	.shareout());
defparam \Mux11~0 .extended_lut = "off";
defparam \Mux11~0 .lut_mask = 64'h0000000033335355;
defparam \Mux11~0 .shared_arith = "off";

cyclonev_lcell_comb \Mux10~0 (
	.dataa(!datab_21),
	.datab(!dataa_21),
	.datac(!\COMP_GEN:compare|exc_N_uid35_fpCompareFusedTest_q[0]~combout ),
	.datad(!\COMP_GEN:compare|exc_N_uid18_fpCompareFusedTest_q[0]~combout ),
	.datae(!\Mux30~0_combout ),
	.dataf(!\Mux30~1_combout ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(Mux10),
	.sumout(),
	.cout(),
	.shareout());
defparam \Mux10~0 .extended_lut = "off";
defparam \Mux10~0 .lut_mask = 64'h0000000033335355;
defparam \Mux10~0 .shared_arith = "off";

cyclonev_lcell_comb \Mux9~0 (
	.dataa(!datab_22),
	.datab(!dataa_22),
	.datac(!\COMP_GEN:compare|exc_N_uid35_fpCompareFusedTest_q[0]~combout ),
	.datad(!\COMP_GEN:compare|exc_N_uid18_fpCompareFusedTest_q[0]~combout ),
	.datae(!\Mux30~0_combout ),
	.dataf(!\Mux30~1_combout ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(Mux9),
	.sumout(),
	.cout(),
	.shareout());
defparam \Mux9~0 .extended_lut = "off";
defparam \Mux9~0 .lut_mask = 64'h0000000033335355;
defparam \Mux9~0 .shared_arith = "off";

cyclonev_lcell_comb \Mux8~0 (
	.dataa(!dataa_23),
	.datab(!datab_23),
	.datac(!\COMP_GEN:FPMinMax|oneNaNOutput_uid44_fpMinMaxFusedTest_q[23]~combout ),
	.datad(!\Equal0~0_combout ),
	.datae(!\Mux30~3_combout ),
	.dataf(!\Mux30~4_combout ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(Mux8),
	.sumout(),
	.cout(),
	.shareout());
defparam \Mux8~0 .extended_lut = "off";
defparam \Mux8~0 .lut_mask = 64'h00FF0F0F33335555;
defparam \Mux8~0 .shared_arith = "off";

cyclonev_lcell_comb \Mux7~0 (
	.dataa(!dataa_24),
	.datab(!datab_24),
	.datac(!\COMP_GEN:FPMinMax|oneNaNOutput_uid44_fpMinMaxFusedTest_q[24]~combout ),
	.datad(!\Equal0~0_combout ),
	.datae(!\Mux30~3_combout ),
	.dataf(!\Mux30~4_combout ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(Mux7),
	.sumout(),
	.cout(),
	.shareout());
defparam \Mux7~0 .extended_lut = "off";
defparam \Mux7~0 .lut_mask = 64'h00FF0F0F33335555;
defparam \Mux7~0 .shared_arith = "off";

cyclonev_lcell_comb \Mux6~0 (
	.dataa(!dataa_25),
	.datab(!datab_25),
	.datac(!\COMP_GEN:FPMinMax|oneNaNOutput_uid44_fpMinMaxFusedTest_q[25]~combout ),
	.datad(!\Equal0~0_combout ),
	.datae(!\Mux30~3_combout ),
	.dataf(!\Mux30~4_combout ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(Mux6),
	.sumout(),
	.cout(),
	.shareout());
defparam \Mux6~0 .extended_lut = "off";
defparam \Mux6~0 .lut_mask = 64'h00FF0F0F33335555;
defparam \Mux6~0 .shared_arith = "off";

cyclonev_lcell_comb \Mux5~0 (
	.dataa(!dataa_26),
	.datab(!datab_26),
	.datac(!\COMP_GEN:FPMinMax|oneNaNOutput_uid44_fpMinMaxFusedTest_q[26]~combout ),
	.datad(!\Equal0~0_combout ),
	.datae(!\Mux30~3_combout ),
	.dataf(!\Mux30~4_combout ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(Mux5),
	.sumout(),
	.cout(),
	.shareout());
defparam \Mux5~0 .extended_lut = "off";
defparam \Mux5~0 .lut_mask = 64'h00FF0F0F33335555;
defparam \Mux5~0 .shared_arith = "off";

cyclonev_lcell_comb \Mux4~0 (
	.dataa(!dataa_27),
	.datab(!datab_27),
	.datac(!\COMP_GEN:FPMinMax|oneNaNOutput_uid44_fpMinMaxFusedTest_q[27]~combout ),
	.datad(!\Equal0~0_combout ),
	.datae(!\Mux30~3_combout ),
	.dataf(!\Mux30~4_combout ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(Mux4),
	.sumout(),
	.cout(),
	.shareout());
defparam \Mux4~0 .extended_lut = "off";
defparam \Mux4~0 .lut_mask = 64'h00FF0F0F33335555;
defparam \Mux4~0 .shared_arith = "off";

cyclonev_lcell_comb \Mux3~0 (
	.dataa(!dataa_28),
	.datab(!datab_28),
	.datac(!\COMP_GEN:FPMinMax|oneNaNOutput_uid44_fpMinMaxFusedTest_q[28]~combout ),
	.datad(!\Equal0~0_combout ),
	.datae(!\Mux30~3_combout ),
	.dataf(!\Mux30~4_combout ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(Mux3),
	.sumout(),
	.cout(),
	.shareout());
defparam \Mux3~0 .extended_lut = "off";
defparam \Mux3~0 .lut_mask = 64'h00FF0F0F33335555;
defparam \Mux3~0 .shared_arith = "off";

cyclonev_lcell_comb \Mux2~0 (
	.dataa(!dataa_29),
	.datab(!datab_29),
	.datac(!\COMP_GEN:FPMinMax|oneNaNOutput_uid44_fpMinMaxFusedTest_q[29]~combout ),
	.datad(!\Equal0~0_combout ),
	.datae(!\Mux30~3_combout ),
	.dataf(!\Mux30~4_combout ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(Mux2),
	.sumout(),
	.cout(),
	.shareout());
defparam \Mux2~0 .extended_lut = "off";
defparam \Mux2~0 .lut_mask = 64'h00FF0F0F33335555;
defparam \Mux2~0 .shared_arith = "off";

cyclonev_lcell_comb \Mux1~0 (
	.dataa(!dataa_30),
	.datab(!datab_30),
	.datac(!\COMP_GEN:FPMinMax|oneNaNOutput_uid44_fpMinMaxFusedTest_q[30]~combout ),
	.datad(!\Equal0~0_combout ),
	.datae(!\Mux30~3_combout ),
	.dataf(!\Mux30~4_combout ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(Mux1),
	.sumout(),
	.cout(),
	.shareout());
defparam \Mux1~0 .extended_lut = "off";
defparam \Mux1~0 .lut_mask = 64'h00FF0F0F33335555;
defparam \Mux1~0 .shared_arith = "off";

cyclonev_lcell_comb \Mux0~2 (
	.dataa(!dataa_31),
	.datab(!datab_31),
	.datac(!\Equal0~0_combout ),
	.datad(!\COMP_GEN:FPMinMax|d0Mux_uid62_fpMinMaxFusedTest_q[0]~0_combout ),
	.datae(!\Mux0~0_combout ),
	.dataf(!\Mux0~1_combout ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(Mux0),
	.sumout(),
	.cout(),
	.shareout());
defparam \Mux0~2 .extended_lut = "off";
defparam \Mux0~2 .lut_mask = 64'h000005030F0F0F0F;
defparam \Mux0~2 .shared_arith = "off";

cyclonev_lcell_comb \Equal0~0 (
	.dataa(!n_1),
	.datab(!n_2),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\Equal0~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \Equal0~0 .extended_lut = "off";
defparam \Equal0~0 .lut_mask = 64'h8888888888888888;
defparam \Equal0~0 .shared_arith = "off";

cyclonev_lcell_comb \Mux31~0 (
	.dataa(!dataa_0),
	.datab(!n_3),
	.datac(!datab_0),
	.datad(!\COMP_GEN:compare|exc_N_uid35_fpCompareFusedTest_q[0]~combout ),
	.datae(!\COMP_GEN:compare|exc_N_uid18_fpCompareFusedTest_q[0]~combout ),
	.dataf(!\COMP_GEN:FPMinMax|d0Mux_uid62_fpMinMaxFusedTest_q[0]~0_combout ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\Mux31~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \Mux31~0 .extended_lut = "off";
defparam \Mux31~0 .lut_mask = 64'hAAAAB888B8AAB888;
defparam \Mux31~0 .shared_arith = "off";

cyclonev_lcell_comb \Mux32~0 (
	.dataa(!n_0),
	.datab(!n_1),
	.datac(!n_2),
	.datad(!n_3),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\Mux32~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \Mux32~0 .extended_lut = "off";
defparam \Mux32~0 .lut_mask = 64'h2400240024002400;
defparam \Mux32~0 .shared_arith = "off";

cyclonev_lcell_comb \Mux34~0 (
	.dataa(!n_0),
	.datab(!n_1),
	.datac(!n_2),
	.datad(!n_3),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\Mux34~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \Mux34~0 .extended_lut = "off";
defparam \Mux34~0 .lut_mask = 64'h2A002A002A002A00;
defparam \Mux34~0 .shared_arith = "off";

cyclonev_lcell_comb \Mux33~0 (
	.dataa(!n_0),
	.datab(!n_1),
	.datac(!n_2),
	.datad(!n_3),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\Mux33~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \Mux33~0 .extended_lut = "off";
defparam \Mux33~0 .lut_mask = 64'h1800180018001800;
defparam \Mux33~0 .shared_arith = "off";

cyclonev_lcell_comb \Mux31~1 (
	.dataa(!dataa_31),
	.datab(!\COMP_GEN:compare|Add1~1_sumout ),
	.datac(!datab_31),
	.datad(!\COMP_GEN:compare|Add0~1_sumout ),
	.datae(!\COMP_GEN:compare|rLT_uid68_fpCompareFusedTest_q[0]~4_combout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\Mux31~1_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \Mux31~1 .extended_lut = "off";
defparam \Mux31~1 .lut_mask = 64'h2A2F20252A2F2025;
defparam \Mux31~1 .shared_arith = "off";

cyclonev_lcell_comb \Mux31~2 (
	.dataa(!\Mux32~0_combout ),
	.datab(!\COMP_GEN:compare|rEQ_uid74_fpCompareFusedTest_q[0]~combout ),
	.datac(!\Mux34~0_combout ),
	.datad(!\Mux33~0_combout ),
	.datae(!\Mux31~1_combout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\Mux31~2_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \Mux31~2 .extended_lut = "off";
defparam \Mux31~2 .lut_mask = 64'h0400540004005400;
defparam \Mux31~2 .shared_arith = "off";

cyclonev_lcell_comb \Equal0~1 (
	.dataa(!n_3),
	.datab(!n_0),
	.datac(!\Equal0~0_combout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\Equal0~1_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \Equal0~1 .extended_lut = "off";
defparam \Equal0~1 .lut_mask = 64'h0404040404040404;
defparam \Equal0~1 .shared_arith = "off";

cyclonev_lcell_comb \Mux30~0 (
	.dataa(!n_3),
	.datab(!dataa_31),
	.datac(!\COMP_GEN:compare|Add1~1_sumout ),
	.datad(!datab_31),
	.datae(!\Equal0~1_combout ),
	.dataf(!\COMP_GEN:compare|oneIsNaN_uid88_fpCompareFusedTest_q[0]~0_combout ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\Mux30~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \Mux30~0 .extended_lut = "off";
defparam \Mux30~0 .lut_mask = 64'h5555555504545101;
defparam \Mux30~0 .shared_arith = "off";

cyclonev_lcell_comb \Mux30~1 (
	.dataa(!n_3),
	.datab(!\COMP_GEN:compare|exc_N_uid35_fpCompareFusedTest_q[0]~combout ),
	.datac(!\COMP_GEN:compare|exc_N_uid18_fpCompareFusedTest_q[0]~combout ),
	.datad(!\Equal0~0_combout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\Mux30~1_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \Mux30~1 .extended_lut = "off";
defparam \Mux30~1 .lut_mask = 64'h00FE00FE00FE00FE;
defparam \Mux30~1 .shared_arith = "off";

cyclonev_lcell_comb \Mux30~3 (
	.dataa(!\COMP_GEN:compare|exc_N_uid35_fpCompareFusedTest_q[0]~combout ),
	.datab(!\COMP_GEN:compare|exc_N_uid18_fpCompareFusedTest_q[0]~combout ),
	.datac(!\Mux30~0_combout ),
	.datad(!\Mux30~1_combout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\Mux30~3_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \Mux30~3 .extended_lut = "off";
defparam \Mux30~3 .lut_mask = 64'h00F600F600F600F6;
defparam \Mux30~3 .shared_arith = "off";

cyclonev_lcell_comb \Mux30~4 (
	.dataa(!\COMP_GEN:compare|exc_N_uid35_fpCompareFusedTest_q[0]~combout ),
	.datab(!\COMP_GEN:compare|exc_N_uid18_fpCompareFusedTest_q[0]~combout ),
	.datac(!\Mux30~0_combout ),
	.datad(!\Mux30~1_combout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\Mux30~4_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \Mux30~4 .extended_lut = "off";
defparam \Mux30~4 .lut_mask = 64'h00F900F900F900F9;
defparam \Mux30~4 .shared_arith = "off";

cyclonev_lcell_comb \Mux0~0 (
	.dataa(!n_3),
	.datab(!\COMP_GEN:compare|exc_N_uid35_fpCompareFusedTest_q[0]~combout ),
	.datac(!\COMP_GEN:compare|exc_N_uid18_fpCompareFusedTest_q[0]~combout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\Mux0~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \Mux0~0 .extended_lut = "off";
defparam \Mux0~0 .lut_mask = 64'h4040404040404040;
defparam \Mux0~0 .shared_arith = "off";

cyclonev_lcell_comb \Mux0~1 (
	.dataa(!n_3),
	.datab(!\COMP_GEN:compare|exc_N_uid35_fpCompareFusedTest_q[0]~combout ),
	.datac(!\COMP_GEN:compare|exc_N_uid18_fpCompareFusedTest_q[0]~combout ),
	.datad(!dataa_31),
	.datae(!datab_31),
	.dataf(!n_0),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\Mux0~1_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \Mux0~1 .extended_lut = "off";
defparam \Mux0~1 .lut_mask = 64'h00100414AA10AE14;
defparam \Mux0~1 .shared_arith = "off";

endmodule

module FP_MULT_FPCompareFused (
	Add1,
	Add0,
	exc_N_uid35_fpCompareFusedTest_q_0,
	exc_N_uid18_fpCompareFusedTest_q_0,
	rLT_uid68_fpCompareFusedTest_q_0,
	rEQ_uid74_fpCompareFusedTest_q_0,
	Mux34,
	Mux33,
	Mux0,
	oneIsNaN_uid88_fpCompareFusedTest_q_0,
	dataa_0,
	datab_0,
	datab_18,
	datab_19,
	datab_20,
	datab_21,
	datab_22,
	datab_12,
	datab_13,
	datab_14,
	datab_15,
	datab_16,
	datab_17,
	datab_1,
	datab_2,
	datab_3,
	datab_4,
	datab_5,
	datab_6,
	datab_7,
	datab_8,
	datab_9,
	datab_10,
	datab_11,
	datab_23,
	datab_24,
	datab_25,
	datab_26,
	datab_27,
	datab_28,
	datab_29,
	datab_30,
	dataa_18,
	dataa_19,
	dataa_20,
	dataa_21,
	dataa_22,
	dataa_12,
	dataa_13,
	dataa_14,
	dataa_15,
	dataa_16,
	dataa_17,
	dataa_1,
	dataa_2,
	dataa_3,
	dataa_4,
	dataa_5,
	dataa_6,
	dataa_7,
	dataa_8,
	dataa_9,
	dataa_10,
	dataa_11,
	dataa_23,
	dataa_24,
	dataa_25,
	dataa_26,
	dataa_27,
	dataa_28,
	dataa_29,
	dataa_30,
	dataa_31,
	datab_31)/* synthesis synthesis_greybox=0 */;
output 	Add1;
output 	Add0;
output 	exc_N_uid35_fpCompareFusedTest_q_0;
output 	exc_N_uid18_fpCompareFusedTest_q_0;
output 	rLT_uid68_fpCompareFusedTest_q_0;
output 	rEQ_uid74_fpCompareFusedTest_q_0;
input 	Mux34;
input 	Mux33;
output 	Mux0;
output 	oneIsNaN_uid88_fpCompareFusedTest_q_0;
input 	dataa_0;
input 	datab_0;
input 	datab_18;
input 	datab_19;
input 	datab_20;
input 	datab_21;
input 	datab_22;
input 	datab_12;
input 	datab_13;
input 	datab_14;
input 	datab_15;
input 	datab_16;
input 	datab_17;
input 	datab_1;
input 	datab_2;
input 	datab_3;
input 	datab_4;
input 	datab_5;
input 	datab_6;
input 	datab_7;
input 	datab_8;
input 	datab_9;
input 	datab_10;
input 	datab_11;
input 	datab_23;
input 	datab_24;
input 	datab_25;
input 	datab_26;
input 	datab_27;
input 	datab_28;
input 	datab_29;
input 	datab_30;
input 	dataa_18;
input 	dataa_19;
input 	dataa_20;
input 	dataa_21;
input 	dataa_22;
input 	dataa_12;
input 	dataa_13;
input 	dataa_14;
input 	dataa_15;
input 	dataa_16;
input 	dataa_17;
input 	dataa_1;
input 	dataa_2;
input 	dataa_3;
input 	dataa_4;
input 	dataa_5;
input 	dataa_6;
input 	dataa_7;
input 	dataa_8;
input 	dataa_9;
input 	dataa_10;
input 	dataa_11;
input 	dataa_23;
input 	dataa_24;
input 	dataa_25;
input 	dataa_26;
input 	dataa_27;
input 	dataa_28;
input 	dataa_29;
input 	dataa_30;
input 	dataa_31;
input 	datab_31;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \Add1~126_cout ;
wire \Add1~127 ;
wire \Add1~122_cout ;
wire \Add1~123 ;
wire \Add1~118_cout ;
wire \Add1~119 ;
wire \Add1~114_cout ;
wire \Add1~115 ;
wire \Add1~110_cout ;
wire \Add1~111 ;
wire \Add1~106_cout ;
wire \Add1~107 ;
wire \Add1~102_cout ;
wire \Add1~103 ;
wire \Add1~98_cout ;
wire \Add1~99 ;
wire \Add1~94_cout ;
wire \Add1~95 ;
wire \Add1~90_cout ;
wire \Add1~91 ;
wire \Add1~86_cout ;
wire \Add1~87 ;
wire \Add1~82_cout ;
wire \Add1~83 ;
wire \Add1~78_cout ;
wire \Add1~79 ;
wire \Add1~74_cout ;
wire \Add1~75 ;
wire \Add1~70_cout ;
wire \Add1~71 ;
wire \Add1~66_cout ;
wire \Add1~67 ;
wire \Add1~62_cout ;
wire \Add1~63 ;
wire \Add1~58_cout ;
wire \Add1~59 ;
wire \Add1~54_cout ;
wire \Add1~55 ;
wire \Add1~50_cout ;
wire \Add1~51 ;
wire \Add1~46_cout ;
wire \Add1~47 ;
wire \Add1~42_cout ;
wire \Add1~43 ;
wire \Add1~38_cout ;
wire \Add1~39 ;
wire \Add1~34_cout ;
wire \Add1~35 ;
wire \Add1~30_cout ;
wire \Add1~31 ;
wire \Add1~26_cout ;
wire \Add1~27 ;
wire \Add1~22_cout ;
wire \Add1~23 ;
wire \Add1~18_cout ;
wire \Add1~19 ;
wire \Add1~14_cout ;
wire \Add1~15 ;
wire \Add1~10_cout ;
wire \Add1~11 ;
wire \Add1~6_cout ;
wire \Add1~7 ;
wire \Add0~126_cout ;
wire \Add0~127 ;
wire \Add0~122_cout ;
wire \Add0~123 ;
wire \Add0~118_cout ;
wire \Add0~119 ;
wire \Add0~114_cout ;
wire \Add0~115 ;
wire \Add0~110_cout ;
wire \Add0~111 ;
wire \Add0~106_cout ;
wire \Add0~107 ;
wire \Add0~102_cout ;
wire \Add0~103 ;
wire \Add0~98_cout ;
wire \Add0~99 ;
wire \Add0~94_cout ;
wire \Add0~95 ;
wire \Add0~90_cout ;
wire \Add0~91 ;
wire \Add0~86_cout ;
wire \Add0~87 ;
wire \Add0~82_cout ;
wire \Add0~83 ;
wire \Add0~78_cout ;
wire \Add0~79 ;
wire \Add0~74_cout ;
wire \Add0~75 ;
wire \Add0~70_cout ;
wire \Add0~71 ;
wire \Add0~66_cout ;
wire \Add0~67 ;
wire \Add0~62_cout ;
wire \Add0~63 ;
wire \Add0~58_cout ;
wire \Add0~59 ;
wire \Add0~54_cout ;
wire \Add0~55 ;
wire \Add0~50_cout ;
wire \Add0~51 ;
wire \Add0~46_cout ;
wire \Add0~47 ;
wire \Add0~42_cout ;
wire \Add0~43 ;
wire \Add0~38_cout ;
wire \Add0~39 ;
wire \Add0~34_cout ;
wire \Add0~35 ;
wire \Add0~30_cout ;
wire \Add0~31 ;
wire \Add0~26_cout ;
wire \Add0~27 ;
wire \Add0~22_cout ;
wire \Add0~23 ;
wire \Add0~18_cout ;
wire \Add0~19 ;
wire \Add0~14_cout ;
wire \Add0~15 ;
wire \Add0~10_cout ;
wire \Add0~11 ;
wire \Add0~6_cout ;
wire \Add0~7 ;
wire \Equal1~0_combout ;
wire \Equal1~1_combout ;
wire \Equal1~2_combout ;
wire \Equal1~3_combout ;
wire \exc_N_uid35_fpCompareFusedTest_q[0]~0_combout ;
wire \exc_N_uid35_fpCompareFusedTest_q[0]~1_combout ;
wire \Equal3~0_combout ;
wire \Equal3~1_combout ;
wire \Equal3~2_combout ;
wire \Equal3~3_combout ;
wire \exc_N_uid18_fpCompareFusedTest_q[0]~0_combout ;
wire \exc_N_uid18_fpCompareFusedTest_q[0]~1_combout ;
wire \Equal1~4_combout ;
wire \Equal3~4_combout ;
wire \rLT_uid68_fpCompareFusedTest_q[0]~0_combout ;
wire \rLT_uid68_fpCompareFusedTest_q[0]~1_combout ;
wire \rLT_uid68_fpCompareFusedTest_q[0]~2_combout ;
wire \rLT_uid68_fpCompareFusedTest_q[0]~3_combout ;
wire \Equal0~0_combout ;
wire \Equal0~1_combout ;
wire \Equal0~2_combout ;
wire \Equal0~3_combout ;
wire \Equal0~4_combout ;
wire \Equal0~5_combout ;
wire \Equal0~6_combout ;
wire \Equal0~7_combout ;
wire \Equal0~8_combout ;
wire \Equal0~9_combout ;
wire \Equal0~10_combout ;
wire \Equal0~11_combout ;
wire \Equal0~12_combout ;
wire \rLT_uid68_fpCompareFusedTest_q[0]~5_combout ;
wire \rLE_uid71_fpCompareFusedTest_q[0]~combout ;
wire \GE_uid79_fpCompareFusedTest_q[0]~combout ;


cyclonev_lcell_comb \Add1~1 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add1~6_cout ),
	.sharein(\Add1~7 ),
	.combout(),
	.sumout(Add1),
	.cout(),
	.shareout());
defparam \Add1~1 .extended_lut = "off";
defparam \Add1~1 .lut_mask = 64'h000000000000FFFF;
defparam \Add1~1 .shared_arith = "on";

cyclonev_lcell_comb \Add0~1 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add0~6_cout ),
	.sharein(\Add0~7 ),
	.combout(),
	.sumout(Add0),
	.cout(),
	.shareout());
defparam \Add0~1 .extended_lut = "off";
defparam \Add0~1 .lut_mask = 64'h000000000000FFFF;
defparam \Add0~1 .shared_arith = "on";

cyclonev_lcell_comb \exc_N_uid35_fpCompareFusedTest_q[0] (
	.dataa(!\Equal1~0_combout ),
	.datab(!\Equal1~1_combout ),
	.datac(!\Equal1~2_combout ),
	.datad(!\Equal1~3_combout ),
	.datae(!\exc_N_uid35_fpCompareFusedTest_q[0]~0_combout ),
	.dataf(!\exc_N_uid35_fpCompareFusedTest_q[0]~1_combout ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(exc_N_uid35_fpCompareFusedTest_q_0),
	.sumout(),
	.cout(),
	.shareout());
defparam \exc_N_uid35_fpCompareFusedTest_q[0] .extended_lut = "off";
defparam \exc_N_uid35_fpCompareFusedTest_q[0] .lut_mask = 64'h000000000000FFFE;
defparam \exc_N_uid35_fpCompareFusedTest_q[0] .shared_arith = "off";

cyclonev_lcell_comb \exc_N_uid18_fpCompareFusedTest_q[0] (
	.dataa(!\Equal3~0_combout ),
	.datab(!\Equal3~1_combout ),
	.datac(!\Equal3~2_combout ),
	.datad(!\Equal3~3_combout ),
	.datae(!\exc_N_uid18_fpCompareFusedTest_q[0]~0_combout ),
	.dataf(!\exc_N_uid18_fpCompareFusedTest_q[0]~1_combout ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(exc_N_uid18_fpCompareFusedTest_q_0),
	.sumout(),
	.cout(),
	.shareout());
defparam \exc_N_uid18_fpCompareFusedTest_q[0] .extended_lut = "off";
defparam \exc_N_uid18_fpCompareFusedTest_q[0] .lut_mask = 64'h000000000000FFFE;
defparam \exc_N_uid18_fpCompareFusedTest_q[0] .shared_arith = "off";

cyclonev_lcell_comb \rLT_uid68_fpCompareFusedTest_q[0]~4 (
	.dataa(!\Equal1~4_combout ),
	.datab(!\Equal3~4_combout ),
	.datac(!\rLT_uid68_fpCompareFusedTest_q[0]~3_combout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(rLT_uid68_fpCompareFusedTest_q_0),
	.sumout(),
	.cout(),
	.shareout());
defparam \rLT_uid68_fpCompareFusedTest_q[0]~4 .extended_lut = "off";
defparam \rLT_uid68_fpCompareFusedTest_q[0]~4 .lut_mask = 64'h0101010101010101;
defparam \rLT_uid68_fpCompareFusedTest_q[0]~4 .shared_arith = "off";

cyclonev_lcell_comb \rEQ_uid74_fpCompareFusedTest_q[0] (
	.dataa(!\Equal1~4_combout ),
	.datab(!\Equal3~4_combout ),
	.datac(!\rLT_uid68_fpCompareFusedTest_q[0]~3_combout ),
	.datad(!\Equal0~0_combout ),
	.datae(!\Equal0~6_combout ),
	.dataf(!\Equal0~12_combout ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(rEQ_uid74_fpCompareFusedTest_q_0),
	.sumout(),
	.cout(),
	.shareout());
defparam \rEQ_uid74_fpCompareFusedTest_q[0] .extended_lut = "off";
defparam \rEQ_uid74_fpCompareFusedTest_q[0] .lut_mask = 64'h01010101010101FF;
defparam \rEQ_uid74_fpCompareFusedTest_q[0] .shared_arith = "off";

cyclonev_lcell_comb \Mux0~0 (
	.dataa(!\rLT_uid68_fpCompareFusedTest_q[0]~5_combout ),
	.datab(!\rLE_uid71_fpCompareFusedTest_q[0]~combout ),
	.datac(!rEQ_uid74_fpCompareFusedTest_q_0),
	.datad(!\GE_uid79_fpCompareFusedTest_q[0]~combout ),
	.datae(!Mux34),
	.dataf(!Mux33),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(Mux0),
	.sumout(),
	.cout(),
	.shareout());
defparam \Mux0~0 .extended_lut = "off";
defparam \Mux0~0 .lut_mask = 64'h5555CCCC0F0FFF00;
defparam \Mux0~0 .shared_arith = "off";

cyclonev_lcell_comb \oneIsNaN_uid88_fpCompareFusedTest_q[0]~0 (
	.dataa(!exc_N_uid35_fpCompareFusedTest_q_0),
	.datab(!exc_N_uid18_fpCompareFusedTest_q_0),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(oneIsNaN_uid88_fpCompareFusedTest_q_0),
	.sumout(),
	.cout(),
	.shareout());
defparam \oneIsNaN_uid88_fpCompareFusedTest_q[0]~0 .extended_lut = "off";
defparam \oneIsNaN_uid88_fpCompareFusedTest_q[0]~0 .lut_mask = 64'h8888888888888888;
defparam \oneIsNaN_uid88_fpCompareFusedTest_q[0]~0 .shared_arith = "off";

cyclonev_lcell_comb \Add1~126 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!dataa_0),
	.datad(!datab_0),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add1~126_cout ),
	.shareout(\Add1~127 ));
defparam \Add1~126 .extended_lut = "off";
defparam \Add1~126 .lut_mask = 64'h0000F0FF00000FF0;
defparam \Add1~126 .shared_arith = "on";

cyclonev_lcell_comb \Add1~122 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!dataa_1),
	.datad(!datab_1),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add1~126_cout ),
	.sharein(\Add1~127 ),
	.combout(),
	.sumout(),
	.cout(\Add1~122_cout ),
	.shareout(\Add1~123 ));
defparam \Add1~122 .extended_lut = "off";
defparam \Add1~122 .lut_mask = 64'h000000F00000F00F;
defparam \Add1~122 .shared_arith = "on";

cyclonev_lcell_comb \Add1~118 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!dataa_2),
	.datad(!datab_2),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add1~122_cout ),
	.sharein(\Add1~123 ),
	.combout(),
	.sumout(),
	.cout(\Add1~118_cout ),
	.shareout(\Add1~119 ));
defparam \Add1~118 .extended_lut = "off";
defparam \Add1~118 .lut_mask = 64'h000000F00000F00F;
defparam \Add1~118 .shared_arith = "on";

cyclonev_lcell_comb \Add1~114 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!dataa_3),
	.datad(!datab_3),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add1~118_cout ),
	.sharein(\Add1~119 ),
	.combout(),
	.sumout(),
	.cout(\Add1~114_cout ),
	.shareout(\Add1~115 ));
defparam \Add1~114 .extended_lut = "off";
defparam \Add1~114 .lut_mask = 64'h000000F00000F00F;
defparam \Add1~114 .shared_arith = "on";

cyclonev_lcell_comb \Add1~110 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!dataa_4),
	.datad(!datab_4),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add1~114_cout ),
	.sharein(\Add1~115 ),
	.combout(),
	.sumout(),
	.cout(\Add1~110_cout ),
	.shareout(\Add1~111 ));
defparam \Add1~110 .extended_lut = "off";
defparam \Add1~110 .lut_mask = 64'h000000F00000F00F;
defparam \Add1~110 .shared_arith = "on";

cyclonev_lcell_comb \Add1~106 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!dataa_5),
	.datad(!datab_5),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add1~110_cout ),
	.sharein(\Add1~111 ),
	.combout(),
	.sumout(),
	.cout(\Add1~106_cout ),
	.shareout(\Add1~107 ));
defparam \Add1~106 .extended_lut = "off";
defparam \Add1~106 .lut_mask = 64'h000000F00000F00F;
defparam \Add1~106 .shared_arith = "on";

cyclonev_lcell_comb \Add1~102 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!dataa_6),
	.datad(!datab_6),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add1~106_cout ),
	.sharein(\Add1~107 ),
	.combout(),
	.sumout(),
	.cout(\Add1~102_cout ),
	.shareout(\Add1~103 ));
defparam \Add1~102 .extended_lut = "off";
defparam \Add1~102 .lut_mask = 64'h000000F00000F00F;
defparam \Add1~102 .shared_arith = "on";

cyclonev_lcell_comb \Add1~98 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!dataa_7),
	.datad(!datab_7),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add1~102_cout ),
	.sharein(\Add1~103 ),
	.combout(),
	.sumout(),
	.cout(\Add1~98_cout ),
	.shareout(\Add1~99 ));
defparam \Add1~98 .extended_lut = "off";
defparam \Add1~98 .lut_mask = 64'h000000F00000F00F;
defparam \Add1~98 .shared_arith = "on";

cyclonev_lcell_comb \Add1~94 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!dataa_8),
	.datad(!datab_8),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add1~98_cout ),
	.sharein(\Add1~99 ),
	.combout(),
	.sumout(),
	.cout(\Add1~94_cout ),
	.shareout(\Add1~95 ));
defparam \Add1~94 .extended_lut = "off";
defparam \Add1~94 .lut_mask = 64'h000000F00000F00F;
defparam \Add1~94 .shared_arith = "on";

cyclonev_lcell_comb \Add1~90 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!dataa_9),
	.datad(!datab_9),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add1~94_cout ),
	.sharein(\Add1~95 ),
	.combout(),
	.sumout(),
	.cout(\Add1~90_cout ),
	.shareout(\Add1~91 ));
defparam \Add1~90 .extended_lut = "off";
defparam \Add1~90 .lut_mask = 64'h000000F00000F00F;
defparam \Add1~90 .shared_arith = "on";

cyclonev_lcell_comb \Add1~86 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!dataa_10),
	.datad(!datab_10),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add1~90_cout ),
	.sharein(\Add1~91 ),
	.combout(),
	.sumout(),
	.cout(\Add1~86_cout ),
	.shareout(\Add1~87 ));
defparam \Add1~86 .extended_lut = "off";
defparam \Add1~86 .lut_mask = 64'h000000F00000F00F;
defparam \Add1~86 .shared_arith = "on";

cyclonev_lcell_comb \Add1~82 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!dataa_11),
	.datad(!datab_11),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add1~86_cout ),
	.sharein(\Add1~87 ),
	.combout(),
	.sumout(),
	.cout(\Add1~82_cout ),
	.shareout(\Add1~83 ));
defparam \Add1~82 .extended_lut = "off";
defparam \Add1~82 .lut_mask = 64'h000000F00000F00F;
defparam \Add1~82 .shared_arith = "on";

cyclonev_lcell_comb \Add1~78 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!dataa_12),
	.datad(!datab_12),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add1~82_cout ),
	.sharein(\Add1~83 ),
	.combout(),
	.sumout(),
	.cout(\Add1~78_cout ),
	.shareout(\Add1~79 ));
defparam \Add1~78 .extended_lut = "off";
defparam \Add1~78 .lut_mask = 64'h000000F00000F00F;
defparam \Add1~78 .shared_arith = "on";

cyclonev_lcell_comb \Add1~74 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!dataa_13),
	.datad(!datab_13),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add1~78_cout ),
	.sharein(\Add1~79 ),
	.combout(),
	.sumout(),
	.cout(\Add1~74_cout ),
	.shareout(\Add1~75 ));
defparam \Add1~74 .extended_lut = "off";
defparam \Add1~74 .lut_mask = 64'h000000F00000F00F;
defparam \Add1~74 .shared_arith = "on";

cyclonev_lcell_comb \Add1~70 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!dataa_14),
	.datad(!datab_14),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add1~74_cout ),
	.sharein(\Add1~75 ),
	.combout(),
	.sumout(),
	.cout(\Add1~70_cout ),
	.shareout(\Add1~71 ));
defparam \Add1~70 .extended_lut = "off";
defparam \Add1~70 .lut_mask = 64'h000000F00000F00F;
defparam \Add1~70 .shared_arith = "on";

cyclonev_lcell_comb \Add1~66 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!dataa_15),
	.datad(!datab_15),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add1~70_cout ),
	.sharein(\Add1~71 ),
	.combout(),
	.sumout(),
	.cout(\Add1~66_cout ),
	.shareout(\Add1~67 ));
defparam \Add1~66 .extended_lut = "off";
defparam \Add1~66 .lut_mask = 64'h000000F00000F00F;
defparam \Add1~66 .shared_arith = "on";

cyclonev_lcell_comb \Add1~62 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!dataa_16),
	.datad(!datab_16),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add1~66_cout ),
	.sharein(\Add1~67 ),
	.combout(),
	.sumout(),
	.cout(\Add1~62_cout ),
	.shareout(\Add1~63 ));
defparam \Add1~62 .extended_lut = "off";
defparam \Add1~62 .lut_mask = 64'h000000F00000F00F;
defparam \Add1~62 .shared_arith = "on";

cyclonev_lcell_comb \Add1~58 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!dataa_17),
	.datad(!datab_17),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add1~62_cout ),
	.sharein(\Add1~63 ),
	.combout(),
	.sumout(),
	.cout(\Add1~58_cout ),
	.shareout(\Add1~59 ));
defparam \Add1~58 .extended_lut = "off";
defparam \Add1~58 .lut_mask = 64'h000000F00000F00F;
defparam \Add1~58 .shared_arith = "on";

cyclonev_lcell_comb \Add1~54 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!dataa_18),
	.datad(!datab_18),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add1~58_cout ),
	.sharein(\Add1~59 ),
	.combout(),
	.sumout(),
	.cout(\Add1~54_cout ),
	.shareout(\Add1~55 ));
defparam \Add1~54 .extended_lut = "off";
defparam \Add1~54 .lut_mask = 64'h000000F00000F00F;
defparam \Add1~54 .shared_arith = "on";

cyclonev_lcell_comb \Add1~50 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!dataa_19),
	.datad(!datab_19),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add1~54_cout ),
	.sharein(\Add1~55 ),
	.combout(),
	.sumout(),
	.cout(\Add1~50_cout ),
	.shareout(\Add1~51 ));
defparam \Add1~50 .extended_lut = "off";
defparam \Add1~50 .lut_mask = 64'h000000F00000F00F;
defparam \Add1~50 .shared_arith = "on";

cyclonev_lcell_comb \Add1~46 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!dataa_20),
	.datad(!datab_20),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add1~50_cout ),
	.sharein(\Add1~51 ),
	.combout(),
	.sumout(),
	.cout(\Add1~46_cout ),
	.shareout(\Add1~47 ));
defparam \Add1~46 .extended_lut = "off";
defparam \Add1~46 .lut_mask = 64'h000000F00000F00F;
defparam \Add1~46 .shared_arith = "on";

cyclonev_lcell_comb \Add1~42 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!dataa_21),
	.datad(!datab_21),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add1~46_cout ),
	.sharein(\Add1~47 ),
	.combout(),
	.sumout(),
	.cout(\Add1~42_cout ),
	.shareout(\Add1~43 ));
defparam \Add1~42 .extended_lut = "off";
defparam \Add1~42 .lut_mask = 64'h000000F00000F00F;
defparam \Add1~42 .shared_arith = "on";

cyclonev_lcell_comb \Add1~38 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!dataa_22),
	.datad(!datab_22),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add1~42_cout ),
	.sharein(\Add1~43 ),
	.combout(),
	.sumout(),
	.cout(\Add1~38_cout ),
	.shareout(\Add1~39 ));
defparam \Add1~38 .extended_lut = "off";
defparam \Add1~38 .lut_mask = 64'h000000F00000F00F;
defparam \Add1~38 .shared_arith = "on";

cyclonev_lcell_comb \Add1~34 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!dataa_23),
	.datad(!datab_23),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add1~38_cout ),
	.sharein(\Add1~39 ),
	.combout(),
	.sumout(),
	.cout(\Add1~34_cout ),
	.shareout(\Add1~35 ));
defparam \Add1~34 .extended_lut = "off";
defparam \Add1~34 .lut_mask = 64'h000000F00000F00F;
defparam \Add1~34 .shared_arith = "on";

cyclonev_lcell_comb \Add1~30 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!dataa_24),
	.datad(!datab_24),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add1~34_cout ),
	.sharein(\Add1~35 ),
	.combout(),
	.sumout(),
	.cout(\Add1~30_cout ),
	.shareout(\Add1~31 ));
defparam \Add1~30 .extended_lut = "off";
defparam \Add1~30 .lut_mask = 64'h000000F00000F00F;
defparam \Add1~30 .shared_arith = "on";

cyclonev_lcell_comb \Add1~26 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!dataa_25),
	.datad(!datab_25),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add1~30_cout ),
	.sharein(\Add1~31 ),
	.combout(),
	.sumout(),
	.cout(\Add1~26_cout ),
	.shareout(\Add1~27 ));
defparam \Add1~26 .extended_lut = "off";
defparam \Add1~26 .lut_mask = 64'h000000F00000F00F;
defparam \Add1~26 .shared_arith = "on";

cyclonev_lcell_comb \Add1~22 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!dataa_26),
	.datad(!datab_26),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add1~26_cout ),
	.sharein(\Add1~27 ),
	.combout(),
	.sumout(),
	.cout(\Add1~22_cout ),
	.shareout(\Add1~23 ));
defparam \Add1~22 .extended_lut = "off";
defparam \Add1~22 .lut_mask = 64'h000000F00000F00F;
defparam \Add1~22 .shared_arith = "on";

cyclonev_lcell_comb \Add1~18 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!dataa_27),
	.datad(!datab_27),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add1~22_cout ),
	.sharein(\Add1~23 ),
	.combout(),
	.sumout(),
	.cout(\Add1~18_cout ),
	.shareout(\Add1~19 ));
defparam \Add1~18 .extended_lut = "off";
defparam \Add1~18 .lut_mask = 64'h000000F00000F00F;
defparam \Add1~18 .shared_arith = "on";

cyclonev_lcell_comb \Add1~14 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!dataa_28),
	.datad(!datab_28),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add1~18_cout ),
	.sharein(\Add1~19 ),
	.combout(),
	.sumout(),
	.cout(\Add1~14_cout ),
	.shareout(\Add1~15 ));
defparam \Add1~14 .extended_lut = "off";
defparam \Add1~14 .lut_mask = 64'h000000F00000F00F;
defparam \Add1~14 .shared_arith = "on";

cyclonev_lcell_comb \Add1~10 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!dataa_29),
	.datad(!datab_29),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add1~14_cout ),
	.sharein(\Add1~15 ),
	.combout(),
	.sumout(),
	.cout(\Add1~10_cout ),
	.shareout(\Add1~11 ));
defparam \Add1~10 .extended_lut = "off";
defparam \Add1~10 .lut_mask = 64'h000000F00000F00F;
defparam \Add1~10 .shared_arith = "on";

cyclonev_lcell_comb \Add1~6 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!dataa_30),
	.datad(!datab_30),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add1~10_cout ),
	.sharein(\Add1~11 ),
	.combout(),
	.sumout(),
	.cout(\Add1~6_cout ),
	.shareout(\Add1~7 ));
defparam \Add1~6 .extended_lut = "off";
defparam \Add1~6 .lut_mask = 64'h000000F00000F00F;
defparam \Add1~6 .shared_arith = "on";

cyclonev_lcell_comb \Add0~126 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!dataa_0),
	.datad(!datab_0),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(),
	.cout(\Add0~126_cout ),
	.shareout(\Add0~127 ));
defparam \Add0~126 .extended_lut = "off";
defparam \Add0~126 .lut_mask = 64'h0000FF0F00000FF0;
defparam \Add0~126 .shared_arith = "on";

cyclonev_lcell_comb \Add0~122 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!dataa_1),
	.datad(!datab_1),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add0~126_cout ),
	.sharein(\Add0~127 ),
	.combout(),
	.sumout(),
	.cout(\Add0~122_cout ),
	.shareout(\Add0~123 ));
defparam \Add0~122 .extended_lut = "off";
defparam \Add0~122 .lut_mask = 64'h00000F000000F00F;
defparam \Add0~122 .shared_arith = "on";

cyclonev_lcell_comb \Add0~118 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!dataa_2),
	.datad(!datab_2),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add0~122_cout ),
	.sharein(\Add0~123 ),
	.combout(),
	.sumout(),
	.cout(\Add0~118_cout ),
	.shareout(\Add0~119 ));
defparam \Add0~118 .extended_lut = "off";
defparam \Add0~118 .lut_mask = 64'h00000F000000F00F;
defparam \Add0~118 .shared_arith = "on";

cyclonev_lcell_comb \Add0~114 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!dataa_3),
	.datad(!datab_3),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add0~118_cout ),
	.sharein(\Add0~119 ),
	.combout(),
	.sumout(),
	.cout(\Add0~114_cout ),
	.shareout(\Add0~115 ));
defparam \Add0~114 .extended_lut = "off";
defparam \Add0~114 .lut_mask = 64'h00000F000000F00F;
defparam \Add0~114 .shared_arith = "on";

cyclonev_lcell_comb \Add0~110 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!dataa_4),
	.datad(!datab_4),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add0~114_cout ),
	.sharein(\Add0~115 ),
	.combout(),
	.sumout(),
	.cout(\Add0~110_cout ),
	.shareout(\Add0~111 ));
defparam \Add0~110 .extended_lut = "off";
defparam \Add0~110 .lut_mask = 64'h00000F000000F00F;
defparam \Add0~110 .shared_arith = "on";

cyclonev_lcell_comb \Add0~106 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!dataa_5),
	.datad(!datab_5),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add0~110_cout ),
	.sharein(\Add0~111 ),
	.combout(),
	.sumout(),
	.cout(\Add0~106_cout ),
	.shareout(\Add0~107 ));
defparam \Add0~106 .extended_lut = "off";
defparam \Add0~106 .lut_mask = 64'h00000F000000F00F;
defparam \Add0~106 .shared_arith = "on";

cyclonev_lcell_comb \Add0~102 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!dataa_6),
	.datad(!datab_6),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add0~106_cout ),
	.sharein(\Add0~107 ),
	.combout(),
	.sumout(),
	.cout(\Add0~102_cout ),
	.shareout(\Add0~103 ));
defparam \Add0~102 .extended_lut = "off";
defparam \Add0~102 .lut_mask = 64'h00000F000000F00F;
defparam \Add0~102 .shared_arith = "on";

cyclonev_lcell_comb \Add0~98 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!dataa_7),
	.datad(!datab_7),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add0~102_cout ),
	.sharein(\Add0~103 ),
	.combout(),
	.sumout(),
	.cout(\Add0~98_cout ),
	.shareout(\Add0~99 ));
defparam \Add0~98 .extended_lut = "off";
defparam \Add0~98 .lut_mask = 64'h00000F000000F00F;
defparam \Add0~98 .shared_arith = "on";

cyclonev_lcell_comb \Add0~94 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!dataa_8),
	.datad(!datab_8),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add0~98_cout ),
	.sharein(\Add0~99 ),
	.combout(),
	.sumout(),
	.cout(\Add0~94_cout ),
	.shareout(\Add0~95 ));
defparam \Add0~94 .extended_lut = "off";
defparam \Add0~94 .lut_mask = 64'h00000F000000F00F;
defparam \Add0~94 .shared_arith = "on";

cyclonev_lcell_comb \Add0~90 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!dataa_9),
	.datad(!datab_9),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add0~94_cout ),
	.sharein(\Add0~95 ),
	.combout(),
	.sumout(),
	.cout(\Add0~90_cout ),
	.shareout(\Add0~91 ));
defparam \Add0~90 .extended_lut = "off";
defparam \Add0~90 .lut_mask = 64'h00000F000000F00F;
defparam \Add0~90 .shared_arith = "on";

cyclonev_lcell_comb \Add0~86 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!dataa_10),
	.datad(!datab_10),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add0~90_cout ),
	.sharein(\Add0~91 ),
	.combout(),
	.sumout(),
	.cout(\Add0~86_cout ),
	.shareout(\Add0~87 ));
defparam \Add0~86 .extended_lut = "off";
defparam \Add0~86 .lut_mask = 64'h00000F000000F00F;
defparam \Add0~86 .shared_arith = "on";

cyclonev_lcell_comb \Add0~82 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!dataa_11),
	.datad(!datab_11),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add0~86_cout ),
	.sharein(\Add0~87 ),
	.combout(),
	.sumout(),
	.cout(\Add0~82_cout ),
	.shareout(\Add0~83 ));
defparam \Add0~82 .extended_lut = "off";
defparam \Add0~82 .lut_mask = 64'h00000F000000F00F;
defparam \Add0~82 .shared_arith = "on";

cyclonev_lcell_comb \Add0~78 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!dataa_12),
	.datad(!datab_12),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add0~82_cout ),
	.sharein(\Add0~83 ),
	.combout(),
	.sumout(),
	.cout(\Add0~78_cout ),
	.shareout(\Add0~79 ));
defparam \Add0~78 .extended_lut = "off";
defparam \Add0~78 .lut_mask = 64'h00000F000000F00F;
defparam \Add0~78 .shared_arith = "on";

cyclonev_lcell_comb \Add0~74 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!dataa_13),
	.datad(!datab_13),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add0~78_cout ),
	.sharein(\Add0~79 ),
	.combout(),
	.sumout(),
	.cout(\Add0~74_cout ),
	.shareout(\Add0~75 ));
defparam \Add0~74 .extended_lut = "off";
defparam \Add0~74 .lut_mask = 64'h00000F000000F00F;
defparam \Add0~74 .shared_arith = "on";

cyclonev_lcell_comb \Add0~70 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!dataa_14),
	.datad(!datab_14),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add0~74_cout ),
	.sharein(\Add0~75 ),
	.combout(),
	.sumout(),
	.cout(\Add0~70_cout ),
	.shareout(\Add0~71 ));
defparam \Add0~70 .extended_lut = "off";
defparam \Add0~70 .lut_mask = 64'h00000F000000F00F;
defparam \Add0~70 .shared_arith = "on";

cyclonev_lcell_comb \Add0~66 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!dataa_15),
	.datad(!datab_15),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add0~70_cout ),
	.sharein(\Add0~71 ),
	.combout(),
	.sumout(),
	.cout(\Add0~66_cout ),
	.shareout(\Add0~67 ));
defparam \Add0~66 .extended_lut = "off";
defparam \Add0~66 .lut_mask = 64'h00000F000000F00F;
defparam \Add0~66 .shared_arith = "on";

cyclonev_lcell_comb \Add0~62 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!dataa_16),
	.datad(!datab_16),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add0~66_cout ),
	.sharein(\Add0~67 ),
	.combout(),
	.sumout(),
	.cout(\Add0~62_cout ),
	.shareout(\Add0~63 ));
defparam \Add0~62 .extended_lut = "off";
defparam \Add0~62 .lut_mask = 64'h00000F000000F00F;
defparam \Add0~62 .shared_arith = "on";

cyclonev_lcell_comb \Add0~58 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!dataa_17),
	.datad(!datab_17),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add0~62_cout ),
	.sharein(\Add0~63 ),
	.combout(),
	.sumout(),
	.cout(\Add0~58_cout ),
	.shareout(\Add0~59 ));
defparam \Add0~58 .extended_lut = "off";
defparam \Add0~58 .lut_mask = 64'h00000F000000F00F;
defparam \Add0~58 .shared_arith = "on";

cyclonev_lcell_comb \Add0~54 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!dataa_18),
	.datad(!datab_18),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add0~58_cout ),
	.sharein(\Add0~59 ),
	.combout(),
	.sumout(),
	.cout(\Add0~54_cout ),
	.shareout(\Add0~55 ));
defparam \Add0~54 .extended_lut = "off";
defparam \Add0~54 .lut_mask = 64'h00000F000000F00F;
defparam \Add0~54 .shared_arith = "on";

cyclonev_lcell_comb \Add0~50 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!dataa_19),
	.datad(!datab_19),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add0~54_cout ),
	.sharein(\Add0~55 ),
	.combout(),
	.sumout(),
	.cout(\Add0~50_cout ),
	.shareout(\Add0~51 ));
defparam \Add0~50 .extended_lut = "off";
defparam \Add0~50 .lut_mask = 64'h00000F000000F00F;
defparam \Add0~50 .shared_arith = "on";

cyclonev_lcell_comb \Add0~46 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!dataa_20),
	.datad(!datab_20),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add0~50_cout ),
	.sharein(\Add0~51 ),
	.combout(),
	.sumout(),
	.cout(\Add0~46_cout ),
	.shareout(\Add0~47 ));
defparam \Add0~46 .extended_lut = "off";
defparam \Add0~46 .lut_mask = 64'h00000F000000F00F;
defparam \Add0~46 .shared_arith = "on";

cyclonev_lcell_comb \Add0~42 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!dataa_21),
	.datad(!datab_21),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add0~46_cout ),
	.sharein(\Add0~47 ),
	.combout(),
	.sumout(),
	.cout(\Add0~42_cout ),
	.shareout(\Add0~43 ));
defparam \Add0~42 .extended_lut = "off";
defparam \Add0~42 .lut_mask = 64'h00000F000000F00F;
defparam \Add0~42 .shared_arith = "on";

cyclonev_lcell_comb \Add0~38 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!dataa_22),
	.datad(!datab_22),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add0~42_cout ),
	.sharein(\Add0~43 ),
	.combout(),
	.sumout(),
	.cout(\Add0~38_cout ),
	.shareout(\Add0~39 ));
defparam \Add0~38 .extended_lut = "off";
defparam \Add0~38 .lut_mask = 64'h00000F000000F00F;
defparam \Add0~38 .shared_arith = "on";

cyclonev_lcell_comb \Add0~34 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!dataa_23),
	.datad(!datab_23),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add0~38_cout ),
	.sharein(\Add0~39 ),
	.combout(),
	.sumout(),
	.cout(\Add0~34_cout ),
	.shareout(\Add0~35 ));
defparam \Add0~34 .extended_lut = "off";
defparam \Add0~34 .lut_mask = 64'h00000F000000F00F;
defparam \Add0~34 .shared_arith = "on";

cyclonev_lcell_comb \Add0~30 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!dataa_24),
	.datad(!datab_24),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add0~34_cout ),
	.sharein(\Add0~35 ),
	.combout(),
	.sumout(),
	.cout(\Add0~30_cout ),
	.shareout(\Add0~31 ));
defparam \Add0~30 .extended_lut = "off";
defparam \Add0~30 .lut_mask = 64'h00000F000000F00F;
defparam \Add0~30 .shared_arith = "on";

cyclonev_lcell_comb \Add0~26 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!dataa_25),
	.datad(!datab_25),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add0~30_cout ),
	.sharein(\Add0~31 ),
	.combout(),
	.sumout(),
	.cout(\Add0~26_cout ),
	.shareout(\Add0~27 ));
defparam \Add0~26 .extended_lut = "off";
defparam \Add0~26 .lut_mask = 64'h00000F000000F00F;
defparam \Add0~26 .shared_arith = "on";

cyclonev_lcell_comb \Add0~22 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!dataa_26),
	.datad(!datab_26),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add0~26_cout ),
	.sharein(\Add0~27 ),
	.combout(),
	.sumout(),
	.cout(\Add0~22_cout ),
	.shareout(\Add0~23 ));
defparam \Add0~22 .extended_lut = "off";
defparam \Add0~22 .lut_mask = 64'h00000F000000F00F;
defparam \Add0~22 .shared_arith = "on";

cyclonev_lcell_comb \Add0~18 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!dataa_27),
	.datad(!datab_27),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add0~22_cout ),
	.sharein(\Add0~23 ),
	.combout(),
	.sumout(),
	.cout(\Add0~18_cout ),
	.shareout(\Add0~19 ));
defparam \Add0~18 .extended_lut = "off";
defparam \Add0~18 .lut_mask = 64'h00000F000000F00F;
defparam \Add0~18 .shared_arith = "on";

cyclonev_lcell_comb \Add0~14 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!dataa_28),
	.datad(!datab_28),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add0~18_cout ),
	.sharein(\Add0~19 ),
	.combout(),
	.sumout(),
	.cout(\Add0~14_cout ),
	.shareout(\Add0~15 ));
defparam \Add0~14 .extended_lut = "off";
defparam \Add0~14 .lut_mask = 64'h00000F000000F00F;
defparam \Add0~14 .shared_arith = "on";

cyclonev_lcell_comb \Add0~10 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!dataa_29),
	.datad(!datab_29),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add0~14_cout ),
	.sharein(\Add0~15 ),
	.combout(),
	.sumout(),
	.cout(\Add0~10_cout ),
	.shareout(\Add0~11 ));
defparam \Add0~10 .extended_lut = "off";
defparam \Add0~10 .lut_mask = 64'h00000F000000F00F;
defparam \Add0~10 .shared_arith = "on";

cyclonev_lcell_comb \Add0~6 (
	.dataa(gnd),
	.datab(gnd),
	.datac(!dataa_30),
	.datad(!datab_30),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add0~10_cout ),
	.sharein(\Add0~11 ),
	.combout(),
	.sumout(),
	.cout(\Add0~6_cout ),
	.shareout(\Add0~7 ));
defparam \Add0~6 .extended_lut = "off";
defparam \Add0~6 .lut_mask = 64'h00000F000000F00F;
defparam \Add0~6 .shared_arith = "on";

cyclonev_lcell_comb \Equal1~0 (
	.dataa(!datab_18),
	.datab(!datab_19),
	.datac(!datab_20),
	.datad(!datab_21),
	.datae(!datab_22),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\Equal1~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \Equal1~0 .extended_lut = "off";
defparam \Equal1~0 .lut_mask = 64'h8000000080000000;
defparam \Equal1~0 .shared_arith = "off";

cyclonev_lcell_comb \Equal1~1 (
	.dataa(!datab_12),
	.datab(!datab_13),
	.datac(!datab_14),
	.datad(!datab_15),
	.datae(!datab_16),
	.dataf(!datab_17),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\Equal1~1_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \Equal1~1 .extended_lut = "off";
defparam \Equal1~1 .lut_mask = 64'h8000000000000000;
defparam \Equal1~1 .shared_arith = "off";

cyclonev_lcell_comb \Equal1~2 (
	.dataa(!datab_0),
	.datab(!datab_1),
	.datac(!datab_2),
	.datad(!datab_3),
	.datae(!datab_4),
	.dataf(!datab_5),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\Equal1~2_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \Equal1~2 .extended_lut = "off";
defparam \Equal1~2 .lut_mask = 64'h8000000000000000;
defparam \Equal1~2 .shared_arith = "off";

cyclonev_lcell_comb \Equal1~3 (
	.dataa(!datab_6),
	.datab(!datab_7),
	.datac(!datab_8),
	.datad(!datab_9),
	.datae(!datab_10),
	.dataf(!datab_11),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\Equal1~3_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \Equal1~3 .extended_lut = "off";
defparam \Equal1~3 .lut_mask = 64'h8000000000000000;
defparam \Equal1~3 .shared_arith = "off";

cyclonev_lcell_comb \exc_N_uid35_fpCompareFusedTest_q[0]~0 (
	.dataa(!datab_23),
	.datab(!datab_24),
	.datac(!datab_25),
	.datad(!datab_26),
	.datae(!datab_27),
	.dataf(!datab_28),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\exc_N_uid35_fpCompareFusedTest_q[0]~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \exc_N_uid35_fpCompareFusedTest_q[0]~0 .extended_lut = "off";
defparam \exc_N_uid35_fpCompareFusedTest_q[0]~0 .lut_mask = 64'h0000000000000001;
defparam \exc_N_uid35_fpCompareFusedTest_q[0]~0 .shared_arith = "off";

cyclonev_lcell_comb \exc_N_uid35_fpCompareFusedTest_q[0]~1 (
	.dataa(!datab_29),
	.datab(!datab_30),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\exc_N_uid35_fpCompareFusedTest_q[0]~1_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \exc_N_uid35_fpCompareFusedTest_q[0]~1 .extended_lut = "off";
defparam \exc_N_uid35_fpCompareFusedTest_q[0]~1 .lut_mask = 64'h1111111111111111;
defparam \exc_N_uid35_fpCompareFusedTest_q[0]~1 .shared_arith = "off";

cyclonev_lcell_comb \Equal3~0 (
	.dataa(!dataa_18),
	.datab(!dataa_19),
	.datac(!dataa_20),
	.datad(!dataa_21),
	.datae(!dataa_22),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\Equal3~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \Equal3~0 .extended_lut = "off";
defparam \Equal3~0 .lut_mask = 64'h8000000080000000;
defparam \Equal3~0 .shared_arith = "off";

cyclonev_lcell_comb \Equal3~1 (
	.dataa(!dataa_12),
	.datab(!dataa_13),
	.datac(!dataa_14),
	.datad(!dataa_15),
	.datae(!dataa_16),
	.dataf(!dataa_17),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\Equal3~1_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \Equal3~1 .extended_lut = "off";
defparam \Equal3~1 .lut_mask = 64'h8000000000000000;
defparam \Equal3~1 .shared_arith = "off";

cyclonev_lcell_comb \Equal3~2 (
	.dataa(!dataa_0),
	.datab(!dataa_1),
	.datac(!dataa_2),
	.datad(!dataa_3),
	.datae(!dataa_4),
	.dataf(!dataa_5),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\Equal3~2_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \Equal3~2 .extended_lut = "off";
defparam \Equal3~2 .lut_mask = 64'h8000000000000000;
defparam \Equal3~2 .shared_arith = "off";

cyclonev_lcell_comb \Equal3~3 (
	.dataa(!dataa_6),
	.datab(!dataa_7),
	.datac(!dataa_8),
	.datad(!dataa_9),
	.datae(!dataa_10),
	.dataf(!dataa_11),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\Equal3~3_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \Equal3~3 .extended_lut = "off";
defparam \Equal3~3 .lut_mask = 64'h8000000000000000;
defparam \Equal3~3 .shared_arith = "off";

cyclonev_lcell_comb \exc_N_uid18_fpCompareFusedTest_q[0]~0 (
	.dataa(!dataa_23),
	.datab(!dataa_24),
	.datac(!dataa_25),
	.datad(!dataa_26),
	.datae(!dataa_27),
	.dataf(!dataa_28),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\exc_N_uid18_fpCompareFusedTest_q[0]~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \exc_N_uid18_fpCompareFusedTest_q[0]~0 .extended_lut = "off";
defparam \exc_N_uid18_fpCompareFusedTest_q[0]~0 .lut_mask = 64'h0000000000000001;
defparam \exc_N_uid18_fpCompareFusedTest_q[0]~0 .shared_arith = "off";

cyclonev_lcell_comb \exc_N_uid18_fpCompareFusedTest_q[0]~1 (
	.dataa(!dataa_29),
	.datab(!dataa_30),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\exc_N_uid18_fpCompareFusedTest_q[0]~1_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \exc_N_uid18_fpCompareFusedTest_q[0]~1 .extended_lut = "off";
defparam \exc_N_uid18_fpCompareFusedTest_q[0]~1 .lut_mask = 64'h1111111111111111;
defparam \exc_N_uid18_fpCompareFusedTest_q[0]~1 .shared_arith = "off";

cyclonev_lcell_comb \Equal1~4 (
	.dataa(!\Equal1~0_combout ),
	.datab(!\Equal1~1_combout ),
	.datac(!\Equal1~2_combout ),
	.datad(!\Equal1~3_combout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\Equal1~4_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \Equal1~4 .extended_lut = "off";
defparam \Equal1~4 .lut_mask = 64'h0001000100010001;
defparam \Equal1~4 .shared_arith = "off";

cyclonev_lcell_comb \Equal3~4 (
	.dataa(!\Equal3~0_combout ),
	.datab(!\Equal3~1_combout ),
	.datac(!\Equal3~2_combout ),
	.datad(!\Equal3~3_combout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\Equal3~4_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \Equal3~4 .extended_lut = "off";
defparam \Equal3~4 .lut_mask = 64'h0001000100010001;
defparam \Equal3~4 .shared_arith = "off";

cyclonev_lcell_comb \rLT_uid68_fpCompareFusedTest_q[0]~0 (
	.dataa(!datab_27),
	.datab(!datab_28),
	.datac(!datab_29),
	.datad(!datab_30),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\rLT_uid68_fpCompareFusedTest_q[0]~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \rLT_uid68_fpCompareFusedTest_q[0]~0 .extended_lut = "off";
defparam \rLT_uid68_fpCompareFusedTest_q[0]~0 .lut_mask = 64'h8000800080008000;
defparam \rLT_uid68_fpCompareFusedTest_q[0]~0 .shared_arith = "off";

cyclonev_lcell_comb \rLT_uid68_fpCompareFusedTest_q[0]~1 (
	.dataa(!dataa_23),
	.datab(!dataa_24),
	.datac(!dataa_25),
	.datad(!dataa_26),
	.datae(!dataa_27),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\rLT_uid68_fpCompareFusedTest_q[0]~1_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \rLT_uid68_fpCompareFusedTest_q[0]~1 .extended_lut = "off";
defparam \rLT_uid68_fpCompareFusedTest_q[0]~1 .lut_mask = 64'h8000000080000000;
defparam \rLT_uid68_fpCompareFusedTest_q[0]~1 .shared_arith = "off";

cyclonev_lcell_comb \rLT_uid68_fpCompareFusedTest_q[0]~2 (
	.dataa(!datab_23),
	.datab(!datab_24),
	.datac(!datab_25),
	.datad(!dataa_29),
	.datae(!dataa_30),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\rLT_uid68_fpCompareFusedTest_q[0]~2_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \rLT_uid68_fpCompareFusedTest_q[0]~2 .extended_lut = "off";
defparam \rLT_uid68_fpCompareFusedTest_q[0]~2 .lut_mask = 64'h8000000080000000;
defparam \rLT_uid68_fpCompareFusedTest_q[0]~2 .shared_arith = "off";

cyclonev_lcell_comb \rLT_uid68_fpCompareFusedTest_q[0]~3 (
	.dataa(!datab_26),
	.datab(!dataa_28),
	.datac(!\rLT_uid68_fpCompareFusedTest_q[0]~0_combout ),
	.datad(!\rLT_uid68_fpCompareFusedTest_q[0]~1_combout ),
	.datae(!\rLT_uid68_fpCompareFusedTest_q[0]~2_combout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\rLT_uid68_fpCompareFusedTest_q[0]~3_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \rLT_uid68_fpCompareFusedTest_q[0]~3 .extended_lut = "off";
defparam \rLT_uid68_fpCompareFusedTest_q[0]~3 .lut_mask = 64'h0000000800000008;
defparam \rLT_uid68_fpCompareFusedTest_q[0]~3 .shared_arith = "off";

cyclonev_lcell_comb \Equal0~0 (
	.dataa(!datab_14),
	.datab(!datab_15),
	.datac(!datab_16),
	.datad(!dataa_14),
	.datae(!dataa_15),
	.dataf(!dataa_16),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\Equal0~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \Equal0~0 .extended_lut = "off";
defparam \Equal0~0 .lut_mask = 64'h8040201008040201;
defparam \Equal0~0 .shared_arith = "off";

cyclonev_lcell_comb \Equal0~1 (
	.dataa(!datab_11),
	.datab(!datab_12),
	.datac(!datab_13),
	.datad(!dataa_11),
	.datae(!dataa_12),
	.dataf(!dataa_13),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\Equal0~1_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \Equal0~1 .extended_lut = "off";
defparam \Equal0~1 .lut_mask = 64'h8040201008040201;
defparam \Equal0~1 .shared_arith = "off";

cyclonev_lcell_comb \Equal0~2 (
	.dataa(!datab_8),
	.datab(!datab_9),
	.datac(!datab_10),
	.datad(!dataa_8),
	.datae(!dataa_9),
	.dataf(!dataa_10),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\Equal0~2_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \Equal0~2 .extended_lut = "off";
defparam \Equal0~2 .lut_mask = 64'h8040201008040201;
defparam \Equal0~2 .shared_arith = "off";

cyclonev_lcell_comb \Equal0~3 (
	.dataa(!datab_5),
	.datab(!datab_6),
	.datac(!datab_7),
	.datad(!dataa_5),
	.datae(!dataa_6),
	.dataf(!dataa_7),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\Equal0~3_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \Equal0~3 .extended_lut = "off";
defparam \Equal0~3 .lut_mask = 64'h8040201008040201;
defparam \Equal0~3 .shared_arith = "off";

cyclonev_lcell_comb \Equal0~4 (
	.dataa(!dataa_0),
	.datab(!datab_0),
	.datac(!datab_1),
	.datad(!dataa_1),
	.datae(!dataa_31),
	.dataf(!datab_31),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\Equal0~4_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \Equal0~4 .extended_lut = "off";
defparam \Equal0~4 .lut_mask = 64'h9009000000009009;
defparam \Equal0~4 .shared_arith = "off";

cyclonev_lcell_comb \Equal0~5 (
	.dataa(!datab_2),
	.datab(!datab_3),
	.datac(!datab_4),
	.datad(!dataa_2),
	.datae(!dataa_3),
	.dataf(!dataa_4),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\Equal0~5_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \Equal0~5 .extended_lut = "off";
defparam \Equal0~5 .lut_mask = 64'h8040201008040201;
defparam \Equal0~5 .shared_arith = "off";

cyclonev_lcell_comb \Equal0~6 (
	.dataa(!\Equal0~1_combout ),
	.datab(!\Equal0~2_combout ),
	.datac(!\Equal0~3_combout ),
	.datad(!\Equal0~4_combout ),
	.datae(!\Equal0~5_combout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\Equal0~6_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \Equal0~6 .extended_lut = "off";
defparam \Equal0~6 .lut_mask = 64'h0000000100000001;
defparam \Equal0~6 .shared_arith = "off";

cyclonev_lcell_comb \Equal0~7 (
	.dataa(!datab_29),
	.datab(!datab_30),
	.datac(!dataa_29),
	.datad(!dataa_30),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\Equal0~7_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \Equal0~7 .extended_lut = "off";
defparam \Equal0~7 .lut_mask = 64'h8421842184218421;
defparam \Equal0~7 .shared_arith = "off";

cyclonev_lcell_comb \Equal0~8 (
	.dataa(!datab_26),
	.datab(!datab_27),
	.datac(!datab_28),
	.datad(!dataa_26),
	.datae(!dataa_27),
	.dataf(!dataa_28),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\Equal0~8_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \Equal0~8 .extended_lut = "off";
defparam \Equal0~8 .lut_mask = 64'h8040201008040201;
defparam \Equal0~8 .shared_arith = "off";

cyclonev_lcell_comb \Equal0~9 (
	.dataa(!datab_23),
	.datab(!datab_24),
	.datac(!datab_25),
	.datad(!dataa_23),
	.datae(!dataa_24),
	.dataf(!dataa_25),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\Equal0~9_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \Equal0~9 .extended_lut = "off";
defparam \Equal0~9 .lut_mask = 64'h8040201008040201;
defparam \Equal0~9 .shared_arith = "off";

cyclonev_lcell_comb \Equal0~10 (
	.dataa(!datab_17),
	.datab(!datab_18),
	.datac(!datab_19),
	.datad(!dataa_17),
	.datae(!dataa_18),
	.dataf(!dataa_19),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\Equal0~10_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \Equal0~10 .extended_lut = "off";
defparam \Equal0~10 .lut_mask = 64'h8040201008040201;
defparam \Equal0~10 .shared_arith = "off";

cyclonev_lcell_comb \Equal0~11 (
	.dataa(!datab_20),
	.datab(!datab_21),
	.datac(!datab_22),
	.datad(!dataa_20),
	.datae(!dataa_21),
	.dataf(!dataa_22),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\Equal0~11_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \Equal0~11 .extended_lut = "off";
defparam \Equal0~11 .lut_mask = 64'h8040201008040201;
defparam \Equal0~11 .shared_arith = "off";

cyclonev_lcell_comb \Equal0~12 (
	.dataa(!\Equal0~7_combout ),
	.datab(!\Equal0~8_combout ),
	.datac(!\Equal0~9_combout ),
	.datad(!\Equal0~10_combout ),
	.datae(!\Equal0~11_combout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\Equal0~12_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \Equal0~12 .extended_lut = "off";
defparam \Equal0~12 .lut_mask = 64'h0000000100000001;
defparam \Equal0~12 .shared_arith = "off";

cyclonev_lcell_comb \rLT_uid68_fpCompareFusedTest_q[0]~5 (
	.dataa(!dataa_31),
	.datab(!Add1),
	.datac(!datab_31),
	.datad(!Add0),
	.datae(!rLT_uid68_fpCompareFusedTest_q_0),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\rLT_uid68_fpCompareFusedTest_q[0]~5_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \rLT_uid68_fpCompareFusedTest_q[0]~5 .extended_lut = "off";
defparam \rLT_uid68_fpCompareFusedTest_q[0]~5 .lut_mask = 64'h51F101A151F101A1;
defparam \rLT_uid68_fpCompareFusedTest_q[0]~5 .shared_arith = "off";

cyclonev_lcell_comb \rLE_uid71_fpCompareFusedTest_q[0] (
	.dataa(!dataa_31),
	.datab(!Add1),
	.datac(!datab_31),
	.datad(!Add0),
	.datae(!rLT_uid68_fpCompareFusedTest_q_0),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\rLE_uid71_fpCompareFusedTest_q[0]~combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \rLE_uid71_fpCompareFusedTest_q[0] .extended_lut = "off";
defparam \rLE_uid71_fpCompareFusedTest_q[0] .lut_mask = 64'h2A2F00002A2F0000;
defparam \rLE_uid71_fpCompareFusedTest_q[0] .shared_arith = "off";

cyclonev_lcell_comb \GE_uid79_fpCompareFusedTest_q[0] (
	.dataa(!dataa_31),
	.datab(!Add1),
	.datac(!datab_31),
	.datad(!Add0),
	.datae(!rLT_uid68_fpCompareFusedTest_q_0),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\GE_uid79_fpCompareFusedTest_q[0]~combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \GE_uid79_fpCompareFusedTest_q[0] .extended_lut = "off";
defparam \GE_uid79_fpCompareFusedTest_q[0] .lut_mask = 64'h51F1000051F10000;
defparam \GE_uid79_fpCompareFusedTest_q[0] .shared_arith = "off";

endmodule

module FP_MULT_FPMinMaxFused (
	Add1,
	exc_N_uid35_fpCompareFusedTest_q_0,
	exc_N_uid18_fpCompareFusedTest_q_0,
	Equal0,
	d0Mux_uid62_fpMinMaxFusedTest_q_0,
	oneNaNOutput_uid44_fpMinMaxFusedTest_q_23,
	oneNaNOutput_uid44_fpMinMaxFusedTest_q_24,
	oneNaNOutput_uid44_fpMinMaxFusedTest_q_25,
	oneNaNOutput_uid44_fpMinMaxFusedTest_q_26,
	oneNaNOutput_uid44_fpMinMaxFusedTest_q_27,
	oneNaNOutput_uid44_fpMinMaxFusedTest_q_28,
	oneNaNOutput_uid44_fpMinMaxFusedTest_q_29,
	oneNaNOutput_uid44_fpMinMaxFusedTest_q_30,
	datab_23,
	datab_24,
	datab_25,
	datab_26,
	datab_27,
	datab_28,
	datab_29,
	datab_30,
	dataa_23,
	dataa_24,
	dataa_25,
	dataa_26,
	dataa_27,
	dataa_28,
	dataa_29,
	dataa_30,
	dataa_31,
	datab_31)/* synthesis synthesis_greybox=0 */;
input 	Add1;
input 	exc_N_uid35_fpCompareFusedTest_q_0;
input 	exc_N_uid18_fpCompareFusedTest_q_0;
input 	Equal0;
output 	d0Mux_uid62_fpMinMaxFusedTest_q_0;
output 	oneNaNOutput_uid44_fpMinMaxFusedTest_q_23;
output 	oneNaNOutput_uid44_fpMinMaxFusedTest_q_24;
output 	oneNaNOutput_uid44_fpMinMaxFusedTest_q_25;
output 	oneNaNOutput_uid44_fpMinMaxFusedTest_q_26;
output 	oneNaNOutput_uid44_fpMinMaxFusedTest_q_27;
output 	oneNaNOutput_uid44_fpMinMaxFusedTest_q_28;
output 	oneNaNOutput_uid44_fpMinMaxFusedTest_q_29;
output 	oneNaNOutput_uid44_fpMinMaxFusedTest_q_30;
input 	datab_23;
input 	datab_24;
input 	datab_25;
input 	datab_26;
input 	datab_27;
input 	datab_28;
input 	datab_29;
input 	datab_30;
input 	dataa_23;
input 	dataa_24;
input 	dataa_25;
input 	dataa_26;
input 	dataa_27;
input 	dataa_28;
input 	dataa_29;
input 	dataa_30;
input 	dataa_31;
input 	datab_31;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



cyclonev_lcell_comb \d0Mux_uid62_fpMinMaxFusedTest_q[0]~0 (
	.dataa(!dataa_31),
	.datab(!Add1),
	.datac(!datab_31),
	.datad(!Equal0),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(d0Mux_uid62_fpMinMaxFusedTest_q_0),
	.sumout(),
	.cout(),
	.shareout());
defparam \d0Mux_uid62_fpMinMaxFusedTest_q[0]~0 .extended_lut = "off";
defparam \d0Mux_uid62_fpMinMaxFusedTest_q[0]~0 .lut_mask = 64'h2ED12ED12ED12ED1;
defparam \d0Mux_uid62_fpMinMaxFusedTest_q[0]~0 .shared_arith = "off";

cyclonev_lcell_comb \oneNaNOutput_uid44_fpMinMaxFusedTest_q[23] (
	.dataa(!datab_23),
	.datab(!dataa_23),
	.datac(!exc_N_uid35_fpCompareFusedTest_q_0),
	.datad(!exc_N_uid18_fpCompareFusedTest_q_0),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(oneNaNOutput_uid44_fpMinMaxFusedTest_q_23),
	.sumout(),
	.cout(),
	.shareout());
defparam \oneNaNOutput_uid44_fpMinMaxFusedTest_q[23] .extended_lut = "off";
defparam \oneNaNOutput_uid44_fpMinMaxFusedTest_q[23] .lut_mask = 64'h7350735073507350;
defparam \oneNaNOutput_uid44_fpMinMaxFusedTest_q[23] .shared_arith = "off";

cyclonev_lcell_comb \oneNaNOutput_uid44_fpMinMaxFusedTest_q[24] (
	.dataa(!datab_24),
	.datab(!dataa_24),
	.datac(!exc_N_uid35_fpCompareFusedTest_q_0),
	.datad(!exc_N_uid18_fpCompareFusedTest_q_0),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(oneNaNOutput_uid44_fpMinMaxFusedTest_q_24),
	.sumout(),
	.cout(),
	.shareout());
defparam \oneNaNOutput_uid44_fpMinMaxFusedTest_q[24] .extended_lut = "off";
defparam \oneNaNOutput_uid44_fpMinMaxFusedTest_q[24] .lut_mask = 64'h7350735073507350;
defparam \oneNaNOutput_uid44_fpMinMaxFusedTest_q[24] .shared_arith = "off";

cyclonev_lcell_comb \oneNaNOutput_uid44_fpMinMaxFusedTest_q[25] (
	.dataa(!datab_25),
	.datab(!dataa_25),
	.datac(!exc_N_uid35_fpCompareFusedTest_q_0),
	.datad(!exc_N_uid18_fpCompareFusedTest_q_0),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(oneNaNOutput_uid44_fpMinMaxFusedTest_q_25),
	.sumout(),
	.cout(),
	.shareout());
defparam \oneNaNOutput_uid44_fpMinMaxFusedTest_q[25] .extended_lut = "off";
defparam \oneNaNOutput_uid44_fpMinMaxFusedTest_q[25] .lut_mask = 64'h7350735073507350;
defparam \oneNaNOutput_uid44_fpMinMaxFusedTest_q[25] .shared_arith = "off";

cyclonev_lcell_comb \oneNaNOutput_uid44_fpMinMaxFusedTest_q[26] (
	.dataa(!datab_26),
	.datab(!dataa_26),
	.datac(!exc_N_uid35_fpCompareFusedTest_q_0),
	.datad(!exc_N_uid18_fpCompareFusedTest_q_0),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(oneNaNOutput_uid44_fpMinMaxFusedTest_q_26),
	.sumout(),
	.cout(),
	.shareout());
defparam \oneNaNOutput_uid44_fpMinMaxFusedTest_q[26] .extended_lut = "off";
defparam \oneNaNOutput_uid44_fpMinMaxFusedTest_q[26] .lut_mask = 64'h7350735073507350;
defparam \oneNaNOutput_uid44_fpMinMaxFusedTest_q[26] .shared_arith = "off";

cyclonev_lcell_comb \oneNaNOutput_uid44_fpMinMaxFusedTest_q[27] (
	.dataa(!datab_27),
	.datab(!dataa_27),
	.datac(!exc_N_uid35_fpCompareFusedTest_q_0),
	.datad(!exc_N_uid18_fpCompareFusedTest_q_0),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(oneNaNOutput_uid44_fpMinMaxFusedTest_q_27),
	.sumout(),
	.cout(),
	.shareout());
defparam \oneNaNOutput_uid44_fpMinMaxFusedTest_q[27] .extended_lut = "off";
defparam \oneNaNOutput_uid44_fpMinMaxFusedTest_q[27] .lut_mask = 64'h7350735073507350;
defparam \oneNaNOutput_uid44_fpMinMaxFusedTest_q[27] .shared_arith = "off";

cyclonev_lcell_comb \oneNaNOutput_uid44_fpMinMaxFusedTest_q[28] (
	.dataa(!datab_28),
	.datab(!dataa_28),
	.datac(!exc_N_uid35_fpCompareFusedTest_q_0),
	.datad(!exc_N_uid18_fpCompareFusedTest_q_0),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(oneNaNOutput_uid44_fpMinMaxFusedTest_q_28),
	.sumout(),
	.cout(),
	.shareout());
defparam \oneNaNOutput_uid44_fpMinMaxFusedTest_q[28] .extended_lut = "off";
defparam \oneNaNOutput_uid44_fpMinMaxFusedTest_q[28] .lut_mask = 64'h7350735073507350;
defparam \oneNaNOutput_uid44_fpMinMaxFusedTest_q[28] .shared_arith = "off";

cyclonev_lcell_comb \oneNaNOutput_uid44_fpMinMaxFusedTest_q[29] (
	.dataa(!datab_29),
	.datab(!dataa_29),
	.datac(!exc_N_uid35_fpCompareFusedTest_q_0),
	.datad(!exc_N_uid18_fpCompareFusedTest_q_0),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(oneNaNOutput_uid44_fpMinMaxFusedTest_q_29),
	.sumout(),
	.cout(),
	.shareout());
defparam \oneNaNOutput_uid44_fpMinMaxFusedTest_q[29] .extended_lut = "off";
defparam \oneNaNOutput_uid44_fpMinMaxFusedTest_q[29] .lut_mask = 64'h7350735073507350;
defparam \oneNaNOutput_uid44_fpMinMaxFusedTest_q[29] .shared_arith = "off";

cyclonev_lcell_comb \oneNaNOutput_uid44_fpMinMaxFusedTest_q[30] (
	.dataa(!datab_30),
	.datab(!dataa_30),
	.datac(!exc_N_uid35_fpCompareFusedTest_q_0),
	.datad(!exc_N_uid18_fpCompareFusedTest_q_0),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(oneNaNOutput_uid44_fpMinMaxFusedTest_q_30),
	.sumout(),
	.cout(),
	.shareout());
defparam \oneNaNOutput_uid44_fpMinMaxFusedTest_q[30] .extended_lut = "off";
defparam \oneNaNOutput_uid44_fpMinMaxFusedTest_q[30] .lut_mask = 64'h7350735073507350;
defparam \oneNaNOutput_uid44_fpMinMaxFusedTest_q[30] .shared_arith = "off";

endmodule
