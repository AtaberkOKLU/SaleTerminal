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
// CREATED		"Sun Jun 20 17:33:15 2021"

module Encoder16x4(
	in,
	valid,
	out
);


input wire	[15:0] in;
output wire	valid;
output wire	[3:0] out;

wire	[3:0] out_ALTERA_SYNTHESIZED;
wire	[2:0] Y1;
wire	[2:0] Y2;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_1;





encoder8x3	b2v_inst(
	.X(in[15:8]),
	.Y(Y1));

assign	SYNTHESIZED_WIRE_1 = in[11] | in[9] | in[8] | in[10];

assign	out_ALTERA_SYNTHESIZED[3] = ~(Y2[2] | SYNTHESIZED_WIRE_3);

assign	out_ALTERA_SYNTHESIZED[0] = Y2[0] | Y1[0];


encoder8x3	b2v_inst3(
	.X(in[7:0]),
	.Y(Y2));

assign	out_ALTERA_SYNTHESIZED[1] = Y2[1] | Y1[1];

assign	out_ALTERA_SYNTHESIZED[2] = Y2[2] | Y1[2];

assign	valid = Y1[2] | SYNTHESIZED_WIRE_1 | SYNTHESIZED_WIRE_3 | Y2[2];

assign	SYNTHESIZED_WIRE_3 = in[3] | in[1] | in[0] | in[2];

assign	out = out_ALTERA_SYNTHESIZED;

endmodule
