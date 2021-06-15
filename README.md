# Resources
Visit Resources Folder

# Documentations
Visit Docs Folder

# Link Resources

## Verilog Tutorial
* [Verilog](https://zipcpu.com/tutorial/)

## VGA Controller
* [VGA Controller using Verilog](https://ktln2.org/2018/01/23/implementing-vga-in-verilog/)
* [VGA Controller | Verilog](https://numato.com/kb/simple-vga-design-example-for-telesto/)
* [VGA Timing Calculations](http://tinyvga.com/vga-timing)
* [One Deep Project - Interresting](https://projectf.io/posts/fpga-graphics/)
	* [Project GitHub Page](https://github.com/projf/projf-explore/tree/master/lib)
* [VGA Controller but VHDL - Teoritical Supplement](https://bertantaskin.com/fpga-ile-vga-monitor-kontrolu/)
* [VGA Moving block and object selection using HDL](https://www.youtube.com/watch?v=WK5FT5RD1sU)

# Need
+	Layout		:
	+	Product List
	+	Basket List
	+	Overall Price
	+ 	Logo
+	12	Product : banana(3124), patato(4132), tomato(4133), peach(3121), apple(3133), pineapple(3214), avocado(2134), cherry(2144), fig(3112), grape(4321), kiwi(1342), 			  lemon(1213)
	+	Images	: Fixed Sized (100 x 100), Fixed Position
+	3 Modes		:
	+	Barcode : SW1 & SW2 OFF
	+	Arrow   : SW1 ON & SW2 OFF
	+	Basket Editing : SW2 ON & SW1 X

# System

## Clocks
+	Base CLK 	: 50 MHz
+	VGA CLK		: PLL - 40 MHz

## Buttons
+	4-Direction Buttons
+	Select Button
+ 	Barcode Number Digits
	+	6 Product
		+	4-digit Code for Each Product
		+	Min 2 Different Digit/Button -> 2^4 = 16 Product
	+	Quantity
		+ 	Max	: 4
		+	4 Button (1, 2, 3, 4)
+	Final Decition
	+ 	4 Button (1, 2, 3, 4) (<-, ^, ->, v)
	+	Max Product 4^4 = 256
	+	1 Action Button (Select = Delete) ?+ (Edit Quantity in SW-2 Mode)

## Switchs
+	SW-1		: Mode Arrow
+	SW-2		: Mode Editting
+	SW-0 		: Button Managment Switch

## Segment Display
+ 	(TBD)
+	? Barcode can be Displayed
	+	 4 Digit 

## VGA
+	[Details & Referrence](http://tinyvga.com/vga-timing/800x600@60Hz)
+	Frame Size 	: 800 x 600
+	Frame Rate	: 60 Hz
+	Horizontal Timing
	+	Visible : 800
	+ 	F. Porch: 40
	+	B. Porch: 88
	+ 	S. Pulse: 128
	+	Total 	: 1056
+	Vertical Timing
	+	Visible : 600
	+ 	F. Porch: 1
	+	B. Porch: 23
	+ 	S. Pulse: 4
	+	Total 	: 628
+	Total B/s	: 39.790.080
+	VGA CLK FREQ: 40 MHz

## States List
+	[For State Flowchart Click Here](https://github.com/AtaberkOKLU/SaleTerminal/blob/main/Docs/StateFlowchart/StateFlowchart.pdf)
+	Start State
+	? Waiting State
+	Barcode Product Selection State
+	Interactive Product Selection (SW-1) State
	+	4-Direction Buttons
	+	Select Button
+	Basket Edit (SW-2 -> OverWrites interactive mode but only in Basket) State
	+	Cancel Button =? Select Button
	+ ?	Edit Button -> Edit Quantity
+	Quantity Enter State
+	End Shopping State

## TO DO
+	VGA Controller                      : Ataberk ÖKLÜ - Ongoing
	+	ImageLocator                    : Ataberk ÖKLÜ - Ongoing
	+	HVSync Generator                : Ataberk ÖKLÜ - Done
	+	ImageROM                        : Ataberk ÖKLÜ - Ongoing
		+	16x4 Encoder                : Alper SOYSAL - Done
		+	Product Highlight			: Ataberk ÖKLÜ - Done
+	Button Controller                   : Ataberk ÖKLÜ - Done
	+	Button Debouncer                : Ataberk ÖKLÜ - Done
	+	Switch Debouncer				: Ataberk ÖKLÜ - Done
	+	Button Level-Pulse Converter    : Ataberk ÖKLÜ - Done
	+	Key-SW Register                 : Ataberk ÖKLÜ - Done
	+	Report							: Ataberk ÖKLÜ - Done
+ 	Barcode Controller                  : Ataberk ÖKLÜ - Ongoing
	+	BarcodeShiftRegister            : Ataberk ÖKLÜ - Done
	+	7-Segment Controller            : Ataberk ÖKLÜ - Done
+	State Machine                       : Ataberk ÖKLÜ - Ongoing
	+	State Flowchart                 : Ataberk ÖKLÜ - Ongoing
+	Basket Controller					: Ahsen TOPBAŞ - Ongoing






	

