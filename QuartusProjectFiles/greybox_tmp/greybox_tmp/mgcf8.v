//lpm_decode CBX_SINGLE_OUTPUT_FILE="ON" LPM_DECODES=2 LPM_TYPE="LPM_DECODE" LPM_WIDTH=1 data
//VERSION_BEGIN 20.1 cbx_mgl 2020:11:11:17:08:38:SJ cbx_stratixii 2020:11:11:17:06:46:SJ cbx_util_mgl 2020:11:11:17:06:46:SJ  VERSION_END
// synthesis VERILOG_INPUT_VERSION VERILOG_2001
// altera message_off 10463



// Copyright (C) 2020  Intel Corporation. All rights reserved.
//  Your use of Intel Corporation's design tools, logic functions 
//  and other software and tools, and any partner logic 
//  functions, and any output files from any of the foregoing 
//  (including device programming or simulation files), and any 
//  associated documentation or information are expressly subject 
//  to the terms and conditions of the Intel Program License 
//  Subscription Agreement, the Intel Quartus Prime License Agreement,
//  the Intel FPGA IP License Agreement, or other applicable license
//  agreement, including, without limitation, that your use is for
//  the sole purpose of programming logic devices manufactured by
//  Intel and sold by Intel or its authorized distributors.  Please
//  refer to the applicable agreement for further details, at
//  https://fpgasoftware.intel.com/eula.



//synthesis_resources = lpm_decode 1 
//synopsys translate_off
`timescale 1 ps / 1 ps
//synopsys translate_on
module  mgcf8
	( 
	data) /* synthesis synthesis_clearbox=1 */;
	input   [0:0]  data;


	lpm_decode   mgl_prim1
	( 
	.data(data));
	defparam
		mgl_prim1.lpm_decodes = 2,
		mgl_prim1.lpm_type = "LPM_DECODE",
		mgl_prim1.lpm_width = 1;
endmodule //mgcf8
//VALID FILE
