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
	input wire CLK,
	
	// Button Controller Interface
	input wire SW1,
	input wire SW2,

	// Barcode Controller Interface
	input wire [3:0] Barcode_Digit_0,
	input wire [3:0] Barcode_Digit_1,
	input wire [3:0] Barcode_Digit_2,
	input wire [3:0] Barcode_Digit_3,
	input wire BarcodeCompleted,
	
	// Direction2ProductID Interface
		// For Both Basket & Interactive
	input wire [3:0] SelectedProductID,
	
	// VGA Contoller Interface
	output wire [11:0] HighlightedProductList
);

wire [11:0] HighlightedBarcodeOut;

/*
 *
 *		BarcodeHoverControler by Göksu UZUNTÜRK
 *
 */
 
 
 
wire [15:0] DecoderOut;
wire [11:0] HighlightedDecoderOut;
/*
 *		Basket And Interactive Selection Hover by Ataberk ÖKLÜ
 *
 */

Decoder4x16 Decoder4x16_inst0(
	.d_in(SelectedProductID),
	.d_out(DecoderOut)
);
assign HighlightedDecoderOut = DecoderOut[11:0];

assign HighlightedProductList = (SW1 || SW2) ? HighlightedDecoderOut:HighlightedBarcodeOut;


endmodule
