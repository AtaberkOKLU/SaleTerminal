	begin
		if((CounterX > 307) && (CounterY > 19) && (CounterX < 407) && (CounterY < 119)) 		// Image[0,0]
			begin
				isImage = 1;
				ImageID = 0;
				black_white	= 24'b0;
			end
		else if((CounterX > 435) && (CounterY > 19) && (CounterX < 535) && (CounterY < 119))	// Image[0,1]
			begin
				isImage = 1;
				ImageID = 1;
				black_white	= 24'b0;
			end
		else if((CounterX > 563) && (CounterY > 19) && (CounterX < 663) && (CounterY < 119))	// Image[0,2]
			begin
				isImage = 1;
				ImageID = 2;
				black_white	= 24'b0;
			end
		else if((CounterX > 691) && (CounterY > 19) && (CounterX < 791) && (CounterY < 119)) // Image[0,3]
			begin
				isImage = 1;
				ImageID = 3;
				black_white	= 24'b0;
			end
		else if((CounterX > 307) && (CounterY > 147) && (CounterX < 407) && (CounterY < 247))// Image[1,0]
			begin
				isImage = 1;
				ImageID = 4;
				black_white	= 24'b0;
			end
		else if((CounterX > 435) && (CounterY > 147) && (CounterX < 535) && (CounterY < 247))// Image[1,1]
			begin
				isImage = 1;
				ImageID = 5;
				black_white	= 24'b0;
			end
		else if((CounterX > 563) && (CounterY > 147) && (CounterX < 663) && (CounterY < 247))// Image[1,2]
			begin
				isImage = 1;
				ImageID = 6;
				black_white	= 24'b0;
			end
		else if((CounterX > 691) && (CounterY > 147) && (CounterX < 791) && (CounterY < 247))// Image[1,3]
			begin
				isImage = 1;
				ImageID = 7;
				black_white	= 24'b0;
			end
		else if((CounterX > 307) && (CounterY > 275) && (CounterX < 407) && (CounterY < 375))// Image[2,0]
			begin
				isImage = 1;
				ImageID = 8;
				black_white	= 24'b0;
			end
		else if((CounterX > 435) && (CounterY > 275) && (CounterX < 535) && (CounterY < 375))// Image[2,1]
			begin
				isImage = 1;
				ImageID = 9;
				black_white	= 24'b0;
			end
		else if((CounterX > 563) && (CounterY > 275) && (CounterX < 663) && (CounterY < 375))// Image[2,2]
			begin
				isImage = 1;
				ImageID = 10;
				black_white	= 24'b0;
			end
		else if((CounterX > 691) && (CounterY > 275) && (CounterX < 791) && (CounterY < 375))// Image[2,3]
			begin
				isImage = 1;
				ImageID = 11;
				black_white	= 24'b0;
			end
		else if((CounterX > 19) && (CounterY > 9) && (CounterX < 279) && (CounterY < 49))    // Logo
			begin
				isImage = 1;
				ImageID = 12;
				black_white	= 24'b0;
			end
// TODO: This Else is important, this design MUST be revieved
		else
			begin
				isImage 		= 0;
				black_white	= 24'b0;
				ImageID 		= 15;
			end
			
	end
	
	
	
	
	begin
		case(CounterX) inside
			[307:407]:
				begin
					case(CounterY) inside
						[19:119]:
							begin
								// Image[0,0]
								isImage		= 1;
								ImageID 		= 0;
								black_white	= 24'b0;
							end
							
						[147:247]:
							begin
								// Image[1,0]
								isImage		= 1;
								ImageID 		= 4;
								black_white	= 24'b0;
							end
						
						[275:375]:
							begin
								// Image[2,0]
								isImage		= 1;
								ImageID 		= 8;
								black_white	= 24'b0;
							end
						
						default: 
							begin
							end
					endcase
				end
				
			[435:535]:
				begin
					case(CounterY) inside
						[19:119]:
							begin
								// Image[0,1]
							end
							
						[147:247]:
							begin
								// Image[1,1]
							end
						
						[275:375]:
							begin
								// Image[2,1]
							end
						
						default: 
							begin
							end
					endcase
				end
				
			[563:663]:
				begin
					case(CounterY) inside
						[19:119]:
							begin
								// Image[0,2]
							end
							
						[147:247]:
							begin
								// Image[1,2]
							end
						
						[275:375]:
							begin
								// Image[2,2]
							end
						
						default: 
							begin
							end
					endcase
				end
				
			[691:791]:
				begin
					case(CounterY) inside
						[19:119]:
							begin
								// Image[0,3]
							end
							
						[147:247]:
							begin
								// Image[1,3]
							end
						
						[275:375]:
							begin
								// Image[2,3]
							end
						
						default: 
							begin
							end
					endcase
				end
		endcase
	end