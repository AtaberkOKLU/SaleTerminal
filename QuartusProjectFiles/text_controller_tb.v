/*
test_bench
*/
`timescale 1 ns / 1 ps
module text_controller_tb;
wire output_bit;
reg CLK=1'b1;
reg [10:0] H_counter=11'd0;
reg [9:0] V_counter=10'd0;
reg [47:0] product_IDS; 
reg [239:0] numbers;
reg [19:0] total_price;




text_controller_general DUT(product_IDS,H_counter,V_counter,CLK,output_bit,numbers,total_price);

initial
begin

product_IDS=48'b010100000000000000000000000000000000000000000000;
total_price=20'b00010010001000100011;
numbers=240'b010000000100011101110100000001000111011101000000010001110111010000000100011101110100000001000111011101000000010001110111010000000100011101110100000001000111011101000000010001110111010000000100011101110100000001000111011101000000010001110111;


end



always #10 CLK = ~CLK; //period of clock signal is equal to 20

always #20 
begin
H_counter=H_counter+11'd1;
if (H_counter==11'd1055)
   begin
		H_counter=11'd0;
		V_counter=V_counter+10'd1;
			if (V_counter==10'd800)
				V_counter=10'd0;
	end
end
endmodule