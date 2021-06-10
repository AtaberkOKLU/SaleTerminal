/*
 *		Module		:	Image Locator Combinational Logic Block
 * 	Description	: 	Find the ImageID from Layout and CounterX/Y, and
 *							Calculate & provide ROM_Addr.
 *		Inputs		: 	CounterX		=> X Posiiton in the Screen
 *
 *						:	CounterY 	=> Y Posiiton in the Screen
 *		Outputs		: 	ROM_Addr		=> Provide ROM_Addr
 *						:	isImage 		=> Notify if Position is on an Image
 *						:	black_white => It is used for drawing lines
 *		Owner			: 	Ataberk ÖKLÜ
 */

module ImageLocator
#(
	// Color Width = 8
	// C5 Has 24-bit DAC
	parameter R_WIDTH 		= 8,
	parameter G_WIDTH 		= 8,
	parameter B_WIDTH 		= 8,
	
	parameter CNTR_WIDTH_V 	= 10,			// Max CounterY Value = 2^CNTR_WIDTH_V
	parameter CNTR_WIDTH_H 	= 10,			// Max CounterX Value = 2^CNTR_WIDTH_H	// ROM Block Memory Propertie
	parameter ROM_ADDR_BUS_WIDTH = 17, 	// Max Accessible Addresses 2^17 > (100x100x12):(3x8 bit)
	
		// Product Image Properties
	parameter PRDCT_PIC_WIDTH 	= 100,
	parameter PRDCT_PIC_HEIGHT = 100
)(
	input  wire[CNTR_WIDTH_H-1:0] 	CounterX,
	input  wire[CNTR_WIDTH_V-1:0] 	CounterY,
	
	output reg[ROM_ADDR_BUS_WIDTH-1:0]  ROM_Addr,
	output wire 			isImage,
	output reg[R_WIDTH+G_WIDTH+B_WIDTH-1:0] black_white
);

wire [3:0] ImageID;


wire w_x0 = (CounterX > 307) && (CounterX < 407);
wire w_x1 = (CounterX > 435) && (CounterX < 535);
wire w_x2 = (CounterX > 563) && (CounterX < 663);
wire w_x3 = (CounterX > 691) && (CounterX < 791);

wire w_y0 = (CounterY > 19) && (CounterY < 119);
wire w_y1 = (CounterY > 147) && (CounterY < 247);
wire w_y2 = (CounterY > 275) && (CounterY < 375);

wire w_logo = (CounterX > 19) && (CounterX < 9) && (CounterY > 279) && (CounterY < 49);

wire im_0  = w_x0 && w_y0;
wire im_1  = w_x1 && w_y0;
wire im_2  = w_x2 && w_y0;
wire im_3  = w_x3 && w_y0;

wire im_4  = w_x0 && w_y1;
wire im_5  = w_x1 && w_y1;
wire im_6  = w_x2 && w_y1;
wire im_7  = w_x3 && w_y1;

wire im_8  = w_x0 && w_y2;
wire im_9  = w_x1 && w_y2;
wire im_10 = w_x2 && w_y2;
wire im_11 = w_x3 && w_y2;

Encoder16x4 Encoder16x4_inst0(
	.in({3'b0,w_logo,im_11,im_10,im_9,im_8,im_7,im_6,im_5,im_4,im_3,im_2,im_1,im_0}),
	.out(ImageID),
	.valid(isImage)
);

	
always @ (*)
	begin
		if(isImage)
			begin
				ROM_Addr = ImageID*PRDCT_PIC_WIDTH*PRDCT_PIC_HEIGHT + (CounterX-(307+ImageID[1:0]>>7)) + PRDCT_PIC_WIDTH*(CounterY-(19+((ImageID>>2)<<7)));
				black_white = 24'b0;
			end
		else
			begin
				ROM_Addr = 0;
				black_white = 24'b0;
			end
	end

endmodule
