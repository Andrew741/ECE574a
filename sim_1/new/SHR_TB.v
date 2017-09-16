`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/04/2017 08:26:41 PM
// Design Name: 
// Module Name: SHR_TB
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


module SHR_TB();
  parameter TB_WIDTH = 16;
  reg [TB_WIDTH - 1:0]A_s, Amt_s;
  wire [TB_WIDTH-1:0] Out_s;

  SHR #(.WIDTH(TB_WIDTH)) test(A_s,Amt_s,Out_s);

  initial
  begin
     // Easy Case
     #10 A_s <= 8'b1000000; Amt_s <=8'b00000001;
     
     #10 A_s <= 8'b10100000; Amt_s <=8'b00000010;
     
     #10 A_s <= 8'h11111111; Amt_s <=8'b00000100;
     
     #10 A_s <= 16'hAB00; Amt_s <=8'b00100000;
   
     
     // Hard Case
     //#10 A_s <= 16'h0;
  end
endmodule
