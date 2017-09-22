`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/21/2017 09:13:22 PM
// Design Name: 
// Module Name: Circuit_3
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


module Circuit_3(a,b,c,d,e,f,g,h,sa,avg,clk,rst);
    input [15:0] a,b,c,d,e,f,g,h;
    input [7:0] sa;
    output wire [15:0] avg;
    wire [31:0] l00,l01,l02,l03,l10,l11,l2,l2div2, l2div4,l2div8;
    input clk,rst;
    
    ADD #(.WIDTH(32))add1({16'b0,a},{16'b0,b},l00);
    ADD #(.WIDTH(32))add2({16'b0,c},{16'b0,d},l01);
    ADD #(.WIDTH(32))add3({16'b0,e},{16'b0,f},l02);
    ADD #(.WIDTH(32))add4({16'b0,g},{16'b0,h},l03);
    ADD #(.WIDTH(32))add5(l00,l01,l10);
    ADD #(.WIDTH(32))add6(l02,l03,l11);
    ADD #(.WIDTH(32))add7(l10,l11,l2);
    
    SHR #(.WIDTH(32))shr2(l2,{24'b0, sa},l2div2);
    SHR #(.WIDTH(32))shr4(l2div2,{24'b0, sa},l2div4);
    SHR #(.WIDTH(32))shr8(l2div4,{24'b0, sa},l2div8);

    REG #(.WIDTH(32))reg1(l2div8,clk,rst,avg);

endmodule
