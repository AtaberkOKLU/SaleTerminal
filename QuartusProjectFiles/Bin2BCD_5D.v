		
//		Module			:	Binary To TEMP Converter
//		Description		:	Converts 16 bit binary to 5 digit TEMP
//		
//		Owner				:	Ahsen Topbaş

module Bin2BCD_5D(
	
		input wire[15:0] Binary,
		output reg [19:0] BCD		
);

reg [4:0] i;

always @(Binary) begin
	if(~&Binary)
		begin
			BCD = 20'b0;
				for (i = 5'b0; i < 16; i = i+5'b1)
					begin
						 BCD = {BCD[18:0],Binary[15-i]};
								
						 if(i < 15 && BCD[3:0] > 4) 
							  BCD[3:0] = BCD[3:0] + 4'd3;
						 if(i < 15  && BCD[7:4] > 4)
							  BCD[7:4] = BCD[7:4] + 4'd3;
						 if(i < 15 && BCD[11:8] > 4)
							  BCD[11:8] = BCD[11:8] + 4'd3;
						 if(i < 15 && BCD[15:12] > 4)
							  BCD[15:12] = BCD[15:12] + 4'd3;
						 if(i < 15 && BCD[19:16] > 4)
							  BCD[19:16] = BCD[19:16] + 4'd3;
					end
		end 
	else BCD = 20'hFFFFF;
end	
	
endmodule 