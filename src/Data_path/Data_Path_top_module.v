module Data_Path(
input clk,reset,
input [2:0]ALUControl,
input MemtoReg,Branch,ALUSrc,RegDst,RegWrite,jump,
input [31:0]ReadData,
input [25:0]instr,
output [31:0]PC_out, WriteData,ALUOut,
output Zero);
 wire [4:0]A3;
 wire [31:0]RD1;
 wire [31:0]extendOutput;
 wire [31:0]shiftOut;
 wire [31:0]SrcB;
 wire [31:0]Result;
 wire [31:0]PCPlus4,PCBranch,PC_in1,PC_in;
 wire PCSrc;
 wire [25:0]shiftOut1;
      
 MUX #(.N(5))mux1 (.inp1(instr[20:16]),
.inp2(instr[15:11]),.sel(RegDst),.out(A3));
SignExtend SiEx(.inp(instr[15:0]),.extendOutput(extendOutput));
Shift_left_twice #(.N(32))slt(.SignImm(extendOutput),.shiftOut(shiftOut));
 Register_File RF(.clk(clk),.WE3(RegWrite),
 .A1(instr[25:21]),.A2(instr[20:16]),.A3(A3),
.WD3(Result),.RD1(RD1),.RD2(WriteData));
MUX #(.N(32))mux2(.inp1(WriteData),.inp2(extendOutput),.sel(ALUSrc),.out(SrcB));
ALU alu(.A(RD1),.B(SrcB),.ALUControl(ALUControl),.ALUResult(ALUOut),.Zero(Zero));
                 Adder addPC(.inp1(PC_out),.inp2(32'd4),.out(PCPlus4));
   Adder pcBra(.inp1(shiftOut),.inp2(PCPlus4),.out(PCBranch));
 MUX #(.N(32))mux4(.inp1(PCPlus4),.inp2(PCBranch),.sel(PCSrc),
     .out(PC_in1));
     MUX #(.N(32))mux3(.inp1(ALUOut),
        .inp2(ReadData),.sel(MemtoReg),.out(Result));
         
 ProgramCounter PC(.clk(clk),.in(PC_in),.areset(reset),.out(PC_out));
Shift_left_twice #(.N(28))slt1 (.SignImm({2'b00,ReadData[25:0]}),
.shiftOut(shiftOut1));
 MUX #(.N(32))mux5(.inp1(PC_in1),
 .inp2({PCPlus4[31:28],shiftOut1}),.sel(jump),.out(PC_in));
 
