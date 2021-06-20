/*
 *		Module		:	7-Segment Block
 * 	Description	: 	The indiviual block manages connected on-board 
 *							segment displays
 *		Inputs		: 	bcd	=> BCD number to display
 *
 *		Outputs		: 	seg	=> 7-bit control signal to realize BCD
										number on the display
 *		Owner			: 	Ataberk ÖKLÜ
 */

module Segment7(
     input [3:0] bcd,
     output reg[6:0] seg
    );
     
    always @(bcd)
    begin
        case (bcd)
				4'h0: 	seg = 7'b1000000;
				4'h1: 	seg = 7'b1111001;		// ---t----
				4'h2: 	seg = 7'b0100100; 	// |	  |
				4'h3: 	seg = 7'b0110000; 	// lt	 rt
				4'h4: 	seg = 7'b0011001; 	// |	  |
				4'h5: 	seg = 7'b0010010; 	// ---m----
				4'h6: 	seg = 7'b0000010; 	// |	  |
				4'h7: 	seg = 7'b1111000; 	// lb	 rb
				4'h8: 	seg = 7'b0000000; 	// |	  |
				4'h9: 	seg = 7'b0011000; 	// ---b----
				default: seg = 7'b1111111;
        endcase
    end
    
endmodule