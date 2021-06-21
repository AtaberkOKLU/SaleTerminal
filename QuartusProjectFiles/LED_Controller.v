module LED_Controller(
	input  wire [2:0] State,
	input  wire [2:0] CleanSWOut,
	input  wire [3:0] KEY_Reg,
	input  wire [3:0] CMD_Reg,

	output wire [9:0] LEDR
);

assign LEDR[9:7] = State;
assign LEDR[2:0] = CleanSWOut;

assign LEDR[6:3] = (CleanSWOut[0]) ? CMD_Reg : KEY_Reg;

endmodule
