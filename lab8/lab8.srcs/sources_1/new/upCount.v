`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/15/2024 02:13:14 PM
// Design Name: 
// Module Name: upCount
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


module upCount(clk, count);

input clk;

reg [10:0] delay;

output reg [11:0] count;

always @(posedge clk)

begin 

    if(delay == 8'b0000000)
        
    count <= count+1;
       
    delay <= delay + 1;
end

endmodule
