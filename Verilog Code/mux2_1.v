`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:29:07 01/14/2019 
// Design Name: 
// Module Name:    mux2_1 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module mux2_1(
    input [1:0] a,
    input s,
    output op
    );
wire t1,t2,t3;
and a1(t1,a[1],s);
not n1(t3,s);
and a2(t2,a[0],t3);
or o1(op,t2,t1);
endmodule
