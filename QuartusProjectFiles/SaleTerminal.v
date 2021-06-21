/*
 *		Module		:	SaleTerminal
 * 	Description	: 	TOP LEVEL IMPLEMENTATION
 *		Owner			: 	Ataberk ÖKLÜ
 */

module SaleTerminal( 
	// DE1 - SoC Pins
	// Generic
	input wire CLOCK_50,
	input wire RESET_N,
	
	// Button Controller
	input  wire [3:0] KEY,
	input  wire [2:0] SW,
	
	// VGA Controller
	output wire [7:0] VGA_R,
	output wire [7:0] VGA_G,
	output wire [7:0] VGA_B,
	output wire VGA_BLANK_N,
	output wire VGA_CLK,
	output wire VGA_HS,
	output wire VGA_VS,
	output wire VGA_SYNC_N,
	
	// BarcodeController
	output wire[6:0] 	HEX0,
	output wire[6:0] 	HEX1,
	output wire[6:0] 	HEX2,
	output wire[6:0] 	HEX3,
	output wire[6:0] 	HEX4,
	output wire[6:0] 	HEX5,
	
	output wire[9:0] 	LEDR	
	
);


/* BUTTON CONTROLLER BEGIN */

wire [3:0] CMD_En;
wire [3:0] CMD_Reg;
wire [3:0] KEY_En;
wire [3:0] KEY_Reg;
wire [2:0] CleanSWOut;
wire [3:0] CleanButtonOut;
ButtonController ButtonController_inst0(
	.KEY(KEY),
   .SW(SW),
   .CLOCK_50(CLOCK_50),
	// .ButtonSampleCLK?
   .CMD_En(CMD_En),
   .KEY_En(KEY_En),
   .CMD_Reg(CMD_Reg),
   .KEY_Reg(KEY_Reg),
   .CleanSWOut(CleanSWOut),
	.CleanButtonOut(CleanButtonOut)
);

/* BUTTON CONTROLLER END */


/* VGA CONTROLLER BEGIN */
wire VGA_Controller_RSTN;
assign VGA_Controller_RSTN = RESET_N;
wire [11:0] HighlightedProductList;

VGA_Controller VGA_Controller_inst0(
	// Generic
	.CLOCK_50(CLOCK_50),
	.RESET_N(VGA_Controller_RSTN),
	
	// Button Controller
	.SW2(CleanSWOut[2]),
	// HoverController
	.HighlightedProductList(HighlightedProductList),
	
	// DE1 - SoC
	.VGA_R(VGA_R),
	.VGA_G(VGA_G),
	.VGA_B(VGA_B),
	.VGA_CLK(VGA_CLK),
   .VGA_HS(VGA_HS),
   .VGA_VS(VGA_VS),
   .VGA_BLANK_N(VGA_BLANK_N),
	.VGA_SYNC_N(VGA_SYNC_N)
);

/* VGA CONTROLLER END */


/* STATE MACHINE BEGIN */
wire [3:0] ProductQuantity;
wire BasketController_Enable_Pulse;
//wire [1:0] Dir_in;
wire [2:0] State;
wire Barcode_Enable_Pulse;				// From StateMachine
wire RSTN_BarcodeController_Pulse;	// From StateMachine
wire [3:0] Barcode_Digit_out;			// From StateMachine
wire [3:0] ProductID_out;

wire 			BarcodeDigitCompleted;
wire[3:0] 	Barcode_Digit_0;
wire[3:0] 	Barcode_Digit_1;
wire[3:0] 	Barcode_Digit_2;
wire[3:0] 	Barcode_Digit_3;
wire ValidID;

StateMachine StateMachine_inst0(
	.CLOCK_50(CLOCK_50),
	// RESET_N,
	.CMD_Reg(CMD_Reg),
	.KEY_Reg(KEY_Reg),
	.KEY_En(KEY_En),
	.CMD_En(CMD_En),
	.CleanSWOut(CleanSWOut[2:1]),
	.Barcode_DigitIn_0(Barcode_Digit_0),
	.Barcode_DigitIn_1(Barcode_Digit_1),
	.Barcode_DigitIn_2(Barcode_Digit_2),
	.Barcode_DigitIn_3(Barcode_Digit_3),
	.BarcodeDigitCompleted(BarcodeDigitCompleted),

	.Barcode_Enable_Pulse(Barcode_Enable_Pulse),
	.RSTN_BarcodeController_Pulse(RSTN_BarcodeController_Pulse),
	.Barcode_Digit_out(Barcode_Digit_out),

	.ProductQuantity(ProductQuantity),
	.ProductID_out(ProductID_out),
	.BasketController_Enable_Pulse(BasketController_Enable_Pulse),
	.Product_valid(ValidID),
	
	.State(State),

	//.Dir_out(Dir_in)	// To Direction2ProductID
);

/* STATE MACHINE END */


/* BARCODE CONTROLLER BEGIN */
wire[2:0] 	NumOfBarcodeDigitsEntered;

BarcodeController BarcodeController_inst0(
	.ENABLE(Barcode_Enable_Pulse),
	.CLK(CLOCK_50),
	.RESET_N(RSTN_BarcodeController_Pulse && RESET_N),
	.Digit_in(Barcode_Digit_out),
	.BarcodeDigitCompleted(BarcodeDigitCompleted),
	.NumOfBarcodeDigitsEntered(NumOfBarcodeDigitsEntered),
	.Barcode_Digit_0(Barcode_Digit_0),
	.Barcode_Digit_1(Barcode_Digit_1),
	.Barcode_Digit_2(Barcode_Digit_2),
	.Barcode_Digit_3(Barcode_Digit_3),
	.HEX0(HEX0),
	.HEX1(HEX1),
	.HEX2(HEX2),
	.HEX3(HEX3)
);
/* BARCODE CONTROLLER END */

/* HOVER CONTROLLER BEGIN */
HoverController HoverController_inst0(
	.CLK(CLOCK_50),
	.CleanSWOut(CleanSWOut[2:1]),
	.Barcode_Digit_0(Barcode_Digit_0),
	.Barcode_Digit_1(Barcode_Digit_1),
	.Barcode_Digit_2(Barcode_Digit_2),
	.Barcode_Digit_3(Barcode_Digit_3),
	.NumOfBarcodeDigitsEntered(NumOfBarcodeDigitsEntered),
	.BarcodeCompleted(BarcodeDigitCompleted),
	.SelectedProductID(ProductID_out),				// From Direction2ProductID
	.HighlightedProductList(HighlightedProductList),
	.HEX4(HEX4),
	.HEX5(HEX5),
	.ValidID(ValidID)
);
/* HOVER CONTROLLER END */


/* LED CONTROLLER BEGIN */
LED_Controller LED_Controller_inst0(
	.State(State),
	.CleanSWOut(CleanSWOut),
	.KEY_Reg(KEY_Reg),
	.CMD_Reg(CMD_Reg),
	.LEDR(LEDR)
);
/* LED CONTROLLER END */

endmodule
