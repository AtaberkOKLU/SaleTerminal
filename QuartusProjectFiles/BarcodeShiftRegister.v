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

reg [15:0] Barcode;


initial
	begin
		NumOfBarcodeDigitsEntered = 0;
		Barcode = 16'hFFFF;
	end
		

always @ (posedge CLOCK)
begin
	if(!RESET_N)
		begin
			Barcode <= 16'hFFFF;
			NumOfBarcodeDigitsEntered <= 0;
		end
	else
		begin
			if(ENABLE)
				begin
					case(NumOfBarcodeDigitsEntered)
						3'd3: Barcode[3:0]   <= Digit_in;
						3'd2: Barcode[7:4]   <= Digit_in;
						3'd1: Barcode[11:8]  <= Digit_in;
						3'd0: Barcode[15:12] <= Digit_in;
					endcase
					if(NumOfBarcodeDigitsEntered < 4)
						NumOfBarcodeDigitsEntered = NumOfBarcodeDigitsEntered + 3'd1;
				end
		end
end
	
assign {Digit_3, Digit_2, Digit_1, Digit_0} = Barcode;
	
endmodule
