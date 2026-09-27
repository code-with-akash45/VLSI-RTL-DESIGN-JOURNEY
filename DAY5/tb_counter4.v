`timescale 1ns/1ps

module tb_counter4;

reg clk;
reg reset;

wire [3:0] count;

counter4 uut (
    .clk(clk),
    .reset(reset),
    .count(count)
);

initial begin
    clk = 0;

    forever #5 clk = ~clk;
end

initial begin

    $dumpfile("counter4.vcd");
    $dumpvars(0, tb_counter4);

    reset = 1;
    #12;

    reset = 0;
    #100;

    $finish;

end

endmodule