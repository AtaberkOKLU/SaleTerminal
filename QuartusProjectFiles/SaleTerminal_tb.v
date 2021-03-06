`timescale 1 ns / 1 ns

module SaleTerminal_tb();

reg  			CLOCK_50;
reg  			RESET_N;
reg [3:0] 	KEY;
reg [2:0] 	SW;

wire [7:0]  VGA_R;
wire [7:0]  VGA_G;
wire [7:0]  VGA_B;
wire  		VGA_CLK;
wire  		VGA_HS;
wire  		VGA_VS;
wire  		VGA_BLANK_N;
wire  		VGA_SYNC_N;

wire [6:0]	HEX0;
wire [6:0]	HEX1;
wire [6:0]	HEX2;
wire [6:0]	HEX3;
wire [6:0]	HEX4;
wire [6:0]	HEX5;
wire [9:0]	LEDR;

SaleTerminal SaleTerminal_inst0(
	.CLOCK_50(CLOCK_50),
	.RESET_N(RESET_N),
	.KEY(KEY),
	.SW(SW),

	.VGA_R(VGA_R),
	.VGA_G(VGA_G),
	.VGA_B(VGA_B),
	.VGA_BLANK_N(VGA_BLANK_N),
	.VGA_CLK(VGA_CLK),
	.VGA_HS(VGA_HS),
	.VGA_VS(VGA_VS),
	.VGA_SYNC_N(VGA_SYNC_N),
	.HEX0(HEX0),
	.HEX1(HEX1),
	.HEX2(HEX2),
	.HEX3(HEX3),
	.HEX4(HEX4),
	.HEX5(HEX5),
	.LEDR(LEDR)
);

initial
	begin
		CLOCK_50 = 0;
		RESET_N  = 1;
		SW			= 3'b000;
		KEY 		= 4'b1111;
	end
	
// Clock Setup
always 
	begin
		CLOCK_50 <= 0; #10 ;  CLOCK_50 <= 1; #10 ;
	end
	
	
always
	begin
		#2000;
		/* ENTER 1213 BARCODE & PRESS SELECT BUTTON BEGIN */
		KEY[3] = 0;
		#200;
		KEY[3] = 1;
		#400;
		KEY[2] = 0;
		#200;
		KEY[2] = 1;
		#400;
		KEY[3] = 0;
		#200;
		KEY[3] = 1;
		#400;
		KEY[1] = 0;
		#200;
		KEY[1] = 1;
		#400;
		SW[0]  = 1;
		#200;
		KEY[3] = 0;
		#200;
		KEY[3] = 1;
		#400;
		SW[0]  = 0;
		/* ENTER 1213 BARCODE & PRESS SELECT BUTTON END */
		/* Quantity = 3 */
		#400;
		KEY[1] = 0;
		#200;
		KEY[1] = 1;
		#1000;
		/* Interactive Select BEGIN */
		SW[1]  = 1;
		#200;
		KEY[1] = 0;
		#200;
		KEY[1] = 1;
		#200;
		KEY[0] = 0;
		#200;
		KEY[0] = 1;
		/* Interactive Select END */
		
		#(64'd20000000);
		$stop;
	end
endmodule
