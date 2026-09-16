`timescale 1ns/1ps 

module tb_rca_4bit;
   //Input are declared as reg (to drive values)
   reg[3:0] A;
   reg[3:0] B;
   reg Cin;

   //Unit under Test (UUT) Instance 
   rca_4bit uut (
     .A(A), .B(B), .Cin(Cin), .Sum(Sum), .Cout(Cout)
   );

   //Loop Indices 
   integer i,j;

   initial begin 
     //Carry-in baseline setting
     Cin=0;

     //Nested loops to generate 256 total test cases
     for (i=0; i<16; i=i+1) begin
      for (j=0;j<16; j=j+1) begin
        A=i;
        B=j;
        #10;

        if ({Cout,Sum} !==(A+B+Cin)) begin
          $display("FAIL:A=%d,B=%d | Expected =%d, A,B,(A+B+Cin),{Cout,Sum}");
        end
      end
     end

     $display("Exhaustive verification of 256 combinations successfully completed");
     $finish
   end

endmodule
      