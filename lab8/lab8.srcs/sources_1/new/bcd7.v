`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/21/2024 04:14:55 PM
// Design Name: 
// Module Name: bcd7
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


module bcd7(clk,in, out);
input clk;

input [3:0] in;

output reg [6:0] out;

always @(*)
begin

    case(in)
        4'b0000 :  out = 7'b1000000;
        4'b0001 :  out = 7'b1111001;
        4'b0010 :  out = 7'b0100100;
        4'b0011 :  out = 7'b0110000;
        4'b0100 :  out = 7'b0011001;
        4'b0101 :  out = 7'b0010010;
        4'b0110 :  out = 7'b0000010;
        4'b0111 :  out = 7'b1111000;
        4'b1000 :  out = 7'b0000000;
        4'b1001 :  out = 7'b0011000;
        default : out = 7'b0000000;

        endcase
        end 
endmodule
