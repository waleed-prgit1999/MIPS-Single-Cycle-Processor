`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:18:36 01/20/2022
// Design Name:   Register_File
// Module Name:   C:/Users/psf/Desktop/Sem 7/Digital System Design/Lab/haswal-labs/MIPS_processor/test_regfile.v
// Project Name:  MIPS_processor
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Register_File
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_regfile;

	// Inputs
	reg clock;
	reg reset;
	reg reg_write;
	reg [4:0] add_a;
	reg [4:0] add_b;
	reg [4:0] add_write;
	reg [31:0] data_write;

	// Outputs
	wire [31:0] data_a;
	wire [31:0] data_b;
	

	// Instantiate the Unit Under Test (UUT)
	Register_File uut (
		.clock(clock), 
		.reset(reset), 
		.reg_write(reg_write), 
		.add_a(add_a), 
		.add_b(add_b), 
		.add_write(add_write), 
		.data_write(data_write),
		.data_a(data_a), 
		.data_b(data_b)
		
	);

	initial begin
		// Initialize Inputs
		clock = 0;
		reset = 1;
		reg_write = 0;
		add_a = 0;
		add_b = 0;
		add_write = 0;

		// Wait 100 ns for global reset to finish
		#10;
        reset =0;
		 #10
		reg_write = 1;
		add_write = 1;
		data_write = 500;
 		#20
		add_write = 2;
		data_write = 1000;
		#20
		reg_write = 0;
		add_a = 1;
		add_b = 2;
		
		// Add stimulus here

	end
      always #10 clock = ~clock;
endmodule

