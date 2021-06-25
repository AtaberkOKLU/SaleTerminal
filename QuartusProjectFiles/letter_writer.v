module letter_writer(H_counter,ve_counter,CLK,output_bit,words,output_bit_char,coloumn_counter,data);

input [10:0] H_counter;
input [9:0] ve_counter;
input CLK;
wire [62:0]letters;
output output_bit;
input wire [7:0] data;
reg [2:0] row_counter=3'b000;
output reg [3:0] coloumn_counter=4'b0000;
reg [3:0] char_counter=4'b0000;
output wire [6:0] output_bit_char;
reg enable=1'b0;
input [755:0] words;
reg [3:0] basket_counter=4'b0000;



mux_8x1 mux_8x1_1(
.Sel(row_counter),
.In1(data[7]),
.In2(data[6]),
.In3(data[5]),
.In4(data[4]),
.In5(data[3]),
.In6(data[2]),
.In7(data[1]),
.In8(data[0]),
.Out(output_bit),
.enable(enable)

);

mux_9x1 mux_9x1_1(
.Sel(char_counter),
.In1(letters[62:56]),
.In2(letters[55:49]),
.In3(letters[48:42]),
.In4(letters[41:35]),
.In5(letters[34:28]),
.In6(letters[27:21]),
.In7(letters[20:14]),
.In8(letters[13:7]),
.In9(letters[6:0]),
.Out(output_bit_char),
.enable(enable)

);

mux_12x1 mux_12x1_1(
.Sel(basket_counter),
.In1(words[755:693]),
.In2(words[692:630]),
.In3(words[629:567]),
.In4(words[566:504]),
.In5(words[503:441]),
.In6(words[440:378]),
.In7(words[377:315]),
.In8(words[314:252]),
.In9(words[251:189]),
.In10(words[188:126]),
.In11(words[125:63]),
.In12(words[62:0]),
.Out(letters)

);

wire p_1= (ve_counter >= 10'd72 & ve_counter <= 10'd87);
wire p_2= (ve_counter >= 10'd112 & ve_counter <=10'd127);
wire p_3= (ve_counter >= 10'd152 & ve_counter <=10'd167);
wire p_4= (ve_counter >= 10'd192 & ve_counter <=10'd207);
wire p_5= (ve_counter >= 10'd232 & ve_counter <=10'd247);
wire p_6= (ve_counter >= 10'd272 & ve_counter <=10'd287);
wire p_7= (ve_counter >= 10'd312 & ve_counter <=10'd327);
wire p_8= (ve_counter >= 10'd352 & ve_counter <=10'd367);
wire p_9= (ve_counter >= 10'd392 & ve_counter <=10'd407);
wire p_10=(ve_counter >= 10'd432 & ve_counter <=10'd447);
wire p_11=(ve_counter >= 10'd472 & ve_counter <=10'd487);
wire p_12=(ve_counter >= 10'd512 & ve_counter <=10'd527);




always @(posedge CLK)
 begin
  if (p_1 | p_2 | p_3 | p_4 | p_5 | p_6 | p_7 | p_8 | p_9 | p_10 | p_11 | p_12) //60 & 75 .. 100 & 115 .. 140 & 155 .. 180 & 195 .. 220 & 235 .. 260 & 275 .. 300 & 315 .. 340 & 355 .. 380 & 395 .. 420 & 435 .. 460 & 475 .. 500 & 515
  begin
	if (H_counter>=11'd65 & H_counter<=11'd136)  //20 & 91
	begin
		enable<=1'b1;
		row_counter<=row_counter + 3'b001;
		if (row_counter == 3'b111)
		begin
			char_counter<=char_counter + 4'b0001;
				if (char_counter == 4'b1000)
				begin
					char_counter <= 4'b0000;
					coloumn_counter <= coloumn_counter + 4'b0001;
					if (coloumn_counter == 4'b1111)
					begin
						coloumn_counter <= 4'b0000;
						basket_counter <= basket_counter + 4'b0001;
						if (basket_counter == 4'b1011)
							basket_counter <= 4'b0000;
					end	
				end	
			row_counter<=3'b000;
		end
	end
	else
		enable<=1'b0;
  end 
 end
 
 
 
 



endmodule