`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:02:16 04/17/2019 
// Design Name: 
// Module Name:    coeff_rom 
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
module coeff_rom(
  input clka,
  input [3:0]addra,
  output reg [7:0]douta
);
reg [7:0] data[15:0];
always
begin
data[0][7:0]<=8'b00000010;
data[1][7:0]<=8'b11111011;
data[2][7:0]<=8'b00000011;
data[3][7:0]<=8'b00000001;
data[4][7:0]<=8'b11111100;
data[5][7:0]<=8'b00000011;
data[6][7:0]<=8'b00000100;
data[7][7:0]<=8'b00000011;
data[8][7:0]<=8'b00000101;
data[9][7:0]<=8'b00000010;
data[10][7:0]<=8'b00000001;
data[11][7:0]<=8'b00000001;
data[12][7:0]<=8'b11111110;
data[13][7:0]<=8'b00000011;
data[14][7:0]<=8'b00000100;
data[15][7:0]<=8'b00000001;
end
always @(posedge clka)
douta[7:0]<=data[addra][7:0];
endmodule
