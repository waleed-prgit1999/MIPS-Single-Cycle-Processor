`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:31:50 01/21/2022
// Design Name:   ALU_Control
// Module Name:   C:/Users/psf/Desktop/Sem 7/Digital System Design/Lab/haswal-labs/MIPS_processor/test_alu_ctrl.v
// Project Name:  MIPS_processor
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALU_Control
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_alu_ctrl;

	// Inputs
	reg [5:0] func_field;
	reg [5:0] opcode;

	// Outputs
	wire reg_write;
	wire [2:0] ALU_ctrl;

	// Instantiate the Unit Under Test (UUT)
	ALU_Control uut (
		.func_field(func_field), 
		.opcode(opcode), 
		.reg_write(reg_write), 
		.ALU_ctrl(ALU_ctrl)
	);

	initial begin
		// Initialize Inputs
		func_field = 6'b100000;
		opcode = 0;

		// Wait 100 ns for global reset to finish
		#10;
      func_field = 6'b100010;
		opcode = 0;

		#10;  
		// Add stimulus here
		func_field = 6'b100100;
		opcode = 0;

		#10;
		func_field = 6'b100101;
		opcode = 0;

		#10;
		func_field = 6'b101010;
		opcode = 0;

		#10;
	end
      
endmodule

