module Decoder4x16(
	output wire [15:0] 	out,
	input  wire [3:0] 	in
); 
      
Decoder3x8 d1(out[7:0],in[2:0],~in[3]);    
Decoder3x8 d2(out[15:8],in[2:0],in[3]);

endmodule
