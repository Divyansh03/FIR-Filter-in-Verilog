`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:01:04 04/17/2019 
// Design Name: 
// Module Name:    coefficient 
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
module coefficient(
    input [3:0] add,
    input clk,
    output [7:0] op
    );
coeff your_instance_name (
  .clka(clk), // input clka
  .addra(add), // input [3 : 0] addra
  .douta(op) // output [7 : 0] douta
);
endmodule
