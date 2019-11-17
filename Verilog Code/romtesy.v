`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   02:42:00 04/15/2019
// Design Name:   filter_coeff
// Module Name:   C:/Users/vaibh/Desktop/workspace/fir_filter/romtesy.v
// Project Name:  fir_filter
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: filter_coeff
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module romtesy;

	// Inputs
	reg clka;
	reg [3:0] addra;

	// Outputs
	wire [7:0] douta;

	// Instantiate the Unit Under Test (UUT)
	filter_coeff uut (
		.clka(clka), 
		.addra(addra), 
		.douta(douta)
	);

	initial begin
		// Initialize Inputs
		clka = 0;
		addra = 0;

		// Wait 100 ns for global reset to finish
		#12;addra=4'h1;
		#30;addra=4'h2;
        
		// Add stimulus here

	end
always
#10 clka=~clka;
endmodule

