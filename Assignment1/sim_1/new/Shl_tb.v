`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/09/2017 09:52:25 PM
// Design Name: 
// Module Name: Shl_tb
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


module Shl_tb();

  parameter TB_WIDTH = 16;
  reg [TB_WIDTH - 1:0]A_s, Amt_s;
  wire [TB_WIDTH-1:0] Out_s;

  SHL #(.WIDTH(TB_WIDTH)) test(A_s,Amt_s,Out_s);

  initial
  begin
     // Easy Case
     #10 A_s <= 8'b1000000; Amt_s <=8'b00000001;
     
     #10 A_s <= 8'b0000001; Amt_s <=8'b00000010;
     
     #10 A_s <= 8'h11111111; Amt_s <=8'b00000100;
     
     #10 A_s <= 16'hAB00; Amt_s <=8'b00100000;
   
  end
endmodule
