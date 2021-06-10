module Encoder16x4(
	input  wire	[15:0] 	in,
	output reg	[3:0]	out,
	output reg 	valid
);

always @ (in)
	begin
		case(in)
			16'b0000_0000_0000_0001 : begin out = 0;  valid = 1; end
			16'b0000_0000_0000_0010 : begin out = 1;  valid = 1; end
			16'b0000_0000_0000_0100 : begin out = 2;  valid = 1; end
			16'b0000_0000_0000_1000 : begin out = 3;  valid = 1; end
			16'b0000_0000_0001_0000 : begin out = 4;  valid = 1; end
			16'b0000_0000_0010_0000 : begin out = 5;  valid = 1; end
			16'b0000_0000_0100_0000 : begin out = 6;  valid = 1; end
			16'b0000_0000_1000_0000 : begin out = 7;  valid = 1; end
			16'b0000_0001_0000_0000 : begin out = 8;  valid = 1; end
			16'b0000_0010_0000_0000 : begin out = 9;  valid = 1; end
			16'b0000_0100_0000_0000 : begin out = 10; valid = 1; end
			16'b0000_1000_0000_0000 : begin out = 11; valid = 1; end
			16'b0001_0000_0000_0000 : begin out = 12; valid = 1; end
			16'b0010_0000_0000_0000 : begin out = 13; valid = 1; end
			16'b0100_0000_0000_0000 : begin out = 14; valid = 1; end
			16'b1000_0000_0000_0000 : begin out = 15; valid = 1; end
			default 						: begin out = 4'bx; valid = 0; end
		endcase
	end

endmodule
	