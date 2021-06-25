
//		Module		:	Basket Controller
//		Description	: 	Adds selected products to the basket with their product id, 
//							calculates prices, navigates and cancels products by taking
//							proper inputs.
//							
//		Inputs		: 	CLK				=> CLOCK_50
//						:	ENABLE 			=> Triggered by another block (TBD)
//						:	RESET_N 			=> Active-Low Reset, resets the basket
//						: 	ID 				=> Product ID
//						:  QTT				=> Quantity of selected product
//						:  CANCEL			=> Active high cancel input when SW2 is active
//
//		Outputs		: 	NUM				=> Number of products in the basket at that moment
//						: 	PRICE_LIST_#	=> Prices of the products in the basket
//						:	QTT_LIST_#		=>	Quantities of the products in the basket
//						:	P_LIST_#			=> Products in the basket
//						:	T_PRICE			=> Total price will be indicated at the bottom of 
//													shopping list  
//		Owner			: 	Ahsen TOPBAŞ									

module BasketController(
	input wire CLK,
	input wire ENABLE,
	input wire RESET_N,
	input wire [3:0] ID,
	input wire [3:0] QTT,
	input wire CANCEL,
	
	output wire [3:0] NUM,
	output wire [19:0] T_PRICE,
	
	output wire [3:0] P_LIST_0,
	output wire [3:0] P_LIST_1,
	output wire [3:0] P_LIST_2,
	output wire [3:0] P_LIST_3,
	output wire [3:0] P_LIST_4,
	output wire [3:0] P_LIST_5,
	output wire [3:0] P_LIST_6,
	output wire [3:0] P_LIST_7,
	output wire [3:0] P_LIST_8,
	output wire [3:0] P_LIST_9,
	output wire [3:0] P_LIST_10,
	output wire [3:0] P_LIST_11,
	
	output wire [3:0] QTT_LIST_0,
	output wire [3:0] QTT_LIST_1,
	output wire [3:0] QTT_LIST_2,
	output wire [3:0] QTT_LIST_3,
	output wire [3:0] QTT_LIST_4,
	output wire [3:0] QTT_LIST_5,
	output wire [3:0] QTT_LIST_6,
	output wire [3:0] QTT_LIST_7,
	output wire [3:0] QTT_LIST_8,
	output wire [3:0] QTT_LIST_9,
	output wire [3:0] QTT_LIST_10,
	output wire [3:0] QTT_LIST_11,
	
	output wire [15:0] PRICE_LIST_0,
	output wire [15:0] PRICE_LIST_1,
	output wire [15:0] PRICE_LIST_2,
	output wire [15:0] PRICE_LIST_3,
	output wire [15:0] PRICE_LIST_4,
	output wire [15:0] PRICE_LIST_5,
	output wire [15:0] PRICE_LIST_6,
	output wire [15:0] PRICE_LIST_7,
	output wire [15:0] PRICE_LIST_8,
	output wire [15:0] PRICE_LIST_9,
	output wire [15:0] PRICE_LIST_10,
	output wire [15:0] PRICE_LIST_11
);

//internal registers	
reg [3:0] P_LIST_REG_0 = 4'b1111; 
reg [3:0] P_LIST_REG_1 = 4'b1111;
reg [3:0] P_LIST_REG_2 = 4'b1111;
reg [3:0] P_LIST_REG_3 = 4'b1111;
reg [3:0] P_LIST_REG_4 = 4'b1111;
reg [3:0] P_LIST_REG_5 = 4'b1111;
reg [3:0] P_LIST_REG_6 = 4'b1111;
reg [3:0] P_LIST_REG_7 = 4'b1111;
reg [3:0] P_LIST_REG_8 = 4'b1111;
reg [3:0] P_LIST_REG_9 = 4'b1111;
reg [3:0] P_LIST_REG_10 = 4'b1111;
reg [3:0] P_LIST_REG_11 = 4'b1111;

reg [3:0] QTT_LIST_REG_0 = 4'b1111;
reg [3:0] QTT_LIST_REG_1 = 4'b1111;
reg [3:0] QTT_LIST_REG_2 = 4'b1111;
reg [3:0] QTT_LIST_REG_3 = 4'b1111;
reg [3:0] QTT_LIST_REG_4 = 4'b1111;
reg [3:0] QTT_LIST_REG_5 = 4'b1111;
reg [3:0] QTT_LIST_REG_6 = 4'b1111;
reg [3:0] QTT_LIST_REG_7 = 4'b1111;
reg [3:0] QTT_LIST_REG_8 = 4'b1111;
reg [3:0] QTT_LIST_REG_9 = 4'b1111;
reg [3:0] QTT_LIST_REG_10 = 4'b1111;
reg [3:0] QTT_LIST_REG_11 = 4'b1111;

