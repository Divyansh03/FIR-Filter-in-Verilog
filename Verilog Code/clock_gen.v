`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:47:45 04/15/2019 
// Design Name: 
// Module Name:    clock_gen 
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
module clock_gen(
    input clk,
    output clko,
    output clkby4,
    output clkby64
    );
wire t1,t2,t3,t4,t5,t6,t7,t8,t9,t10;
jk_ff j1(1'b1,1'b1,clk,t1);
jk_ff j2(t1,t1,clk,t2);
and a1(t3,t1,t2);
jk_ff j3(t3,t3,clk,t4);
and a2(t5,t3,t4);
jk_ff j4(t5,t5,clk,t6);
and a3(t7,t5,t6);
jk_ff j5(t7,t7,clk,t8);
and a4(t9,t7,t8);
jk_ff j6(t9,t9,clk,t10);
assign clko=clk;
assign clkby4=t2;
assign clkby64=t10;
endmodule
