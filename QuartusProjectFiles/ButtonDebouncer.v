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
    input NoisyButtonIn,  	
    // from which we make three outputs, all synchronous to the clock
    output reg CleanButtonOut = 1  // 1 as long as the push-button is active (down)
);

// First use two flip-flops to synchronize the PB signal the "clk" clock domain
reg PB_sync_0;  always @(posedge CLK) PB_sync_0 <= ~NoisyButtonIn;  // invert PB to make PB_sync_0 active high
reg PB_sync_1;  always @(posedge CLK) PB_sync_1 <= PB_sync_0;

// Next declare a 16-bits counter
reg [COUNTER_REG_SIZE-1:0] Counter = 0;

// When the push-button is pushed or released, we increment the counter
// The counter has to be maxed out before we decide that the push-button state has changed

wire PB_idle = (CleanButtonOut==PB_sync_1);

wire Counter_max = &Counter;	// True when all bits of Counter are 1's

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
