module text_controller_general(product_IDS,H_counter,V_counter,CLK,output_bit,numbers,total_price);

input [47:0] product_IDS;
input CLK;
input [10:0] H_counter;
input [9:0] V_counter;
output output_bit;
wire output_bit1,output_bit2;

wire [6:0] output_bit_char,output_bit_char1,output_bit_char2;
wire [3:0] coloumn_counter,coloumn_counter1,coloumn_counter2;
wire [7:0] data;
wire [10:0] addr;

input wire [239:0] numbers;
input wire [19:0] total_price;


text_controller text_controller1(
.product_IDS(product_IDS),
.CLK(CLK),
.H_counter(H_counter),
.V_counter(V_counter),
.output_bit(output_bit1),
.data(data),
.output_bit_char(output_bit_char1),
.coloumn_counter(coloumn_counter1)
);

price_writer price_writer_1(
.numbers(numbers),
.total_price(total_price),
.H_counter(H_counter),
.ve_counter(V_counter),
.CLK(CLK),
.output_bit(output_bit2),
.output_bit_char(output_bit_char2),
.coloumn_counter(coloumn_counter2),
.data(data)
);


font_rom font_rom1(
.clk(CLK),
.addr(addr),
.data(data)
);


assign output_bit=output_bit1+output_bit2;
assign output_bit_char=output_bit_char1+output_bit_char2;
assign coloumn_counter=coloumn_counter1+coloumn_counter2;

assign addr={output_bit_char,coloumn_counter};


endmodule