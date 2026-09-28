module traffic_light (
    input clk,
    input reset,
    output reg red,
    output reg green,
    output reg yellow
);

reg [1:0] state;
reg [1:0] next_state;

localparam RED    = 2'b00;
localparam GREEN  = 2'b01;
localparam YELLOW = 2'b10;