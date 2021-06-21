/*
 *		Module		:	Image Locator Combinational Logic Block
 * 	Description	: 	Find the ImageID from Layout and CounterX/Y, and
 *							Calculate & provide ROM_Addr.
 *		Inputs		: 	CounterX		=> X Posiiton in the Screen
 *
 *						:	CounterY 	=> Y Posiiton in the Screen
 *		Outputs		: 	ROM_Addr		=> Provide ROM_Addr
 *						:	isImage 		=> Notify if Position is on an Image
 *						:	PixelBus => It is used for drawing lines
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
	parameter CNTR_WIDTH_H 	= 11,			// Max CounterX Value = 2^CNTR_WIDTH_H	// ROM Block Memory Propertie
	parameter ROM_ADDR_BUS_WIDTH = 17, 	// Max Accessible Addresses 2^17 > (100x100x12):(3x8 bit)
	
		// Product Image Properties
	parameter PRDCT_PIC_WIDTH 	= 100,
	parameter PRDCT_PIC_HEIGHT = 100
)(
	input wire CLK,

	// HVSync Interface
	input  wire[CNTR_WIDTH_H-1:0] 	CounterX,
	input  wire[CNTR_WIDTH_V-1:0] 	CounterY,
	
	// HoverController Interface
	input  wire[11:0]						HighlightedProductList,
	
	// Button Controller Interface
	input  wire SW2,
	
	output reg  [ROM_ADDR_BUS_WIDTH-1:0]  ROM_Addr,
	output wire [R_WIDTH+G_WIDTH+B_WIDTH-1:0] PixelBus,
	output wire isImage,
	output wire inHighlightedArea
);
reg inHighlightedPrdArea_Reg 	= 0;
reg inHighlightedImgArea_Reg 	= 0;
reg SW2_Reg							= 0;

/* BASKET LOCATION CONTROL BEGIN */
wire w_x_indicator_p		= (CounterX > 19)  & (CounterX < 59) ;
 
wire w_y_indicator_p0	= (CounterY > 59)  & (CounterY < 99) ;
wire w_y_indicator_p1	= (CounterY > 99)  & (CounterY < 139);
wire w_y_indicator_p2	= (CounterY > 139) & (CounterY < 179);
wire w_y_indicator_p3	= (CounterY > 179) & (CounterY < 219);
wire w_y_indicator_p4	= (CounterY > 219) & (CounterY < 259);
wire w_y_indicator_p5	= (CounterY > 259) & (CounterY < 299);
wire w_y_indicator_p6	= (CounterY > 299) & (CounterY < 339);
wire w_y_indicator_p7	= (CounterY > 339) & (CounterY < 379);
wire w_y_indicator_p8	= (CounterY > 379) & (CounterY < 419);
wire w_y_indicator_p9	= (CounterY > 419) & (CounterY < 459);
wire w_y_indicator_p10	= (CounterY > 459) & (CounterY < 499);
wire w_y_indicator_p11	= (CounterY > 499) & (CounterY < 539);

wire p_0_indicator  = w_x_indicator_p & w_y_indicator_p0;
wire p_1_indicator  = w_x_indicator_p & w_y_indicator_p1;
wire p_2_indicator  = w_x_indicator_p & w_y_indicator_p2;
wire p_3_indicator  = w_x_indicator_p & w_y_indicator_p3;

wire p_4_indicator  = w_x_indicator_p & w_y_indicator_p4;
wire p_5_indicator  = w_x_indicator_p & w_y_indicator_p5;
wire p_6_indicator  = w_x_indicator_p & w_y_indicator_p6;
wire p_7_indicator  = w_x_indicator_p & w_y_indicator_p7;

wire p_8_indicator  = w_x_indicator_p & w_y_indicator_p8;
wire p_9_indicator  = w_x_indicator_p & w_y_indicator_p9;
wire p_10_indicator = w_x_indicator_p & w_y_indicator_p10;
wire p_11_indicator = w_x_indicator_p & w_y_indicator_p11;

/* BASKET LOCATION CONTROL END */

/* IMAGE LOCATION CONTROL BEGIN */
wire [3:0] ImageID;


wire w_x0 = (CounterX > 307) & (CounterX < 408);
wire w_x_indicator_0 = (CounterX > 307) & (CounterX < 318);
wire w_x1 = (CounterX > 435) & (CounterX < 536);
wire w_x_indicator_1 = (CounterX > 435) & (CounterX < 445);
wire w_x2 = (CounterX > 563) & (CounterX < 664);
wire w_x_indicator_2 = (CounterX > 563) & (CounterX < 574);
wire w_x3 = (CounterX > 691) & (CounterX < 792);
wire w_x_indicator_3 = (CounterX > 691) & (CounterX < 702);

wire w_y0 = (CounterY > 19) & (CounterY < 120);
wire w_y_indicator_0 = (CounterX > 19) & (CounterX < 30);
wire w_y1 = (CounterY > 147) & (CounterY < 248);
wire w_y_indicator_1 = (CounterX > 147) & (CounterX < 158);
wire w_y2 = (CounterY > 275) & (CounterY < 376);
wire w_y_indicator_2 = (CounterX > 275) & (CounterX < 286);

