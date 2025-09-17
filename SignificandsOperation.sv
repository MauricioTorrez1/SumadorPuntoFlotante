`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.09.2025 19:29:34
// Design Name: 
// Module Name: SignificandsOperation
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

// This module adds or substracts the significands of two aligned numbers, same exponent
// assumes the number are ordered big then small
module SignificandsOperation (
    input fp_t bign,
    input fp_t smalln,
    output logic [8:0] sum);
    
    assign sum = (bign.sign == smalln.sign) ?
     {1'b0, bign.frac} + {1'b0, smalln.frac}
     : {1'b0, bign.frac} - {1'b0, smalln.frac};
    
endmodule