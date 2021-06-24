
//		Module		:	BCD Multiplier
//		Description	: 	Takes two BCD inputs and gives their product in BCD again.
//							
//		Inputs		:	NUM1		=> Multiplicand
//						:	NUM2		=> Multiplier		
//
//		Outputs		: 	PRODUCT	=> Result of the multiplication operation
//						
//		Owner			: 	Ahsen TOPBAŞ

module BCD_Multiplier(NUM1,NUM2,PRODUCT);

	input [11:0] NUM1;
	input [3:0] NUM2;
	
	output wire [15:0] PRODUCT;
	
reg [15:0] TEMP = 16'b0000_0000_0000_0000;
												
reg [11:0] A = 12'b0000_0000_0000;
reg [3:0] B = 4'b0000;
initial 
	begin				
		A = NUM1;
		B = NUM2;
	end

always @(A or B)
	begin
		TEMP[3:0] = A[3:0] * B[3:0];
		if(TEMP[3:0]>9) TEMP[3:0] = TEMP[3:0] + 6;

		TEMP[7:4] = TEMP[7:4] + A[7:4] * B[3:0];
		if(TEMP[7:4]>9) TEMP[7:4] = TEMP[7:4] + 6;

		TEMP[11:8] = TEMP[11:8] + A[7:4] * B[3:0];
		if(TEMP[11:8]>9) TEMP[11:8] = TEMP[11:8] + 6;
	end 
															
assign PRODUCT = TEMP;

endmodule 
	