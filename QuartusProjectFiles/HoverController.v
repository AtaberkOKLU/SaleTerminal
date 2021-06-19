/*
 *		Module		:	HoverController
 * 	Description	: 	Provides HighlightedProductList to VGA to Hover item.
 *		Inputs		: 	*
 *
 *		Outputs		: 	HighlightedProductList	=> Highlited Products Vector
 *		Owner			: 	Ataberk ÖKLÜ & Göksu UZUNTÜRK
 */
 
module HoverController(
	// Generic
	input wire 		  CLK,
	
	// Button Controller Interface
	input wire [2:1] CleanSWOut,

	// Barcode Controller Interface
	input wire [3:0] Barcode_Digit_0,
	input wire [3:0] Barcode_Digit_1,
	input wire [3:0] Barcode_Digit_2,
	input wire [3:0] Barcode_Digit_3,
	input wire 		  BarcodeCompleted,
	
	// Direction2ProductID Interface
		// For Both Basket & Interactive
	input wire [3:0] SelectedProductID,
	
	// VGA Contoller Interface
	output reg [11:0] HighlightedProductList
);

wire [11:0] HighlightedBarcodeOut;

/*
 *
 *		BarcodeHoverControler by Göksu UZUNTÜRK
 *
 */
 
reg  [1:0] SW12 = 0; 

wire [15:0] DecoderOut;
wire [11:0] HighlightedDecoderOut;
/*
 *		Basket And Interactive Selection Hover by Ataberk ÖKLÜ
 *
 */

Decoder4x16 Decoder4x16_inst0(
	.in(SelectedProductID),
	.out(DecoderOut)
);


assign HighlightedDecoderOut = DecoderOut[11:0];

always @ (negedge CLK)
	SW12 <= CleanSWOut;

always @ (negedge CLK)
	if(|SW12)
		HighlightedProductList <= HighlightedDecoderOut;
	else
		HighlightedProductList <= HighlightedBarcodeOut;


endmodule
