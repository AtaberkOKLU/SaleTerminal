module writer(ProductID,dat);
	input[3:0] ProductID;
	output reg [62:0] dat;
	
	reg [6:0] dat0, dat1, dat2, dat3, dat4, dat5, dat6, dat7, dat8;
	initial begin
		dat0 = 7'h00;
		dat1 = 7'h00;
		dat2 = 7'h00;
		dat3 = 7'h00;
		dat4 = 7'h00;
		dat5 = 7'h00;
		dat6 = 7'h00;
		dat7 = 7'h00;
		dat8 = 7'h00;
	end
	always @ (*) begin
		case(ProductID)
			4'd0	:	begin
				dat0 = 7'h42; //B
				dat1 = 7'h41; //A
				dat2 = 7'h4e; //N
				dat3 = 7'h41; //A
				dat4 = 7'h4e; //N
				dat5 = 7'h41; //A
				dat6 = 7'h00; //
				dat7 = 7'h00; //
				dat8 = 7'h00; //				
			end

			4'd1	:	begin
				dat0 = 7'h50; //P
				dat1 = 7'h4f; //O
				dat2 = 7'h54; //T
				dat3 = 7'h41; //A
				dat4 = 7'h54; //T
				dat5 = 7'h4f; //O
				dat6 = 7'h00; //
				dat7 = 7'h00; //
				dat8 = 7'h00; //
			end
			
			4'd2	:	begin
				dat0 = 7'h54; //T
				dat1 = 7'h4f; //O
				dat2 = 7'h4d; //M
				dat3 = 7'h41; //A
				dat4 = 7'h54; //T
				dat5 = 7'h4f; //O
				dat6 = 7'h00; //
				dat7 = 7'h00; //
				dat8 = 7'h00; //
			end
			
			4'd3	:	begin
				dat0 = 7'h50; //P
				dat1 = 7'h45; //E
				dat2 = 7'h41; //A
				dat3 = 7'h43; //C
				dat4 = 7'h48; //H
				dat5 = 7'h00; //
				dat6 = 7'h00; //
				dat7 = 7'h00; //
				dat8 = 7'h00; //
			end
			
			4'd4	:	begin
				dat0 = 7'h41; //A
				dat1 = 7'h50; //P
				dat2 = 7'h50; //P
				dat3 = 7'h4c; //L
				dat4 = 7'h45; //E
				dat5 = 7'h00; //
				dat6 = 7'h00; //
				dat7 = 7'h00; //
				dat8 = 7'h00; //
			end
			
			4'd5	:	begin
				dat0 = 7'h50; //P
				dat1 = 7'h49; //I
				dat2 = 7'h4e; //N
				dat3 = 7'h45; //E
				dat4 = 7'h41; //A
				dat5 = 7'h50; //P
				dat6 = 7'h50; //P
				dat7 = 7'h4c; //L
				dat8 = 7'h45; //E
			end
			
			4'd6	:	begin
				dat0 = 7'h41; //A
				dat1 = 7'h56; //V
				dat2 = 7'h4f; //O
				dat3 = 7'h43; //C
				dat4 = 7'h41; //A
				dat5 = 7'h44; //D
				dat6 = 7'h4f; //O
				dat7 = 7'h00; //
				dat8 = 7'h00; //
			end
			
			4'd7	:	begin
				dat0 = 7'h43; //C
				dat1 = 7'h48; //H
				dat2 = 7'h45; //E
				dat3 = 7'h52; //R
				dat4 = 7'h52; //R
				dat5 = 7'h59; //Y
				dat6 = 7'h00; //
				dat7 = 7'h00; //
				dat8 = 7'h00; //
			end
			
			4'd8	:	begin
				dat0 = 7'h46; //F
				dat1 = 7'h49; //I
				dat2 = 7'h47; //G
				dat3 = 7'h00; //
				dat4 = 7'h00; //
				dat5 = 7'h00; //
				dat6 = 7'h00; //
				dat7 = 7'h00; //
				dat8 = 7'h00; //
			end
			
			4'd9	:	begin
				dat0 = 7'h47; //G
				dat1 = 7'h52; //R
				dat2 = 7'h41; //A
				dat3 = 7'h50; //P
				dat4 = 7'h45; //E
				dat5 = 7'h00; //
				dat6 = 7'h00; //
				dat7 = 7'h00; //
				dat8 = 7'h00; //
			end
			
			4'd10 : begin
				dat0 = 7'h4b; //K
				dat1 = 7'h49; //I
				dat2 = 7'h57; //W
				dat3 = 7'h49; //I
				dat4 = 7'h00; //
				dat5 = 7'h00; //
				dat6 = 7'h00; //
				dat7 = 7'h00; //
				dat8 = 7'h00; //
			end
			
			4'd11 : begin
				dat0 = 7'h4c; //L
				dat1 = 7'h45; //E
				dat2 = 7'h4d; //M
				dat3 = 7'h4f; //O
				dat4 = 7'h4e; //N
				dat5 = 7'h00; //
				dat6 = 7'h00; //
				dat7 = 7'h00; //
				dat8 = 7'h00; //
			end

			default : begin
				dat0 = 7'h00; //
				dat1 = 7'h00; //
				dat2 = 7'h00; //
				dat3 = 7'h00; //
				dat4 = 7'h00; //
				dat5 = 7'h00; //
				dat6 = 7'h00; //
				dat7 = 7'h00; //
				dat8 = 7'h00; //
			end
		endcase
		dat = {dat0,dat1,dat2,dat3,dat4,dat5,dat6,dat7,dat8};
	end

endmodule
