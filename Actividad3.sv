`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.09.2025 20:11:33
// Design Name: 
// Module Name: Actividad3
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
module Actividad3(
// binary floating point adder
    input fp_t a,
    input fp_t b,
    output fp_t result
);
    fp_t bign;  // big operand in absolute magnitude after sorting
    fp_t smalln; // small operand in absolute magnitude after sorting
    fp_t small_aligned; // small operand aligned whith the big one, same exponents
    logic [8:0] sum;  // sum of the two aligned significands with carry out
    fp_t unnormalized; // result before normalization

    // circuit for reordering the inputs
    fp_sorter sort(.a(a), .b(b), .big_number(bign), .small_number(smalln));
    // circuit for aligning the smallest number
    AlignModule align(.aligned(small_aligned), .bign(bign), .smalln(smalln));
    // circuit for add/substract the significands
    SignificandsOperation sum_significands(.sum(sum), .bign(bign), .smalln(small_aligned));
    // circuit for normalizing the output
    NormalizationModule normalize(.carry_out(sum[8]), .unnormalized(unnormalized), .normalized(result));
    
    // connect addition/substraction result with the normalizer
    assign unnormalized = '{bign.sign, bign.exp, sum[7:0]};

endmodule