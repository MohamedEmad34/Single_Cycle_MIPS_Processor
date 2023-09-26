
module ALU_TB(

    );
    reg [31:0]A;
    reg [31:0]B;
    reg [2:0]ALUControl;
     wire [31:0]ALUResult;
    wire Zero;
    ALU alu(.A(A),.B(B),.ALUControl(ALUControl),.ALUResult(ALUResult),.Zero(Zero));
    initial
    begin
    A=32'h00001345;
    B=32'h0000c134;
    ALUControl=3'b000;
    #50
    ALUControl=3'b001;
    #50
    ALUControl=3'b010;
    #50
    ALUControl=3'b100;
    #50
    ALUControl=3'b101;
    #50
    ALUControl=3'b110;
    #50
    ALUControl=3'b111;
    end
endmodule
