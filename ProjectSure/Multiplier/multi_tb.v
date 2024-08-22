`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:28:31 08/22/2024
// Design Name:   multi
// Module Name:   /home/ise/multiplier/multi_tb.v
// Project Name:  multiplier
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: multi
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module multi_tb();
  reg [2:0] A, B;
  wire [5:0] P;
  
  multi dut(A,B,P);
  
  initial 
    begin
      
      A = 001; B = 011; #100;
      A = 101; B = 010; #100;
 	  A = 000; B = 110; #100;
      A = 011; B = 111; 
      
    end
endmodule

