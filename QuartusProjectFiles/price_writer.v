module price_writer(numbers,total_price,H_counter,ve_counter,CLK,output_bit,output_bit_char,coloumn_counter,data);

input wire [239:0] numbers;
wire [1000:0] prices;
input wire [19:0] total_price;


input [10:0] H_counter;
input [9:0] ve_counter;
input CLK;
output output_bit;
output wire [6:0] output_bit_char;
output wire [3:0] coloumn_counter;
input wire [7:0] data;


num_calc num_calc1(
.enable(1'b0),
.num_i(numbers[239:236]),
.price_i(numbers[235:220]),
.dat(prices[1000:924])
);

num_calc num_calc2(
.enable(1'b0),
.num_i(numbers[219:216]),
.price_i(numbers[215:200]),
.dat(prices[923:847])
);

num_calc num_calc3(
.enable(1'b0),
.num_i(numbers[199:196]),
.price_i(numbers[195:180]),
.dat(prices[846:770])
);

num_calc num_calc4(
.enable(1'b0),
.num_i(numbers[179:176]),
.price_i(numbers[175:160]),
.dat(prices[769:693])
);

num_calc num_calc5(
.enable(1'b0),
.num_i(numbers[159:156]),
.price_i(numbers[155:140]),
.dat(prices[692:616])
);

num_calc num_calc6(
.enable(1'b0),
.num_i(numbers[139:136]),
.price_i(numbers[135:120]),
.dat(prices[615:539])
);

num_calc num_calc7(
.enable(1'b0),
.num_i(numbers[119:116]),
.price_i(numbers[115:100]),
.dat(prices[538:462])
);

num_calc num_calc8(
.enable(1'b0),
.num_i(numbers[99:96]),
.price_i(numbers[95:80]),
.dat(prices[461:385])
);

num_calc num_calc9(
.enable(1'b0),
.num_i(numbers[79:76]),
.price_i(numbers[75:60]),
.dat(prices[384:308])
);

num_calc num_calc10(
.enable(1'b0),
.num_i(numbers[59:56]),
.price_i(numbers[55:40]),
.dat(prices[307:231])
);

num_calc num_calc11(
.enable(1'b0),
.num_i(numbers[39:36]),
.price_i(numbers[35:20]),
.dat(prices[230:154])
);

num_calc num_calc12(
.enable(1'b0),
.num_i(numbers[19:16]),
.price_i(numbers[15:0]),
.dat(prices[153:77])
);

num_calc t_price(
.enable(1'b1),
.num_i(total_price[19:16]),
.price_i(total_price[15:0]),
.dat(prices[76:0])
);

number_writer_pixel number_writer_pixel_1(
.H_counter(H_counter),
.ve_counter(ve_counter),
.CLK(CLK),
.output_bit(output_bit),
.prices(prices),
.output_bit_char(output_bit_char),
.coloumn_counter(coloumn_counter),
.data(data)
);









endmodule