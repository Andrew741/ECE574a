`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/09/2017 09:24:14 PM
// Design Name: 
// Module Name: Inc_tb
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


module Inc_tb();
  parameter TB_WIDTH = 16;
reg [TB_WIDTH - 1:0]A_s;
wire [TB_WIDTH-1:0] Out_s;

INC #(.WIDTH(TB_WIDTH)) test(A_s,Out_s);

initial
begin
     // Easy Case
     #10 A_s <= 8'hAB;
   
     
     // Hard Case
     #10 A_s <= 16'hFFFF;
end
endmodule
