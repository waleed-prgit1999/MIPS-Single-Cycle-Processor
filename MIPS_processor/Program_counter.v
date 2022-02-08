`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:45:47 01/19/2022 
// Design Name: 
// Module Name:    Program_counter 
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
module Program_counter(
    input clock,reset,dis,
	 output reg [4:0] counter
	 );
	 
always@(posedge clock, posedge reset,posedge dis)
begin
	if(dis)
		counter = counter;
	else if(reset)
		counter = 0;
	else
	begin
		counter = counter +1;
	end
end
endmodule
