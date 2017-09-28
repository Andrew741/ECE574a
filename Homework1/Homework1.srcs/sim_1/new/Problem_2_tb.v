`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/27/2017 10:00:32 PM
// Design Name: 
// Module Name: Problem_2_tb
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


module Problem_2_tb();
    
    wire [7:0] A_s,B_s,C_s;
    reg rst,clk;
    Problem2 ckt(A_s,B_s,C_s,clk,rst);    
    
    always
        #10 clk <= ~clk;
    initial
    begin
            clk <= 0; 
            rst <= 1;
            #25 rst <= 0;
    end
endmodule
