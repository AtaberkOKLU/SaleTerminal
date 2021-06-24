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
wire [3:0] basket_counter;
wire [3:0] char_counter;
wire [2:0] row_counter;

text_controller DUT(product_IDS,CLK,H_counter,V_counter,output_bit,basket_counter,char_counter,row_counter);

initial
begin

product_IDS=48'b010100000000000000000000000000000000000000000000;

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