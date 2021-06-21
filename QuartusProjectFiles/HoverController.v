/*
 *		Module		:	HoverController
 * 	Description	: 	Provides HighlightedProductList to VGA to Hover item.
 *		Inputs		: 	*
 *
 *		Outputs		: 	HighlightedProductList	=> Highlited Products Vector
 *		Owner			: 	Ataberk ÖKLÜ
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
	input wire [2:0] NumOfBarcodeDigitsEntered,
	input wire 		  BarcodeCompleted,
	
	// State Machine
	input wire 		  ValidID,
	
	// Direction2ProductID Interface
		// For Both Basket & Interactive
	input wire [3:0] SelectedProductID,
	
	// VGA Contoller Interface
	output reg [11:0] HighlightedProductList,
	
	// Segment 7 Displays
	output wire [6:0] HEX4,
	output wire [6:0] HEX5
);

wire [11:0] HighlightedBarcodeOut;
wire [15:0] Barcode_in = {Barcode_Digit_3, Barcode_Digit_2, Barcode_Digit_1, Barcode_Digit_0};

BarcodeHoverController BarcodeHoverController_inst0(
	.Barcode_in(Barcode_in),
	.NumOfBarcodeDigitsEntered(NumOfBarcodeDigitsEntered),
	.HighlightedBarcodeOut(HighlightedBarcodeOut),
	.BarcodeCompleted(BarcodeCompleted)
);

 
wire [15:0] DecoderOut;
reg  [11:0] HighlightedDecoderOut;


Decoder4x16 Decoder4x16_inst0(
	.in(SelectedProductID),
	.out(DecoderOut)
);

DisplaySelectedIDSeg7 DisplaySelectedIDSeg7_inst0(
	.CleanSWOut(CleanSWOut),
	.SelectedID(SelectedProductID),
	.HEX4(HEX4),
	.HEX5(HEX5),
	.valid(ValidID)
);


always @ (posedge CLK)
	HighlightedDecoderOut <= DecoderOut[11:0];
	
always @ (negedge CLK)
	begin
		if(|CleanSWOut)
			if(ValidID)
				HighlightedProductList <= HighlightedDecoderOut;
			else
				HighlightedProductList <= 12'b0;
		else
			HighlightedProductList <= HighlightedBarcodeOut;
	end


endmodule
