`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/02/2017 01:29:26 PM
// Design Name: 
// Module Name: DIV
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


module DIV #(parameter WIDTH=64)(A,B,QUOT);
    input [WIDTH-1:0]A,B;
    output reg [WIDTH-1:0]QUOT;
    
    always @(A,B)
    begin
        if (B == 0)
        begin
            QUOT <= 0; // technically undefined, but experience tells me we don't want that
        end 
        QUOT <= A/B;// divide by zero possible... 
    end
endmodule
