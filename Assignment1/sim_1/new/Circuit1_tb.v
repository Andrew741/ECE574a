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
reg [7:0]A_s, B_s, C_s; 
wire [15:0] X_s;
wire [7:0] Z_s;
reg clk,rst;
Circuit1  test(A_s,B_s,C_s,Z_s,X_s,clk,rst);
always
    #10 clk <= ~clk;

initial
begin
    clk <= 0; 
    rst <= 0;
   // Easy Case
   #30 A_s <= 8'd4; B_s <=8'd3; C_s <= 8'd5;
   // Z should be 9
   // X should be 13
   #10 A_s <= 8'd92; B_s <=8'd128; C_s <= 8'd46;
end
endmodule
