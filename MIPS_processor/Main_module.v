`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:55:53 01/22/2022 
// Design Name: 
// Module Name:    Main_module 
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
module Main_module(
		input clock,reset,dis,
		input [4:0] add,
		output [6:0] data,
		output [3:0] control,
		output tc
	);
	wire [4:0] muxout,count,muxout4;
	wire [31:0] instruction;
	wire reg_write,muxclk,ALU_src,reg_dst,write_en,memtoreg;
	wire [31:0] A,B,data_write,muxout2,muxout3,d_mem_dout,alu_out,muxout5;
	wire [2:0] ALU_ctrl;
	wire [6:0] S0,S1,S2,S3;
counter #(.n(26),.M(50000000)) uut0(reset,clock,1'b1,tc,);
Program_counter uu1(tc,reset,dis,count);
INST_MEM uut2 (
	.clka(tc),
	.addra(count),
	.douta(instruction)
);

mux #(.n(5))uut3(add,instruction[25:21],dis,muxout);
mux #(.n(5))uut11(instruction[15:11],instruction[20:16],reg_dst,muxout4);
Register_File uut4(tc,dis,reset,reg_write,muxout,instruction[20:16],muxout4,A,B,muxout5);

mux #(.n(32)) uut9({16'h0000,instruction[15:0]},B,ALU_src,muxout3);
ALU uut5(A,muxout3,ALU_ctrl,alu_out);
mux #(.n(32)) uut8(A,{27'd0,count},dis,muxout2);
ALU_Control uut6(instruction[5:0],instruction[31:26],reg_write,ALU_src,reg_dst,memtoreg,write_en,ALU_ctrl);
Binary_to_7seg #(.bits(32))uut7(muxout2,S0,S1,S2,S3);
counter #(.n(17),.M(125000)) c1(reset,clock,1'b1,muxclk,);
mux_block mb(S0,S1,S2,S3,muxclk,reset,data,control);


Data_memory uut13 (
  .clka(tc), // input clka
  .wea(write_en), // input [0 : 0] wea
  .addra(instruction[25:21]), // input [4 : 0] addra
  .dina(B), // input [31 : 0] dina
  .douta(d_mem_dout) // output [31 : 0] douta
);
mux #(.n(32)) uut12(d_mem_dout,alu_out,memtoreg,muxout5);
endmodule

