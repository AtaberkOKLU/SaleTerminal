/*
 *		Module		:	Button Active High Level Pulse Generator
 * 	Description	: 	It is Level-Pulse Generator used for 
 *							Active High Buttons to generate Enable 
 *							signals
 *		Inputs		: 	CleanButtonIn	=> Clean Button Input
 *						:	CLK 				=> Button Controller CLK
 * 					:	RST_N 			=> Active Low Reset
 *
 *		Outputs		: 	ButtonPulseOut	=> A Pulse of 1 CLK Period
 *		Owner			: 	Ataberk ÖKLÜ
 */
 
module ButtonLevelPulseConverter(
	input CLK,
	input CleanButtonIn,
	output ButtonPulseOut
);

reg r1,r2,r3;

always @(posedge CLK)
	begin
		// 2Bit Syncronizer
		r1 <= CleanButtonIn;
		r2 <= r1;
		// Edge Detector
		r3 <= r2;
	end
	
// Falling Edge = old value is 1, new value is 0
assign ButtonPulseOut = r3 & ~r2;

endmodule
