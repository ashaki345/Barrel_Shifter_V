`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/09/2021 02:51:41 PM
// Design Name: 
// Module Name: Top
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


module Top(
    input [15:0]A,
    input s3,s2,s1,s0,
    output [15:0]S 
    );
wire [15:0] SHOtemp;
wire [6:0] ringaround = {A[2], A[1], A[0], A[15], A[14], A[13], A[12]};
wire [15:0] moresigin1 = {SHOtemp[15], SHOtemp[11], SHOtemp[7], SHOtemp[3], SHOtemp[14], SHOtemp[10], SHOtemp[6], SHOtemp[2],
    SHOtemp[13], SHOtemp[9], SHOtemp[5], SHOtemp[1], SHOtemp[12], SHOtemp[8], SHOtemp[4], SHOtemp[0]};
wire [15:0] moresigin2 = {SHOtemp[3], SHOtemp[15], SHOtemp[11], SHOtemp[7], SHOtemp[2], SHOtemp[14], SHOtemp[10], SHOtemp[6],
    SHOtemp[1], SHOtemp[13], SHOtemp[9], SHOtemp[5], SHOtemp[0], SHOtemp[12], SHOtemp[8], SHOtemp[4]};     
wire [15:0] moresigin3 = {SHOtemp[7], SHOtemp[3], SHOtemp[15], SHOtemp[11], SHOtemp[6], SHOtemp[2], SHOtemp[14], SHOtemp[10],
    SHOtemp[5], SHOtemp[1], SHOtemp[13], SHOtemp[9], SHOtemp[4], SHOtemp[0], SHOtemp[12], SHOtemp[8]};
wire [15:0] moresigin4 = {SHOtemp[11], SHOtemp[7], SHOtemp[3], SHOtemp[15], SHOtemp[10], SHOtemp[6], SHOtemp[2], SHOtemp[14],
    SHOtemp[9], SHOtemp[5], SHOtemp[1], SHOtemp[13], SHOtemp[8], SHOtemp[4], SHOtemp[0], SHOtemp[12]};       
Four_Bit_Barrel_Shifter U1(.s1(s1) ,.s0(s0),.S(SHOtemp[3:0]), .A(A[6:0]));
Four_Bit_Barrel_Shifter U2(.s1(s1) ,.s0(s0),.S(SHOtemp[7:4]), .A(A[10:4]));
Four_Bit_Barrel_Shifter U3(.s1(s1) ,.s0(s0),.S(SHOtemp[11:8]), .A(A[14:8])); 
Four_Bit_Barrel_Shifter U4(.s1(s1) ,.s0(s0),.S(SHOtemp[15:12]), .A(ringaround));
Four_Bit_Barrel_Shifter_More_Sig U5(.s3(s3), .s2(s2), .S(S[3:0]), .A(moresigin1));
Four_Bit_Barrel_Shifter_More_Sig U6(.s3(s3), .s2(s2), .S(S[7:4]), .A(moresigin2));
Four_Bit_Barrel_Shifter_More_Sig U7(.s3(s3), .s2(s2), .S(S[11:8]), .A(moresigin3));
Four_Bit_Barrel_Shifter_More_Sig U8(.s3(s3), .s2(s2), .S(S[15:12]), .A(moresigin4));
endmodule
