/*
 *		Module		:	DisplaySelectedIDSeg7 Block
 * 	Description	: 	Product ID Displayer for Seg7
 *		Inputs		: 	*
 *						: 	*
 *						:	*
 *						:	*
 *						:	*
 *
 *		Outputs		: 	*
 *		Owner			: 	Ataberk ÖKLÜ
 */

module DisplaySelectedIDSeg7(
	input wire  [3:0] SelectedID,
	input wire  [2:1] CleanSWOut,
	input wire 			valid,
	
	output wire [6:0] HEX4,
	output wire [6:0] HEX5

);

wire [7:0] BCD;

Binary2BCD_2D Binary2BCD_2D_inst0(
	.bin(SelectedID),
	.bcd(BCD)
);


wire [3:0] FirstDigit;
wire [3:0] SecndDigit;


assign FirstDigit = (valid || |CleanSWOut) ? BCD[3:0] : 4'b1111;
assign SecndDigit = (valid || |CleanSWOut) ? BCD[7:4] : 4'b1111;


Segment7 Segment7_HEX4(
	.bcd(FirstDigit),
	.seg(HEX4)
);

Segment7 Segment7_HEX5(
	.bcd(SecndDigit),
	.seg(HEX5)
);



endmodule
