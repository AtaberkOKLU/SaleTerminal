module FourDigitBarcode7SegmentController(
	input wire Enable,
	input wire CLK,
	input wire Reset,
	
	input wire [3:0] BarcodeDigit0,
	input wire [3:0] BarcodeDigit1,
	input wire [3:0] BarcodeDigit2,
	input wire [3:0] BarcodeDigit3,
	
	output wire[6:0] HEX0,
	output wire[6:0] HEX1,
	output wire[6:0] HEX2,
	output wire[6:0] HEX3
);
	
	reg[3:0] BarcodeDigitWire0;
	reg[3:0] BarcodeDigitWire1;
	reg[3:0] BarcodeDigitWire2;
	reg[3:0] BarcodeDigitWire3;

always @ (posedge(CLK), negedge Reset, negedge Enable)

	begin
		if(!Reset || !Enable)
			begin
				BarcodeDigitWire0 <= 10;
				BarcodeDigitWire1 <= 10;
				BarcodeDigitWire2 <= 10;
				BarcodeDigitWire3 <= 10;
			end
		else
			begin
				BarcodeDigitWire0 <= BarcodeDigit0;
				BarcodeDigitWire1 <= BarcodeDigit1;
				BarcodeDigitWire2 <= BarcodeDigit2;
				BarcodeDigitWire3 <= BarcodeDigit3;
			end
	end
	
	Segment7 Segment0(
		.bcd(BarcodeDigitWire0),
		.seg(HEX0)
	);
	
	Segment7 Segment1(
		.bcd(BarcodeDigitWire1),
		.seg(HEX1)
	);
	
	Segment7 Segment2(
		.bcd(BarcodeDigitWire2),
		.seg(HEX2)
	);
	
	Segment7 Segment3(
		.bcd(BarcodeDigitWire3),
		.seg(HEX3)
	);


endmodule