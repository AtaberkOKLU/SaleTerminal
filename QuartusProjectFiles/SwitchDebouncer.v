/*
 *		Module		:	Switch Debouncer Module
 * 	Description	: 	It samples the input signal and transfers 
 * 						the input only when it is stable for BOUNCE_DELAY
 *							times.
 *		Inputs		: 	NoisySWIn	=> Raw Switch input (Active High), 
 *												Assumed Noisy
 *						:	CLK 			=> Button Controller CLK
 * 					:	RST_N 		=> Active Low Reset
 *
 *		Outputs		: 	CleanSWOut	=> Debounced Button Output (Active High)
 *		Owner			: 	Ataberk ÖKLÜ
 */
 
module SwitchDebouncer
#(
	parameter COUNTER_REG_SIZE = 2
)(
    input CLK,
    input NoisySWIn,  				// Active High
    output reg CleanSWOut = 0  	// Active High
);

// Syncronization
reg PB_sync_0;  always @(posedge CLK) PB_sync_0 <= NoisySWIn;
reg PB_sync_1;  always @(posedge CLK) PB_sync_1 <= PB_sync_0;

// Counter
reg [COUNTER_REG_SIZE-1:0] Counter = 0;

wire PB_idle = (CleanSWOut==PB_sync_1);

wire Counter_max = &Counter;	// Time out?

always @(posedge CLK)
	if(PB_idle)
		// Still Stable
		Counter <= 0;
	else
		begin
			// Input is changed, Start Counter
			Counter <= Counter + 16'd1;
			if(Counter_max) CleanSWOut <= ~CleanSWOut;  
				// If the counter is maxed out, It is stable for enough time
		end
		
		
endmodule
