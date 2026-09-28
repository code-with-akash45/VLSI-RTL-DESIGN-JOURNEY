`timescale 1ns/1ps

module tb_traffic_light;

reg clk;
reg reset;

wire red;
wire green;
wire yellow;

traffic_light uut (
    .clk(clk),
    .reset(reset),
    .red(red),
    .green(green),
    .yellow(yellow)
);


// Clock
initial begin
    clk = 0;
    forever #5 clk = ~clk;
end


// Test
initial begin

    $dumpfile("traffic_light.vcd");
    $dumpvars(0, tb_traffic_light);

    reset = 1;
    #12;

    reset = 0;

    #50;

    $finish;

end

endmodule