reg [11:0] PRICE_LIST_REG_0  = 12'b1111_1111_1111;
reg [11:0] PRICE_LIST_REG_1  = 12'b1111_1111_1111;
reg [11:0] PRICE_LIST_REG_2  = 12'b1111_1111_1111;
reg [11:0] PRICE_LIST_REG_3  = 12'b1111_1111_1111;
reg [11:0] PRICE_LIST_REG_4  = 12'b1111_1111_1111;
reg [11:0] PRICE_LIST_REG_5  = 12'b1111_1111_1111;
reg [11:0] PRICE_LIST_REG_6  = 12'b1111_1111_1111;
reg [11:0] PRICE_LIST_REG_7  = 12'b1111_1111_1111;
reg [11:0] PRICE_LIST_REG_8  = 12'b1111_1111_1111;
reg [11:0] PRICE_LIST_REG_9  = 12'b1111_1111_1111;
reg [11:0] PRICE_LIST_REG_10 = 12'b1111_1111_1111;
reg [11:0] PRICE_LIST_REG_11 = 12'b1111_1111_1111;

reg [15:0] T_PRICE_REG = 16'b0000_0000_0000_0000;
wire [11:0] PRICE;
reg [11:0] DELETE_PRICE = 12'b1111_1111_1111;
reg [3:0] NUM_REG = 4'b0000; // counts the number of products in the basket


PriceCalculator PriceCalculator_1(
	.CLK(CLK), 
	.ENABLE(ENABLE), 
	.RESET_N(RESET_N), 
	.ID(ID), 
	.QTT(QTT), 
	.PRICE(PRICE)
);

// BasketController Price Enable Pulse Generator
reg EN_Price_Level = 0;
wire Price_Enable_Pulse;
ButtonLevelPulseConverter BasketControllerPriceEnablePulseGenerator_inst0(
	.CLK(CLK),
	.CleanButtonIn(EN_Price_Level),
	.ButtonPulseOut(Price_Enable_Pulse)
);

