`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   01:20:25 01/22/2022
// Design Name:   Main_module
// Module Name:   C:/Users/psf/Desktop/Sem 7/Digital System Design/Lab/haswal-labs/MIPS_processor/test_mm.v
// Project Name:  MIPS_processor
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Main_module
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_mm;

	// Inputs
	reg clock;
	reg reset;
	reg dis;
	reg [4:0] add;

	// Outputs
	wire [31:0] A;

	// Instantiate the Unit Under Test (UUT)
	Main_module uut (
		.clock(clock), 
		.reset(reset), 
		.dis(dis), 
		.add(add), 
		.A(A)
	);

	initial begin
		// Initialize Inputs
		clock = 1;
		reset = 1;
		dis = 0;
		add = 0;

		// Wait 100 ns for global reset to finish
		#10;
        reset=0;
		  
		 #40
		 dis=1;
		 add=1;
		// Add stimulus here

	end
      always #10 clock = ~clock;
endmodule

