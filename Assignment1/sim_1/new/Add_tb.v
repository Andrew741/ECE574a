`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/09/2017 08:25:52 PM
// Design Name: 
// Module Name: Add_tb
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


module Add_tb(    );
   parameter TB_WIDTH = 16;
   reg [TB_WIDTH - 1:0]A_s, B_s;
   wire [TB_WIDTH-1:0] Sum_s;
   
   ADD #(.WIDTH(TB_WIDTH)) test(A_s,B_s,Sum_s);

   initial
   begin
        // Easy Case
        #10 A_s <= 8'hAB; B_s <= 8'h02;
        
        // Medium Case
        #10 A_s <= 16'hABCB; B_s <= 16'hFFEF;
        
        // Hard Case
        #10 A_s <= 16'hFFFF; B_s <= 16'h1;
   end
  
endmodule
