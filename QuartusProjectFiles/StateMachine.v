/*
 *		Module		:	StateMachine
 * 	Description	: 	This block handles state processes and State Transitions
 *		Inputs		: 	Control inputs from various Controllers
 *
 *		Outputs		: 	Command outputs to various Controllers and Helper Modules
 *		Owner			: 	Ataberk ÖKLÜ
 */

module StateMachine(
	// Button Controller
	/*
	input wire [3:0] CMD_En,
	input wire [3:0] KEY_En,
	*/
	input wire [3:0] CMD_Reg,
	input wire [3:0] KEY_Reg,
	input wire [2:1] CleanSWOut,
	
	// input wire [2:0] CleanSWOut,
	
	// BarcodeController
	input wire BarcodeDigitCompleted,
	// input wire[2:0] NumOfBarcodeDigitsEntered,
	input wire[3:0] Barcode_DigitIn_0,
	input wire[3:0] Barcode_DigitIn_1,
	input wire[3:0] Barcode_DigitIn_2,
	input wire[3:0] Barcode_DigitIn_3,
	
	// Barcode2ProductID
	/*
	input wire [3:0] 	ProductID,
	input wire 			valid,
	*/
	
	// Generic
	input wire CLOCK_50,
	input wire RESET_N,
	
	// Button Controller
	/*
	output  wire CLK_ButtonController,
	*/
	
	// Barcode Controller
	output  wire Barcode_Enable,
	/*
	output  wire CLK_BarcodeController,
	*/
	output  wire RSTN_BarcodeController_Pulse,
	output  reg[3:0] Barcode_Digit_in,
	
	// VGA Controller
	/*
	output wire RSTN_VGA,
	output wire[11:0] HighlightedProductList_VGA,
	*/
	
	// Barcode2ProductID
	/*
	output wire[3:0] Barcode_DigitOut_0,
	output wire[3:0] Barcode_DigitOut_1,
	output wire[3:0] Barcode_DigitOut_2,
	output wire[3:0] Barcode_DigitOut_3,
	*/
	
	// BasketController
	output reg  [2:0] ProductQuantity,
	output reg  [2:0] ProductID_out,
	
	// InteractiveController
	output reg  [1:0] Dir_out // (<- ^ v ->) (00 01 10 11) 
	
);

reg RST_BarcodeController_Level 	= 0;	// Active High
reg RST_Direction2ProductID_Level= 0;	// Active High
reg EN_BarcodeController_Level 	= 0;	// Active High
reg EN_Direction2ProductID_Level = 0;	// Active High

wire RST_BarcodeController_Pulse;
wire [2:0] 	ProductID_Barcode;
wire [2:0] 	ProductID_Direction;
wire 			Product_valid;
wire Direction2ProductID_En;
wire RST_Direction2ProductID_Pulse;
wire RSTN_Direction2ProductID_Pulse;


// BarcodeController Reset Pulse Generator
ButtonLevelPulseConverter BarcodeControllerResetPulseGenerator_inst0(
	.CLK(CLOCK_50),
	.CleanButtonIn(RST_BarcodeController_Level),
	.ButtonPulseOut(RST_BarcodeController_Pulse)
);
// Since RST is Active Low, take inverse.
assign RSTN_BarcodeController_Pulse = ~RST_BarcodeController_Pulse;


// BarcodeController Enable Pulse Generator
ButtonLevelPulseConverter BarcodeControllerEnablePulseGenerator_inst0(
	.CLK(CLOCK_50),
	.CleanButtonIn(EN_BarcodeController_Level),
	.ButtonPulseOut(Barcode_Enable)
);


// Barcode Validity Controller
Barcode2ProductID Barcode2ProductID_inst0(
	.BarcodeDigit_0(Barcode_DigitIn_0),
	.BarcodeDigit_1(Barcode_DigitIn_1),
	.BarcodeDigit_2(Barcode_DigitIn_2),
	.BarcodeDigit_3(Barcode_DigitIn_3),
	.ProductID(ProductID_Barcode),
	.valid(Product_valid)
);

