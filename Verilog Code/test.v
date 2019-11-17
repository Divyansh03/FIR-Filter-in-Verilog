`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:42:03 04/17/2019
// Design Name:   main
// Module Name:   C:/Users/vaibh/Desktop/workspace/fir_filter/test.v
// Project Name:  fir_filter
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: main
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test;

	// Inputs
	reg [7:0] a;
	reg clk;
	reg reset;

	// Outputs
	wire [15:0] op;
	wire [15:0] y;

	// Instantiate the Unit Under Test (UUT)
	main uut (
		.a(a), 
		.clk(clk), 
		.reset(reset),
		.op(op),
		.y(y)
	);

/*	initial begin
		// Initialize Inputs
		a = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end*/
reg [7:0] rom[999:0];
integer j=0;
integer f,i,k;
reg signed [15:0] cdo [1015:0];

initial begin
clk=0;
#190 f=$fopen("output_fir.txt","w"); 
      
        for (i=0; i<1016; i=i+1)
		  begin
             #5120 cdo[i]<= op; 
			  end	
for (i=0; i<1016; i=i+1)
begin
$fwrite(f,"%d\n",cdo[i]);	
end		
$fclose(f);
$finish;
end
	
	
 initial begin
	a=0;
	$readmemb("inputdata_signed.txt",rom); 
	#190 a=rom[0];
	for(j=1;j<1000;j=j+1) 
		begin
		#5120;
     a=rom[j];
	end 
	#5120 a<=8'h00;
 end
  always begin
		#40 clk=~clk; 
	end 
 


initial begin
	reset=0;
	#190 reset=1;
	#10 reset=0;
	for (k=0;k<1016;k=k+1)
	begin
		#5110 reset=1;
		#10 reset=0;
	end
end
endmodule
