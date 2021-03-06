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
	input wire [3:0] CMD_En,
	input wire [3:0] KEY_En,
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
	
	// BasketController
	input wire [3:0] BasketProductNum,
	
	// Generic
	input wire CLOCK_50,
	input wire RESET_N,
	
	// Button Controller
	/*
	output  wire CLK_ButtonController,
	*/
	
	// Barcode Controller
	output  wire Barcode_Enable_Pulse,
	/*
	output  wire CLK_BarcodeController,
	*/
	output  wire RSTN_BarcodeController_Pulse,
	output  reg[3:0] Barcode_Digit_out,
	
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
	
	// LED Controller
	output wire  [2:0] State_out,
	
	// BasketController
	output reg  [3:0] ProductQuantity,
	output reg  [3:0] ProductID_out,
	output wire BasketController_Enable_Pulse,
	output wire BasketController_Cancel_Pulse,
	output wire BasketController_RSTN_Pulse,
	
	// Hover Controller
	output wire Product_valid
	
	// InteractiveController
	//output reg  [1:0] Dir_out // (<- ^ v ->) (00 01 10 11)

	
);

reg  [1:0] Dir_out;
reg  [2:0] State;
assign State_out = State;

reg RST_BarcodeController_Level 	= 0;	// Active High
reg RST_Direction2ProductID_Level= 0;	// Active High
reg RST_BasketController_Level	= 0;	// Active High
reg EN_BarcodeController_Level 	= 0;	// Active High
reg EN_Direction2ProductID_Level = 0;	// Active High
reg EN_BasketController_Level 	= 0;	// Active High
reg CNL_BasketController_Level 	= 0;  // Active High

wire RST_BarcodeController_Pulse;
wire [3:0] 	ProductID_Barcode;
wire [3:0] 	ProductID_Direction;
wire Direction2ProductID_En;
wire RST_Direction2ProductID_Pulse;
wire RSTN_Direction2ProductID_Pulse;
wire RST_BasketController_Pulse;

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
	.ButtonPulseOut(Barcode_Enable_Pulse)
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
	.RESET_N(RSTN_Direction2ProductID_Pulse & RESET_N),
	.Enable(Direction2ProductID_En),
	.CLOCK(CLOCK_50),
	.Dir_in(Dir_out),
	.CleanSW2(CleanSWOut[2]),
	.BasketProductNum(BasketProductNum),	// From Basket Controller
	.ProductID(ProductID_Direction)	// For Basket
);

// BasketController Enable Pulse Generator
ButtonLevelPulseConverter BasketControllerEnablePulseGenerator_inst0(
	.CLK(CLOCK_50),
	.CleanButtonIn(EN_BasketController_Level),
	.ButtonPulseOut(BasketController_Enable_Pulse)
);


// BasketController Cancel Pulse Generator
ButtonLevelPulseConverter BasketControllerCancelPulseGenerator_inst0(
	.CLK(CLOCK_50),
	.CleanButtonIn(CNL_BasketController_Level),
	.ButtonPulseOut(BasketController_Cancel_Pulse)
);

// BasketController Reset Pulse Generator
ButtonLevelPulseConverter BasketControllerResetPulseGenerator_inst0(
	.CLK(CLOCK_50),
	.CleanButtonIn(RST_BasketController_Level),
	.ButtonPulseOut(RST_BasketController_Pulse)
);
// Since RST is Active Low, take inverse.
assign BasketController_RSTN_Pulse = ~RST_BasketController_Pulse;


// State List
localparam State0_Start 		= 3'd0;
localparam State1_Idle 			= 3'd1;
localparam State2_Barcode 		= 3'd2;
localparam State3_Interactive = 3'd3;
localparam State4_Quantity 	= 3'd4;
localparam State5_BasketEdit 	= 3'd5;
localparam State6_EndShopping = 3'd6;

initial 
	State <= State0_Start;


