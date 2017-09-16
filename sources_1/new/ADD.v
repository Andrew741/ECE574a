`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/01/2017 09:16:20 PM
// Design Name: 
// Module Name: ADD
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


module ADD #(parameter WIDTH = 8)(A, B, SUM);
    input [WIDTH-1:0] A,B;
    output reg [WIDTH-1:0]SUM;
    
    always @(A,B) 
    begin
        SUM <= A + B;
    end
endmodule
