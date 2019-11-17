`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:16:09 04/17/2019 
// Design Name: 
// Module Name:    main 
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
module main(
    input [7:0] a,
	 input clk,
	 input reset,
    output reg [15:0] op,
	 output [15:0] y
    );
reg [7:0] ip[15:0]={8'b0,8'b0,8'b0,8'b0,8'b0,8'b0,8'b0,8'b0,8'b0,8'b0,8'b0,8'b0,8'b0,8'b0,8'b0,8'b0,8'b0};
wire clk1,clk2,clk3;
clock_gen c1(clk,clk1,clk2,clk3);
genvar i;
generate
always @(posedge clk3)
begin
	ip[0][7:0]<=a;
	ip[1][7:0]<=ip[0][7:0];
	ip[2][7:0]<=ip[1][7:0];
	ip[3][7:0]<=ip[2][7:0];
	ip[4][7:0]<=ip[3][7:0];
	ip[5][7:0]<=ip[4][7:0];
	ip[6][7:0]<=ip[5][7:0];
	ip[7][7:0]<=ip[6][7:0];
	ip[8][7:0]<=ip[7][7:0];
	ip[9][7:0]<=ip[8][7:0];
	ip[10][7:0]<=ip[9][7:0];
	ip[11][7:0]<=ip[10][7:0];
	ip[12][7:0]<=ip[11][7:0];
	ip[13][7:0]<=ip[12][7:0];
	ip[14][7:0]<=ip[13][7:0];
	ip[15][7:0]<=ip[14][7:0];
end
endgenerate
wire [3:0]count;
counter c(clk2,count);
wire [7:0]b;
generate
for (i=0;i<8;i=i+1)
begin:loop2
	mux16_1 m({ip[15][i],ip[14][i],ip[13][i],ip[12][i],ip[11][i],ip[10][i],ip[9][i],ip[8][i],ip[7][i],ip[6][i],ip[5][i],ip[4][i],ip[3][i],ip[2][i],ip[1][i],ip[0][i]},count,b[i]);
end
endgenerate
wire [7:0] coef;
coefficient i1 (
  .clk(clk2),
  .add(count),
  .op(coef)
);
wire [15:0] o;
multiplier mult(b,coef,1'b1,o);
reg [15:0] o1=16'b0;
always @(posedge clk1)
o1[15:0]<=o[15:0];
//wire [15:0]y;
acc your_instance_name (
  .b(o1), // input [15 : 0] b
  .clk(clk1), // input clk
  .sclr(reset), // input sclr
  .q(y) // output [15 : 0] q
);
always @(posedge clk3)
op[15:0]<=y;
endmodule
