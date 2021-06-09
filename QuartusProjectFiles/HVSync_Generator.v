module HVSync_Generator
#(
	 parameter CNTR_WIDTH_V = 10,
	 parameter CNTR_WIDTH_H = 10
)(
    input VGA_CLK,
	 input RST_N,
    output VGA_HS,
    output VGA_VS,
    output reg inDisplayArea,
    output reg [CNTR_WIDTH_H-1:0] CounterX,
    output reg [CNTR_WIDTH_V-1:0] CounterY
  );
    reg vga_HS, vga_VS;
	 
	 localparam FRONT_PORCH_H = 40;
	 localparam BACK_PORCH_H = 88;
	 localparam SYNC_PULSE_H = 128;
	 localparam VISIBLE_H = 800;
	 localparam WHOLE_H = FRONT_PORCH_H + BACK_PORCH_H + SYNC_PULSE_H + VISIBLE_H;
	 
	 localparam FRONT_PORCH_V = 1;
	 localparam BACK_PORCH_V = 23;
	 localparam SYNC_PULSE_V = 4;
	 localparam VISIBLE_V = 600;
	 localparam WHOLE_V = FRONT_PORCH_V + BACK_PORCH_V + SYNC_PULSE_V + VISIBLE_V;
	 
    wire CounterXmaxed = (CounterX == WHOLE_H);
    wire CounterYmaxed = (CounterY == WHOLE_V);

    always @(posedge VGA_CLK)
    if (CounterXmaxed || (!RST_N))
      CounterX <= 0;
    else
      CounterX <= CounterX + 1;

    always @(posedge VGA_CLK)
    begin
      if (CounterXmaxed || (!RST_N))
      begin
        if(CounterYmaxed || (!RST_N))
          CounterY <= 0;
        else
          CounterY <= CounterY + 1;
      end
    end

    always @(posedge VGA_CLK)
    begin
		 if(!RST_N)
			begin
				vga_HS <= 0;
				vga_VS <= 0;
			end
		 else
			begin
				vga_HS <= (CounterX > (VISIBLE_H + FRONT_PORCH_H) && (CounterX < (VISIBLE_H + FRONT_PORCH_H + SYNC_PULSE_H)));   // active for SYNC_PULSE_H clocks
				vga_VS <= (CounterY > (VISIBLE_V + FRONT_PORCH_V) && (CounterY < (VISIBLE_V + FRONT_PORCH_V + SYNC_PULSE_V)));   // active for SYNC_PULSE_V clocks
			end
	 end

    always @(posedge VGA_CLK)
    begin
		if(!RST_N)
			begin
				inDisplayArea <= 0;
			end
		else
			begin
				inDisplayArea <= (CounterX < VISIBLE_H) && (CounterY < VISIBLE_V);
			end
    end

    assign VGA_HS = ~vga_HS;
    assign VGA_VS = ~vga_VS;

endmodule