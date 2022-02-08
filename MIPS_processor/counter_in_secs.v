`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:40:09 10/27/2021 
// Design Name: 
// Module Name:    counter_in_secs 
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
module counter_in_secs(
	input reset,clock,ud,
	output  tc,
	output  [13:0]count   
	);
wire tc1;
wire [26:0] count1;

	counter #(.n(26),.M(25000000)) c1(reset,clock,ud,tc1,count1);
	counter #(.n(13),.M(9999)) c2(reset,tc1,ud,tc,count);

endmodule
