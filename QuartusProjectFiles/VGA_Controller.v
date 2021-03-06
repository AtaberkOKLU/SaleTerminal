/*
 *		Module		:	VGA Controller Block
 * 	Description	: 	It contains VGA_PLL Block, HVSync_Generator,
							ImageLocator Logic Block and ImageROM Block
							Memory holding the image data. This block 
							manages proper timing and pixel outputs.
 *		Inputs		: 	CLOCK_50	=> Main Board FPGA Clock
 *						:	RESET_N 	=> Reset Signal
 *
 *		Outputs		: 	VGA_RGB		=> 24-bit RBG values to the VGA Port Pins
 * 					:	VGA_HVSync 	=> 2 Sync Signals to the VGA Port Pins
 *		Owner			: 	Ataberk ÖKLÜ
 */

module VGA_Controller
#(
	// Color Width = 8
	// C5 Has 24-bit DAC
	parameter R_WIDTH 		= 8,
	parameter G_WIDTH 		= 8,
	parameter B_WIDTH 		= 8,
	
	parameter CNTR_WIDTH_V 	= 10,			// Max CounterY Value = 2^CNTR_WIDTH_V
	parameter CNTR_WIDTH_H 	= 11,			// Max CounterX Value = 2^CNTR_WIDTH_H
	
	// Timing Constants For 800x600@60Hz
	// Horizontal Timing
	parameter FRONT_PORCH_H = 40,
	parameter BACK_PORCH_H 	= 88,
	parameter SYNC_PULSE_H 	= 128,
	parameter VISIBLE_H 		= 800,

	// Vertical Timing
	parameter FRONT_PORCH_V = 1,
	parameter BACK_PORCH_V 	= 23,
	parameter SYNC_PULSE_V 	= 4,
	parameter VISIBLE_V 		= 600,
	
	// Product Image Properties
	parameter PRDCT_PIC_WIDTH 	= 100,
	parameter PRDCT_PIC_HEIGHT = 100,
	parameter NUM_OF_PRDCT 		= 12,
	
	// ROM Block Memory Propertie
	parameter ROM_ADDR_BUS_WIDTH = 17  	// Max Accessible Addresses 2^17 > (100x100x12):(3x8 bit)
)
(
    input CLOCK_50,
	 input RESET_N,
	 input  wire[11:0] HighlightedProductList,
	 // Button Controller Interface
	 input  wire SW2,
	 input  wire[3:0] BasketProductNum,
	 input  wire [47:0] BasketProductIDList,
	 input  wire [239:0] numbers,
	 input  wire [19:0] total_price,
	 
    output wire [R_WIDTH-1:0] VGA_R,
	 output wire [G_WIDTH-1:0] VGA_G,
	 output wire [B_WIDTH-1:0] VGA_B,
	 output wire VGA_CLK,
    output wire VGA_HS,
    output wire VGA_VS,
	 output wire VGA_BLANK_N,
	 output wire VGA_SYNC_N
);

	 wire VGA_CLK_W;
	 wire [R_WIDTH+G_WIDTH+B_WIDTH-1:0]PixBux_wire;
    wire [CNTR_WIDTH_H-1:0] CounterX;
	 wire [CNTR_WIDTH_V-1:0] CounterY;
	 
	 
	 VGA_PLL VGA_PLL_inst0(
		.refclk(CLOCK_50),
		.rst(~RESET_N),
		.outclk_0(VGA_CLK_W),
		.locked()
	 );
	 
	 assign VGA_CLK = VGA_CLK_W;

    HVSync_Generator #(
			.CNTR_WIDTH_V(CNTR_WIDTH_V), 
			.CNTR_WIDTH_H(CNTR_WIDTH_H),
			.FRONT_PORCH_H(FRONT_PORCH_H),
			.BACK_PORCH_H(BACK_PORCH_H),
			.SYNC_PULSE_H(SYNC_PULSE_H),
			.VISIBLE_H(VISIBLE_H),
			.FRONT_PORCH_V(FRONT_PORCH_V),
			.BACK_PORCH_V(BACK_PORCH_V),
			.SYNC_PULSE_V(SYNC_PULSE_V),
			.VISIBLE_V(VISIBLE_V)
		) HVSync_Generator_inst0(
			.VGA_CLK(VGA_CLK_W),
			.RST_N(RESET_N),
			.VGA_HS(VGA_HS),
			.VGA_VS(VGA_VS),
			.CounterX(CounterX),
			.CounterY(CounterY),
			.VGA_BLANK_N(VGA_BLANK_N)
    );
	 

	PixelController#(
		// Color Width = 8
		// C5 Has 24-bit DAC
		.R_WIDTH(R_WIDTH),
		.G_WIDTH(G_WIDTH),
		.B_WIDTH(B_WIDTH),

		.CNTR_WIDTH_V(CNTR_WIDTH_V),			// Max CounterY Value = 2^CNTR_WIDTH_V
		.CNTR_WIDTH_H(CNTR_WIDTH_H),			// Max CounterX Value = 2^CNTR_WIDTH_H

		// ROM Block Memory Properties
		.ROM_ADDR_BUS_WIDTH(ROM_ADDR_BUS_WIDTH)  	// Max Accessible Addresses 2^17 > (100x100x12):(3x8 bit)
	) PixelController_inst0(
		.CounterX(CounterX),
		.CounterY(CounterY),
		.HighlightedProductList(HighlightedProductList),
		.CLOCK(VGA_CLK_W),
		.SW2(SW2),
		.PixBus(PixBux_wire),
		.BasketProductNum(BasketProductNum),
		.BasketProductIDList(BasketProductIDList),
		.numbers(numbers),
		.total_price(total_price),
		.RESET_N(RESET_N)
	);
	
assign {VGA_B, VGA_G, VGA_R} = PixBux_wire;

assign VGA_SYNC_N = 0;

endmodule
