/*
 *		Module		:	Barcode Controller Block
 * 	Description	: 	Contains a 4 Digit 4-bit Shift Register to 
 *							hold Barcode Number.
 *		Inputs		: 	CLK 		=> CLOCK_50
 *						:	ENABLE 	=> Triggered by another block (TBD)
 *						:	RESET_N 	=> Active-Low Reset, resets 
 *											the shift register
 *						: 	Digit_in => Set by another block (TBD)
 *		Outputs		: 	Barcode_Digit_#	=> Provide Current Barcode
 * 													Digits for other blocks
 * 					:	HEX# 		=> 7-Segment Display Connections
 *						:	BarcodeDigitCompleted => Notifies other
 *								blocks that BarcodeRegister has 4 Digits
 *		Owner			: 	Ataberk ÖKLÜ
 */

module BarcodeController(
	input  wire 		ENABLE,
	input  wire 		CLK,
	input  wire 		RESET_N,
	input  wire[3:0] 	Digit_in,
	
	output reg 			BarcodeDigitCompleted,
	output wire[2:0] 	NumOfBarcodeDigitsEntered,
	
	output wire[3:0] 	Barcode_Digit_0,
	output wire[3:0] 	Barcode_Digit_1,
	output wire[3:0] 	Barcode_Digit_2,
	output wire[3:0] 	Barcode_Digit_3,
	
	output wire[6:0] 	HEX0,
	output wire[6:0] 	HEX1,
	output wire[6:0] 	HEX2,
	output wire[6:0] 	HEX3
);

BarcodeShiftRegister BarcodeShiftRegister_inst0(
	.Digit_in(Digit_in),
	.CLOCK(CLK),
	.RESET_N(RESET_N),
	.ENABLE(ENABLE),
	.Digit_0(Barcode_Digit_0),
	.Digit_1(Barcode_Digit_1),
	.Digit_2(Barcode_Digit_2),
	.Digit_3(Barcode_Digit_3),
	.NumOfBarcodeDigitsEntered(NumOfBarcodeDigitsEntered)
);
	
	
	Segment7 Segment0(
		.bcd(Barcode_Digit_0),
		.seg(HEX0)
	);
	
	Segment7 Segment1(
		.bcd(Barcode_Digit_1),
		.seg(HEX1)
	);
	
	Segment7 Segment2(
		.bcd(Barcode_Digit_2),
		.seg(HEX2)
	);
	
	Segment7 Segment3(
		.bcd(Barcode_Digit_3),
		.seg(HEX3)
	);


	
	always @ (*)
		if(Barcode_Digit_3 < 10)
			BarcodeDigitCompleted = 1;
		else
			BarcodeDigitCompleted = 0;

endmodule