// Direction2ProductID Reset Pulse Generator
ButtonLevelPulseConverter Direction2ProductIDResetPulseGenerator_inst0(
	.CLK(CLOCK_50),
	.CleanButtonIn(RST_Direction2ProductID_Level),
	.ButtonPulseOut(RST_Direction2ProductID_Pulse)
);
// Since RST is Active Low, take inverse.
assign RSTN_Direction2ProductID_Pulse = ~RST_Direction2ProductID_Pulse;


// Direction2ProductID Enable Pulse Generator
ButtonLevelPulseConverter Direction2ProductIDEnablePulseGenerator_inst0(
	.CLK(CLOCK_50),
	.CleanButtonIn(EN_Direction2ProductID_Level),
	.ButtonPulseOut(Direction2ProductID_En)
);

// Interactive Selection  for BasketController
Direction2ProductID Direction2ProductID_inst0(
	.RESET_N(RSTN_Direction2ProductID_Pulse),
	.Enable(Direction2ProductID_En),
	.CLOCK(CLOCK_50),
	.Dir_in(Dir_out),
	.ProductID(ProductID_Direction)	// For Basket
);


// State Holder Register
reg [3:0] State;

initial 
	State <= State0_Start;

// State List
localparam State0_Start 		= 'd0;
localparam State1_Idle 			= 'd1;
localparam State2_Barcode 		= 'd2;
localparam State3_Interactive = 'd3;
localparam State4_Quantity 	= 'd4;
localparam State5_BasketEdit 	= 'd5;
localparam State6_EndShopping = 'd6;


