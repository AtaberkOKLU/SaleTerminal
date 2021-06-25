module mux_9x1( Out,

  Sel,
  In1,
  In2,
  In3,
  In4,
  In5,
  In6,
  In7,
  In8,
  In9,
  enable
  ); 

input

 [6:0] In1,
  In2,
  In3,
  In4,
  In5,
  In6,
  In7,
  In8,
  In9; 
  //The eight 8-bit input lines of the Mux 

input [3:0] Sel; //The three bit selection line 
output reg [6:0] Out; //The single 8-bit output line of the Mux 
input enable;


//Check the state of the input lines 
always @ (In1 or In2 or In3 or In4 or In5 or In6 or In7 or In8 or In9 or Sel or enable) 
begin 
 if (enable)
 begin
 case (Sel) 
  4'b0000 : Out = In1; 
  4'b0001 : Out = In2; 
  4'b0010 : Out = In3; 
  4'b0011 : Out = In4; 
  4'b0100 : Out = In5; 
  4'b0101 : Out = In6; 
  4'b0110 : Out = In7; 
  4'b0111 : Out = In8;
  4'b1000 : Out = In9;  
  default : Out = 4'b0000; 
 
  //If input is undefined then output is undefined 

 endcase 
 
 end
 else
	Out = 7'b0000000;

end  

endmodule