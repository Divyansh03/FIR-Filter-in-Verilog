`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:47:20 01/14/2019 
// Design Name: 
// Module Name:    mux4_1 
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
module mux4_1(
    input [3:0] a,
    input [1:0] s,
    output o4
    );
wire t1, t2;

mux2_1 m1(a[3:2], s[0],t1);
mux2_1 m2(a[1:0], s[0],t2);
mux2_1 m3({t1,t2}, s[1],o4);

endmodule
