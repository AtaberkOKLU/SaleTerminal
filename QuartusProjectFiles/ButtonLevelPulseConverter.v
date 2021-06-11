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
		r1 <= in;
		r2 <= r1;
		// Edge Detector
		r3 <= r2;
	end
	
// rising edge = old value is 0, new value is 1
assign out = ~r3 & r2;

endmodule
