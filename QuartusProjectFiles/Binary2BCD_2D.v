/*
 *		Module		:	Binary2BCD_2D Block
 * 	Description	: 	Binary 2 BCD - 2 Digit for Seg7
 *		Inputs		: 	*
 *						: 	*
 *						:	*
 *						:	*
 *						:	*
 *
 *		Outputs		: 	*
 *		Owner			: 	Ataberk ÖKLÜ
 */

module Binary2BCD_2D(
	input  wire [3:0] bin,
	output reg  [7:0] bcd
);

reg [3:0] i;   

//Always block - implement the Double Dabble algorithm
always @(bin)
  begin
		bcd = 0; //initialize bcd to zero.
		for (i = 4'b0; i < 4; i = i+4'd1) //run for 8 iterations
		begin
			 bcd = {bcd[6:0],bin[3-i]}; //concatenation
				  
			 //if a hex digit of 'bcd' is more than 4, add 3 to it.  
			 if(i < 3 && bcd[3:0] > 4) 
				  bcd[3:0] = bcd[3:0] + 4'd3;
			 if(i < 3 && bcd[7:4] > 4)
				  bcd[7:4] = bcd[7:4] + 4'd3;
		end
  end     
                
endmodule
