/*
 *		Module		:	Direction-to-ProductID Helper Module
 * 	Description	: 	Provides Current ProductID according to Direction input
 *							for InteractiveController
 *		Inputs		: 	Dir_in		=> Direction Input extracted by StateMachine
 *						:	CLOCK 		=> CLK for negedge
 * 					:	RESET_N 		=> Active Low Reset
 *						:	Enable		=> Active High Enable
 *
 *		Outputs		: 	ProductID	=> Current ProductID selected
 *		Owner			: 	Ataberk ÖKLÜ
 */
module Direction2ProductID(
	input wire RESET_N,
	input wire Enable,
	input wire CLOCK,
	input wire CleanSW2,
	input wire [3:0] BasketProductNum,
	input wire [1:0] Dir_in,
	
	output wire [3:0] ProductID
);

// Dir_in	: (<- ^ v ->) (00 01 10 11) 

reg[3:0] ImgID;
reg[3:0] BasketID;

initial
	begin
		ImgID = 0; 	// Start from most-left-up product
		BasketID = 0;
	end
	
// Negative Edge Triggered Sequential Circuit
always @ (negedge CLOCK)
	if(!RESET_N)
		begin
			ImgID = 0; 
			BasketID = 0;
		end
	else
		if(Enable)
			if(!CleanSW2)
				begin
					BasketID = 0;
					case(Dir_in)
						2'b00	 : if(ImgID > 0 ) ImgID <= ImgID - 4'd1; else ImgID <= 4'b0000;
						2'b01	 : if(ImgID > 3 ) ImgID <= ImgID - 4'd4; else ImgID <= 4'b0000;
						2'b10	 : if(ImgID < 8 ) ImgID <= ImgID + 4'd4; else ImgID <= 4'd11;
						2'b11	 : if(ImgID < 11) ImgID <= ImgID + 4'd1; else ImgID <= 4'd11;
						default: ImgID <= 0;	// Never Reached
					endcase
				end
			else
				begin
					ImgID = 0;
					case(Dir_in)
						2'b01	 : if(BasketID > 0  ) BasketID <= BasketID - 4'd1; else BasketID <= 4'b0000;
						2'b10	 : if(BasketID < BasketProductNum ) BasketID <= BasketID + 4'd1; else BasketID <= BasketProductNum;
					endcase
				end
				
assign ProductID = (CleanSW2) ? BasketID:ImgID;

endmodule
	