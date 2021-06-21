module BarcodeHoverController(
	input  wire [15:0] 	Barcode_in,
	input  wire [2:0]	 	NumOfBarcodeDigitsEntered,
	input  wire 			BarcodeCompleted,
	
	output wire [11:0] 	HighlightedBarcodeOut
);


localparam Prdct_0_Barcode  = 16'h3124;
localparam Prdct_1_Barcode  = 16'h4132;
localparam Prdct_2_Barcode  = 16'h4133;
localparam Prdct_3_Barcode  = 16'h3121;
localparam Prdct_4_Barcode  = 16'h3133;
localparam Prdct_5_Barcode  = 16'h3214;
localparam Prdct_6_Barcode  = 16'h2134;
localparam Prdct_7_Barcode  = 16'h2144;
localparam Prdct_8_Barcode  = 16'h3112;
localparam Prdct_9_Barcode  = 16'h4321;
localparam Prdct_10_Barcode = 16'h1342;
localparam Prdct_11_Barcode = 16'h1213;

wire [15:0] Barcode_Extract;
wire [15:0] Prdct0_Extract, Prdct1_Extract, Prdct2_Extract, Prdct3_Extract;
wire [15:0] Prdct4_Extract, Prdct5_Extract, Prdct6_Extract, Prdct7_Extract;
wire [15:0] Prdct8_Extract, Prdct9_Extract, Prdct10_Extract, Prdct11_Extract;

wire Prdct0_Check, Prdct1_Check, Prdct2_Check, Prdct3_Check, Prdct4_Check, Prdct5_Check;
wire Prdct6_Check, Prdct7_Check, Prdct8_Check, Prdct9_Check, Prdct10_Check, Prdct11_Check;

/* Barcode Extract  / ex. h1210 when 3 digits (1,2,1) is entered */
assign Barcode_Extract		= ((Barcode_in)&(~(16'hFFFF>>(NumOfBarcodeDigitsEntered*4))));

/* Product Extract  / ex. h1213 when 3 digits (1,2,1) is entered -> h0003*/
assign Prdct0_Extract		= ((Prdct_0_Barcode)&(16'hFFFF>>(NumOfBarcodeDigitsEntered*4)));
assign Prdct0_Check			=  (Prdct_0_Barcode == (Barcode_Extract|Prdct0_Extract));

assign Prdct1_Extract		= ((Prdct_1_Barcode)&(16'hFFFF>>(NumOfBarcodeDigitsEntered*4)));
assign Prdct1_Check			=  (Prdct_1_Barcode == (Barcode_Extract|Prdct1_Extract));

assign Prdct2_Extract		= ((Prdct_2_Barcode)&(16'hFFFF>>(NumOfBarcodeDigitsEntered*4)));
assign Prdct2_Check			=  (Prdct_2_Barcode == (Barcode_Extract|Prdct2_Extract));

assign Prdct3_Extract		= ((Prdct_3_Barcode)&(16'hFFFF>>(NumOfBarcodeDigitsEntered*4)));
assign Prdct3_Check			=  (Prdct_3_Barcode == (Barcode_Extract|Prdct3_Extract));

assign Prdct4_Extract		= ((Prdct_4_Barcode)&(16'hFFFF>>(NumOfBarcodeDigitsEntered*4)));
assign Prdct4_Check			=  (Prdct_4_Barcode == (Barcode_Extract|Prdct4_Extract));

assign Prdct5_Extract		= ((Prdct_5_Barcode)&(16'hFFFF>>(NumOfBarcodeDigitsEntered*4)));
assign Prdct5_Check			=  (Prdct_5_Barcode == (Barcode_Extract|Prdct5_Extract));

assign Prdct6_Extract		= ((Prdct_6_Barcode)&(16'hFFFF>>(NumOfBarcodeDigitsEntered*4)));
assign Prdct6_Check			=  (Prdct_6_Barcode == (Barcode_Extract|Prdct6_Extract));

assign Prdct7_Extract		= ((Prdct_7_Barcode)&(16'hFFFF>>(NumOfBarcodeDigitsEntered*4)));
assign Prdct7_Check			=  (Prdct_7_Barcode == (Barcode_Extract|Prdct7_Extract));

assign Prdct8_Extract		= ((Prdct_8_Barcode)&(16'hFFFF>>(NumOfBarcodeDigitsEntered*4)));
assign Prdct8_Check			=  (Prdct_8_Barcode == (Barcode_Extract|Prdct8_Extract));

assign Prdct9_Extract		= ((Prdct_9_Barcode)&(16'hFFFF>>(NumOfBarcodeDigitsEntered*4)));
assign Prdct9_Check			=  (Prdct_9_Barcode == (Barcode_Extract|Prdct9_Extract));

assign Prdct10_Extract		= ((Prdct_10_Barcode)&(16'hFFFF>>(NumOfBarcodeDigitsEntered*4)));
assign Prdct10_Check		   =  (Prdct_10_Barcode == (Barcode_Extract|Prdct10_Extract));

assign Prdct11_Extract		= ((Prdct_11_Barcode)&(16'hFFFF>>(NumOfBarcodeDigitsEntered*4)));
assign Prdct11_Check			=  (Prdct_11_Barcode == (Barcode_Extract|Prdct11_Extract));


assign HighlightedBarcodeOut = (BarcodeCompleted)?{Prdct11_Check, Prdct10_Check, Prdct9_Check, Prdct8_Check, Prdct7_Check, Prdct6_Check, Prdct5_Check, Prdct4_Check, Prdct3_Check, Prdct2_Check, Prdct1_Check, Prdct0_Check}:12'b0;

endmodule
