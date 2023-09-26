timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/23/2023 02:42:20 PM
// Design Name: 
// Module Name: Shift_left_twice
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Shift_left_twice #(parameter N=32)(
input [N-1:0]SignImm,
output [N-1:0]shiftOut

    );
    assign shiftOut=SignImm<<2;
    
endmodule
