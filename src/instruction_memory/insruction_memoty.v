module instruction_memory(
input [31:0]A,
output reg[31:0]RD

    );
    reg [31:0]mem[255:0];
    always @(*)
    begin
    RD=mem[A];
    end
endmodule
