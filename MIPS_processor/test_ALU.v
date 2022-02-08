`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:57:48 01/20/2022
// Design Name:   ALU
// Module Name:   C:/Users/psf/Desktop/Sem 7/Digital System Design/Lab/haswal-labs/MIPS_processor/test_ALU.v
// Project Name:  MIPS_processor
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_ALU;

	// Inputs
	reg [31:0] A;
	reg [31:0] B;
	reg [2:0] operation;

	// Outputs
	wire [31:0] res;
	wire slt;

	// Instantiate the Unit Under Test (UUT)
	ALU uut (
		.A(A), 
		.B(B), 
		.operation(operation), 
		.res(res), 
		.slt(slt)
	);

	initial begin
		// Initialize Inputs
		A = 100;
		B = 200;
		operation = 0;

		// Wait 100 ns for global reset to finish
		#10;
      A = 100;
		B = 200;
		operation = 1;  
		#10;
      A = 100;
		B = 200;
		operation = 2;
#10;
      A = 100;
		B = 200;
		operation = 3;
#10;
      A = 100;
		B = 200;
		operation = 4;    		
		// Add stimulus here

	end
      
endmodule

