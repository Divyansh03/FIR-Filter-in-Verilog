`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:58:03 04/14/2019 
// Design Name: 
// Module Name:    jk_ff 
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
module jk_ff(
    input j,
    input k,
    input clk,
    output reg q
    );
initial
q=1'b1;
always @(posedge clk)
begin
case ({j,k})
	0:q=q;
	1:q=0;
	2:q=1;
	3:q=~q;
endcase
end
endmodule
