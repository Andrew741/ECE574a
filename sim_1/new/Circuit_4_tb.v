`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/22/2017 07:23:21 PM
// Design Name: 
// Module Name: Circuit_4_tb
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


module Circuit_4_tb();
reg [7:0]A_s, B_s, C_s,D_s,E_s,F_s,G_s,H_s,I_s,J_s,K_s,L_s,M_s,N_s,O_s,P_s; 
wire [31:0] final_s;

reg clk,rst;
Circuit_4  test(A_s, B_s, C_s,D_s,E_s,F_s,G_s,H_s,I_s,J_s,K_s,L_s,M_s,N_s,O_s,P_s,final_s,clk,rst);
always
    #10 clk <= ~clk;

initial
begin
    clk <= 0; 
    rst <= 0;
   // Easy Case
   #20 A_s <= 32'd1; B_s <=32'd1; C_s <= 32'd1; D_s <= 32'd1;E_s <= 32'd1;F_s <= 32'd1;G_s <= 32'd1;H_s <= 32'd1;I_s <= 32'd1;J_s <= 32'd1;K_s <= 32'd1;L_s <= 32'd1;M_s <= 32'd1;N_s <= 32'd1;O_s <= 32'd1;P_s <= 32'd1;

end
endmodule
