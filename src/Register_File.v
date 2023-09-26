module Register_File(
input clk,
WE3,//write enable
input [4:0]A1,
A2,A3,
input [31:0]WD3,
output reg[31:0] RD1,RD2
    );
    reg[31:0]memreg[31:0];
    
    always@(posedge clk)
    begin
    if(WE3)
   begin
    memreg[A3]<=WD3;//synchronus write
    memreg[0]<=32'b0;//always keep reg $0 equal to zero
    end
    end
    always@(*)
    begin
    RD1=memreg[A1];//asynchronus read for rd1
    RD2=memreg[A2];//asynchronus read for rd2
    end
endmodule
