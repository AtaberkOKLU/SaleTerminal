/*
 *		Module		:	Button Controller Block
 * 	Description	: 	It manages the roles of limited number of buttons
 *							to handle both informative and command inputs
 *		Inputs		: 	SW		=> SW[9] from the board
 *						:	KEY 	=> KEY# from the board
 *
 *		Outputs		: 	CMD_Reg	=> Provides Current States of CMD Keys
 *											for other blocks
 * 					:	KEY_Reg 	=> Provides Current States of KEY values
 *											for other blocks
 *		Owner			: 	Ataberk ÖKLÜ
 */

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
