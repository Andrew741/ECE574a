`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/22/2017 08:54:46 PM
// Design Name: 
// Module Name: Circuit_6_tb
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


module Circuit_6_tb();
    reg [15:0] A_s,B_s,C_s,D_s,E_s,F_s,G_s,H_s,num_s;
    wire [15:0] avg_s;
    reg clk,rst;

    Circuit_6 test(A_s,B_s,C_s,D_s,E_s,F_s,G_s,H_s,num_s,avg_s,clk,rst);


always
    #10 clk <= ~clk;

initial
begin
    clk <= 0; 
    rst <= 0;
   // Easy Case
   #20 A_s <= 16'd1; B_s <=16'd1; C_s <= 16'd1;
   #20 D_s <= 16'd1; E_s <=16'd1; F_s <= 16'd1; 
   #20 G_s <= 16'd1; H_s <=16'd1; 
   #20 num_s <= 16'd8;

end
endmodule
