`timescale 1ns/1ps

module tb_mux2x1;

reg a;
reg b;
reg s;

wire y;

mux2x1 uut (
    .a(a),
    .b(b),
    .s(s),
    .y(y)
);

initial begin

    $dumpfile("mux2x1.vcd");
    $dumpvars(0, tb_mux2x1);

    a = 0; b = 0; s = 0;
    #10;

    a = 1; b = 0; s = 0;
    #10;

    a = 0; b = 1; s = 1;
    #10;

    a = 1; b = 0; s = 1;
    #10;

    $finish;

end

endmodule