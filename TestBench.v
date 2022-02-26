`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/09/2021 03:05:26 PM
// Design Name: 
// Module Name: Top_Sim
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


module TestBench();
reg s3, s2, s1, s0;
reg [15:0]A;
wire [15:0]S;
Top U2(.s1(s1) ,.s0(s0), .s2(s2), .s3(s3), .S(S[15:0]), .A(A[15:0]));
initial begin 
A = 16'b0;
s0 = 0; s1 = 0; s2 = 0; s3 = 0;
#10
#10
A[6] = 1;
#10
s0 = 1; s1 = 0; s2 = 0; s3 = 0;
#10
s0 = 0; s1 = 1; s2 = 0; s3 = 0;
#10
s0 = 1; s1 = 1; s2 = 0; s3 = 0;
#10
s0 = 0; s1 = 0; s2 = 1; s3 = 0;
#10
s0 = 1; s1 = 0; s2 = 1; s3 = 0;
#10
s0 = 0; s1 = 1; s2 = 1; s3 = 0;
#10
s0 = 1; s1 = 1; s2 = 1; s3 = 0;
#10
s0 = 0; s1 = 0; s2 = 0; s3 = 1;
#10
s0 = 1; s1 = 0; s2 = 0; s3 = 1;
#10
s0 = 0; s1 = 1; s2 = 0; s3 = 1;
#10
s0 = 1; s1 = 1; s2 = 0; s3 = 1;
#10
s0 = 0; s1 = 0; s2 = 1; s3 = 1;
#10
s0 = 1; s1 = 0; s2 = 1; s3 = 1;
#10
s0 = 0; s1 = 1; s2 = 1; s3 = 1;
#10
s0 = 1; s1 = 1; s2 = 1; s3 = 1;
end
endmodule
