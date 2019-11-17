`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:25:22 04/14/2019 
// Design Name: 
// Module Name:    counter 
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
module counter(
    input clk,
    output [3:0] op
    );
wire t1,t2,t3,t4;
jk_ff j1(1'b1,1'b1,clk,t1);
jk_ff j2(t1,t1,clk,t2);
and a1(t3,t1,t2);
jk_ff j3(t3,t3,clk,t4);
and a2(t5,t3,t4);
jk_ff j4(t5,t5,clk,t6);
assign op={t6,t4,t2,t1};
endmodule
