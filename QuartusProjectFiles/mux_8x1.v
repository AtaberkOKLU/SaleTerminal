module mux_8x1( Out,

  Sel,
  In1,
  In2,
  In3,
  In4,
  In5,
  In6,
  In7,
  In8,
  enable
  ); 

input

  In1,
  In2,
  In3,
  In4,
  In5,
  In6,
  In7,
  In8; //The eight 8-bit input lines of the Mux 

input [2:0] Sel; //The three bit selection line 
output Out; //The single 8-bit output line of the Mux 
reg Out;
input enable; 

//Check the state of the input lines 
always @ (In1 or In2 or In3 or In4 or In5 or In6 or In7 or In8 or Sel) 
begin 
 if (enable == 1)
 begin
  case (Sel) 
   3'b000 : Out = In1; 
   3'b001 : Out = In2; 
   3'b010 : Out = In3; 
   3'b011 : Out = In4; 
   3'b100 : Out = In5; 
   3'b101 : Out = In6; 
   3'b110 : Out = In7; 
   3'b111 : Out = In8; 
   default : Out = 3'b000; 

   //If input is undefined then output is undefined 
  
  endcase 
 end 
 else
 Out = 3'b000;

end  

endmodule