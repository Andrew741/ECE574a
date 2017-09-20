`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/19/2017 08:24:19 PM
// Design Name: 
// Module Name: Circuit1_tb
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


module Circuit1_tb();
parameter TB_WIDTH = 16;
reg [TB_WIDTH - 1:0]A_s, B_s, C_s; 
wire [TB_WIDTH-1:0] Z_s, X_s;
reg clk,rst;
Circuit1 #(.WIDTH(TB_WIDTH)) test(A_s,B_s,C_s,Z_s,X_s,clk,rst);
always
    #10 clk <= ~clk;

initial
begin
    clk <= 0; 
    rst <= 0;
   // Easy Case
   #30 A_s <= 16'd4; B_s <=16'd3; C_s <= 16'd5;
   // Z should be 9
   // X should be 13
end
endmodule
