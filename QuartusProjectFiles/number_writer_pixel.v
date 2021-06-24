module number_writer_pixel(H_counter,ve_counter,CLK,output_bit,prices,output_bit_char,coloumn_counter,data);

input [10:0] H_counter;
input [9:0] ve_counter;
input CLK;
wire [76:0]numbers;
output output_bit;
input wire [7:0] data;
reg [2:0] row_counter=3'b000;
output reg [3:0] coloumn_counter=4'b0000;
reg [3:0] char_counter=4'b0000;
output wire [6:0] output_bit_char;
reg enable=1'b0;
input [1000:0] prices;
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

mux_11x1 mux_11x1_1(
.Sel(char_counter),
.In1(numbers[76:70]),
.In2(numbers[69:63]),
.In3(numbers[62:56]),
.In4(numbers[55:49]),
.In5(numbers[48:42]),
.In6(numbers[41:35]),
.In7(numbers[34:28]),
.In8(numbers[27:21]),
.In9(numbers[20:14]),
.In10(numbers[13:7]),
.In11(numbers[6:0]),
.Out(output_bit_char)

);

mux_13x1 mux_13x1_1(
.Sel(basket_counter),
.In1(prices[1000:924]),
.In2(prices[923:847]),
.In3(prices[846:770]),
.In4(prices[769:693]),
.In5(prices[692:616]),
.In6(prices[615:539]),
.In7(prices[538:462]),
.In8(prices[461:385]),
.In9(prices[384:308]),
.In10(prices[307:231]),
.In11(prices[230:154]),
.In12(prices[153:77]),
.In13(prices[76:0]),
.Out(numbers)

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
wire p_13=(ve_counter >= 10'd562 & ve_counter <=10'd577);



always @(posedge CLK)
 begin
  if (p_1 | p_2 | p_3 | p_4 | p_5 | p_6 | p_7 | p_8 | p_9 | p_10 | p_11 | p_12 | p_13) 
  begin
	if (H_counter>=11'd172 & H_counter<=11'd259)  
	begin
		enable<=1'b1;
		row_counter<=row_counter + 3'b001;
		if (row_counter == 3'b111)
			begin
			char_counter<=char_counter + 4'b0001;
				if (char_counter == 4'b1010)
				begin
					char_counter <= 4'b0000;
					coloumn_counter <= coloumn_counter + 4'b0001;
					if (coloumn_counter == 4'b1111)
					begin
						coloumn_counter <= 4'b0000;
						basket_counter <= basket_counter + 4'b0001;
						if (basket_counter == 4'b1100)
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