/*
 *		Module		:	Button Debouncer Module
 * 	Description	: 	It samples the input signal and transfers 
 * 						the input only when it is stable for BOUNCE_DELAY
 *							times.
 *		Inputs		: 	NoisyButtonIn	=> Raw button input (Active LOW), 
 *													Assumed Noisy
 *						:	CLK 				=> Button Controller CLK
 * 					:	RST_N 			=> Active Low Reset
 *
 *		Outputs		: 	CleanButtonOut	=> Debounced Button Output
 *		Owner			: 	Ataberk ÖKLÜ
 */
 
module ButtonDebouncer
#(
	parameter COUNTER_REG_SIZE = 16
)(
    input CLK,
    input NoisyButtonIn,  				// Active Low
    output reg CleanButtonOut = 1   // Avtive High
);

// Synchronization
reg PB_sync_0;  always @(posedge CLK) PB_sync_0 <= ~NoisyButtonIn;
reg PB_sync_1;  always @(posedge CLK) PB_sync_1 <= PB_sync_0;

// Counter
reg [COUNTER_REG_SIZE-1:0] Counter = 0;

wire PB_idle = (CleanButtonOut==PB_sync_1);

wire Counter_max = &Counter;	// Time out?

always @(posedge CLK)
	if(PB_idle)
		// Still Stable
		Counter <= 0;
	else
		begin
			// Input is changed, Start Counter
			Counter <= Counter + 16'd1;
			if(Counter_max) CleanButtonOut <= ~CleanButtonOut;  
				// If the counter is maxed out, It is stable for enough time
		end
		
		
endmodule
