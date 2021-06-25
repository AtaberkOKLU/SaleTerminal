
//		Module		:	Price Calculator
//		Description	: 	Takes product id and quantity as its inputs and calculates the price in BCD.
//							
//		Inputs		: 	CLK		=> CLOCK_50
//						:	ENABLE 	=> Triggered by another block (TBD)
//						:	RESET_N 	=> Active-Low Reset
//						: 	ID 		=> Product ID
//						:  QTT		=> Quantity of selected product
//
//		Outputs		: 	PRICE		=> Price will be written in each row of shopping list
//						
//		Owner			: 	Ahsen TOPBAŞ

module PriceCalculator(CLK,RESET_N,ENABLE,ID,QTT,PRICE);

	input wire CLK;
	input wire ENABLE;
	input wire RESET_N;
	input wire [3:0] ID;
	input wire [3:0] QTT;
	
	output wire [11:0] PRICE;
	
	//Prices of the products
//Price_# means that this price belongs to the product with id = #
localparam PRICE_0 = 12'd250;	//banana
localparam PRICE_1 = 12'd50;	//potato
localparam PRICE_2 = 12'd75;	//tomato
localparam PRICE_3 = 12'd200;	//peach
localparam PRICE_4 = 12'd100;	//apple
localparam PRICE_5 = 12'd995;	//pineapple
localparam PRICE_6 = 12'd695;	//avocado
localparam PRICE_7 = 12'd325;	//cherry
localparam PRICE_8 = 12'd275;	//fig
localparam PRICE_9 = 12'd495;	//grape
localparam PRICE_10 = 12'd425;	//kiwi
localparam PRICE_11 = 12'd595;	//lemon

reg [11:0] PRICE_REG = 12'b111111111111;

always @(negedge CLK)
begin
	if(~RESET_N)
		begin
			PRICE_REG 	<= 12'b111111111111;
		end
	
	else
		begin
			if(ENABLE)
				begin
					case(ID)
							4'b0000 : PRICE_REG <= PRICE_0  * QTT;
							4'b0001 : PRICE_REG <= PRICE_1  * QTT;
							4'b0010 : PRICE_REG <= PRICE_2  * QTT;
							4'b0011 : PRICE_REG <= PRICE_3  * QTT;
							4'b0100 : PRICE_REG <= PRICE_4  * QTT;
							4'b0101 : PRICE_REG <= PRICE_5  * QTT;
							4'b0110 : PRICE_REG <= PRICE_6  * QTT;
							4'b0111 : PRICE_REG <= PRICE_7  * QTT;
							4'b1000 : PRICE_REG <= PRICE_8  * QTT;
							4'b1001 : PRICE_REG <= PRICE_9  * QTT;
							4'b1010 : PRICE_REG <= PRICE_10 * QTT;
							4'b1011 : PRICE_REG <= PRICE_11 * QTT;
							default : PRICE_REG <= 12'b111111111111;
					endcase
				end

		end
	
end

	assign PRICE = PRICE_REG;

endmodule 