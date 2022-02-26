`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/09/2021 01:50:43 PM
// Design Name: 
// Module Name: Four_Bit_Barrel_Shifter
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


module Four_Bit_Barrel_Shifter(
    input s1,s0,
    input [6:0]A,
    output [3:0]S
    );
    
    
MUX M0(.s1(s1), .s0(s0), .SOUT(S[0]), .A(A[0]), .B(A[1]), .C(A[2]), .D(A[3]));
MUX M1(.s1(s1), .s0(s0), .SOUT(S[1]), .A(A[1]), .B(A[2]), .C(A[3]), .D(A[4]));
MUX M2(.s1(s1), .s0(s0), .SOUT(S[2]), .A(A[2]), .B(A[3]), .C(A[4]), .D(A[5]));
MUX M3(.s1(s1), .s0(s0), .SOUT(S[3]), .A(A[3]), .B(A[4]), .C(A[5]), .D(A[6]));

endmodule
