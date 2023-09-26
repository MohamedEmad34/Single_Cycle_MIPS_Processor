module MUX #(parameter N=32)(
input [N-1:0]inp1,
inp2,input sel,
output [N-1:0]out
    );
    assign out = sel?inp2:inp1;
    
    
    
endmodule
