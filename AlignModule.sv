`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.09.2025 19:20:45
// Design Name: 
// Module Name: AlignModule
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


import FloatingPointPkg::fp_t;

module AlignModule(
    input fp_t bign,
    input fp_t smalln,
    output fp_t aligned 
    );
    
    logic [3:0] exp_diff;
    always_comb
    begin
        exp_diff = bign.exp - smalln.exp;
        aligned.frac = smalln.frac >> exp_diff;
        aligned.exp = bign.exp;
        aligned.sign = smalln.sign;        
    end
endmodule