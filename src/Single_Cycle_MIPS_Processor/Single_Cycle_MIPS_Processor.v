module Single_Cycle_MIPS_Processor(
input clk,
input areset

    );
    wire [31:0]RD;
    
    wire [2:0]ALUCtrl;
    wire [4:0]A3;
    wire [31:0]WriteData;
    wire [31:0]extendOutput;
    wire [31:0]shiftOut;
    wire [31:0]SrcB;
    wire [31:0]ALUResult;
    wire Zero;
    wire [15:0]test_value;
    wire [31:0]ReadData;
    wire [31:0]Result;
    wire [31:0]pc_out;
    wire [31:0]PCPlus4,PCBranch,PC_in1,PC_in;
    wire PCSrc;
    wire [25:0]shiftOut1;
    wire MemtoReg,MemWrite,Branch,ALUSrc,RegDst,RegWrite,jump;

    ControlUnit CU(.Zero(Zero),.opcode(RD[31:26]),.funct(RD[5:0]),
       .MemtoReg1(MemtoReg),.MemWrite1(MemWrite)
       ,.Branch1(Branch),
       .ALUSrc1(ALUSrc),.RegDst1(RegDst),.PCSrc(PCSrc),
       .RegWrite1(RegWrite),.jump1(jump),.ALUCtrl(ALUCtrl));
       
       
    Data_Path dp(.clk( clk),.reset(areset),
    .ALUControl(ALUCtrl),
    .MemtoReg(MemtoReg),.Branch(Branch),.ALUSrc(ALUSrc)
    ,.RegDst(RegDst),.RegWrite(RegWrite),.jump(jump),
    .ReadData(ReadData),
    .instr(RD[25:0]),
    .PC_out(pc_out), .WriteData(),.ALUOut(ALUResult),
    .Zero(Zero));
   instruction_memory imem(.A(pc_out),.RD(RD));  
   
   
   Data_Memory datamemory(.clk(clk),.WE(MemWrite),
   .A(ALUResult),.WD(WriteData),.test_value(test_value),.RD(ReadData));
  
  
   
   
endmodule
