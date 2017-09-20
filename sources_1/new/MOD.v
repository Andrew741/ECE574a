`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/04/2017 08:02:53 PM
// Design Name: 
// Module Name: MOD
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


module MOD #(parameter WIDTH=64)(A,B,REM);
    input [WIDTH-1:0] A,B;
    output reg [WIDTH-1:0] REM;

    always @(A,B)
    begin
        REM <= A%B;
    end
endmodule
