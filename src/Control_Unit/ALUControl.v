module ALUControl(
input [1:0]ALUOp,
input [5:0]Funct,
output reg [2:0] ALUCtrl
    );
    always @(*)
    begin
    if(ALUOp==2'b00)
    ALUCtrl=3'b010;
    else if(ALUOp==2'b01)
    ALUCtrl=3'b100;
    else if(ALUOp==2'b10)
    begin
    case(Funct)
    6'b100000:ALUCtrl=3'b010;
    6'b100010:ALUCtrl=3'b100;
    6'b101010:ALUCtrl=3'b110;
    6'b011100:ALUCtrl=3'b101;
    endcase
    end
    else
    ALUCtrl=3'b010;   
    end
endmodule
