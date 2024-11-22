`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/21/2024 04:12:20 PM
// Design Name: 
// Module Name: bcdSelector
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module bcdSelector(in, screen, out);

input [15:0] in;

input [1:0] screen;

output [3:0] out;

always @( * )
begin 
  if(en)
  begin
    case(s)
    2'b00: screen = in[3:0];
    2'b01: screen = in[7:4]; 
    2'b10: screen = in[11:8];
    2'b11: screen = in[15:12];
    default: out = 4'b0000;
     
endcase
end
end


endmodule