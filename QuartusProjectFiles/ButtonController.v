module ButtonController(
	input wire [9:9] SW,
	input wire [3:0] KEY,
	output reg [3:0] CMD_Reg,
	output reg [3:0] KEY_Reg
);

wire SW_Wire = SW[9];

initial
begin
	CMD_Reg <= 0;
	KEY_Reg <= 0;
end

always @ (SW_Wire, KEY)
	begin
		if(SW_Wire)
			begin		
				KEY_Reg <= 0;
				CMD_Reg <= KEY;
			end
		else
			begin
				KEY_Reg <= KEY;
				CMD_Reg <= 0;
			end
	end
endmodule
