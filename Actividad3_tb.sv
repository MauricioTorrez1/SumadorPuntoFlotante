`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.09.2025 20:30:01
// Design Name: 
// Module Name: Actividad3_tb
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
module Actividad3_tb;
    fp_t a;
    fp_t b;
    fp_t c;

     Actividad3 uut(.a(a), .b(b), .result(c));
    

    initial
    begin  
        a ='{1'b0, 4'b0001, 8'b1000_0000};   b ='{1'b0, 4'b0001, 8'b1000_0000}; #10; 
        a ='{1'b0, 4'b0111, 8'b1000_0000};   b ='{1'b0, 4'b0001, 8'b1000_0000}; #10; 
        a ='{1'b0, 4'b0011, 8'b1010_0000};   b ='{1'b0, 4'b0010, 8'b1001_0000}; #10; //  0.160 * 2 ^ 3 + 0.144 * 2 ^ 2 = 1.28 + 0.576 = 1,856
                                                                                     // 0,0011,11101000 = 0.232 * 2 ^ 3 =  1.856
        a ='{1'b0, 4'b0000, 8'b1000_0000};   b ='{1'b0, 4'b0001, 8'b1000_0000}; #10;
        a ='{1'b0, 4'b0000, 8'b1000_0000};   b ='{1'b1, 4'b0001, 8'b1111_0000}; #10;
        a ='{1'b0, 4'b0001, 8'b1111_0000};   b ='{1'b0, 4'b0011, 8'b1111_1111}; #10;
        $stop;
    end

endmodule
