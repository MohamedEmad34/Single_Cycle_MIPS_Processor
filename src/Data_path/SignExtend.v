module SignExtend(
input [15:0]inp,
output [31:0]extendOutput
    );
    assign extendOutput={{16{inp[15]}},inp};
endmodule
