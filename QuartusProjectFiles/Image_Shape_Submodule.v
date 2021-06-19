/*
 *		Module		:	VGA Image & Highlight Controller
 * 	Description	: 	Manages both image and hovering
 *							processes for Pixel Bus.
 *		Inputs		: 	CounterX	=> Pixel X Value
 *						: 	CounterY	=> Pixel Y Value
 *						:	HighlightedProductList => Basket or Product to be hovered
 *						:	CLOCK 	=> VGA_CLOCK
 *						:	SW2 => To determine Hover method
 *
 *		Outputs		: 	RGB_Bus	=> 24-bit RBG values to the VGA Port Pins
 *		Owner			: 	Ataberk ÖKLÜ
 */

module Image_Shape_Submodule
#(
	// Color Width = 8
	// C5 Has 24-bit DAC
	parameter R_WIDTH 		= 8,
	parameter G_WIDTH 		= 8,
	parameter B_WIDTH 		= 8,
	
	parameter CNTR_WIDTH_V 	= 10,			// Max CounterY Value = 2^CNTR_WIDTH_V
	parameter CNTR_WIDTH_H 	= 10,			// Max CounterX Value = 2^CNTR_WIDTH_H
	
	// ROM Block Memory Propertie
	parameter ROM_ADDR_BUS_WIDTH = 17  	// Max Accessible Addresses 2^17 > (100x100x12):(3x8 bit)
)(
   input wire [CNTR_WIDTH_H-1:0] CounterX,
	input wire [CNTR_WIDTH_V-1:0] CounterY,
	input wire [11:0] HighlightedProductList,
	input wire CLOCK,
	input wire SW2,
	
	output reg [R_WIDTH+G_WIDTH+B_WIDTH-1:0] RGB_Bus
);

wire inDisplayArea;
wire isImage_wire;
wire inHighlightedArea_wire;
wire [R_WIDTH+G_WIDTH+B_WIDTH-1:0] PixBux_wire;
wire [R_WIDTH+G_WIDTH+B_WIDTH-1:0] ROM_RGB_Bus;
wire [ROM_ADDR_BUS_WIDTH-1:0] targetPixelAddr;

ImageROM ImageROM_inst0(
	.address(targetPixelAddr),
	.clock(CLOCK),
	.q(ROM_RGB_Bus)
);

ImageLocator ImageLocator_inst0(
	.CounterX(CounterX),
	.CounterY(CounterY),
	.HighlightedProductList(HighlightedProductList),
	.ROM_Addr(targetPixelAddr),
	.isImage(isImage_wire),
	.PixelBus(PixBux_wire),
	.SW2(SW2),
	.inHighlightedArea(inHighlightedArea_wire)
);

always @ (*)
	if (inHighlightedArea_wire)
		RGB_Bus = PixBux_wire;
	else if (isImage_wire)
		RGB_Bus = ROM_RGB_Bus;
	else
		RGB_Bus = PixBux_wire;
		
endmodule
