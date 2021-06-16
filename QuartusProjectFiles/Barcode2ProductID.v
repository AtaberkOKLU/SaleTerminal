/*
 *		Module		:	Barcode-to-ProductID Helper Module
 * 	Description	: 	This module provides ProductID output according
 *							to BarcodeDigits, and checks it is a valid option
 *		Inputs		: 	BarcodeDigit_# => From BarcodeController
 *
 *		Outputs		: 	ProductID	=> Corresponding ProdcutID
 *							Valid			=> Is this barcode valid?
 *		Owner			: 	Ataberk ÖKLÜ
 */

module Barcode2ProductID(
	input wire [3:0] 	BarcodeDigit_0,
	input wire [3:0] 	BarcodeDigit_1,
	input wire [3:0] 	BarcodeDigit_2,
	input wire [3:0] 	BarcodeDigit_3,
	
	output reg [3:0] 	ProductID,
	output reg 			valid
);


// Combinational Circuit
// 	? Can be Negedge?
always @ (*)
	case({BarcodeDigit_0, BarcodeDigit_1, BarcodeDigit_2, BarcodeDigit_3})
		16'h3124: begin ProductID = 4'd0 ; valid = 1; end
		16'h4132: begin ProductID = 4'd1 ; valid = 1; end
		16'h4133: begin ProductID = 4'd2 ; valid = 1; end
		16'h3121: begin ProductID = 4'd3 ; valid = 1; end
		16'h3133: begin ProductID = 4'd4 ; valid = 1; end
		16'h3214: begin ProductID = 4'd5 ; valid = 1; end
		16'h2134: begin ProductID = 4'd6 ; valid = 1; end
		16'h2144: begin ProductID = 4'd7 ; valid = 1; end
		16'h3112: begin ProductID = 4'd8 ; valid = 1; end
		16'h4321: begin ProductID = 4'd9 ; valid = 1; end
		16'h1342: begin ProductID = 4'd10; valid = 1; end
		16'h1213: begin ProductID = 4'd11; valid = 1; end
		default: begin ProductID = 4'b1111; valid = 0; end
	endcase

endmodule
