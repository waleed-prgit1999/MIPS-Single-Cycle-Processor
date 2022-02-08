`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:00:05 01/23/2022 
// Design Name: 
// Module Name:    sign_extender 
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
module sign_extender(
    input [15:0] in,
	 output [31:0]out
	 );
assign out[15:0] = in[15:0];  	 
assign out[31:16] =  16'h0000;  
endmodule
