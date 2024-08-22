`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:24:56 08/22/2024
// Design Name:   parity
// Module Name:   /home/ise/parity/parity_tb.v
// Project Name:  parity
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: parity
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module parity_tb;

	// Inputs
	reg [3:0] in;

	// Outputs
	wire out;

	// Instantiate the Unit Under Test (UUT)
	parity uut (
		.in(in), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		in = 0000;

		// Wait 100 ns for global reset to finish
		#10;
		
		in = 0001; #10;
		in = 0010; #10;
		in = 0011; #10;
		in = 0100; #10;
		in = 0101; #10;
		in = 0110; #10;
		in = 0111; #10;
		in = 1000; #10;
		in = 1001; #10;
		in = 1010; #10;
		in = 1011; #10;
		in = 1100; #10;
		in = 1101; #10;
		in = 1110; #10;
		in = 1111; #10;
        
		// Add stimulus here

	end
      
endmodule

