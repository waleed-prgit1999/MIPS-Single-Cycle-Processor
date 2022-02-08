`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:52:48 01/19/2022
// Design Name:   Program_counter
// Module Name:   C:/Users/psf/Desktop/Sem 7/Digital System Design/Lab/haswal-labs/MIPS_processor/test_PC.v
// Project Name:  MIPS_processor
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Program_counter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_PC;

	// Inputs
	reg clock;
	reg reset;

	// Outputs
	wire [4:0] counter;

	// Instantiate the Unit Under Test (UUT)
	Program_counter uut (
		.clock(clock), 
		.reset(reset), 
		.counter(counter)
	);

	initial begin
		// Initialize Inputs
		clock = 0;
		reset = 1;

		// Wait 100 ns for global reset to finish
		#10;
        reset =0;
		// Add stimulus here

	end
      always #10 clock = ~clock;
endmodule

