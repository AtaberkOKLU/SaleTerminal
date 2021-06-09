/*
 *		Module		:	Image Locator Logic Block
 * 	Description	: 	Find the ImageID from Layout and CounterX/Y, and
 *							Calculate & provide ROM_Addr.
 *		Inputs		: 	CounterX		=> X Posiiton in the Screen
 *
 *						:	CounterY 	=> Y Posiiton in the Screen
 *		Outputs		: 	ROM_Addr		=> Provide ROM_Addr
 *						:	isImage 		=> Notify if Position is on an Image
 *						:	black_white => It is used for drawing lines
 *		Owner			: 	Ataberk ÖKLÜ
 */

module ImageLocator(
	input  wire[9:0] 	CounterX,
	input  wire[9:0] 	CounterY,
	
	output reg[16:0]  ROM_Addr,
	output reg 			isImage,
	output reg [23:0] black_white
);

reg [3:0] ImageID = 0;

always @ (*)
	begin
		if((CounterX > 307) && (CounterY > 19) && (CounterX < 407) && (CounterY < 119)) 		// Image[0,0]
			begin
				isImage <= 1;
				ImageID <= 0;
				black_white	<= 24'b0;
			end
		else if((CounterX > 435) && (CounterY > 19) && (CounterX < 535) && (CounterY < 119))	// Image[0,0]
			begin
				isImage <= 1;
				ImageID <= 1;
				black_white	<= 24'b0;
			end
		else if((CounterX > 563) && (CounterY > 19) && (CounterX < 663) && (CounterY < 119))	// Image[0,2]
			begin
				isImage <= 1;
				ImageID <= 2;
				black_white	<= 24'b0;
			end
		else if((CounterX > 691) && (CounterY > 19) && (CounterX < 791) && (CounterY < 119)) // Image[0,3]
			begin
				isImage <= 1;
				ImageID <= 3;
				black_white	<= 24'b0;
			end
		else if((CounterX > 307) && (CounterY > 147) && (CounterX < 407) && (CounterY < 247))// Image[1,0]
			begin
				isImage <= 1;
				ImageID <= 4;
				black_white	<= 24'b0;
			end
		else if((CounterX > 435) && (CounterY > 147) && (CounterX < 535) && (CounterY < 247))// Image[1,1]
			begin
				isImage <= 1;
				ImageID <= 5;
				black_white	<= 24'b0;
			end
		else if((CounterX > 563) && (CounterY > 147) && (CounterX < 663) && (CounterY < 247))// Image[1,2]
			begin
				isImage <= 1;
				ImageID <= 6;
				black_white	<= 24'b0;
			end
		else if((CounterX > 691) && (CounterY > 147) && (CounterX < 791) && (CounterY < 247))// Image[1,3]
			begin
				isImage <= 1;
				ImageID <= 7;
				black_white	<= 24'b0;
			end
		else if((CounterX > 307) && (CounterY > 275) && (CounterX < 407) && (CounterY < 375))// Image[2,0]
			begin
				isImage <= 1;
				ImageID <= 8;
				black_white	<= 24'b0;
			end
		else if((CounterX > 435) && (CounterY > 275) && (CounterX < 535) && (CounterY < 375))// Image[2,1]
			begin
				isImage <= 1;
				ImageID <= 9;
				black_white	<= 24'b0;
			end
		else if((CounterX > 563) && (CounterY > 275) && (CounterX < 663) && (CounterY < 375))// Image[2,2]
			begin
				isImage <= 1;
				ImageID <= 10;
				black_white	<= 24'b0;
			end
		else if((CounterX > 691) && (CounterY > 275) && (CounterX < 791) && (CounterY < 375))// Image[2,3]
			begin
				isImage <= 1;
				ImageID <= 11;
				black_white	<= 24'b0;
			end
		else if((CounterX > 19) && (CounterY > 9) && (CounterX < 279) && (CounterY < 49))    // Logo
			begin
				isImage <= 1;
				ImageID <= 12;
				black_white	<= 24'b0;
			end
		else
			begin
				isImage 		<= 0;
				black_white	<= 24'b0;
				ImageID 		<= 15;
			end
			
	end
	
	always @ (*)
		begin
			if(isImage)
				begin
					ROM_Addr <= ImageID*100*100 + (CounterX-(307+ImageID[1:0]>>7)) + 100*(CounterY-(19+((ImageID>>2)<<7)));
				end
			else
					ROM_Addr <= 0;
		end

endmodule
