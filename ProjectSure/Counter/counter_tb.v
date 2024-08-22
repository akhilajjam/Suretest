`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:36:12 08/22/2024
// Design Name:   counter
// Module Name:   /home/ise/counter/counter_tb.v
// Project Name:  counter
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: counter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module counter_tb;

	// Inputs
	reg clk;
	reg rst;

	// Outputs
	wire [3:0] upcounter;
	wire [3:0] downcounter;

	// Instantiate the Unit Under Test (UUT)
	counter uut (
		.clk(clk), 
		.rst(rst), 
		.upcounter(upcounter), 
		.downcounter(downcounter)
	);

	//initial begin
		// Initialize Inputs
		//clk = 0;
		//rst = 0;
		always #0.5 clk = ~clk;
		
		
		// Wait 100 ns for global reset to finish
		//#100;
        
		// Add stimulus here
	initial begin
		clk = 0;
		rst = 1;
		#1 rst = 0;
		
		#500;
	
	
	end
      
endmodule

