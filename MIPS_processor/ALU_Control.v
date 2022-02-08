`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:00:39 01/21/2022 
// Design Name: 
// Module Name:    ALU_Control 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 20,22,24,25,2a
//
//////////////////////////////////////////////////////////////////////////////////
module ALU_Control( 
		input [5:0] func_field,opcode,
		output reg reg_write,alu_src,reg_dst,memtoreg,mem_write,
		output reg [2:0] ALU_ctrl
	);
always@(opcode,func_field)
begin
	case(opcode)
	6'b000000:begin
		case(func_field)
		6'b100000:begin reg_write = 1'b1; ALU_ctrl = 3'b010; alu_src=1'b0; reg_dst =1'b1; memtoreg = 1'b0; mem_write = 1'b0; end  //add
		6'b100010:begin reg_write = 1'b1; ALU_ctrl = 3'b011; alu_src=1'b0; reg_dst =1'b1; memtoreg = 1'b0; mem_write = 1'b0; end  //sub 
		6'b100100:begin reg_write = 1'b1; ALU_ctrl = 3'b000; alu_src=1'b0; reg_dst =1'b1; memtoreg = 1'b0; mem_write = 1'b0; end  //and
		6'b100101:begin reg_write = 1'b1; ALU_ctrl = 3'b001; alu_src=1'b0; reg_dst =1'b1; memtoreg = 1'b0; mem_write = 1'b0; end  //or
		6'b101010:begin reg_write = 1'b1; ALU_ctrl = 3'b100; alu_src=1'b0; reg_dst =1'b1; memtoreg = 1'b0; mem_write = 1'b0; end  //slt
		endcase
	end
	6'b001000:begin alu_src=1'b1; reg_write = 1'b1; ALU_ctrl = 3'b010; reg_dst =1'b0; memtoreg = 1'b0; mem_write = 1'b0; end //addi
	
	6'b001010:begin alu_src=1'b1; reg_write = 1'b1; ALU_ctrl = 3'b100; reg_dst =1'b0; memtoreg = 1'b0; mem_write = 1'b0; end //slti
	
	6'b001100:begin alu_src=1'b1; reg_write = 1'b1; ALU_ctrl = 3'b000; reg_dst =1'b0; memtoreg = 1'b0; mem_write = 1'b0; end //andi
	
	6'b001101:begin alu_src=1'b1; reg_write = 1'b1; ALU_ctrl = 3'b001; reg_dst =1'b0; memtoreg = 1'b0; mem_write = 1'b0; end //ori
	
	6'b100011:begin alu_src=1'b1; reg_write = 1'b1; ALU_ctrl = 3'b010; reg_dst =1'b0; memtoreg = 1'b1; mem_write = 1'b0; end //lw
	
	6'b101011:begin alu_src=1'b1; reg_write = 1'b0; ALU_ctrl = 3'b010; reg_dst =1'b0; memtoreg = 1'b1; mem_write = 1'b1; end //sw
	endcase

end
endmodule
