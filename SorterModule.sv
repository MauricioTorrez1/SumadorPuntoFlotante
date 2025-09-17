`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.09.2025 14:42:08
// Design Name: 
// Module Name: SorterModule
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
// Assigns the number with the larger magnitude to big_number output
// and assignd the number with the smaller magnitude  to small_number output
module fp_sorter(
    input fp_t a,
    input fp_t b,
    output fp_t big_number,
    output fp_t small_number);

    assign big_number = ({a.exp, a.frac} >= {b.exp, b.frac})? a: b;
    assign small_number = ({a.exp, a.frac} < {b.exp, b.frac})? a: b;
endmodule
