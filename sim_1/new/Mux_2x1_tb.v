`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/10/2017 08:08:34 AM
// Design Name: 
// Module Name: Mux_2x1_tb
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


module Mux_2x1_tb();
    parameter TB_WIDTH = 16;
    reg [TB_WIDTH - 1:0]A_s, B_s;
    reg S_s;
    wire [TB_WIDTH -1 :0]D_s;

MUX2x1 #(.WIDTH(TB_WIDTH)) test(A_s,B_s,S_s,D_s);

initial
begin
  // Easy Case
  #10 A_s <= 16'd8; B_s <=16'd8; S_s <=1;
  
  #10 A_s <= 16'hFFFF; B_s <=16'd2; S_s <=0;
  
  #10 A_s <= 16'd1; B_s <=16'd0; S_s <=1;
end 
endmodule
