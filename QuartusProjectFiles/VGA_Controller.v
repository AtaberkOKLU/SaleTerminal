module VGA_Controller
#(
	parameter R_WIDTH = 8,
	parameter G_WIDTH = 8,
	parameter B_WIDTH = 8,
	parameter CNTR_WIDTH_V = 10,
	parameter CNTR_WIDTH_H = 10
)
(
    input CLOCK_50,
	 input RESET,
    output reg [R_WIDTH-1:0] VGA_R,
	 output reg [G_WIDTH-1:0] VGA_G,
	 output reg [B_WIDTH-1:0] VGA_B,
    output VGA_HS,
    output VGA_VS,
	 output VGA_BLANK_N
);
	 localparam PRDCT_PIC_WIDTH = 100;
	 localparam PRDCT_PIC_HEIGHT = 100;
	 localparam NUM_OF_PRDCT = 12;

    wire inDisplayArea;
    wire [CNTR_WIDTH_H-1:0] CounterX;
	 wire [CNTR_WIDTH_V-1:0] CounterY;
	 wire [R_WIDTH+G_WIDTH+B_WIDTH-1:0] VGA_RGB_Bus;
	 wire VGA_CLK;
	 reg 	[18:0] targetPixelAddr = 0;
	 
	 VGA_PLL VGA_PLL_inst0(
		.refclk(CLOCK_50),
		.rst(RESET),
		.outclk_0(VGA_CLK),
		.locked()
	 );

    HVSync_Generator HVSync_Generator_inst0(
      .VGA_CLK(VGA_CLK),
      .VGA_HS(VGA_HS),
      .VGA_VS(VGA_VS),
      .CounterX(CounterX),
      .CounterY(CounterY),
      .inDisplayArea(inDisplayArea)
    );
	 
	 ImageROM ImageROM_inst0(
		.address(targetPixelAddr),
		.clock(VGA_CLK),
		.q(VGA_RGB_Bus)
	 );
	 
	 assign VGA_BLANK_N = inDisplayArea;

    always @(posedge VGA_CLK)
    begin
      if (inDisplayArea)
			begin
				 targetPixelAddr <= CounterY * 800 + CounterX;
				 VGA_R[R_WIDTH-1:0] <= VGA_RGB_Bus[R_WIDTH-1:0];
				 VGA_G[G_WIDTH-1:0] <= VGA_RGB_Bus[R_WIDTH+G_WIDTH-1:R_WIDTH];
				 VGA_B[B_WIDTH-1:0] <= VGA_RGB_Bus[R_WIDTH+G_WIDTH+B_WIDTH-1:R_WIDTH+G_WIDTH];
			end
      else // if it's not to display, go dark
			begin
				 VGA_R[R_WIDTH-1:0] <= 8'b0000_0000;
				 VGA_G[G_WIDTH-1:0] <= 8'b0000_0000;
				 VGA_B[B_WIDTH-1:0] <= 8'b0000_0000;
			end
    end

endmodule