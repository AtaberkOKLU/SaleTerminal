module LED_Controller(
	input  wire [2:0] State,
	input  wire [2:0] CleanSWOut,
	input  wire [3:0] CleanButtonOut,

	output wire [9:0] LEDR
);

assign LEDR[9:7] = State;
assign LEDR[2:0] = CleanSWOut;

assign LEDR[6:3] = CleanButtonOut;

endmodule
