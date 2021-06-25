		
//		Module			:	Binary To TEMP Converter
//		Description		:	Converts 12 bit binary to 4 digit TEMP
//		
//		Owner				:	Ahsen Topbaş

module Bin2BCD_4D(
	
		input wire[11:0] Binary,
		output reg [15:0] BCD		
);

reg [3:0] i;

always @(Binary) begin
	if(~&Binary)
		begin
			BCD = 0;
				for (i = 4'b0; i < 12; i = i+4'd1)
					begin
						 BCD = {BCD[14:0],Binary[11-i]};
								
						 if(i < 11 && BCD[3:0] > 4) 
							  BCD[3:0] = BCD[3:0] + 4'd3;
						 if(i < 11  && BCD[7:4] > 4)
							  BCD[7:4] = BCD[7:4] + 4'd3;
						 if(i < 11 && BCD[11:8] > 4)
							  BCD[11:8] = BCD[11:8] + 4'd3;
						 if(i < 11 && BCD[15:12] > 4)
							  BCD[15:12] = BCD[15:12] + 4'd3;
					end
		end 
	else BCD = 16'hFFFF;
end
endmodule 