`timescale 1ns/1ps

module tb_mux8x1;

    // Inputs are registers
    reg [7:0] d;
    reg [2:0] s;
    
    // Output is a wire
    wire y;

    // Instantiate the 8:1 MUX
    mux8x1 uut (
        .d(d),
        .s(s),
        .y(y)
    );

    initial begin
        // Generate the VCD file for GTKWave
        $dumpfile("mux8x1.vcd");
        $dumpvars(0, tb_mux8x1);

        // Set a fixed pattern for the data inputs: 10101010
        // d[7]=1, d[6]=0, d[5]=1, d[4]=0, d[3]=1, d[2]=0, d[1]=1, d[0]=0
        d = 8'b10101010; 
        
        // Test all select line combinations
        s = 3'b000; #10; // Should output d[0] (0)
        s = 3'b001; #10; // Should output d[1] (1)
        s = 3'b010; #10; // Should output d[2] (0)
        s = 3'b011; #10; // Should output d[3] (1)
        s = 3'b100; #10; // Should output d[4] (0)
        s = 3'b101; #10; // Should output d[5] (1)
        s = 3'b110; #10; // Should output d[6] (0)
        s = 3'b111; #10; // Should output d[7] (1)

        $finish;
    end

endmodule