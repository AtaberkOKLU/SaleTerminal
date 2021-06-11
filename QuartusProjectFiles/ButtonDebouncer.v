/*
 *		Module		:	Button Debouncer Module
 * 	Description	: 	It samples the input signal and transfers 
 * 						the input only when it is stable for BOUNCE_DELAY
 *							times.
 *		Inputs		: 	NoisyButtonIn	=> Raw button input
 *						:	CLK 				=> Button Controller CLK
 * 					:	RST_N 			=> Active Low Reset
 *
 *		Outputs		: 	CleanButtonOut	=> Debounced Button Output
 *		Owner			: 	Ataberk ÖKLÜ
 */
 
module ButtonDebouncer
#(
	parameter BOUNCE_DELAY = 100000
)(
	input NoisyButtonIn,
	input CLK,
	input RST_N,
	output reg CleanButtonOut
);

reg [$clog2(BOUNCE_DELAY)-1:0] Counter;
reg InLast;

always @ (posedge CLK)
	begin
		if (!RST_N)
			// Reset Signal is Received. Reset ALL.
			begin
				InLast <= NoisyButtonIn;
				CleanButtonOut <= NoisyButtonIn;
				Counter <= 0;
			end
		else if (NoisyButtonIn != InLast)
			// It is not stabilized yet.
			begin
				InLast <= NoisyButtonIn;
				Counter <= 0;
			end
		else if (Counter == BOUNCE_DELAY)
			// It is stable for enough time.
			CleanButtonOut <= InLast;
		else
			// The Last input is same as the previous, but just for now.
			Counter <= Counter + {$clog2(BOUNCE_DELAY){1'b1}};
	end

endmodule
