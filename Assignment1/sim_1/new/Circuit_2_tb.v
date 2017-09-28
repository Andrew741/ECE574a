`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/20/2017 09:46:41 PM
// Design Name: 
// Module Name: Circuit_2_tb
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


module Circuit_2_tb();
reg [31:0]A_s, B_s, C_s; 
wire [31:0] X_s;
wire [31:0] Z_s;
reg clk,rst;
Circuit_2  test(A_s,B_s,C_s,Z_s,X_s,clk,rst);
always
    #10 clk <= ~clk;

initial
begin
    clk <= 0; 
    rst <= 0;
   // Easy Case
   #20 A_s <= 32'd4; B_s <=32'd3; C_s <= 32'd5;
   // Z should be 
   // X should be 
   #30 A_s <= 32'd92; B_s <=32'd128; C_s <= 32'd46;
end
endmodule
