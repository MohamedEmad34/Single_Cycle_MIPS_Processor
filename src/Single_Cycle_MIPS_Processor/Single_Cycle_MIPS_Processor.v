`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/24/2023 07:27:43 AM
// Design Name: 
// Module Name: Single_Cycle_MIPS_Processor
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Single_Cycle_MIPS_Processor(
input clk,
input areset,
output [15:0]test_value,
output [31:0]pc_out,
instr,
output      MemtoReg,MemWrite,Branch,ALUSrc,RegDst,RegWrite,jump


    );
    
    wire [2:0]ALUCtrl;    
    wire [31:0]WriteData;
    
    wire [31:0]ALUResult;
    wire Zero;
    wire [31:0]ReadData;
    wire PCSrc;
     
    wire [31:0]PCPlus4;
     

    ControlUnit CU(.Zero(Zero),.opcode(instr[31:26]),.funct(instr[5:0]),
       .MemtoReg1(MemtoReg),.MemWrite1(MemWrite)
       ,.Branch1(Branch),
       .ALUSrc1(ALUSrc),.RegDst1(RegDst),.PCSrc(PCSrc),
       .RegWrite1(RegWrite),.jump1(jump),.ALUCtrl(ALUCtrl));
       
       
    Data_Path dp(.PCPlus4(PCPlus4),.clk(clk),.reset(areset),.ALUControl(ALUCtrl),
    .MemtoReg(MemtoReg),.ALUSrc(ALUSrc),.PCSrc(PCSrc)
    ,.RegDst(RegDst),.RegWrite(RegWrite),.jump(jump),
    .ReadData(ReadData),
    .instr(instr),
    .PC_out(pc_out), .WriteData(WriteData),.ALUOut(ALUResult),
    .Zero(Zero));
   instruction_memory imem(.A(pc_out),.RD(instr));  
   
   
   Data_Memory datamemory(.clk(clk),.reset(areset),.WE(MemWrite),
   .A(ALUResult),.WD(WriteData),.test_value(test_value),.RD(ReadData));
  
  
   
   
endmodule
