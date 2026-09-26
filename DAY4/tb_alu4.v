`timescale 1ns/1ps

module tb_alu4;

reg [3:0] a;
reg [3:0] b;
reg [2:0] op;

wire [3:0] result;

alu4 uut (
    .a(a),
    .b(b),
    .op(op),
    .result(result)
);

initial begin

    $dumpfile("alu4.vcd");
    $dumpvars(0, tb_alu4);

    // ADD
    a = 4'd5;
    b = 4'd3;
    op = 3'b000;
    #10;

    // SUB
    a = 4'd8;
    b = 4'd3;
    op = 3'b001;
    #10;

    // AND
    a = 4'b1100;
    b = 4'b1010;
    op = 3'b010;
    #10;

    // OR
    a = 4'b1100;
    b = 4'b1010;
    op = 3'b011;
    #10;

    // XOR
    a = 4'b1100;
    b = 4'b1010;
    op = 3'b100;
    #10;

    $finish;

end

endmodule