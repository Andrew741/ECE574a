`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/01/2017 09:41:27 PM
// Design Name: 
// Module Name: SUB
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


module SUB #(parameter DATAWIDTH = 64)(A,B,DIFF);
    input [DATAWIDTH-1:0]A,B;
    output reg [DATAWIDTH-1:0] DIFF;
    always @(A,B) 
    begin
        DIFF <= A - B;
    end    
endmodule
