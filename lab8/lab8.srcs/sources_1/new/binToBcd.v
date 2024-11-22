`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/15/2024 02:32:44 PM
// Design Name: 
// Module Name: binToBcd
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


module binToBcd (input wire [11:0] binary, output reg [15:0] bcd);
    integer i; 
    reg [27:0] shift_reg; 

    always @(*) begin
     
        shift_reg = {16'b0, binary}; 
        
        for (i = 0; i < 12; i = i + 1) begin
            if (shift_reg[27:24] >= 5)
                shift_reg[27:24] = shift_reg[27:24] + 3;
            if (shift_reg[23:20] >= 5)
                shift_reg[23:20] = shift_reg[23:20] + 3;
            if (shift_reg[19:16] >= 5)
                shift_reg[19:16] = shift_reg[19:16] + 3;

            shift_reg = shift_reg << 1;
        end

        bcd = shift_reg[27:12];
    end
endmodule
