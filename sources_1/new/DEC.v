`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/04/2017 08:13:50 PM
// Design Name: 
// Module Name: DEC
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


module DEC #(parameter WIDTH=64)(A,D);
    input [WIDTH-1:0] A;
    output reg [WIDTH-1:0] D;
    
    always @(A)
    begin
        D <= A - 1;
    end
endmodule
