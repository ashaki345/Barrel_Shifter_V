`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/09/2021 01:44:14 PM
// Design Name: 
// Module Name: MUX
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


module MUX(
    input A,B,C,D,s0,s1,
    output reg SOUT

    );
    
always@(s0 or s1 or A or B or C or D)begin
    case({s1, s0})
        2'b00: SOUT = A;
        2'b01: SOUT = B;
        2'b10: SOUT = C;
        2'b11: SOUT = D;
     endcase
     end
endmodule
