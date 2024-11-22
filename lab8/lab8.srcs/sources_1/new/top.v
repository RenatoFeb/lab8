`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/15/2024 01:44:57 PM
// Design Name: 
// Module Name: top
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


module top(clk, bcd, an); 

input clk;
output[6:0] bcd; 
output [1:0] an;


wire [11:0] count;

wire [15:0] bcds;

wire [3:0] bcdSelected;

upCount counter(clk, count);

angen gen(clk, an);

binToBcd bcdConv( count, bcds );

bcdSelector( bcds, an, bcd);

bcd7(clk, bcdSelected, bcd);

endmodule
