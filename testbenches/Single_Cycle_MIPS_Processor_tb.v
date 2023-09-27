module Single_Cycle_MIPS_Processor_tb(

    );
    reg clk,
     areset;
    wire [15:0]test_value;
    wire [31:0]pc_out;
    wire [31:0]instr;
        wire jump;

    Single_Cycle_MIPS_Processor Si(.jump(jump),.instr(instr),.clk(clk),.areset(areset),.test_value(test_value),.pc_out(pc_out));
    always #10 clk=!clk;
    initial
    begin
    clk=1;
    areset=0;
    #20
    areset=1;
    #800
    $stop;
    
    end
endmodule
