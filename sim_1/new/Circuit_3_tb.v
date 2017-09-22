`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/21/2017 09:29:03 PM
// Design Name: 
// Module Name: Circuit_3_tb
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


module Circuit_3_tb();
reg [15:0]A_s, B_s, C_s,D_s,E_s,F_s,G_s,H_s,sa_s; 
wire [15:0] avg_s;

reg clk,rst;
Circuit_3  test(A_s, B_s, C_s,D_s,E_s,F_s,G_s,H_s,sa_s,avg_s,clk,rst);
always
    #10 clk <= ~clk;

initial
begin
    clk <= 0; 
    rst <= 0;
   // Easy Case
   #20 sa_s <=32'd1;A_s <= 32'd4; B_s <=32'd3; C_s <= 32'd5; D_s <= 32'd6;E_s <= 32'd6;F_s <= 32'd6;G_s <= 32'd6;H_s <= 32'd6;

    #20 sa_s <=32'd1;A_s <= 32'd1; B_s <=32'd1; C_s <= 32'd1; D_s <= 32'd1;E_s <= 32'd1;F_s <= 32'd1;G_s <= 32'd1;H_s <= 32'd1;
    // Z should be 
   // X should be 
   #30 A_s <= 32'd92; B_s <=32'd128; C_s <= 32'd46;
end
endmodule
