`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/22/2017 08:54:11 PM
// Design Name: 
// Module Name: Circuit_6
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
//input Int16 a, b, c, d, e, f, g, h, num

//output Int16 avg

//register Int16 r1, r2, r3, r4, r5, r6, r7 

//wire Int16 avgwire
//wire Int32 t1, t2, t3, t4, t5, t6, t7

//t1 = a + b
//r1 = t1
//t2 = r1 + c 
//r2 = t2
//t3 = r2 + d 
//r3 = t3
//t4 = r3 + e 
//r4 = t4
//t5 = r4 + f 
//r5 = t5
//t6 = r5 + g 
//r6 = t6
//t7 = r6 + h 
//r7 = t7
//avgwire = r7 / num
//avg = avgwire

module Circuit_6(a, b, c, d, e, f, g, h, num, avg,clk,rst);
    input [15:0] a, b, c, d, e, f, g, h, num;
    output wire [15:0] avg;
    wire [15:0] r1, r2, r3, r4, r5, r6, r7;
    wire [15:0] avgwire;
    wire [31:0] t1, t2, t3, t4, t5, t6, t7;
    input clk,rst;
    
    ADD #(.DATAWIDTH(32)) add1({16'b0,a},{16'b0,b},t1);
    REG #(.DATAWIDTH(32)) reg1({16'b0,t1},clk,rst,r1);
    
    ADD #(.DATAWIDTH(32)) add2({16'b0,r1},{16'b0,c},t2);
    REG #(.DATAWIDTH(32)) reg2({16'b0,t2},clk,rst,r2);
    
    ADD #(.DATAWIDTH(32)) add3({16'b0,r2},{16'b0,d},t3);
    REG #(.DATAWIDTH(32)) reg3({16'b0,t3},clk,rst,r3);
    
    ADD #(.DATAWIDTH(32)) add4({16'b0,r3},{16'b0,e},t4);
    REG #(.DATAWIDTH(32)) reg4({16'b0,t4},clk,rst,r4);
    
    ADD #(.DATAWIDTH(32)) add5({16'b0,r4},{16'b0,f},t5);
    REG #(.DATAWIDTH(32)) reg5({16'b0,t5},clk,rst,r5);
    
    ADD #(.DATAWIDTH(32)) add6({16'b0,r5},{16'b0,g},t6);
    REG #(.DATAWIDTH(32)) reg6({16'b0,t6},clk,rst,r6);
    
    ADD #(.DATAWIDTH(32)) add7({16'b0,r6},{16'b0,h},t7);
    REG #(.DATAWIDTH(32)) reg7({16'b0,t7},clk,rst,r7);

    DIV #(.DATAWIDTH(16)) div1(r7,num,avgwire );
    REG #(.DATAWIDTH(16)) reg8(avgwire,clk,rst,avg);

endmodule
