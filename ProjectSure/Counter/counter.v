`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:07:59 08/22/2024 
// Design Name: 
// Module Name:    counter 
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
module counter(
    input clk,
    input rst,
    output reg [3:0] upcounter,
    output reg [3:0] downcounter
    );
	 initial
	 begin
	 upcounter = 4'b0000;
	 downcounter = 4'b1111;
	 end
	 
	 always @(posedge clk)
	 begin
	 if (rst == 1)
	 begin
	 upcounter <= 4'b0000;
	 end
	 else 
	 begin
	 upcounter <= upcounter + 1;
	 end
	 if(upcounter == 4'b1100)
	 begin
	 downcounter <= downcounter - 1;
	 end
	 end
	 endmodule
