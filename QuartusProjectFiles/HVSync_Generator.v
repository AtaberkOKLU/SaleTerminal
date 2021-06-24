/*
 *		Module		:	HVSync Generator Block
 * 	Description	: 	This Block Generates proper V/H Sync signals
							for defined timing constrains
 *		Inputs		: 	VGA_CLK	=> Main Board FPGA Clock
 *						:	RESET_N 	=> Reset Signal
 *
 *		Outputs		: 	CounterXY	=> V/H Counters 
 * 					:	VGA_HVSync 	=> 2 Sync Singanls to the VGA Port Pins
 * 					:	inDisplay 	=> Logic Singal informing other blocks
 * 											that counters in the DisplayArea
 *		Owner			: 	Ataberk ÖKLÜ
 */

module HVSync_Generator
#(
	 parameter CNTR_WIDTH_V = 10,
	 parameter CNTR_WIDTH_H = 11,
	 
	 parameter FRONT_PORCH_H = 40,
	 parameter BACK_PORCH_H = 88,
	 parameter SYNC_PULSE_H = 128,
	 parameter VISIBLE_H = 800,
	 
	 parameter FRONT_PORCH_V = 1,
	 parameter BACK_PORCH_V = 23,
	 parameter SYNC_PULSE_V = 4,
	 parameter VISIBLE_V = 600
)(
    input VGA_CLK,
	 input RST_N,
    output wire VGA_HS,
    output wire VGA_VS,
    output wire VGA_BLANK_N,
    output reg  [CNTR_WIDTH_H-1:0] CounterX,
    output reg  [CNTR_WIDTH_V-1:0] CounterY
  );
	 
	 initial
		begin
			CounterX = 0;
			CounterY = 0;
		end
	 
	 localparam WHOLE_H = FRONT_PORCH_H + BACK_PORCH_H + SYNC_PULSE_H + VISIBLE_H;
	 localparam WHOLE_V = FRONT_PORCH_V + BACK_PORCH_V + SYNC_PULSE_V + VISIBLE_V;
	 
    wire CounterXmaxed;
    wire CounterYmaxed;
	 
	 assign CounterXmaxed = (CounterX == WHOLE_H-1);
	 assign CounterYmaxed = (CounterY == WHOLE_V-1);
	 
	 
    always @(negedge VGA_CLK)
		 if (CounterXmaxed | (!RST_N))
				begin
					CounterX <= 0;
				  if(CounterYmaxed | (!RST_N))
					 CounterY <= 0;
				  else
					 CounterY <= CounterY + 10'd1;
				end
		 else
			CounterX <= CounterX + 11'd1;
/*			
	always @(posedge VGA_CLK)
		begin
			if(!RST_N)
				begin
					vga_HS <= 0;
					vga_VS <= 0;
				end
			else
				begin
					vga_HS <= (CounterX > (VISIBLE_H + FRONT_PORCH_H) & (CounterX < (VISIBLE_H + FRONT_PORCH_H + SYNC_PULSE_H)));   // active for SYNC_PULSE_H clocks
					vga_VS <= (CounterY > (VISIBLE_V + FRONT_PORCH_V) & (CounterY < (VISIBLE_V + FRONT_PORCH_V + SYNC_PULSE_V)));   // active for SYNC_PULSE_V clocks
				end
		end
*/		
	assign VGA_HS = ~(CounterX > (VISIBLE_H + FRONT_PORCH_H) & (CounterX < (VISIBLE_H + FRONT_PORCH_H + SYNC_PULSE_H)));
   assign VGA_VS = ~(CounterY > (VISIBLE_V + FRONT_PORCH_V) & (CounterY < (VISIBLE_V + FRONT_PORCH_V + SYNC_PULSE_V)));
	assign VGA_BLANK_N = (CounterX < VISIBLE_H) & (CounterY < VISIBLE_V);
	

endmodule
