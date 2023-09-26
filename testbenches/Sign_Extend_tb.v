module Sign_Extend_tb(

    );
    reg [15:0]inp;
    wire [31:0]extendOutput;
    SignExtend se(.inp(inp),.extendOutput(extendOutput));
    initial
    begin
    inp=16'b1101000100011100;
    #30
    inp=16'b0100111000101010;
    #50
    inp=16'b1001001001001001;
    
    end
endmodule
