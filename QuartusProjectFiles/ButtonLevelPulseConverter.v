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

reg r1,r2;

always @(posedge CLK)
	begin
		// Prev. State Reg.
		r1 <= CleanButtonIn;
		// Edge Detector
		r2	<= r1;
	end
	
// Rising Edge = old value is 0, new value is 1
assign ButtonPulseOut = ~r2 & r1;

endmodule
