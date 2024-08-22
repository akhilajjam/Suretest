`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:46:00 08/22/2024 
// Design Name: 
// Module Name:    moore 
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
module moore(
	 input clk, reset,din,
    output reg dout,
    output reg [2:0] state
    );
	 
parameter S0 = 3'b000,
S1 = 3'b001,
S2 = 3'b010,
S3 = 3'b011,
S4 = 3'b100;

always @(posedge clk or posedge reset) 
begin
    if (reset)
	 begin 
        dout <= 1'b0; 
        state <= S0; 
    end
    else 
begin 
        case (state) 
            S0: begin
                dout <= 1'b0;
                if (din) 
                    state <= S1;
                else
                    state <= S0;
            end
				S1: begin
                dout <= 1'b0;
                if (din) 
                    state <= S2;
                else
                    state <= S0;
            end
            
            S2: begin
                dout <= 1'b0;
                if (din) 
                    state <= S2;
                else
                    state <= S3;
            end
				
				 S3: begin
                dout <= 1'b0;
                if (din) 
                    state <= S4;
                else
                    state <= S0;
            end
            
            S4: begin
                dout <= 1'b1;
					 if (din) 
                    state <= S1; 
                else
                    state <= S0;
            end
            
            default: begin
                state <= S0;
            end
        endcase 
    end 
end
				

endmodule
