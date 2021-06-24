
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

module PriceCalculator(CLK,ENABLE,RESET_N,ID,QTT,PRICE);

	input wire CLK;
	input wire ENABLE;
	input wire RESET_N;
	input wire [3:0] ID;
	input wire [3:0] QTT;
	
	output wire [15:0] PRICE;
	
	//Prices of the products
//Price_# means that this price belongs to the product with id = #
localparam PRICE_0 = 12'b0010_0101_0000;	//banana
localparam PRICE_1 = 12'b0000_0101_0000;	//potato
localparam PRICE_2 = 12'b0000_0111_0101;	//tomato
localparam PRICE_3 = 12'b0010_0000_0000;	//peach
localparam PRICE_4 = 12'b0001_0000_0000;	//apple
localparam PRICE_5 = 12'b1001_1001_0101;	//pineapple
localparam PRICE_6 = 12'b0110_1001_0101;	//avocado
localparam PRICE_7 = 12'b1001_0010_0101;	//cherry
localparam PRICE_8 = 12'b0010_0111_0101;	//fig
localparam PRICE_9 = 12'b1001_1001_0101;	//grape
localparam PRICE_10 = 12'b0100_0010_0101;	//kiwi
localparam PRICE_11 = 12'b1000_1001_0101;	//lemon
	
reg [3:0] ID_REG = 4'b1111;
reg [3:0] QTT_REG = 4'b1111;
reg [15:0] PRICE_REG = 12'b111111111111;

always @(posedge CLK)
begin
	if(~RESET_N)
		begin
			if(ENABLE)
				begin
					ID_REG = ID;
					QTT_REG = QTT;
					case(ID_REG)
							0000 : PRICE_REG <= PRICE_0;
							0001 : PRICE_REG <= PRICE_1;
							0010 : PRICE_REG <= PRICE_2;
							0011 : PRICE_REG <= PRICE_3;
							0100 : PRICE_REG <= PRICE_4;
							0101 : PRICE_REG <= PRICE_5;
							0110 : PRICE_REG <= PRICE_6;
							0111 : PRICE_REG <= PRICE_7;
							1000 : PRICE_REG <= PRICE_8;
							1001 : PRICE_REG <= PRICE_9;
							1010 : PRICE_REG <= PRICE_10;
							1011 : PRICE_REG <= PRICE_11;
							default : PRICE_REG <= 12'b111111111111;
					endcase
				end
		end
	
	else
		begin
			ID_REG = 4'b1111;
			QTT_REG = 4'b1111;
			PRICE_REG = 12'b111111111111;
		end
	
end

	BCD_Multiplier Calculate_Price(.NUM1(PRICE_REG), .NUM2(QTT_REG), .PRODUCT(PRICE_REG));
	assign PRICE = PRICE_REG;
	
endmodule 