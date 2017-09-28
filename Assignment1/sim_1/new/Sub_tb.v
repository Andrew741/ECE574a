`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/10/2017 01:05:47 PM
// Design Name: 
// Module Name: Sub_tb
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


module Sub_tb();
 parameter TB_WIDTH = 16;
reg [TB_WIDTH - 1:0]A_s, B_s;
wire [TB_WIDTH-1:0] Diff_s;

SUB #(.WIDTH(TB_WIDTH)) test(A_s,B_s,Diff_s);

initial
begin
   // Easy Case
   #10 A_s <= 16'd64; B_s <=16'd8;
   
   #10 A_s <= 16'd65; B_s <=16'd8;
   
   #10 A_s <= 16'd256; B_s <=16'd257;
 
   #10 A_s <= 16'd1; B_s <=16'd0;
end
endmodule
