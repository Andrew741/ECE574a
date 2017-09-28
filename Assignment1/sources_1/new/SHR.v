`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/01/2017 10:07:52 PM
// Design Name: 
// Module Name: SHR
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


module SHR #(parameter DATAWIDTH = 64)(A, SH_AMT,D);
    input [DATAWIDTH-1:0]A;
    input [DATAWIDTH-1:0]SH_AMT; // doesn't seem right. If I have 8 bits, this means I could tell it to shift 256 bits to the right? nah.
    output reg [DATAWIDTH-1:0]D;

    always @(A,SH_AMT) begin
        if ( SH_AMT < 1)
            D <= A;
        else if (SH_AMT < DATAWIDTH)
            D <= A >> SH_AMT;
        else
            D <= 0;
    end

endmodule
