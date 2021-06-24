module text_controller(product_IDS,CLK,H_counter,V_counter,output_bit);

input [47:0]product_IDS;
input CLK;
input [9:0] H_counter,V_counter;
output output_bit;
wire [755:0] dat;

writer writer_1(
.ProductID(product_IDS[47:44]),
.dat(dat[755:693])
);

writer writer_2(
.ProductID(product_IDS[43:40]),
.dat(dat[692:630])
);

writer writer_3(
.ProductID(product_IDS[39:36]),
.dat(dat[629:567])
);

writer writer_4(
.ProductID(product_IDS[35:32]),
.dat(dat[566:504])
);

writer writer_5(
.ProductID(product_IDS[31:28]),
.dat(dat[503:441])
);

writer writer_6(
.ProductID(product_IDS[27:24]),
.dat(dat[440:378])
);

writer writer_7(
.ProductID(product_IDS[23:20]),
.dat(dat[377:315])
);

writer writer_8(
.ProductID(product_IDS[19:16]),
.dat(dat[314:252])
);

writer writer_9(
.ProductID(product_IDS[15:12]),
.dat(dat[251:189])
);

writer writer_10(
.ProductID(product_IDS[11:8]),
.dat(dat[188:126])
);

writer writer_11(
.ProductID(product_IDS[7:4]),
.dat(dat[125:63])
);

writer writer_12(
.ProductID(product_IDS[3:0]),
.dat(dat[62:0])
);

letter_writer letter_writer_1(
.H_counter(H_counter),
.V_counter(V_counter),
.CLK(CLK),
.output_bit(output_bit),
.words(dat)
);





endmodule