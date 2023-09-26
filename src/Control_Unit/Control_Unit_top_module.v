module ControlUnit(
input Zero,
input [5:0]opcode,funct,
output MemtoReg1
,MemWrite1,Branch1,ALUSrc1,RegDst1,RegWrite1,jump1,PCSrc,
 output [2:0] ALUCtrl
 );

wire [1:0]ALUOp;
mainControl cntrl(opcode,MemtoReg1,MemWrite1,Branch1,
ALUSrc1,RegDst1,RegWrite1,jump1,ALUOp );
ALUControl aluControl( ALUOp,funct,ALUCtrl);
assign PCSrc=Branch1&Zero;

endmodule
