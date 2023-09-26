module ProgramCounter(
input [31:0]in,
input clk,
input areset,
output reg[31:0] out

    );
    always @(posedge clk or negedge areset)
    begin
    if(!areset)
    out<=0;
    else
    out<=in+4;
    end
endmodule