always @ (posedge CLK)
	if(!RESET_N)
		begin
			PRICE_LIST_REG_0 	<= 12'b1111_1111_1111;
			PRICE_LIST_REG_1 	<= 12'b1111_1111_1111;
			PRICE_LIST_REG_2 	<= 12'b1111_1111_1111;
			PRICE_LIST_REG_3 	<= 12'b1111_1111_1111;
			PRICE_LIST_REG_4 	<= 12'b1111_1111_1111;
			PRICE_LIST_REG_5 	<= 12'b1111_1111_1111;
			PRICE_LIST_REG_6 	<= 12'b1111_1111_1111;
			PRICE_LIST_REG_7 	<= 12'b1111_1111_1111;
			PRICE_LIST_REG_8 	<= 12'b1111_1111_1111;
			PRICE_LIST_REG_9 	<= 12'b1111_1111_1111;
			PRICE_LIST_REG_10 <= 12'b1111_1111_1111;
			PRICE_LIST_REG_11 <= 12'b1111_1111_1111;
			T_PRICE_REG 		<= 15'b0000_0000_0000_0000;
			DELETE_PRICE 		<= 12'b0000_0000_0000;
		end
	else if(Price_Enable_Pulse)
		begin
			case((NUM_REG-4'd1))
			
				4'b0000 : PRICE_LIST_REG_0 <= PRICE;
				4'b0001 : PRICE_LIST_REG_1 <= PRICE;
				4'b0010 : PRICE_LIST_REG_2 <= PRICE;
				4'b0011 : PRICE_LIST_REG_3 <= PRICE;
				4'b0100 : PRICE_LIST_REG_4 <= PRICE;
				4'b0101 : PRICE_LIST_REG_5 <= PRICE;
				4'b0110 : PRICE_LIST_REG_6 <= PRICE;
				4'b0111 : PRICE_LIST_REG_7 <= PRICE;
				4'b1000 : PRICE_LIST_REG_8 <= PRICE;
				4'b1001 : PRICE_LIST_REG_9 <= PRICE;
				4'b1010 : PRICE_LIST_REG_10 <= PRICE;
				4'b1011 : PRICE_LIST_REG_11 <= PRICE;
			endcase
			T_PRICE_REG <= T_PRICE_REG + PRICE;
		end
	else if(CANCEL)
		begin
			case(ID) //price list is shifted after cancel operation
			
				4'b0000 : begin
				DELETE_PRICE <= PRICE_LIST_REG_0;
				PRICE_LIST_REG_0 <= PRICE_LIST_REG_1;
				PRICE_LIST_REG_1 <= PRICE_LIST_REG_2;
				PRICE_LIST_REG_2 <= PRICE_LIST_REG_3;
				PRICE_LIST_REG_3 <= PRICE_LIST_REG_4;
				PRICE_LIST_REG_4 <= PRICE_LIST_REG_5;
				PRICE_LIST_REG_5 <= PRICE_LIST_REG_6;
				PRICE_LIST_REG_6 <= PRICE_LIST_REG_7;
				PRICE_LIST_REG_7 <= PRICE_LIST_REG_8;
				PRICE_LIST_REG_8 <= PRICE_LIST_REG_9;
				PRICE_LIST_REG_9 <= PRICE_LIST_REG_10;
				PRICE_LIST_REG_10 <= PRICE_LIST_REG_11;
				PRICE_LIST_REG_11 <= 12'b1111_1111_1111;
				end
				4'b0001 : begin
				DELETE_PRICE <= PRICE_LIST_REG_1;
				PRICE_LIST_REG_1 <= PRICE_LIST_REG_2;
				PRICE_LIST_REG_2 <= PRICE_LIST_REG_3;
				PRICE_LIST_REG_3 <= PRICE_LIST_REG_4;
				PRICE_LIST_REG_4 <= PRICE_LIST_REG_5;
				PRICE_LIST_REG_5 <= PRICE_LIST_REG_6;
				PRICE_LIST_REG_6 <= PRICE_LIST_REG_7;
				PRICE_LIST_REG_7 <= PRICE_LIST_REG_8;
				PRICE_LIST_REG_8 <= PRICE_LIST_REG_9;
				PRICE_LIST_REG_9 <= PRICE_LIST_REG_10;
				PRICE_LIST_REG_10 <= PRICE_LIST_REG_11;
				PRICE_LIST_REG_11 <= 12'b1111_1111_1111;
				end
				4'b0010 : begin
				DELETE_PRICE <= PRICE_LIST_REG_2;
				PRICE_LIST_REG_2 <= PRICE_LIST_REG_3;
				PRICE_LIST_REG_3 <= PRICE_LIST_REG_4;
				PRICE_LIST_REG_4 <= PRICE_LIST_REG_5;
				PRICE_LIST_REG_5 <= PRICE_LIST_REG_6;
				PRICE_LIST_REG_6 <= PRICE_LIST_REG_7;
				PRICE_LIST_REG_7 <= PRICE_LIST_REG_8;
				PRICE_LIST_REG_8 <= PRICE_LIST_REG_9;
				PRICE_LIST_REG_9 <= PRICE_LIST_REG_10;
				PRICE_LIST_REG_10 <= PRICE_LIST_REG_11;
				PRICE_LIST_REG_11 <= 12'b1111_1111_1111;
				end
				4'b0011 : begin
				DELETE_PRICE <= PRICE_LIST_REG_3;
				PRICE_LIST_REG_3 <= PRICE_LIST_REG_4;
				PRICE_LIST_REG_4 <= PRICE_LIST_REG_5;
				PRICE_LIST_REG_5 <= PRICE_LIST_REG_6;
				PRICE_LIST_REG_6 <= PRICE_LIST_REG_7;
				PRICE_LIST_REG_7 <= PRICE_LIST_REG_8;
				PRICE_LIST_REG_8 <= PRICE_LIST_REG_9;
				PRICE_LIST_REG_9 <= PRICE_LIST_REG_10;
				PRICE_LIST_REG_10 <= PRICE_LIST_REG_11;
				PRICE_LIST_REG_11 <= 12'b1111_1111_1111;
				end
				4'b0100 : begin
				DELETE_PRICE <= PRICE_LIST_REG_4;
				PRICE_LIST_REG_4 <= PRICE_LIST_REG_5;
				PRICE_LIST_REG_5 <= PRICE_LIST_REG_6;
				PRICE_LIST_REG_6 <= PRICE_LIST_REG_7;
				PRICE_LIST_REG_7 <= PRICE_LIST_REG_8;
				PRICE_LIST_REG_8 <= PRICE_LIST_REG_9;
				PRICE_LIST_REG_9 <= PRICE_LIST_REG_10;
				PRICE_LIST_REG_10 <= PRICE_LIST_REG_11;
				PRICE_LIST_REG_11 <= 12'b1111_1111_1111;
				end
				4'b0101 : begin
				DELETE_PRICE <= PRICE_LIST_REG_5;
				PRICE_LIST_REG_5 <= PRICE_LIST_REG_6;
				PRICE_LIST_REG_6 <= PRICE_LIST_REG_7;
				PRICE_LIST_REG_7 <= PRICE_LIST_REG_8;
				PRICE_LIST_REG_8 <= PRICE_LIST_REG_9;
				PRICE_LIST_REG_9 <= PRICE_LIST_REG_10;
				PRICE_LIST_REG_10 <= PRICE_LIST_REG_11;
				PRICE_LIST_REG_11 <= 12'b1111_1111_1111;
				end
				4'b0110 : begin
				DELETE_PRICE <= PRICE_LIST_REG_6;
				PRICE_LIST_REG_6 <= PRICE_LIST_REG_7;
				PRICE_LIST_REG_7 <= PRICE_LIST_REG_8;
				PRICE_LIST_REG_8 <= PRICE_LIST_REG_9;
				PRICE_LIST_REG_9 <= PRICE_LIST_REG_10;
				PRICE_LIST_REG_10 <= PRICE_LIST_REG_11;
				PRICE_LIST_REG_11 <= 12'b1111_1111_1111;
				end
				4'b0111 : begin
				DELETE_PRICE <= PRICE_LIST_REG_7;
				PRICE_LIST_REG_7 <= PRICE_LIST_REG_8;
				PRICE_LIST_REG_8 <= PRICE_LIST_REG_9;
				PRICE_LIST_REG_9 <= PRICE_LIST_REG_10;
				PRICE_LIST_REG_10 <= PRICE_LIST_REG_11;
				PRICE_LIST_REG_11 <= 12'b1111_1111_1111;
				end
				4'b1000 : begin
				DELETE_PRICE <= PRICE_LIST_REG_8;
				PRICE_LIST_REG_8 <= PRICE_LIST_REG_9;
				PRICE_LIST_REG_9 <= PRICE_LIST_REG_10;
				PRICE_LIST_REG_10 <= PRICE_LIST_REG_11;
				PRICE_LIST_REG_11 <= 12'b1111_1111_1111;
				end
				4'b1001 : begin
				DELETE_PRICE <= PRICE_LIST_REG_9;
				PRICE_LIST_REG_9 <= PRICE_LIST_REG_10;
				PRICE_LIST_REG_10 <= PRICE_LIST_REG_11;
				PRICE_LIST_REG_11 <= 12'b1111_1111_1111;
				end
				4'b1010 : begin
				DELETE_PRICE <= PRICE_LIST_REG_10;
				PRICE_LIST_REG_10 <= PRICE_LIST_REG_11;
				PRICE_LIST_REG_11 <= 12'b1111_1111_1111;
				end
				4'b1011 : begin
				DELETE_PRICE <= PRICE_LIST_REG_11;
				PRICE_LIST_REG_11 <= 12'b1111_1111_1111;
				end
			
			endcase
			T_PRICE_REG <= T_PRICE_REG - DELETE_PRICE;
		end
		

always @(posedge CLK)
begin
EN_Price_Level <= 0;
	//when cancel is not active
	if(~RESET_N)
		begin
			P_LIST_REG_0 <= 4'b1111;
			P_LIST_REG_1 <= 4'b1111;
			P_LIST_REG_2 <= 4'b1111;
			P_LIST_REG_3 <= 4'b1111;
			P_LIST_REG_4 <= 4'b1111;
			P_LIST_REG_5 <= 4'b1111;
			P_LIST_REG_6 <= 4'b1111;
			P_LIST_REG_7 <= 4'b1111;
			P_LIST_REG_8 <= 4'b1111;
			P_LIST_REG_9 <= 4'b1111;
			P_LIST_REG_10 <= 4'b1111;
			P_LIST_REG_11 <= 4'b1111;
		
			QTT_LIST_REG_0 <= 4'b1111;
			QTT_LIST_REG_1 <= 4'b1111;
			QTT_LIST_REG_2 <= 4'b1111;
			QTT_LIST_REG_3 <= 4'b1111;
			QTT_LIST_REG_4 <= 4'b1111;
			QTT_LIST_REG_5 <= 4'b1111;
			QTT_LIST_REG_6 <= 4'b1111;
			QTT_LIST_REG_7 <= 4'b1111;
			QTT_LIST_REG_8 <= 4'b1111;
			QTT_LIST_REG_9 <= 4'b1111;
			QTT_LIST_REG_10 <= 4'b1111;
			QTT_LIST_REG_11 <= 4'b1111;
			
			//PRICE <= 16'b1111_1111_1111_1111;
			NUM_REG <= 4'b0000;
			
		end
	
	else
		if(ENABLE)
			begin
				EN_Price_Level <= 1;
				case(NUM_REG)
					
					4'b0000 : P_LIST_REG_0 <= ID;
					4'b0001 : P_LIST_REG_1 <= ID;
					4'b0010 : P_LIST_REG_2 <= ID;
					4'b0011 : P_LIST_REG_3 <= ID;
					4'b0100 : P_LIST_REG_4 <= ID;
					4'b0101 : P_LIST_REG_5 <= ID;
					4'b0110 : P_LIST_REG_6 <= ID;
					4'b0111 : P_LIST_REG_7 <= ID;
					4'b1000 : P_LIST_REG_8 <= ID;
					4'b1001 : P_LIST_REG_9 <= ID;
					4'b1010 : P_LIST_REG_10 <= ID;
					4'b1011 : P_LIST_REG_11 <= ID;
				 
				endcase
				

				case(NUM_REG)
					
					4'b0000 : QTT_LIST_REG_0 <= QTT;
					4'b0001 : QTT_LIST_REG_1 <= QTT;
					4'b0010 : QTT_LIST_REG_2 <= QTT;
					4'b0011 : QTT_LIST_REG_3 <= QTT;
					4'b0100 : QTT_LIST_REG_4 <= QTT;
					4'b0101 : QTT_LIST_REG_5 <= QTT;
					4'b0110 : QTT_LIST_REG_6 <= QTT;
					4'b0111 : QTT_LIST_REG_7 <= QTT;
					4'b1000 : QTT_LIST_REG_8 <= QTT;
					4'b1001 : QTT_LIST_REG_9 <= QTT;
					4'b1010 : QTT_LIST_REG_10 <= QTT;
					4'b1011 : QTT_LIST_REG_11 <= QTT;
					
				endcase
				 
				NUM_REG <= NUM_REG + 4'd1;
				
			end
			
	//when cancel is active
	if(CANCEL)
		begin
			//cancel product, decrease total price
			case(ID) //product list is shifted after cancel operation
				
				4'b0000 : begin 
					P_LIST_REG_0 <= P_LIST_REG_1; 
					P_LIST_REG_1 <= P_LIST_REG_2;
					P_LIST_REG_2 <= P_LIST_REG_3;
					P_LIST_REG_3 <= P_LIST_REG_4;
					P_LIST_REG_4 <= P_LIST_REG_5;
					P_LIST_REG_5 <= P_LIST_REG_6;
					P_LIST_REG_6 <= P_LIST_REG_7;
					P_LIST_REG_7 <= P_LIST_REG_8;
					P_LIST_REG_8 <= P_LIST_REG_9;
					P_LIST_REG_9 <= P_LIST_REG_10;
					P_LIST_REG_10 <= P_LIST_REG_11;
					P_LIST_REG_11 <= 4'b1111;
				end
				4'b0001 : begin  
					P_LIST_REG_1 <= P_LIST_REG_2;
					P_LIST_REG_2 <= P_LIST_REG_3;
					P_LIST_REG_3 <= P_LIST_REG_4;
					P_LIST_REG_4 <= P_LIST_REG_5;
					P_LIST_REG_5 <= P_LIST_REG_6;
					P_LIST_REG_6 <= P_LIST_REG_7;
					P_LIST_REG_7 <= P_LIST_REG_8;
					P_LIST_REG_8 <= P_LIST_REG_9;
					P_LIST_REG_9 <= P_LIST_REG_10;
					P_LIST_REG_10 <= P_LIST_REG_11;
					P_LIST_REG_11 <= 4'b1111;
				end	
				4'b0010 : begin  
					P_LIST_REG_2 <= P_LIST_REG_3;
					P_LIST_REG_3 <= P_LIST_REG_4;
					P_LIST_REG_4 <= P_LIST_REG_5;
					P_LIST_REG_5 <= P_LIST_REG_6;
					P_LIST_REG_6 <= P_LIST_REG_7;
					P_LIST_REG_7 <= P_LIST_REG_8;
					P_LIST_REG_8 <= P_LIST_REG_9;
					P_LIST_REG_9 <= P_LIST_REG_10;
					P_LIST_REG_10 <= P_LIST_REG_11;
					P_LIST_REG_11 <= 4'b1111;
				end	
				4'b0011 : begin
					P_LIST_REG_3 <= P_LIST_REG_4;
					P_LIST_REG_4 <= P_LIST_REG_5;
					P_LIST_REG_5 <= P_LIST_REG_6;
					P_LIST_REG_6 <= P_LIST_REG_7;
					P_LIST_REG_7 <= P_LIST_REG_8;
					P_LIST_REG_8 <= P_LIST_REG_9;
					P_LIST_REG_9 <= P_LIST_REG_10;
					P_LIST_REG_10 <= P_LIST_REG_11;
					P_LIST_REG_11 <= 4'b1111;
				end
				4'b0100 : begin
					P_LIST_REG_4 <= P_LIST_REG_5;
					P_LIST_REG_5 <= P_LIST_REG_6;
					P_LIST_REG_6 <= P_LIST_REG_7;
					P_LIST_REG_7 <= P_LIST_REG_8;
					P_LIST_REG_8 <= P_LIST_REG_9;
					P_LIST_REG_9 <= P_LIST_REG_10;
					P_LIST_REG_10 <= P_LIST_REG_11;
					P_LIST_REG_11 <= 4'b1111;
				end
				4'b0101 : begin
					P_LIST_REG_5 <= P_LIST_REG_6;
					P_LIST_REG_6 <= P_LIST_REG_7;
					P_LIST_REG_7 <= P_LIST_REG_8;
					P_LIST_REG_8 <= P_LIST_REG_9;
					P_LIST_REG_9 <= P_LIST_REG_10;
					P_LIST_REG_10 <= P_LIST_REG_11;
					P_LIST_REG_11 <= 4'b1111;
				end
				4'b0110 : begin
					P_LIST_REG_6 <= P_LIST_REG_7;
					P_LIST_REG_7 <= P_LIST_REG_8;
					P_LIST_REG_8 <= P_LIST_REG_9;
					P_LIST_REG_9 <= P_LIST_REG_10;
					P_LIST_REG_10 <= P_LIST_REG_11;
					P_LIST_REG_11 <= 4'b1111;
				end
				4'b0111 : begin
					P_LIST_REG_7 <= P_LIST_REG_8;
					P_LIST_REG_8 <= P_LIST_REG_9;
					P_LIST_REG_9 <= P_LIST_REG_10;
					P_LIST_REG_10 <= P_LIST_REG_11;
					P_LIST_REG_11 <= 4'b1111;
				end
				4'b1000 : begin
					P_LIST_REG_8 <= P_LIST_REG_9;
					P_LIST_REG_9 <= P_LIST_REG_10;
					P_LIST_REG_10 <= P_LIST_REG_11;
					P_LIST_REG_11 <= 4'b1111;
				end
				4'b1001 : begin
					P_LIST_REG_9 <= P_LIST_REG_10;
					P_LIST_REG_10 <= P_LIST_REG_11;
					P_LIST_REG_11 <= 4'b1111;
				end 
				4'b1010 : begin
					P_LIST_REG_10 <= P_LIST_REG_11;
					P_LIST_REG_11 <= 4'b1111;
				end  
				4'b1011 : begin
					P_LIST_REG_11 <= 4'b1111;
				end  		
			
			endcase
			
			
			case(ID) //quantity list is shifted after cancel operation
			
				4'b0000 : begin
				QTT_LIST_REG_0 <= QTT_LIST_REG_1;
				QTT_LIST_REG_1 <= QTT_LIST_REG_2;
				QTT_LIST_REG_2 <= QTT_LIST_REG_3;
				QTT_LIST_REG_3 <= QTT_LIST_REG_4;
				QTT_LIST_REG_4 <= QTT_LIST_REG_5;
				QTT_LIST_REG_5 <= QTT_LIST_REG_6;
				QTT_LIST_REG_6 <= QTT_LIST_REG_7;
				QTT_LIST_REG_7 <= QTT_LIST_REG_8;
				QTT_LIST_REG_8 <= QTT_LIST_REG_9;
				QTT_LIST_REG_9 <= QTT_LIST_REG_10;
				QTT_LIST_REG_10 <= QTT_LIST_REG_11;
				QTT_LIST_REG_11 <= 4'b1111;
				end
				4'b0001 : begin
				QTT_LIST_REG_1 <= QTT_LIST_REG_2;
				QTT_LIST_REG_2 <= QTT_LIST_REG_3;
				QTT_LIST_REG_3 <= QTT_LIST_REG_4;
				QTT_LIST_REG_4 <= QTT_LIST_REG_5;
				QTT_LIST_REG_5 <= QTT_LIST_REG_6;
				QTT_LIST_REG_6 <= QTT_LIST_REG_7;
				QTT_LIST_REG_7 <= QTT_LIST_REG_8;
				QTT_LIST_REG_8 <= QTT_LIST_REG_9;
				QTT_LIST_REG_9 <= QTT_LIST_REG_10;
				QTT_LIST_REG_10 <= QTT_LIST_REG_11;
				QTT_LIST_REG_11 <= 4'b1111;
				end
				4'b0010 : begin
				QTT_LIST_REG_2 <= QTT_LIST_REG_3;
				QTT_LIST_REG_3 <= QTT_LIST_REG_4;
				QTT_LIST_REG_4 <= QTT_LIST_REG_5;
				QTT_LIST_REG_5 <= QTT_LIST_REG_6;
				QTT_LIST_REG_6 <= QTT_LIST_REG_7;
				QTT_LIST_REG_7 <= QTT_LIST_REG_8;
				QTT_LIST_REG_8 <= QTT_LIST_REG_9;
				QTT_LIST_REG_9 <= QTT_LIST_REG_10;
				QTT_LIST_REG_10 <= QTT_LIST_REG_11;
				QTT_LIST_REG_11 <= 4'b1111;
				end
				4'b0011 : begin
				QTT_LIST_REG_3 <= QTT_LIST_REG_4;
				QTT_LIST_REG_4 <= QTT_LIST_REG_5;
				QTT_LIST_REG_5 <= QTT_LIST_REG_6;
				QTT_LIST_REG_6 <= QTT_LIST_REG_7;
				QTT_LIST_REG_7 <= QTT_LIST_REG_8;
				QTT_LIST_REG_8 <= QTT_LIST_REG_9;
				QTT_LIST_REG_9 <= QTT_LIST_REG_10;
				QTT_LIST_REG_10 <= QTT_LIST_REG_11;
				QTT_LIST_REG_11 <= 4'b1111;
				end
				4'b0100 : begin
				QTT_LIST_REG_4 <= QTT_LIST_REG_5;
				QTT_LIST_REG_5 <= QTT_LIST_REG_6;
				QTT_LIST_REG_6 <= QTT_LIST_REG_7;
				QTT_LIST_REG_7 <= QTT_LIST_REG_8;
				QTT_LIST_REG_8 <= QTT_LIST_REG_9;
				QTT_LIST_REG_9 <= QTT_LIST_REG_10;
				QTT_LIST_REG_10 <= QTT_LIST_REG_11;
				QTT_LIST_REG_11 <= 4'b1111;
				end
				4'b0101 : begin
				QTT_LIST_REG_5 <= QTT_LIST_REG_6;
				QTT_LIST_REG_6 <= QTT_LIST_REG_7;
				QTT_LIST_REG_7 <= QTT_LIST_REG_8;
				QTT_LIST_REG_8 <= QTT_LIST_REG_9;
				QTT_LIST_REG_9 <= QTT_LIST_REG_10;
				QTT_LIST_REG_10 <= QTT_LIST_REG_11;
				QTT_LIST_REG_11 <= 4'b1111;
				end
				4'b0110 : begin
				QTT_LIST_REG_6 <= QTT_LIST_REG_7;
				QTT_LIST_REG_7 <= QTT_LIST_REG_8;
				QTT_LIST_REG_8 <= QTT_LIST_REG_9;
				QTT_LIST_REG_9 <= QTT_LIST_REG_10;
				QTT_LIST_REG_10 <= QTT_LIST_REG_11;
				QTT_LIST_REG_11 <= 4'b1111;
				end
				4'b0111 : begin
				QTT_LIST_REG_7 <= QTT_LIST_REG_8;
				QTT_LIST_REG_8 <= QTT_LIST_REG_9;
				QTT_LIST_REG_9 <= QTT_LIST_REG_10;
				QTT_LIST_REG_10 <= QTT_LIST_REG_11;
				QTT_LIST_REG_11 <= 4'b1111;
				end
				4'b1000 : begin
				QTT_LIST_REG_8 <= QTT_LIST_REG_9;
				QTT_LIST_REG_9 <= QTT_LIST_REG_10;
				QTT_LIST_REG_10 <= QTT_LIST_REG_11;
				QTT_LIST_REG_11 <= 4'b1111;
				end
				4'b1001 : begin
				QTT_LIST_REG_9 <= QTT_LIST_REG_10;
				QTT_LIST_REG_10 <= QTT_LIST_REG_11;
				QTT_LIST_REG_11 <= 4'b1111;
				end
				4'b1010 : begin
				QTT_LIST_REG_10 <= QTT_LIST_REG_11;
				QTT_LIST_REG_11 <= 4'b1111;
				end
				4'b1011 : begin
				QTT_LIST_REG_11 <= 4'b1111;
				end
		
			endcase
			
			NUM_REG <= NUM_REG - 4'd1;
		end
		
end  

//	assign T_PRICE = T_PRICE_REG;
//	assign PRICE_LIST_0 = PRICE_LIST_REG_0;
//	assign PRICE_LIST_1 = PRICE_LIST_REG_1;
//	assign PRICE_LIST_2 = PRICE_LIST_REG_2;
//	assign PRICE_LIST_3 = PRICE_LIST_REG_3;
//	assign PRICE_LIST_4 = PRICE_LIST_REG_4;
//	assign PRICE_LIST_5 = PRICE_LIST_REG_5;
//	assign PRICE_LIST_6 = PRICE_LIST_REG_6;
//	assign PRICE_LIST_7 = PRICE_LIST_REG_7;
//	assign PRICE_LIST_8 = PRICE_LIST_REG_8;
//	assign PRICE_LIST_9 = PRICE_LIST_REG_9;
//	assign PRICE_LIST_10 = PRICE_LIST_REG_10;
//	assign PRICE_LIST_11 = PRICE_LIST_REG_11;

Bin2BCD_5D Convert_T_PRICE(.Binary(T_PRICE_REG), .BCD(T_PRICE));
Bin2BCD_4D Convert_PRICE_0(.Binary(PRICE_LIST_REG_0), .BCD(PRICE_LIST_0));
Bin2BCD_4D Convert_PRICE_1(.Binary(PRICE_LIST_REG_1), .BCD(PRICE_LIST_1));
Bin2BCD_4D Convert_PRICE_2(.Binary(PRICE_LIST_REG_2), .BCD(PRICE_LIST_2));
Bin2BCD_4D Convert_PRICE_3(.Binary(PRICE_LIST_REG_3), .BCD(PRICE_LIST_3));
Bin2BCD_4D Convert_PRICE_4(.Binary(PRICE_LIST_REG_4), .BCD(PRICE_LIST_4));
Bin2BCD_4D Convert_PRICE_5(.Binary(PRICE_LIST_REG_5), .BCD(PRICE_LIST_5));
Bin2BCD_4D Convert_PRICE_6(.Binary(PRICE_LIST_REG_6), .BCD(PRICE_LIST_6));
Bin2BCD_4D Convert_PRICE_7(.Binary(PRICE_LIST_REG_7), .BCD(PRICE_LIST_7));
Bin2BCD_4D Convert_PRICE_8(.Binary(PRICE_LIST_REG_8), .BCD(PRICE_LIST_8));
Bin2BCD_4D Convert_PRICE_9(.Binary(PRICE_LIST_REG_9), .BCD(PRICE_LIST_9));
Bin2BCD_4D Convert_PRICE_10(.Binary(PRICE_LIST_REG_10), .BCD(PRICE_LIST_10));
Bin2BCD_4D Convert_PRICE_11(.Binary(PRICE_LIST_REG_11), .BCD(PRICE_LIST_11));
	
	assign NUM = NUM_REG;
	
	assign P_LIST_0 = P_LIST_REG_0;
	assign P_LIST_1 = P_LIST_REG_1;
	assign P_LIST_2 = P_LIST_REG_2;
	assign P_LIST_3 = P_LIST_REG_3;
	assign P_LIST_4 = P_LIST_REG_4;
	assign P_LIST_5 = P_LIST_REG_5;
	assign P_LIST_6 = P_LIST_REG_6;
	assign P_LIST_7 = P_LIST_REG_7;
	assign P_LIST_8 = P_LIST_REG_8;
	assign P_LIST_9 = P_LIST_REG_9;
	assign P_LIST_10 = P_LIST_REG_10;
	assign P_LIST_11 = P_LIST_REG_11;
	
	assign QTT_LIST_0 = QTT_LIST_REG_0;
	assign QTT_LIST_1 = QTT_LIST_REG_1;
	assign QTT_LIST_2 = QTT_LIST_REG_2;
	assign QTT_LIST_3 = QTT_LIST_REG_3;
	assign QTT_LIST_4 = QTT_LIST_REG_4;
	assign QTT_LIST_5 = QTT_LIST_REG_5;
	assign QTT_LIST_6 = QTT_LIST_REG_6;
	assign QTT_LIST_7 = QTT_LIST_REG_7;
	assign QTT_LIST_8 = QTT_LIST_REG_8;
	assign QTT_LIST_9 = QTT_LIST_REG_9;
	assign QTT_LIST_10 = QTT_LIST_REG_10;
	assign QTT_LIST_11 = QTT_LIST_REG_11;
	
endmodule 	