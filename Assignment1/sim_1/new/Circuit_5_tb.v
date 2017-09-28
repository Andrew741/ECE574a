`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/22/2017 08:13:31 PM
// Design Name: 
// Module Name: Circuit_5_tb
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


module Circuit_5_tb();
    reg [63:0] A_s,B_s,C_s;
    wire [31:0] Z_s,X_s;
    reg clk,rst;
    
    Circuit_5 test1(A_s,B_s,C_s,Z_s,X_s,clk,rst);
    
    
    always
        #10 clk <= ~clk;
    
    initial
    begin
        clk <= 0; 
        rst <= 0;
       // Easy Case
       #20 A_s <= 64'd5; B_s <=64'd2; C_s <= 64'd3; 
//       d = a + b 7
//       e = a + c 8
//       f = a - b  3
//       dEQe = d == e 0
//       dLTe = d < e 1
//       g = dLTe ? d : e g == d
//       h = dEQe ? g : f h == f
//       greg = g  greg = 7
//       hreg = h  hreg = 3
//       xrin = hreg << dLTe  6
//       zrin = greg >> dEQe  7
//       x = xrin
//       z = zrin
    end
endmodule
