/*
 *		Module		:	VGA Pixel Controller Block
 * 	Description	: 	It determines if the pixel is on an image area or
 * 						to-be-highlited area, or a Text Pixel. Then, it
 * 						handles the pixel values accordingly.
 *		Inputs		: 	CounterX	=> Pixel X Value
 *						: 	CounterY	=> Pixel Y Value
 *						:	HighlightedProductList => Basket or Product to be hovered
 *						:	CLOCK 	=> VGA_CLOCK
 *						:	SW2 => To determine Hover method
 *
 *		Outputs		: 	PixBus => {B G R} 24-bit Bus
 *		Owner			: 	Ataberk ÖKLÜ
 */

module PixelController#(
	// Color Width = 8
	// C5 Has 24-bit DAC
	parameter R_WIDTH 		= 8,
	parameter G_WIDTH 		= 8,
	parameter B_WIDTH 		= 8,
	
	parameter CNTR_WIDTH_V 	= 10,			// Max CounterY Value = 2^CNTR_WIDTH_V
	parameter CNTR_WIDTH_H 	= 11,			// Max CounterX Value = 2^CNTR_WIDTH_H
	
	// ROM Block Memory Properties
	parameter ROM_ADDR_BUS_WIDTH = 17  	// Max Accessible Addresses 2^17 > (100x100x12):(3x8 bit)
)(
	input wire [CNTR_WIDTH_H-1:0] CounterX,
	input wire [CNTR_WIDTH_V-1:0] CounterY,
	input wire [11:0] HighlightedProductList,
	input wire CLOCK,
	input wire SW2,
	input wire [3:0] BasketProductNum,
	input wire [47:0] BasketProductIDList,
	input  wire [239:0] numbers,
	input  wire [19:0] total_price,
	
	output wire [R_WIDTH+G_WIDTH+B_WIDTH-1:0] PixBus
);

wire [R_WIDTH+G_WIDTH+B_WIDTH-1:0] Img_RGBBus;
wire isFontPixel;

Image_Shape_Submodule#(
	// Color Width = 8
	// C5 Has 24-bit DAC
	.R_WIDTH(R_WIDTH),
	.G_WIDTH(G_WIDTH),
	.B_WIDTH(B_WIDTH),

	.CNTR_WIDTH_V(CNTR_WIDTH_V),			// Max CounterY Value = 2^CNTR_WIDTH_V
	.CNTR_WIDTH_H(CNTR_WIDTH_H),			// Max CounterX Value = 2^CNTR_WIDTH_H

	// ROM Block Memory Properties
	.ROM_ADDR_BUS_WIDTH(ROM_ADDR_BUS_WIDTH)  	// Max Accessible Addresses 2^17 > (100x100x12):(3x8 bit)
) Image_Shape_Submodule_inst0(
	.CounterX(CounterX),
	.CounterY(CounterY),
	.HighlightedProductList(HighlightedProductList),
	.CLOCK(CLOCK),
	.SW2(SW2),
	.RGB_Bus(Img_RGBBus),
	.BasketProductNum(BasketProductNum)
);

/*
 *		Text Controller
 */
 
 
text_controller_general TextController_inst0(
	.CLK(CLOCK),
	.product_IDS(BasketProductIDList),
	.H_counter(CounterX),
	.V_counter(CounterY),
	.output_bit(isFontPixel),
	.numbers(numbers),
	.total_price(total_price)
);
	
assign PixBus = (isFontPixel) ? {(R_WIDTH+G_WIDTH+B_WIDTH){1'b0}}:Img_RGBBus;

endmodule
