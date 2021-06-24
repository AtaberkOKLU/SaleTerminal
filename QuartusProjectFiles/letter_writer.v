module letter_writer(H_counter,V_counter,CLK,output_bit,words);

input [9:0] H_counter,V_counter;
input CLK;
wire [62:0]letters;
output output_bit;
wire [7:0] data;
reg [2:0] row_counter=3'b000;
reg [3:0] coloumn_counter=4'b0000;
reg [3:0] char_counter=4'b0000;
wire [6:0] output_bit_char;
reg enable=1'b0;
reg [9:0] ve_counter;
input [755:0] words;
reg [3:0] basket_counter=4'b0000;



font_rom font_rom1(
.clk(CLK),
.addr({output_bit_char,coloumn_counter}),
.data(data)
);

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
.Out(output_bit_char)

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


always @(posedge CLK)
 begin
  if (ve_counter >= 10'b0000111100 & ve_counter <= 10'b0001001011 & ve_counter >= 10'b0001100100 & ve_counter <= 10'b0001110011 & ve_counter >= 10'b0010001100 & ve_counter <= 10'b0010011011 & ve_counter >= 10'b0010110100 & ve_counter <= 10'b0011000011  & ve_counter >= 10'b0100000100 & ve_counter <= 10'b0100010011 & ve_counter >= 10'b0100101100 & ve_counter <= 10'b0100111011 & ve_counter >= 10'b0101010100 & ve_counter <= 10'b0101100011 & ve_counter >= 10'b0101111100 & ve_counter <= 10'b0110001011 & ve_counter >= 10'b0110100100 & ve_counter <= 10'b0110110011 & ve_counter >= 10'b0111001100 & ve_counter <= 10'b0111011011 & ve_counter >= 10'b0111110100 & ve_counter <= 10'b1000000011) //60 & 75 .. 100 & 115 .. 140 & 155 .. 180 & 195 .. 220 & 235 .. 260 & 275 .. 300 & 315 .. 340 & 355 .. 380 & 395 .. 420 & 435 .. 460 & 475 .. 500 & 515
  begin
	if (H_counter>=10'b0000010100 & H_counter<=10'b0001011011)  //20 & 91
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
 
 
 
 
 always @(posedge CLK)
  begin
  
	ve_counter<=V_counter;

  end


endmodule