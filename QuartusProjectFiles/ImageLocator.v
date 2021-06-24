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
	parameter PRDCT_PIC_HEIGHT = 100,
	
	parameter LOGO_WIDTH			= 260,
	parameter LOGO_HEIGHT 		= 40
)(
	input wire CLK,

	// HVSync Interface
	input  wire[CNTR_WIDTH_H-1:0] 	CounterX,
	input  wire[CNTR_WIDTH_V-1:0] 	CounterY,
	
	// HoverController Interface
	input  wire[11:0]						HighlightedProductList,
	
	// Button Controller Interface
	input  wire SW2,
	
	input  wire[3:0] BasketProductNum,
	
	output reg  [ROM_ADDR_BUS_WIDTH-1:0]  ROM_Addr,
	output wire [R_WIDTH+G_WIDTH+B_WIDTH-1:0] PixelBus,
	output wire isImage,
	output wire inHighlightedArea
);
reg inHighlightedPrdArea_Reg 	= 0;
reg inHighlightedImgArea_Reg 	= 0;
reg SW2_Reg							= 0;

/* BASKET LOCATION CONTROL BEGIN */
wire w_x_prdct 			= (CounterX > 19)  & (CounterX < 280);
wire w_x_prdct_brdr		= (CounterX == 20) | (CounterX == 60) | (CounterX == 280);

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



// 4 Lines for product 0
wire w_line_p0_x 			= w_y_indicator_p0 & w_x_prdct_brdr;
wire w_line_p0_y 			= w_x_prdct & (CounterY == 60 | CounterY == 100);
wire w_border_p0 			= w_line_p0_x | w_line_p0_y;

// 3 lines for others
wire w_line_p1_x 			= w_y_indicator_p1 & w_x_prdct_brdr;
wire w_line_p1_y 			= w_x_prdct & (CounterY == 140);
wire w_border_p1 			= w_line_p1_x | w_line_p1_y;

wire w_line_p2_x 			= w_y_indicator_p2 & w_x_prdct_brdr;
wire w_line_p2_y 			= w_x_prdct & (CounterY == 180);
wire w_border_p2 			= w_line_p2_x | w_line_p2_y;

wire w_line_p3_x 			= w_y_indicator_p3 & w_x_prdct_brdr;
wire w_line_p3_y 			= w_x_prdct & (CounterY == 220);
wire w_border_p3 			= w_line_p3_x | w_line_p3_y;

wire w_line_p4_x 			= w_y_indicator_p4 & w_x_prdct_brdr;
wire w_line_p4_y 			= w_x_prdct & (CounterY == 260);
wire w_border_p4 			= w_line_p4_x | w_line_p4_y;

wire w_line_p5_x 			= w_y_indicator_p5 & w_x_prdct_brdr;
wire w_line_p5_y 			= w_x_prdct & (CounterY == 300);
wire w_border_p5 			= w_line_p5_x | w_line_p5_y;

wire w_line_p6_x 			= w_y_indicator_p6 & w_x_prdct_brdr;
wire w_line_p6_y 			= w_x_prdct & (CounterY == 340);
wire w_border_p6 			= w_line_p6_x | w_line_p6_y;

wire w_line_p7_x 			= w_y_indicator_p7 & w_x_prdct_brdr;
wire w_line_p7_y 			= w_x_prdct & (CounterY == 380);
wire w_border_p7 			= w_line_p7_x | w_line_p7_y;

wire w_line_p8_x 			= w_y_indicator_p8 & w_x_prdct_brdr;
wire w_line_p8_y 			= w_x_prdct & (CounterY == 420);
wire w_border_p8 			= w_line_p8_x | w_line_p8_y;

wire w_line_p9_x 			= w_y_indicator_p9 & w_x_prdct_brdr;
wire w_line_p9_y 			= w_x_prdct & (CounterY == 460);
wire w_border_p9 			= w_line_p9_x | w_line_p9_y;

wire w_line_p10_x 		= w_y_indicator_p10 & w_x_prdct_brdr;
wire w_line_p10_y 		= w_x_prdct & (CounterY == 500);
wire w_border_p10 		= w_line_p10_x | w_line_p10_y;

wire w_line_p11_x 		= w_y_indicator_p11 & w_x_prdct_brdr;
wire w_line_p11_y 		= w_x_prdct & (CounterY == 540);
wire w_border_p11 		= w_line_p11_x | w_line_p11_y;

wire [11:0] border 		= {w_border_p11, w_border_p10, w_border_p9, w_border_p8, w_border_p7, w_border_p6, w_border_p5, w_border_p4, w_border_p3, w_border_p2, w_border_p1, w_border_p0};

wire onBoard = |(border & (~(12'hFFF<<BasketProductNum)));
/* BASKET LOCATION CONTROL END */

/* LINES BEGIN */

wire w_line0 = (CounterX == 300);
wire w_line1 = (CounterX > 300) & (CounterY == 404);
wire w_line2 = (CounterX < 300) & (CounterY == 50);

wire onLine  = w_line0 | w_line1 | w_line2 | onBoard;
/* LINES END */

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
wire w_y_indicator_0 = (CounterY > 19) & (CounterY < 30);
wire w_y1 = (CounterY > 147) & (CounterY < 248);
wire w_y_indicator_1 = (CounterY > 147) & (CounterY < 158);
wire w_y2 = (CounterY > 275) & (CounterY < 376);
wire w_y_indicator_2 = (CounterY > 275) & (CounterY < 286);

wire w_logo = w_x_prdct & (CounterY > 4) & (CounterY < 45);

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
					
assign inHighlightedArea = ((SW2_Reg & inHighlightedPrdArea_Reg & |BasketProductNum) | (~SW2_Reg & inHighlightedImgArea_Reg));
									
assign PixelBus 	= (inHighlightedArea) ? 24'h0000FF:(onLine)?{(R_WIDTH+G_WIDTH+B_WIDTH){1'b0}}:{(R_WIDTH+G_WIDTH+B_WIDTH){1'b1}};	// Red/White

always @ (posedge CLK)
	if(isImage)
		ROM_Addr <= ImageID*PRDCT_PIC_WIDTH*PRDCT_PIC_HEIGHT + (CounterX-((w_logo)?20:(308+ImageID[1:0]*128))) + ((w_logo)?LOGO_WIDTH:PRDCT_PIC_WIDTH)*(CounterY-((w_logo)?5:(20+((ImageID[3:2])*128))));
	else
		ROM_Addr <= {ROM_ADDR_BUS_WIDTH{1'b0}};
		
endmodule