// State Machine
always @ (posedge CLOCK_50)
	case(State)
		State0_Start:	// Start State
					begin
						// Reset Barcode
						RST_BarcodeController_Level <= 1;
						// Reset Basket
						RST_BasketController_Level <= 1;
						// Reset Quantity (if stored)
						RST_Direction2ProductID_Level <= 1;
						// Reset ***
						
						// Go to IDLE State
						State <= State1_Idle;
					end
					
		State1_Idle	:	// IDLE State
					begin
						// Deactivate Barcode Reset Level for further usages.
						EN_BasketController_Level 		<= 0;
						RST_BarcodeController_Level 	<= 0;
						RST_Direction2ProductID_Level <= 0;
						RST_BasketController_Level		<= 0;
						
						if (CMD_Reg[3] & CMD_En[3]) 						// Select Button is Pressed?
							State <= State6_EndShopping;	// 	End the Shopping
						else if(CleanSWOut[2])				// SW2 is Active?
							begin
								RST_BarcodeController_Level <= 1;
								//ProductID_out <= 4'b1111;
								State <= State5_BasketEdit;	// 	Go to Basket Editing Mode
							end
						else if (CleanSWOut[1])				// SW1 is Active?
							begin
								RST_Direction2ProductID_Level <= 1;
								RST_BarcodeController_Level <= 1;
								//ProductID_out <= 4'b1111;
								State <= State3_Interactive;	// 	Go to Interactive Mode
							end
						else										// None is active?
							begin
								State <= State2_Barcode;		// 	Go to Barcode Mode
								//ProductID_out <= 4'b1111;
							end
					end
					
		State2_Barcode	:	// Barcode Mode State
					begin
						// Deactivate Barcode Reset Level for further usages.
						RST_BarcodeController_Level 	<= 0;
						// Deactivate Barcode Enable Level for further usages.
						EN_BarcodeController_Level 	<= 0;
								
						if(CleanSWOut[1] | CleanSWOut[2])			// SW1 or SW2 active?
							begin
								RST_BarcodeController_Level 	<= 1;
								State <= State1_Idle;					// 	Go to IDLE State for proper handling
							end
						else if(CMD_Reg[0] & CMD_En[0])				// End Shopping Pressed?
								State <= State6_EndShopping;
						else if(CMD_Reg[1] & CMD_En[1])				// Cancel is pressed
									begin
										RST_BarcodeController_Level 	<= 1;
										State <= State2_Barcode;
									end							
						else if(!BarcodeDigitCompleted)				// Barcode is NOT completed?
									if(|(KEY_Reg & KEY_En))				// 	If any Digit Key is pressed
										begin											// 		Then Add to Barcode Register
											// Add to shift register
											// Case or Simple Encoder to extract the pressed key
											case(KEY_Reg)
												4'b0001: Barcode_Digit_out <= 'd4;
												4'b0010: Barcode_Digit_out <= 'd3;
												4'b0100: Barcode_Digit_out <= 'd2;
												4'b1000: Barcode_Digit_out <= 'd1;
												default: Barcode_Digit_out <= 'd15;	// Never Reached
											endcase
											EN_BarcodeController_Level <= 1;	// Enable the Barcode Shift Register
										end
									else
										State <= State2_Barcode;				// Keep in this state
						else													// Barcode is completed
							begin
								// Barcode Completed (Wait For Select Button)
								if(Product_valid)							// Approved by Select Button 
									if(CMD_Reg[3] & CMD_En[3])							// Is Product is valid?
										begin
											// BasketController Handle
											// Send ProductID
											ProductID_out <= ProductID_Barcode;// ProdcutID From Barcode2ProductID
											// Enable?
											
											RST_BarcodeController_Level 	<= 1;
											State <= State4_Quantity;			//		Then Go to Quantity Sel State
										end
									else											// Else
										begin
											ProductID_out <= ProductID_Barcode;
											State <= State2_Barcode;		// Wait
										end
								else												// If not approved by Select Button yet
									begin
										// Show Error
										
										ProductID_out <= ProductID_Barcode;
										// Reset the Barcode Register
										RST_BarcodeController_Level <= 1;
										// 	Wait in this state
										State <= State2_Barcode;				
									end
							end
								
					end
					
		State3_Interactive	:	
					// Interactive Selection Mode State
					begin
						EN_Direction2ProductID_Level 	<= 0;
						RST_Direction2ProductID_Level <= 0;
						RST_BarcodeController_Level  <= 0;
						if(CleanSWOut[2])
							begin
								RST_Direction2ProductID_Level <= 1;
								State <= State5_BasketEdit;
							end
						else if(CleanSWOut[1])								// SW1 still Active?
							if(CMD_Reg[0] & CMD_En[0])				// End Shopping Pressed?
								State <= State6_EndShopping;
							else if(CMD_Reg[3] & CMD_En[3])								// Select Button is Pressed?
								begin
									// Basket Controller Send ProductID?
									// 	Enable?
									ProductID_out <= ProductID_Direction;				
									RST_Direction2ProductID_Level <= 1;
									
									State <= State4_Quantity;			// 	Go to Quantity Selection
								end
							else
								begin
									ProductID_out <= ProductID_Direction;
									if(|(KEY_Reg & KEY_En))							// Any Direction Key is pressed?
										begin
											// Highlight Controller Handle
											// Dir_out -> Dir_in@Direction2ProductID:ProductID -> InteractiveController
											// Direction2Product ID Handle
											EN_Direction2ProductID_Level <= 1;
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
										begin
											State <= State3_Interactive;	// Wait Direction input in this State
										end
								end
						else												// SW1 is Deactivated
							begin
								RST_Direction2ProductID_Level <= 1;	// 	Reset Current Position
								State <= State1_Idle;					// 	Go to IDLE State
							end
					end
					
		State4_Quantity	:	// Quantity Selection State
					begin
						RST_BarcodeController_Level 	<= 0;
						EN_BasketController_Level <= 0;
						if(CMD_Reg[1] & CMD_En[1])				// Cancel is pressed
							begin
								RST_BarcodeController_Level 	<= 1;
								State <= State1_Idle;
							end
						else if(|(KEY_Reg & KEY_En))								// Any Digit is Pressed?
							begin
									// Case or Simple Encoder to extract the pressed key
									case(KEY_Reg)
										4'b0001: ProductQuantity <= 'd4;
										4'b0010: ProductQuantity <= 'd3;
										4'b0100: ProductQuantity <= 'd2;
										4'b1000: ProductQuantity <= 'd1;
										default: ProductQuantity <= 'd0;	// Never Reached
									endcase
									// TODO Basket Controller handling
									//		Enable?
									EN_BasketController_Level <= 1;
									RST_BarcodeController_Level <= 1;
									
									// Then Go to IDLE State for new interactions
									State <= State1_Idle;
								end
						else										// Else wait Digit in this state
							State <= State4_Quantity;
					end
		State5_BasketEdit	:	
					begin
						RST_Direction2ProductID_Level <= 0;
						RST_BarcodeController_Level 	<= 0;
						CNL_BasketController_Level  	<= 0;
						EN_Direction2ProductID_Level  <= 0;
						if(CleanSWOut[2])								// SW2 still Active?
							if(CMD_Reg[0] & CMD_En[0])				// End Shopping Pressed?
								State <= State6_EndShopping;
							else if(CMD_Reg[3] & CMD_En[3])								// Select Button is Pressed?
								begin
									ProductID_out <= ProductID_Direction;
									// Basket Controller Cancel Prd
									CNL_BasketController_Level <= 1;
									RST_Direction2ProductID_Level <= 1;
									// Stay in the Same State
									
									State <= State5_BasketEdit;	// Stay in the Same State
								end
							else		
								begin
									if(|(KEY_Reg & KEY_En))							// Any Direction Key is pressed?
										begin
											// Highlight Controller Handle
											// Dir_out -> Dir_in@Direction2ProductID:ProductID -> InteractiveController
											// Direction2Product ID Handle
											EN_Direction2ProductID_Level <= 1;
											case(KEY_Reg)
												4'b0010: Dir_out <= 2'b10;	// Down
												4'b0100: Dir_out <= 2'b01;	// Up
											endcase
											State <= State5_BasketEdit;	// 	Stay in this State
											ProductID_out <= ProductID_Direction;
										end
									else
										begin
											State <= State5_BasketEdit;	// Wait Direction input in this State
											ProductID_out <= ProductID_Direction;
										end
								end
						else												// SW1 is Deactivated
							begin
								RST_Direction2ProductID_Level <= 1;
								State <= State1_Idle;					// 	Go to IDLE State
							end
					end
		State6_EndShopping	:
					if(CMD_Reg[1] & CMD_En[1])				// Cancel is pressed
							begin
								State <= State1_Idle;
							end
					else if(|BasketProductNum)
						if(CMD_Reg[0] & CMD_En[0]) // Is it approved?
							// End Shopping Story
							/***/
							// Then a Fresh Start
							State <= State0_Start;
						else
							State <= State6_EndShopping;
					else
						begin
							//Show Error: No Product in basket
							State <= State1_Idle;	// Go to Idle
						end
		default:	
					begin
						State <= State0_Start;
					end
	endcase

endmodule
