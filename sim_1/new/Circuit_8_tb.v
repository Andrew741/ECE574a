`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/21/2017 09:29:03 PM
// Design Name: 
// Module Name: Circuit_8_tb
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

module Circuit_8_tb();

reg [63:0] A_s, B_s, C_s, Zero_s;
wire[63:0] Z_s;
reg clk,rst;

//Circuit_8(a,b,c,zero,clk,rst,z);
Circuit_8  test(A_s, B_s, C_s, Zero_s, clk, rst, Z_s);
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
    B_s <= 12345;
    C_s <= 15;
    Zero_s <= 0;
    // e = a - 1        --> 255
    // f = c + 1        --> 16
    // g = a % c        --> 1
    // gEQz = g==zero   --> 0
    // z = gEQz ? e : f --> 16

    // test #2
    #20
    A_s <= 256;
    B_s <= 12345;
    C_s <= 16;
    Zero_s <= 0;
    // e = a - 1        --> 255
    // f = c + 1        --> 17
    // g = a % c        --> 0
    // gEQz = g==zero   --> 1
    // z = gEQz ? e : f --> 255
    
    // test #3
    #40
    A_s <= 100;
    B_s <= 12345;
    C_s <= 20;
    Zero_s <= 17;
    // e = a - 1        --> 99
    // f = c + 1        --> 21
    // g = a % c        --> 0
    // gEQz = g==zero   --> 0
    // z = gEQz ? e : f --> 21

    // test #4
    #60
    A_s <= 117;
    B_s <= 12345;
    C_s <= 20;
    Zero_s <= 17;
    // e = a - 1        --> 116
    // f = c + 1        --> 21
    // g = a % c        --> 17
    // gEQz = g==zero   --> 1
    // z = gEQz ? e : f --> 116
    
end
endmodule
