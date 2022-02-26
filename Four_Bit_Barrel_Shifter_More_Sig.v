`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/09/2021 05:35:31 PM
// Design Name: 
// Module Name: Four_Bit_Barrel_Shifter_More_Sig
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


module Four_Bit_Barrel_Shifter_More_Sig(
    input s3,s2,
    input [15:0]A,
    output [3:0]S
    );
    
MUX M0(.s1(s3), .s0(s2), .SOUT(S[0]), .A(A[0]), .B(A[1]), .C(A[2]), .D(A[3]));
MUX M1(.s1(s3), .s0(s2), .SOUT(S[1]), .A(A[4]), .B(A[5]), .C(A[6]), .D(A[7]));
MUX M2(.s1(s3), .s0(s2), .SOUT(S[2]), .A(A[8]), .B(A[9]), .C(A[10]), .D(A[11]));
MUX M3(.s1(s3), .s0(s2), .SOUT(S[3]), .A(A[12]), .B(A[13]), .C(A[14]), .D(A[15]));

endmodule
