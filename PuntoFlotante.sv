`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.09.2025 14:28:35
// Design Name: 
// Module Name: PuntoFlotante
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


package FloatingPointPkg;

// 13-bit floating point
// 1-bit sign, s: which indicates the sign of the number (1'b1 for negative)
// 4-bit exponent field, e: which represents the exponent
// 8-bit significant field, f: which represents the significand or the fraction
typedef struct packed {
    logic sign;
    logic [3:0] exp;
    logic [7:0] frac;
} fp_t;

endpackage: FloatingPointPkg
