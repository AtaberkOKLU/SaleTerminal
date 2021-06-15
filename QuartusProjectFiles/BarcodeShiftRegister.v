/*
 *		Module		:	Barcode Shift Register
 * 	Description	: 	Implements a 4 Digit 4-bit Shift Register to 
 *							hold Barcode Number.
 *		Inputs		: 	CLOCK		=> CLOCK_50
 *						:	ENABLE 	=> Triggered by another block (TBD)
 *						:	RESET_N 	=> Active-Low Reset, resets 
 *											the shift register
 *						: 	Digit_in => Set by another block (TBD)
 *		Outputs		: 	Digit_#	=> Provide Current Barcode
 * 										Digits for other blocks
 *		Owner			: 	Ataberk ÖKLÜ
 */
 
module BarcodeShiftRegister(
	input  wire[3:0] Digit_in,
	input	 wire CLOCK,
	input  wire RESET_N,
	input  wire ENABLE,
	
	output wire[3:0] Digit_0,
	output wire[3:0] Digit_1,
	output wire[3:0] Digit_2,
	output wire[3:0] Digit_3,
	
	output reg [2:0] NumOfBarcodeDigitsEntered
);

reg[3:0] Digit_Reg_0 = 12;
reg[3:0] Digit_Reg_1 = 12;
reg[3:0] Digit_Reg_2 = 12;
reg[3:0] Digit_Reg_3 = 12;

initial
	NumOfBarcodeDigitsEntered = 0;
		

always @ (posedge CLOCK)
begin
	if(!RESET_N)
		begin
			Digit_Reg_0 <= 12;
			Digit_Reg_1 <= 12;
			Digit_Reg_2 <= 12;
			Digit_Reg_3 <= 12;
			NumOfBarcodeDigitsEntered <= 0;
		end
	else
		begin
			if(ENABLE)
				begin
					Digit_Reg_3 <= Digit_Reg_2;
					Digit_Reg_2 <= Digit_Reg_1;
					Digit_Reg_1 <= Digit_Reg_0;
					Digit_Reg_0 <= Digit_in;
					if(NumOfBarcodeDigitsEntered < 4)
						NumOfBarcodeDigitsEntered <= NumOfBarcodeDigitsEntered + 3'd1;
					else
						NumOfBarcodeDigitsEntered <= 4;
				end
		end
end
	
assign Digit_0 = Digit_Reg_0;
assign Digit_1 = Digit_Reg_1;
assign Digit_2 = Digit_Reg_2;
assign Digit_3 = Digit_Reg_3;
	
endmodule
