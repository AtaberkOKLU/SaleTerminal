		
//		Module			:	Binary To TEMP Converter
//		Description		:	Converts 16 bit binary to 5 digit TEMP
//		
//		Owner				:	Ahsen Topbaş

module Bin2BCD_5D(
	
		input wire[15:0] Binary,
		output wire [19:0] BCD		
);

reg [19:0] TEMP;
reg [4:0] i;

always @(Binary) begin
	if(Binary !== 16'hFFFF)
		begin
			TEMP = 0;
				for (i = 0; i < 16; i = i+4'b1)
					begin
						 TEMP = {TEMP[18:0],Binary[15-i]};
								
						 if(i < 15 && TEMP[3:0] > 4) 
							  TEMP[3:0] = TEMP[3:0] + 4'd3;
						 if(i < 15  && TEMP[7:4] > 4)
							  TEMP[7:4] = TEMP[7:4] + 4'd3;
						 if(i < 15 && TEMP[11:8] > 4)
							  TEMP[11:8] = TEMP[11:8] + 4'd3;
						 if(i < 15 && TEMP[15:12] > 4)
							  TEMP[15:12] = TEMP[15:12] + 4'd3;
						 if(i < 15 && TEMP[19:16] > 4)
							  TEMP[19:16] = TEMP[19:16] + 4'd3;
					end
		end 
	else TEMP = 20'hFFFFF;
end	

assign BCD = TEMP;
	
endmodule 