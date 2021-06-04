# Resources
Visit Resources Folder

# Documentations
Visit Docs Folder

# Link Resources

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
+	6 Product 	: Garlic, Tomato, Patato, Banana, Berry, Cherry
	+	Images	: Fixed Sized, Fixed Position
+	3 Modes		:
	+	Barcode : SW1 & SW2 OFF
	+	Arrow   : SW1 ON & SW2 OFF
	+	Product Editing : SW2 ON 

# System
## Clocks
+	Base CLK 	: 50 MHz
+	VGA CLK		: PLL - 108 MHz

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
		+ 	4 Button (1, 2, 3, 4)
		+	Max Product 4^4 = 256

## Switchs
+	SW-1		: Mode Arrow
+	SW-2		: Mode Editting

## Segment Display
+ 	(TBD)

## VGA
+	[Details & Referrence](http://tinyvga.com/vga-timing/1280x1024@60Hz)
+	Frame Size 	: 1280x1024
+	Frame Rate	: 60 Hz
+	Horizontal Timing
	+	Visible : 1280
	+ 	F. Porch: 48
	+	B. Porch: 248
	+ 	S. Pulse: 112
	+	Total 	: 1688
+	Vertical Timing
	+	Visible : 1024
	+ 	F. Porch: 1
	+	B. Porch: 38
	+ 	S. Pulse: 3
	+	Total 	: 1066
+	Total B/s	: 107.964.480
+	VGA CLK FREQ: 108.0 MHz

## States List
+	Start State
+	Barcode Product Selection State
+	Interactive Product Selection (SW-1) State
	+	4-Direction Buttons
	+	Select Button
+	Basket Edit (SW-2 -> OverWrites interactive mode but only in Basket) State
	+	Cancel Button =? Select Button
	+ ?	Edit Button -> Edit Quantity
+	Quantity Enter State
+	End Shopping State






	

