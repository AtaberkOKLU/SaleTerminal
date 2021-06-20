/*
 *		Module		:	Button Managment Block
 * 	Description	: 	It manages the roles of limited number of buttons
 *							to handle both informative and command inputs
 *		Inputs		: 	SW		=> SW[0] from the debouncer
 *						:	KEY 	=> KEY# from the debouncer
 *
 *		Outputs		: 	CMD_Reg	=> Provides Current States of CMD Keys
 *											for other blocks
 * 					:	KEY_Reg 	=> Provides Current States of KEY values
 *											for other blocks
 *		Owner			: 	Ataberk ÖKLÜ
 */

module ButtonManager(
	input wire  	  SW0,		// SW0
	input wire [3:0] KEY,
	output reg [3:0] CMD_Reg,
	output reg [3:0] KEY_Reg
);


initial
begin
	CMD_Reg <= 4'b0;
	KEY_Reg <= 4'b0;
end

always @ (SW0, KEY)
	begin
		if(SW0)
			begin		
				KEY_Reg = 4'b0;
				CMD_Reg = KEY;
			end
		else
			begin
				KEY_Reg = KEY;
				CMD_Reg = 4'b0;
			end
	end
endmodule
