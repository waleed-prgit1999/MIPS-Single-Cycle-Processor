`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:43:20 01/21/2022
// Design Name:   Main_module
// Module Name:   C:/Users/psf/Desktop/Sem 7/Digital System Design/Lab/haswal-labs/MIPS_processor/test_main_mod.v
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

module test_main_mod;

	// Inputs
	reg clock;
	reg reset;

	// Instantiate the Unit Under Test (UUT)
	Main_module uut (
		.clock(clock), 
		.reset(reset)
	);

	initial begin
		// Initialize Inputs
		clock = 1;
		reset = 1;

		// Wait 100 ns for global reset to finish
		#10;
		reset = 0;
        
		// Add stimulus here

	end
     always #10clock = ~clock; 
endmodule