wire w_logo = (CounterX > 19) & (CounterY > 9) & (CounterY < 279) & (CounterX < 50);

wire im_0  = w_x0 & w_y0;
wire im_1  = w_x1 & w_y0;
wire im_2  = w_x2 & w_y0;
wire im_3  = w_x3 & w_y0;

wire im_4  = w_x0 & w_y1;
wire im_5  = w_x1 & w_y1;
wire im_6  = w_x2 & w_y1;
wire im_7  = w_x3 & w_y1;

wire im_8  = w_x0 & w_y2;
wire im_9  = w_x1 & w_y2;
wire im_10 = w_x2 & w_y2;
wire im_11 = w_x3 & w_y2;

wire im_0_indicator  = w_x_indicator_0 & w_y_indicator_0;
wire im_1_indicator  = w_x_indicator_1 & w_y_indicator_0;
wire im_2_indicator  = w_x_indicator_2 & w_y_indicator_0;
wire im_3_indicator  = w_x_indicator_3 & w_y_indicator_0;
  
wire im_4_indicator  = w_x_indicator_0 & w_y_indicator_1;
wire im_5_indicator  = w_x_indicator_1 & w_y_indicator_1;
wire im_6_indicator  = w_x_indicator_2 & w_y_indicator_1;
wire im_7_indicator  = w_x_indicator_3 & w_y_indicator_1;
  
wire im_8_indicator  = w_x_indicator_0 & w_y_indicator_2;
wire im_9_indicator  = w_x_indicator_1 & w_y_indicator_2;
wire im_10_indicator = w_x_indicator_2 & w_y_indicator_2;
wire im_11_indicator = w_x_indicator_3 & w_y_indicator_2;

wire inHighlightedImgArea;
wire inHighlightedPrdArea;

Encoder16x4 Encoder16x4_inst0(
	.in({3'b0,w_logo,im_11,im_10,im_9,im_8,im_7,im_6,im_5,im_4,im_3,im_2,im_1,im_0}),
	.out(ImageID),
	.valid(isImage)
);

/* IMAGE LOCATION CONTROL END */

assign inHighlightedImgArea =   ((HighlightedProductList[0]  & im_0_indicator ) |
											(HighlightedProductList[1]  & im_1_indicator ) |
											(HighlightedProductList[2]  & im_2_indicator ) |
											(HighlightedProductList[3]  & im_3_indicator ) |
											(HighlightedProductList[4]  & im_4_indicator ) |
											(HighlightedProductList[5]  & im_5_indicator ) |
											(HighlightedProductList[6]  & im_6_indicator ) |
											(HighlightedProductList[7]  & im_7_indicator ) |
											(HighlightedProductList[8]  & im_8_indicator ) |
											(HighlightedProductList[9]  & im_9_indicator ) |
											(HighlightedProductList[10] & im_10_indicator) |
											(HighlightedProductList[11] & im_11_indicator) );
									
assign inHighlightedPrdArea =   ((HighlightedProductList[0]  & p_0_indicator ) |
											(HighlightedProductList[1]  & p_1_indicator ) |
											(HighlightedProductList[2]  & p_2_indicator ) |
											(HighlightedProductList[3]  & p_3_indicator ) |
											(HighlightedProductList[4]  & p_4_indicator ) |
											(HighlightedProductList[5]  & p_5_indicator ) |
											(HighlightedProductList[6]  & p_6_indicator ) |
											(HighlightedProductList[7]  & p_7_indicator ) |
											(HighlightedProductList[8]  & p_8_indicator ) |
											(HighlightedProductList[9]  & p_9_indicator ) |
											(HighlightedProductList[10] & p_10_indicator) |
											(HighlightedProductList[11] & p_11_indicator) );
always @ (negedge CLK)
	begin
		inHighlightedPrdArea_Reg 	<= inHighlightedPrdArea;
		inHighlightedImgArea_Reg 	<= inHighlightedImgArea;
		SW2_Reg 							<= SW2;
	end
					
assign inHighlightedArea = ((SW2_Reg & inHighlightedPrdArea_Reg) | (~SW2_Reg & inHighlightedImgArea_Reg));
									
assign PixelBus 	= (inHighlightedArea) ? 24'h0000FF:{(R_WIDTH+G_WIDTH+B_WIDTH){1'b1}};	// Red/White

always @ (posedge CLK)
	if(isImage)
		ROM_Addr <= ImageID*PRDCT_PIC_WIDTH*PRDCT_PIC_HEIGHT + (CounterX-(308+ImageID[1:0]<<7)) + (PRDCT_PIC_WIDTH)*(CounterY-(20+((ImageID>>2)<<7)));
	else
		ROM_Addr <= {ROM_ADDR_BUS_WIDTH{1'b0}};
		
endmodule
