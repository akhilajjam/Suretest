`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:56:17 08/22/2024 
// Design Name: 
// Module Name:    multi 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////

module multi(
    input [2:0] A, B,
    output [5:0] P);
    
    wire b0, b1, b2;
    wire a0, a1, a2;
    wire s0, s1, s2;
    wire c1, c2, c3;

    assign P[0] = A[0] & B[0];
    assign b0 = A[1] & B[0];
    assign b1 = A[2] & B[0];
	 
	 assign a0 = A[0] & B[1];
    assign a1 = A[1] & B[1];
    assign a2 = A[2] & B[1];

    assign b2 = A[0] & B[2];
    assign c1 = A[1] & B[2];
    assign c2 = A[2] & B[2];

    assign {c3, s0} = b0 + a0;
    assign {c1, s1} = b1 + a1 + c3;
    assign {c2, s2} = a2 + c1;
	 
	
    assign P[1] = s0;
    assign {P[4], P[2]} = s1 + b2;
    assign {P[5], P[3]} = s2 + c2;

endmodule