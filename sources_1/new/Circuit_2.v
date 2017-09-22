`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/20/2017 09:22:10 PM
// Design Name: 
// Module Name: Circuit_2
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



module Circuit_2 (a,b,c,z,x,clk,rst);
    input [31:0] a,b,c; 
    output wire [31:0]x;
    output wire [31:0]z;
    wire [31:0]d,e,f,g,h,xwire,zwire;
    wire dLTe,dEQe;
    wire dGTe;
    input clk,rst;
    
    ADD #(.WIDTH(32))add1(a,b,d);
    ADD #(.WIDTH(32))add2(a,c,e);
    SUB #(.WIDTH(32))sub1(a,b,f);
    COMP #(.WIDTH(32))comp1(d,e,dGTe,dLTe,dEQe);
    MUX2x1 #(.WIDTH(32))mux1(d,e,dLTe,g);//g
    MUX2x1 #(.WIDTH(32))mux2(g,f,dEQe,h);//h

    SHL #(.WIDTH(32))shl1(g,{31'b0,dLTe},xwire);
    SHR #(.WIDTH(32))shr1(h,{31'b0,dEQe},zwire);
    
    
    REG #(.WIDTH(32))reg1(xwire,clk,rst,x);
    REG #(.WIDTH(32))reg2(zwire,clk,rst,z);
  
endmodule
