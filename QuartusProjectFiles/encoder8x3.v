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
// CREATED		"Sun Jun 20 17:35:30 2021"

module encoder8x3(
	X,
	Y
);


input wire	[7:0] X;
output wire	[2:0] Y;

wire	[2:0] Y_ALTERA_SYNTHESIZED;




assign	Y_ALTERA_SYNTHESIZED[0] = X[1] | X[5] | X[7] | X[3];

assign	Y_ALTERA_SYNTHESIZED[1] = X[2] | X[6] | X[7] | X[3];

assign	Y_ALTERA_SYNTHESIZED[2] = X[4] | X[6] | X[7] | X[5];

assign	Y = Y_ALTERA_SYNTHESIZED;

endmodule
