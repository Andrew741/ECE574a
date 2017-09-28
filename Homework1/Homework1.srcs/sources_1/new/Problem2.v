`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/27/2017 09:58:06 PM
// Design Name: 
// Module Name: Problem2
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


module Problem2(A,B,C,clk,rst);
    input clk,rst;
    output reg [7:0] A,B,C;
    
    always @(posedge clk or posedge rst) begin
        if (rst == 1) begin
                A = 2; B = 4; C = 1;
             end
             else begin
                A <= B;
                B = B + 1;
                C <= A + B;
             end
    end                
endmodule
