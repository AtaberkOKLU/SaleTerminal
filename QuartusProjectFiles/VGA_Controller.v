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
 * 					:	VGA_HVSync 	=> 2 Sync Singanls to the VGA Port Pins
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
	parameter CNTR_WIDTH_H 	= 10,			// Max CounterX Value = 2^CNTR_WIDTH_H
	
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
    output reg [R_WIDTH-1:0] VGA_R,
	 output reg [G_WIDTH-1:0] VGA_G,
	 output reg [B_WIDTH-1:0] VGA_B,
	 output wire VGA_CLK,
    output wire VGA_HS,
    output wire VGA_VS,
	 output wire VGA_BLANK_N
);

    wire inDisplayArea;
	 wire VGA_CLK_W;
	 wire isImage_wire;
	 wire [R_WIDTH+G_WIDTH+B_WIDTH-1:0]BW_Pix_wire;
    wire [CNTR_WIDTH_H-1:0] CounterX;
	 wire [CNTR_WIDTH_V-1:0] CounterY;
	 wire [R_WIDTH+G_WIDTH+B_WIDTH-1:0] VGA_RGB_Bus;
	 wire	[ROM_ADDR_BUS_WIDTH-1:0] targetPixelAddr;
	 
	 VGA_PLL VGA_PLL_inst0(
		.refclk(CLOCK_50),
		.rst(RESET_N),
		.outclk_0(VGA_CLK_W),
		.locked()
	 );

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
			.inDisplayArea(inDisplayArea)
    );
	 
	 ImageROM ImageROM_inst0(
		.address(targetPixelAddr),
		.clock(VGA_CLK_W),
		.q(VGA_RGB_Bus)
	 );


	ImageLocator ImageLocator_inst0(
		.CounterX(CounterX),
		.CounterY(CounterY),
		.ROM_Addr(targetPixelAddr),
		.isImage(isImage_wire),
		.black_white(BW_Pix_wire)
	);
	 
	always @(posedge VGA_CLK)
		begin
			if (inDisplayArea)
				begin
					if(isImage_wire)
						begin
							VGA_R[R_WIDTH-1:0] <= VGA_RGB_Bus[R_WIDTH-1:0];
							VGA_G[G_WIDTH-1:0] <= VGA_RGB_Bus[R_WIDTH+G_WIDTH-1:R_WIDTH];
							VGA_B[B_WIDTH-1:0] <= VGA_RGB_Bus[R_WIDTH+G_WIDTH+B_WIDTH-1:R_WIDTH+G_WIDTH];
						end
					else
						begin
							VGA_R[R_WIDTH-1:0] <= BW_Pix_wire[R_WIDTH-1:0];
							VGA_G[G_WIDTH-1:0] <= BW_Pix_wire[R_WIDTH+G_WIDTH-1:R_WIDTH];
							VGA_B[B_WIDTH-1:0] <= BW_Pix_wire[R_WIDTH+G_WIDTH+B_WIDTH-1:R_WIDTH+G_WIDTH];
						end
				end
			else // if it's not to display, go dark
				begin
					 VGA_R[R_WIDTH-1:0] <= {R_WIDTH{1'b0}};
					 VGA_G[G_WIDTH-1:0] <= {G_WIDTH{1'b0}};
					 VGA_B[B_WIDTH-1:0] <= {B_WIDTH{1'b0}};
				end
		end
	 
	 assign VGA_BLANK_N = inDisplayArea;
	 assign VGA_CLK = VGA_CLK_W;



endmodule
