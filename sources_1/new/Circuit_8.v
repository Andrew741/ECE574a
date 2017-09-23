`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/21/2017 09:13:22 PM
// Design Name: 
// Module Name: Circuit_8
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

module Circuit_8(a,b,c,zero,clk,rst,z);
    input [63:0] a,b,c,zero;
    input clk,rst;
    output wire [63:0] z;
    wire [63:0] e,f,g,zwire;
    wire gEQz,gt,lt;
    
    // e = a - 1;
    DEC #(.WIDTH(64))dec1(a,e);
    // f = c + 1;
    INC #(.WIDTH(64))inc1(c,f);
    // g = a % c;
    MOD #(.WIDTH(64))mod1(a,c,g);
    // gEQz = g == zero;
    COMP#(.WIDTH(64))cmp1(g,zero,gt,lt,gEQz);
    // zwire = gEQz ? e : f;
    MUX2x1#(.WIDTH(64))mux1(e,f,gEQz,zwire);
    // z = zwire;
    REG #(.WIDTH(64))reg1(zwire,clk,rst,z);

endmodule
