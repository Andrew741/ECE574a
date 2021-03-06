`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/17/2017 01:06:19 PM
// Design Name: 
// Module Name: Circuit1
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


module Circuit_1 (a,b,c,z,x,clk,rst);
    input [7:0] a,b,c; 
    output wire [15:0]x;
    output wire [7:0]z;
    wire [7:0]d,e;
    wire [15:0]f,g,xwire;
    input clk,rst;
    wire lt,eq;
    
    ADD #(.DATAWIDTH(8))add1(a,b,d);
    ADD #(.DATAWIDTH(8))add2(a,c,e);
    COMP #(.DATAWIDTH(16))comp1(d,e,g,lt,eq);
    MUX2x1 #(.DATAWIDTH(8))mux1(d,e,g,z);

    MUL #(.DATAWIDTH(16))mul1({8'b0,a},{8'b0,c},f);
    SUB #(.DATAWIDTH(16))sub1(f,{8'b0,d},xwire);
    REG #(.DATAWIDTH(16))reg1(xwire,clk,rst,x);
   
endmodule
