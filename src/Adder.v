module Adder(

input [31:0]inp1,
input [31:0]inp2,
output reg[31:0]out

    );
    always @(*)
    begin
    out =inp1+inp2;
    end
endmodule
