`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/21/2017 09:13:22 PM
// Design Name: 
// Module Name: Circuit_7
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

module Circuit_7(a,b,c,d,zero,clk,rst,z);
    input [63:0] a,b,c,d,zero;
    input clk,rst;
    output wire [63:0] z;
    wire [63:0] e,f,g,zwire;
    wire gEQz,gt,lt;
    
    // e = a / b;
    DIV #(.DATAWIDTH(64))div1(a,b,e);
    // f = c / d;
    DIV #(.DATAWIDTH(64))div2(c,d,f);
    // g = a % b;
    MOD #(.DATAWIDTH(64))mod1(a,b,g);
    // gEQz = g == zero;
    COMP#(.DATAWIDTH(64))cmp1(g,zero,gt,lt,gEQz);
    // zwire = gEQz ? e : f;
    MUX2x1#(.DATAWIDTH(64))mux1(e,f,gEQz,zwire);
    // z = zwire;
    REG #(.DATAWIDTH(64))reg1(zwire,clk,rst,z);

endmodule
