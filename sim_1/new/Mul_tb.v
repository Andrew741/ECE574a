`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/10/2017 08:01:57 AM
// Design Name: 
// Module Name: Mul_tb
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


module Mul_tb();
 parameter TB_WIDTH = 16;
reg [TB_WIDTH - 1:0]A_s, B_s;
wire [TB_WIDTH-1:0] P_s;

MUL #(.WIDTH(TB_WIDTH)) test(A_s,B_s,P_s);

initial
begin
   // Easy Case
   #10 A_s <= 16'd8; B_s <=16'd8;
   
   #10 A_s <= 16'hFFFF; B_s <=16'd2;
   
   #10 A_s <= 16'd1; B_s <=16'd0;
end
endmodule
