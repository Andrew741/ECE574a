`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/01/2017 10:02:27 PM
// Design Name: 
// Module Name: MUX2x1
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


module MUX2x1 #(parameter DATAWIDTH=64)(A,B,SEL,D);
    input [DATAWIDTH-1:0]A,B;
    input SEL;
    output reg [DATAWIDTH-1:0]D;
    
    always @(A,B,SEL)
    begin
        if (SEL == 1)
            D <= A;
        else
            D <= B;
    end
endmodule
