`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:01:57 03/18/2019 
// Design Name: 
// Module Name:    fa 
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
module fa(
    input a,
    input b,
    input c_in,
    output s,
    output c_out
    );
wire t1,t2,t3;
xor x1(t1,a,b);
xor x2(s,t1,c_in);
and a1(t2,a,b);
and a2(t3,t1,c_in);
or o1(c_out,t2,t3);
endmodule
