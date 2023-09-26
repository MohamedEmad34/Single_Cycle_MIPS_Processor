`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/23/2023 08:47:55 AM
// Design Name: 
// Module Name: ALU
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


module ALU(
input [31:0]A,
input [31:0]B,
input [2:0]ALUControl,
output reg [31:0]ALUResult,
output Zero

    );
    always@(*)
    begin
    case(ALUControl)
    3'b000:ALUResult=A&B;
    3'b001:ALUResult=A|B;
    3'b010:ALUResult=A+B;
    3'b100:ALUResult=A-B;
    3'b101:ALUResult=A*B;
    3'b110:ALUResult=(A<B);
    default:ALUResult=32'd0;
    endcase
    end
    assign Zero=~|ALUResult;
endmodule
