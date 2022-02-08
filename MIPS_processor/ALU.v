`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:43:27 01/20/2022 
// Design Name: 
// Module Name:    ALU 
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
module ALU(
    input [31:0] A,B,
	 input [2:0]operation,
	 output reg [31:0] res
	 );
always@(*)
begin
	case(operation)
	0: res = A&B;
	1: res = A|B;
	2: res = A+B;
	3: res = A-B;
	4: begin 
			if(A<B) 
				res = 32'd1;
			else 
				res = 32'd0;
		end
	endcase
end
endmodule
