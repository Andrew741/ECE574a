`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/01/2017 09:53:01 PM
// Design Name: 
// Module Name: COMP
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


module COMP #(parameter DATAWIDTH = 64)(A,B,GT,LT,EQ);
    input [DATAWIDTH-1:0] A,B;
    output reg GT,LT,EQ;
    
    always @(A,B)
    begin 
        GT <= 0; EQ <= 0; LT <= 0;// set it all to zero 
        if (A < B)
            LT <= 1;
        else if (A > B)
            GT <= 1;
        else 
            EQ <= 1;
    end
endmodule
