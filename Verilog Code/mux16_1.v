`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:24:34 04/14/2019 
// Design Name: 
// Module Name:    mux16_1 
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
module mux16_1(
    input [15:0] a,
    input [3:0] sel,
    output op
    );
wire t1,t2,t3,t4;
mux4_1 m1(a[15:12],sel[1:0],t1);
mux4_1 m2(a[11:8],sel[1:0],t2);
mux4_1 m3(a[7:4],sel[1:0],t3);
mux4_1 m4(a[3:0],sel[1:0],t4);
mux4_1 m5({t1,t2,t3,t4},sel[3:2],op);
endmodule
