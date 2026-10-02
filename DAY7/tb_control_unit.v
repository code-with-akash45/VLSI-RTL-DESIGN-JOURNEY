`timescale 1ns/1ps

module tb_control_unit;

reg clk;
reg reset;
reg enable;
reg up_down;

wire [3:0] count;
wire status;

control_unit uut (
    .clk(clk),
    .reset(reset),
    .enable(enable),
    .up_down(up_down),
    .count(count),
    .status(status)
);


// Clock generation
initial begin
    clk = 0;
    forever #5 clk = ~clk;
end


// Test sequence
initial begin

    $dumpfile("control_unit.vcd");
    $dumpvars(0, tb_control_unit);

    // Initial reset
    reset = 1;
    enable = 0;
    up_down = 1;

    #12;

    // Start counting upward
    reset = 0;
    enable = 1;
    up_down = 1;

    #180;

    // Stop
    enable = 0;

    #20;

    $finish;

end

endmodule