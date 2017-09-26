`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/01/2017 08:55:26 PM
// Design Name: 
// Module Name: REG
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


module REG #(parameter DATAWIDTH = 64)(D,Clk,Rst,Q);
    input [DATAWIDTH-1:0] D;
    input Clk,Rst;
    output reg [DATAWIDTH-1:0] Q;
    
    always @(posedge Clk) begin
        if (Rst == 1) begin
            Q <= 0;
        end
        else begin 
            Q <= D;
        end
    end
endmodule
