module mainControl(
input [5:0]opcode,
output reg MemtoReg,MemWrite,Branch,ALUSrc,RegDst,RegWrite,jump,
output reg [1:0]ALUOp

    );
    always @(*)
    begin
    case(opcode)
    6'b100011:{jump,ALUOp,MemWrite,RegWrite,RegDst,ALUSrc,MemtoReg,Branch}=9'b000010110;
    6'b101011:{jump,ALUOp,MemWrite,RegWrite,RegDst,ALUSrc,MemtoReg,Branch}=9'b000100110;
    6'b000000:{jump,ALUOp,MemWrite,RegWrite,RegDst,ALUSrc,MemtoReg,Branch}=9'b010011000;
    6'b001000:{jump,ALUOp,MemWrite,RegWrite,RegDst,ALUSrc,MemtoReg,Branch}=9'b000010100;
    6'b000100:{jump,ALUOp,MemWrite,RegWrite,RegDst,ALUSrc,MemtoReg,Branch}=9'b001000001;
    6'b000010:{jump,ALUOp,MemWrite,RegWrite,RegDst,ALUSrc,MemtoReg,Branch}=9'b100000000;
    default:{jump,ALUOp,MemWrite,RegWrite,RegDst,ALUSrc,MemtoReg,Branch}=9'b000000000;

    
    endcase
    end
