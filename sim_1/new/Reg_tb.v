`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/09/2017 07:59:08 PM
// Design Name: 
// Module Name: Reg_tb
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


module Reg_tb();
    parameter TB_WIDTH = 16;
    reg [TB_WIDTH - 1:0]D_s;
    wire [TB_WIDTH-1:0] Q_s;
    reg Clk,Rst;
    
    REG #(.WIDTH(TB_WIDTH)) testReg(D_s, Clk,Rst,Q_s);
    
    always
        #10 Clk <= ~Clk; // clever clock procedure
    initial
    begin
        Clk <= 0;
        Rst <= 1;
        #20 Rst <= 0;
        #10;
        D_s <= 16'hBEEF;
        @(posedge Clk);
        #5 D_s <= 16'hEB16;
        #40 D_s <= 16'hABCB;
    end
        
    
endmodule