// State Machine
always @ (posedge CLOCK_50)
	case(State)
		'd0	:	// Start State
					begin
						// Reset Barcode
						RST_BarcodeController_Level <= 1;
						// Reset Basket
						;
						// Reset Quantity (if stored)
						;
						// Reset ***
						;
						// Go to IDLE State
						State <= State1_Idle;
					end
					
		'd1	:	// IDLE State
					begin
						// Deactivate Barcode Reset Level for further usages.
						RST_BarcodeController_Level <= 0;
						
						if (CMD_Reg[0]) 						// Select Button is Pressed?
							State <= State6_EndShopping;	// 	End the Shopping
						else if(CleanSWOut[2])				// SW2 is Active?
							State <= State5_BasketEdit;	// 	Go to Basket Editing Mode
						else if (CleanSWOut[1])				// SW1 is Active?
							State <= State3_Interactive;	// 	Go to Interactive Mode
						else										// None is active?
							State <= State2_Barcode;		// 	Go to Barcode Mode
					end
					
		'd2	:	// Barcode Mode State
					begin
						// Deactivate Barcode Reset Level for further usages.
						RST_BarcodeController_Level 	<= 0;
						// Deactivate Barcode Enable Level for further usages.
						EN_BarcodeController_Level 	<= 0;
								
						if(CleanSWOut[1] || CleanSWOut[2])			// SW1 or SW2 active?
							State <= State1_Idle;						// 	Go to IDLE State for proper handling
						else if(!BarcodeDigitCompleted)				// Barcode is NOT completed?
							if(|KEY_Reg)									// 	If any Digit Key is pressed
								begin											// 		Then Add to Barcode Register
									// Add to shift register
									EN_BarcodeController_Level <= 1;	// Enable the Barcode Shift Register
									// Case or Simple Encoder to extract the pressed key
									case(KEY_Reg)
										4'b0001: Barcode_Digit_in <= 'd1;
										4'b0010: Barcode_Digit_in <= 'd2;
										4'b0100: Barcode_Digit_in <= 'd3;
										4'b1000: Barcode_Digit_in <= 'd4;
										default: Barcode_Digit_in <= 'd12;	// Never Reached
									endcase
								end
							else
								State <= State2_Barcode;				// Keep in this state
						else													// Barcode is completed
							// Barcode Completed (Wait For Select Button)
							if(CMD_Reg[0])									// Approved by Select Button 
								if(Product_valid)							// Is Product is valid?
									begin
										// BasketController Handle
										// Send ProductID
										ProductID_out <= ProductID_Barcode;// ProdcutID From Barcode2ProductID
										// Enable?
										;
										State <= State4_Quantity;			//		Then Go to Quantity Sel State
									end
								else											// Else
									begin										// Reset the barcode & Show Err?
										// Text Controller - Show Err?
										;
										// Reset Barcode
										RST_BarcodeController_Level <= 1;
										State <= State2_Barcode;
									end
							else												// If not approved by Select Button yet
								State <= State2_Barcode;				// 	Wait in this state
								
					end
					
		'd3	:	
					// Interactive Selection Mode State
					begin
						EN_Direction2ProductID_Level 	= 0;
						RST_Direction2ProductID_Level = 0;
						if(CleanSWOut[1])								// SW1 still Active?
							if(CMD_Reg[0])								// Select Button is Pressed?
								begin
									// Basket Controller Send ProductID?
									// 	Enable?
									ProductID_out <= ProductID_Direction;
									;
									State <= State4_Quantity;			// 	Go to Quantity Selection
									RST_Direction2ProductID_Level = 1;
								end
							else
								if(|KEY_Reg)							// Any Direction Key is pressed?
									begin
										// Highlight Controller Handle
										// Dir_out -> Dir_in@Direction2ProductID:ProductID -> InteractiveController
										// Direction2Product ID Handle
										EN_Direction2ProductID_Level = 1;
										case(KEY_Reg)
											4'b0001: Dir_out <= 2'b11;	// Most Right Key is KEY[0]
											4'b0010: Dir_out <= 2'b10;	// Down
											4'b0100: Dir_out <= 2'b01;	// Up
											4'b1000: Dir_out <= 2'b00; // Most Left Key is KEY[3]
											default: Dir_out <= 2'bxx;	// Never Reached
										endcase
										State <= State3_Interactive;	// 	Stay in this State
									end
								else
									State <= State3_Interactive;	// Wait Direction input in this State
						else												// SW1 is Deactivated
							begin
								RST_Direction2ProductID_Level = 1;	// 	Reset Current Position
								State <= State1_Idle;					// 	Go to IDLE State
							end
					end
					
		'd4	:	// Quantity Selection State
					begin
						if(|KEY_Reg)								// Any Digit is Pressed?
							begin
									// Case or Simple Encoder to extract the pressed key
									case(KEY_Reg)
										4'b0001: ProductQuantity <= 'd1;
										4'b0010: ProductQuantity <= 'd2;
										4'b0100: ProductQuantity <= 'd3;
										4'b1000: ProductQuantity <= 'd4;
										default: ProductQuantity <= 'd0;	// Never Reached
									endcase
									// TODO Basket Controller handling
									//		Enable?
									;
									// Then Go to IDLE State for new interactions
									State <= State1_Idle;
								end
						else										// Else wait Digit in this state
							State <= State4_Quantity;
					end
		'd5	:	
					if(CleanSWOut[2])								// SW2 still Active?
						if(CMD_Reg[0])								// Select Button is Pressed?
							begin
								// Basket Controller Cancel Prd
								;
								// Stay in the Same State
								State <= State5_BasketEdit;	// Stay in the Same State
							end
						else		
							if(|KEY_Reg)							// Any Direction Key is pressed?
								begin
									// Highlight Controller Handle
									;
									State <= State5_BasketEdit;// 	And Stay in this State
								end
							else
								State <= State5_BasketEdit;	// Else Stay in this State
					else												// SW1 is Deactivated
						State <= State1_Idle;					// 	Go to IDLE State
		'd6	: 	
					// End Shopping Story
					/***/
					// Then a Fresh Start
					State <= State0_Start;
		default:	
					begin
						State <= State0_Start;
					end
	endcase

endmodule
