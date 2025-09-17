`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.09.2025 19:55:32
// Design Name: 
// Module Name: NormalizationModule
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
// normalizes an unnnormalized floating point with carry out signal
import FloatingPointPkg::fp_t;
module NormalizationModule(
    input logic carry_out,
    input fp_t unnormalized,
    output fp_t normalized  
    );

    logic [2:0] lead_zeros;
    // leading zeros not incluiding the carry out
    CounterZeros lead_zeros_unit(.number(unnormalized.frac),.lead0s(lead_zeros));

    always_comb
    begin
        if(carry_out) // with carry out, shift frac to the right
            begin
                normalized.exp = unnormalized.exp + 1;
                normalized.frac = {1'b1, unnormalized.frac[7:1]};
            end else if(lead_zeros > unnormalized.exp)
            begin
                normalized.exp = 0; // set to zero
                normalized.frac = 0;
            end else
            begin
                normalized.exp = unnormalized.exp - lead_zeros;
                normalized.frac = unnormalized.frac << lead_zeros; // shift significand accoding to leading 0
            end
        normalized.sign = unnormalized.sign;
    end
endmodule
