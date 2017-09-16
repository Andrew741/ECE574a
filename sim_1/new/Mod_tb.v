`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/10/2017 07:57:56 AM
// Design Name: 
// Module Name: Mod_tb
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


module Mod_tb();
 parameter TB_WIDTH = 16;
reg [TB_WIDTH - 1:0]A_s, B_s;
wire [TB_WIDTH-1:0] Q_s;

MOD #(.WIDTH(TB_WIDTH)) test(A_s,B_s,Q_s);

initial
begin
   // Easy Case
   #10 A_s <= 16'd64; B_s <=16'd8;
   
   #10 A_s <= 16'd65; B_s <=16'd8;
   
   #10 A_s <= 16'd256; B_s <=16'd257;
 
   #10 A_s <= 16'd1; B_s <=16'd0;
end
endmodule
