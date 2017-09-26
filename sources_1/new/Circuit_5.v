`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/22/2017 07:52:13 PM
// Design Name: 
// Module Name: Circuit_5
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
//input Int64 a, b, c

//output Int32 z, x

//wire Int64 d, e, f, g, h 
//wire Int1 dLTe, dEQe 
//wire Int64 xrin, zrin
//register Int64 greg, hreg

//d = a + b
//e = a + c
//f = a - b  
//dEQe = d == e
//dLTe = d < e
//g = dLTe ? d : e 
//h = dEQe ? g : f 
//greg = g
//hreg = h
//xrin = hreg << dLTe
//zrin = greg >> dEQe
//x = xrin
//z = zrin

module Circuit_5(a,b,c,z,x,clk,rst);
    input [63:0] a,b,c;
    output wire [31:0] z,x;
    wire [63:0] d,e,f,g,h,xrin,zrin;
    wire dLTe,dEQe,dGTe;
    wire [63:0] greg,hreg;
    input clk,rst;
    
    ADD #(.DATAWIDTH(64))add1(a,b,d);
    ADD #(.DATAWIDTH(64))add2(a,c,e);
    SUB #(.DATAWIDTH(64))sub1(a,c,f);
    COMP #(.DATAWIDTH(64)) comp1(d,e,dGTe,dLTe,dEQe);
    MUX2x1 #(.DATAWIDTH(64)) mux1(d,e,dLTe,g);
    MUX2x1 #(.DATAWIDTH(64)) mux2(g,f,dEQe,h);
    REG #(.DATAWIDTH(64)) reg1(g,clk,rst,greg);
    REG #(.DATAWIDTH(64)) reg2(h,clk,rst,hreg);
    SHL #(.DATAWIDTH(64)) shl1(hreg,{63'b0,dLTe},xrin);
    SHR #(.DATAWIDTH(64)) shr1(greg,{63'b0,dEQe},zrin);
    REG #(.DATAWIDTH(64)) reg3(xrin,clk,rst,x);
    REG #(.DATAWIDTH(64)) reg4(zrin,clk,rst,z);
endmodule
