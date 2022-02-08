`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:54:40 01/19/2022 
// Design Name: 
// Module Name:    Register_File 
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
module Register_File(
    input clock,dis,reset,reg_write,
	 input [4:0]add_a,add_b,add_write,
	 output [31:0]data_a,data_b,
	 input [31:0] data_write	 
	 );
	 wire new_clk;
reg [31:0] regfile [31:0];
integer k;
assign data_a = regfile[add_a];
assign data_b = regfile[add_b];
assign new_clk = clock & ~dis;
always@(posedge new_clk, posedge reset)
begin
	if(reset)
	begin
		for (k=0; k<32; k=k+1) begin
			regfile[k] = 32'd0;
		end
		regfile[0]=32'd300;
		regfile[1]=32'd113;
		regfile[3]=32'd400;
		regfile[4]=32'd211;
		regfile[6]=32'd100;
		regfile[7]=32'd17;
		regfile[9]=32'd340;
		regfile[10]=32'd89;
		regfile[12]=32'd300;
		regfile[13]=32'd113;
	end
	else if(reg_write)
	begin
		regfile[add_write] = data_write;
	end
end

endmodule
