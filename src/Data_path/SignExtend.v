module SignExtend(
input [15:0]inp,
output [31:0]extendOutput
    );
    assign extendOutput={{16{extendOutput[15]}},inp};
endmodule
