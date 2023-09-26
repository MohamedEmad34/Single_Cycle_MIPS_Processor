module Shift_left_twice_tb(
    );
   reg[7:0]SignImm;
     wire[7:0]shiftOut;
     Shift_left_twice sl(.SignImm(SignImm),.shiftOut(shiftOut));
     initial begin
     SignImm=8'b00000011;
     #30
     SignImm=8'b00000001;
     #40
     SignImm=8'b00000111;
     #50
     $stop;
     end
