`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/22/2017 07:13:57 PM
// Design Name: 
// Module Name: Circuit_4
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


module Circuit_4(a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,final,clk,rst);
    input [7:0] a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p; 
    output wire [31:0]final;
    wire [31:0] t1, t2, t3, t4, t5, t6, t7, t8, t9, t10, t11, t12, t13, t14;
    input clk,rst;
       
    ADD #(.WIDTH(32))add1({24'b0,a},{24'b0,b},t1);
    ADD #(.WIDTH(32))add2(t1,{24'b0,c},t2);
    ADD #(.WIDTH(32))add3(t2,{24'b0,d},t3);
    ADD #(.WIDTH(32))add4(t3,{24'b0,e},t4);
    ADD #(.WIDTH(32))add5(t4,{24'b0,f},t5);
    ADD #(.WIDTH(32))add6(t5,{24'b0,g},t6);
    ADD #(.WIDTH(32))add7(t6,{24'b0,h},t7);
    ADD #(.WIDTH(32))add8(t7,{24'b0,i},t8);
    ADD #(.WIDTH(32))add9(t8,{24'b0,j},t9);
    ADD #(.WIDTH(32))add10(t9,{24'b0,l},t10);
    ADD #(.WIDTH(32))add11(t10,{24'b0,m},t11);
    ADD #(.WIDTH(32))add12(t11,{24'b0,n},t12);
    ADD #(.WIDTH(32))add13(t12,{24'b0,o},t13);
    ADD #(.WIDTH(32))add14(t13,{24'b0,p},t14);
    
    REG #(.WIDTH(32))reg1(t14,clk,rst,final);
   
endmodule
