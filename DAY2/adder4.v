`timescale 1ns/1ps

module adder4 (
    input [3:0] a,
    input [3:0] b,
    input cin,
    output [3:0] sum,
    output cout
);

    // Concatenate cout and sum to handle the 5-bit addition result
    assign {cout, sum} = a + b + cin;

endmodule