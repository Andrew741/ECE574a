`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/21/2017 09:29:03 PM
// Design Name: 
// Module Name: Circuit_7_tb
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

module Circuit_7_tb();

reg [63:0] A_s, B_s, C_s, D_s, Zero_s;
wire[63:0] Z_s;
reg clk,rst;

//Circuit_7(a,b,c,d,zero,clk,rst,z);
Circuit_7  test(A_s, B_s, C_s, D_s, Zero_s, clk, rst, Z_s);
always
    #10 clk <= ~clk;

initial
begin
    // clear the clock and reset
    clk <= 0; 
    rst <= 0;
    
    // test #1
    #00
    A_s <= 256;
    B_s <= 12;
    C_s <= 150;
    D_s <= 13;
    Zero_s <= 0;
    // e = a / b        --> 21
    // f = c / d        --> 11
    // g = a % b        --> 4
    // gEQz = g==zero   --> 0
    // z = gEQz ? e : f --> 11

    // test #2
    #20
    A_s <= 256;
    B_s <= 12;
    C_s <= 150;
    D_s <= 13;
    Zero_s <= 4;
    // e = a / b        --> 21
    // f = c / d        --> 11
    // g = a % b        --> 4
    // gEQz = g==zero   --> 1
    // z = gEQz ? e : f --> 21
    
    // test #3
    #40
    A_s <= 256;
    B_s <= 16;
    C_s <= 150;
    D_s <= 10;
    Zero_s <= 0;
    // e = a / b        --> 16
    // f = c / d        --> 15
    // g = a % b        --> 0
    // gEQz = g==zero   --> 1
    // z = gEQz ? e : f --> 16

    // test #4
    #60
    A_s <= 256;
    B_s <= 16;
    C_s <= 150;
    D_s <= 10;
    Zero_s <= 5;
    // e = a / b        --> 16
    // f = c / d        --> 15
    // g = a % b        --> 0
    // gEQz = g==zero   --> 0
    // z = gEQz ? e : f --> 15
    
end
endmodule
