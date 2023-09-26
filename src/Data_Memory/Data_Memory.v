module Data_Memory(
input clk,
input WE,//write enable
input [31:0]A,
WD,
output reg[31:0]RD,
output [15:0]test_value);
reg[31:0]memoryData[0:255];
always @(posedge clk)
begin
if(WE)
memoryData[A]<=WD;//synchronus write
end
always@(*)
begin
RD<=memoryData[A];//asynchronus read
end
assign test_value=memoryData[0][15:0];
endmodule
