module Control_Unit_tb(

    );
    reg Zero;
    reg [5:0]opcode,funct;
    wire MemtoReg1
    ,MemWrite1,Branch1,ALUSrc1,RegDst1,RegWrite1,jump1,PCSrc;
     wire [2:0] ALUCtrl;
     ControlUnit controlunit(.Zero(Zero),.opcode(opcode),.funct(funct),
     .MemtoReg1(MemtoReg1),.MemWrite1(MemWrite1),.Branch1(Branch1),.ALUSrc1(ALUSrc1),
     .RegDst1(RegDst1),.RegWrite1(RegWrite1),.jump1(jump1),.PCSrc(PCSrc),.ALUCtrl(ALUCtrl));
     initial
      begin 
      opcode=6'b10_0011;
      Zero=1;
      #40
      opcode=6'b10_1011;
      #50
      opcode=6'b00_0000;
      funct=6'b10_0000;
      #40
      funct=6'b10_0010;
      #40
      funct=6'b10_1010;
      #40
      funct=6'b01_1100;
      #50
      opcode=6'b00_1000;
      #40
      opcode=6'b00_0100;
      #50
      opcode=6'b00_0010;
      #60
      opcode=6'bxxxxxx;
      #40
      $stop;
