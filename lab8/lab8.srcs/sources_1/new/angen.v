`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/15/2024 01:51:24 PM
// Design Name: 
// Module Name: angen
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


module angen( clk, out);

input clk;

reg [6:0] delay;

output reg [1:0] out;


always @(posedge clk)

begin 

    if(delay == 5'b0000000)
        
    out <= out+1;
       
    delay <= delay + 1;
end

endmodule


