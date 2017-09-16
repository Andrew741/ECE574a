`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/01/2017 09:47:00 PM
// Design Name: 
// Module Name: MUL
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


module MUL #(parameter WIDTH = 8)(A, B, PROD);
    input [WIDTH-1:0]A,B;
    output reg [WIDTH-1:0] PROD;
    
    always @(A,B)
    begin 
        PROD <= A*B;
    end
endmodule
