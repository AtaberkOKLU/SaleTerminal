module num_calc(enable,num_i,price_i,dat);
	input enable;
	input[3:0] num_i;
	input wire[15:0] price_i;
	
	output reg [76:0] dat;
	reg [6:0] dat0, dat1, dat2, dat3, dat4, dat5, dat6, dat7, dat8, dat9, dat10;

	initial begin
		dat0 = 7'h00; //Quantity
		dat1 = 7'h00;
		dat2 = 7'h00;
		dat3 = 7'h00;
		dat4 = 7'h00;
		dat5 = 7'h00; //1
		dat6 = 7'h00; //2
		dat7 = 7'h00; //.
		dat8 = 7'h00; //3
		dat9 = 7'h00; // 4
		dat10 = 7'h00; // $ Sign
	end
	always @ (*) begin
	
		if(enable) begin
			dat0 = 7'h54; // T
			dat1 = 7'h4f; // O
			dat2 = 7'h54; // T
			dat3 = 7'h3a; // :

			case(num_i[3:0])
				4'd0 : dat4 = 7'h30; //0
				4'd1 : dat4 = 7'h31; //1
				4'd2 : dat4 = 7'h32; //2
				4'd3 : dat4 = 7'h33; //3
				4'd4 : dat4 = 7'h34; //4
				4'd5 : dat4 = 7'h35; //5
				4'd6 : dat4 = 7'h36; //6
				4'd7 : dat4 = 7'h37; //7
				4'd8 : dat4 = 7'h38; //8
				4'd9 : dat4 = 7'h39; //9
				default : dat4 = 7'h00;
			endcase
		end
		
		else begin
			case(num_i)
				4'd1 : begin
					dat0 = 7'h31; //1
					dat1 = 7'h00;
					dat2 = 7'h00;
					dat3 = 7'h00;
					dat4 = 7'h00;
				end

				4'd2	:	begin
					dat0 = 7'h32; //2
					dat1 = 7'h00;
					dat2 = 7'h00;
					dat3 = 7'h00;
					dat4 = 7'h00;
				end
				
				4'd3	:	begin
					dat0 = 7'h33; //3
					dat1 = 7'h00;
					dat2 = 7'h00;
					dat3 = 7'h00;
					dat4 = 7'h00;
				end
				
				4'd4	:	begin
					dat0 = 7'h34; //4
					dat1 = 7'h00;
					dat2 = 7'h00;
					dat3 = 7'h00;
					dat4 = 7'h00;
				end
				
				
				default : begin
					dat0 = 7'h00;
					dat1 = 7'h00;
					dat2 = 7'h00;
					dat3 = 7'h00;
					dat4 = 7'h00;
				end
			endcase
		end

		case(price_i[15:12])
			4'd0 : dat5 = 7'h30; //0
			4'd1 : dat5 = 7'h31; //1
			4'd2 : dat5 = 7'h32; //2
			4'd3 : dat5 = 7'h33; //3
			4'd4 : dat5 = 7'h34; //4
			4'd5 : dat5 = 7'h35; //5
			4'd6 : dat5 = 7'h36; //6
			4'd7 : dat5 = 7'h37; //7
			4'd8 : dat5 = 7'h38; //8
			4'd9 : dat5 = 7'h39; //9
			default : dat5 = 7'h00;
		endcase
		
		case(price_i[11:8])
			4'd0 : dat6 = 7'h30; //0
			4'd1 : dat6 = 7'h31; //1
			4'd2 : dat6 = 7'h32; //2
			4'd3 : dat6 = 7'h33; //3
			4'd4 : dat6 = 7'h34; //4
			4'd5 : dat6 = 7'h35; //5
			4'd6 : dat6 = 7'h36; //6
			4'd7 : dat6 = 7'h37; //7
			4'd8 : dat6 = 7'h38; //8
			4'd9 : dat6 = 7'h39; //9
			default : dat6 = 7'h00;
		endcase
		
		dat7 = 7'h2e; //.
		
		case(price_i[7:4])
			4'd0 : dat8 = 7'h30; //0
			4'd1 : dat8 = 7'h31; //1
			4'd2 : dat8 = 7'h32; //2
			4'd3 : dat8 = 7'h33; //3
			4'd4 : dat8 = 7'h34; //4
			4'd5 : dat8 = 7'h35; //5
			4'd6 : dat8 = 7'h36; //6
			4'd7 : dat8 = 7'h37; //7
			4'd8 : dat8 = 7'h38; //8
			4'd9 : dat8 = 7'h39; //9
			default : dat8 = 7'h00;
		endcase
		
		case(price_i[3:0])
			4'd0 : dat9 = 7'h30; //0
			4'd1 : dat9 = 7'h31; //1
			4'd2 : dat9 = 7'h32; //2
			4'd3 : dat9 = 7'h33; //3
			4'd4 : dat9 = 7'h34; //4
			4'd5 : dat9 = 7'h35; //5
			4'd6 : dat9 = 7'h36; //6
			4'd7 : dat9 = 7'h37; //7
			4'd8 : dat9 = 7'h38; //8
			4'd9 : dat9 = 7'h39; //9
			default : dat9 = 7'h00;
		endcase
		
		dat10 = 7'h24; //$
		
		dat = {dat0,dat1,dat2,dat3,dat4,dat5,dat6,dat7,dat8,dat9,dat10};
		
		
	end

endmodule
