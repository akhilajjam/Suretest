`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:01:42 08/22/2024
// Design Name:   moore
// Module Name:   /home/ise/moore/moore_tb.v
// Project Name:  moore
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: moore
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module moore_tb;

	// Inputs
	reg clk;
	reg reset;
	reg din;

	// Outputs
	wire dout;
	wire [2:0] state;

	reg [15:0] sequence;
	integer i;
	// Instantiate the Unit Under Test (UUT)
	moore uut (
		.clk(clk), 
		.reset(reset), 
		.din(din), 
		.dout(dout), 
		.state(state)
	);

	initial begin
		// Initialize Inputs
		 reset = 1;
		 sequence = 16'b1101101101101101;
		 #5 reset = 0;
		 for (i = 0; i <= 15; i = i + 1) begin
        din = sequence[i]; 
        #2 clk = 1;  
        #2 clk = 0;
		 end 		  

	end
      
endmodule

