module Direction2ProductID(
	input wire RESET_N,
	input wire Enable,
	input wire CLOCK,
	input wire [1:0] Dir_in,
	
	output reg[3:0] ProductID
);

// Dir_in	: (<- ^ v ->) (00 01 10 11) 

initial
	ProductID = 0; 	// Start from most-left-up product
	
// Negative Edge Triggered Sequential Circuit
always @ (negedge CLOCK)
	if(!RESET_N)
		ProductID = 0;
	else
		if(Enable)
			begin
				case(Dir_in)
					2'b00	 : if(ProductID > 0 ) ProductID <= ProductID - 4'd1; else ProductID <= 4'b0000;
					2'b01	 : if(ProductID > 3 ) ProductID <= ProductID - 4'd4; else ProductID <= 4'b0000;
					2'b10	 : if(ProductID < 8 ) ProductID <= ProductID + 4'd4; else ProductID <= 4'd11;
					2'b11	 : if(ProductID < 11) ProductID <= ProductID + 4'd1; else ProductID <= 4'd11;
					default: ProductID <= 0;	// Never Reached
				endcase
			end

endmodule
	