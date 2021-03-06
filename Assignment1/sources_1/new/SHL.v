`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/02/2017 01:26:05 PM
// Design Name: 
// Module Name: SHL
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


module SHL #(parameter DATAWIDTH =8)(A, SH_AMT,D);
    input [DATAWIDTH-1:0]A;
    input [DATAWIDTH-1:0]SH_AMT; // doesn't seem right. If I have 8 bits, this means I could tell it to shift 256 bits to the right? nah.
    output reg [DATAWIDTH-1:0]D;
    
    always @(A,SH_AMT) begin
        if (SH_AMT < 1) 
            D <= A;
        else if ( SH_AMT < DATAWIDTH) 
          
            D <= A << SH_AMT;
        else
            D <= 0;
       
    end
       // D <= {0[SH_AMT-1:0,A[DATAWIDTH-1:SH_AMT]};
endmodule
