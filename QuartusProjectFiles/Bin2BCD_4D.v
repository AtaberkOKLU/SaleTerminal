		
//		Module			:	Binary To TEMP Converter
//		Description		:	Converts 12 bit binary to 4 digit TEMP
//		
//		Owner				:	Ahsen Topbaş

module Bin2BCD_4D(
	
		input wire[11:0] Binary,
		output wire [15:0] BCD		
);

reg [15:0] TEMP;
reg [3:0] i;

always @(Binary) begin
	if(Binary !== 12'hFFF)
		begin
			TEMP = 0;
				for (i = 0; i < 12; i = i+4'b1)
					begin
						 TEMP = {TEMP[14:0],Binary[11-i]};
								
						 if(i < 11 && TEMP[3:0] > 4) 
							  TEMP[3:0] = TEMP[3:0] + 4'd3;
						 if(i < 11  && TEMP[7:4] > 4)
							  TEMP[7:4] = TEMP[7:4] + 4'd3;
						 if(i < 11 && TEMP[11:8] > 4)
							  TEMP[11:8] = TEMP[11:8] + 4'd3;
						 if(i < 11 && TEMP[15:12] > 4)
							  TEMP[15:12] = TEMP[15:12] + 4'd3;
					end
		end 
	else TEMP = 16'hFFFF;
end	

assign BCD = TEMP;
	
endmodule 