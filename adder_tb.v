// Two-input and gate test bench
`timescale 1s/100ms
`include "fullAdder.v"

module adder_tb();
reg in1_1, in1_2, in1_3, in1_4, in1_5, in1_6, in1_7, in1_8;
reg in2_1, in2_2, in2_3, in2_4, in2_5, in2_6, in2_7, in2_8;
wire Sum1, Sum2, Sum3, Sum4, Sum5, Sum6, Sum7, Sum8;

fullAdder fullAdder(in1_1, in1_2, in1_3, in1_4, in1_5, in1_6, in1_7, in1_8, 
in2_1, in2_2, in2_3, in2_4, in2_5, in2_6, in2_7, in2_8,
Sum1, Sum2, Sum3, Sum4, Sum5, Sum6, Sum7, Sum8,
carry1, carry2, carry3, carry4, carry5, carry6, carry7, carry8
);
initial
begin
    // $monitor("in1=%b", "b=%b", "y=%b", "x=%b",in1, in2, carryIn);
    $dumpfile("adder.vcd");
    $dumpvars(0, adder_tb);
    in1_1 = 1; in1_2 = 0; in1_3 = 0; in1_4 = 0; in1_5 = 0; in1_6 =0; in1_7 = 0; in1_8 = 0; in2_1 = 1; in2_2 = 0; in2_3 = 0; in2_4 = 0; in2_5 = 0; in2_6 = 0; in2_7 = 0; in2_8 = 0; #1;
    in1_1 = 0; in1_2 = 0; in1_3 = 1; in1_4 = 0; in1_5 = 0; in1_6 =0; in1_7 = 1; in1_8 = 0; in2_1 = 1; in2_2 = 0; in2_3 = 1; in2_4 = 0; in2_5 = 0; in2_6 = 0; in2_7 = 0; in2_8 = 0; #1;
    $finish;
end
endmodule
