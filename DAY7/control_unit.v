module control_unit (
    input clk,
    input reset,
    input enable,
    input up_down,
    output reg [3:0] count,
    output reg status
);

reg [1:0] state;
reg [1:0] next_state;

localparam IDLE  = 2'b00;
localparam COUNT = 2'b01;
localparam DONE  = 2'b10;


// State Register
always @(posedge clk) begin

    if (reset)
        state <= IDLE;
    else
        state <= next_state;

end


// Next-State Logic
always @(*) begin

    next_state = state;

    case (state)

        IDLE: begin

            if (enable)
                next_state = COUNT;

        end

        COUNT: begin

            if (up_down && count == 4'b1111)
                next_state = DONE;

            else if (!up_down && count == 4'b0000)
                next_state = DONE;

        end

        DONE: begin

            if (!enable)
                next_state = IDLE;

        end

        default:
            next_state = IDLE;

    endcase

end


// Counter
always @(posedge clk) begin

    if (reset)
        count <= 4'b0000;

    else if (state == COUNT) begin

        if (up_down)
            count <= count + 1'b1;
        else
            count <= count - 1'b1;

    end

end


// Output Logic
always @(*) begin

    status = 1'b0;

    if (state == DONE)
        status = 1'b1;

end

endmodule