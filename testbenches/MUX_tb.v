module MUX_tb(
 

    );
        
reg [31:0]inp1,inp2;
reg sel;
    wire [31:0]out;
    MUX #(.N(32))mux(.inp1(inp1),.inp2(inp2),.sel(sel),.out(out));
    initial 
    begin
    inp1=32'hACD1;
    inp2=32'hCD12;
    sel=1'b0;
    #30
    sel=1'b1;
    #40
    sel=1'b0;
    end
    
endmodule
