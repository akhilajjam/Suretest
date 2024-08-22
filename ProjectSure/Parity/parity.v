`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:16:36 08/22/2024 
// Design Name: 
// Module Name:    parity 
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
module parity(
input [3:0] in,
output reg out
    );
always@(*)
begin
out = ~(in[0]^in[1]^in[2]^in[3]);
end

endmodule
