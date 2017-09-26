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


module MUL #(parameter DATAWIDTH = 64)(A, B, PROD);
    input [DATAWIDTH-1:0]A,B;
    output reg [DATAWIDTH-1:0] PROD;
    
    always @(A,B)
    begin 
        PROD <= A*B;
    end
endmodule
