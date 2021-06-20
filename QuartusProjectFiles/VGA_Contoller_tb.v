`timescale 1 ns / 1 ps

module VGA_Contoller_tb();

reg CLOCK_50;
reg RESET_N;
reg SW2;
reg[11:0] HighlightedProductList;

wire  [7:0] VGA_R;
wire  [7:0] VGA_G;
wire  [7:0] VGA_B;
wire  VGA_CLK;
wire  VGA_HS;
wire  VGA_VS;
wire  VGA_BLANK_N;
wire  VGA_SYNC_N;

initial
	begin
		CLOCK_50 = 0;
		RESET_N  = 1;
		SW2		= 0;
		HighlightedProductList = 0;
	end
	
	
VGA_Controller VGA_Controller_inst0(
	.CLOCK_50(CLOCK_50),
	.RESET_N(RESET_N),
	.HighlightedProductList(HighlightedProductList),
	.SW2(SW2),
	.VGA_R(VGA_R),
	.VGA_G(VGA_G),
	.VGA_B(VGA_B),
	.VGA_CLK(VGA_CLK),
	.VGA_HS(VGA_HS),
	.VGA_VS(VGA_VS),
	.VGA_BLANK_N(VGA_BLANK_N),
	.VGA_SYNC_N(VGA_SYNC_N)
);

// Clock Setup
always 
	begin
		CLOCK_50 <= 0; #10 ;  CLOCK_50 <= 1; #10 ;
	end

	localparam w = (64'd50000000);
	
always
	begin
		SW2 = 0;
		#(w);
		SW2 = 1;
		$stop;
	end
endmodule
