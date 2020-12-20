// Two-input and gate test bench
`timescale 1s/100ms
`include "halfAdder.v"

module adder_tb();
reg in1; 
reg in2;
reg carryIn;
wire sum;
wire carryOut;

halfAdder halfAdder(in1, in2, carryIn, sum, carryOut);
initial
begin
    $monitor("in1=%b", "b=%b", "y=%b", "x=%b",in1, in2, carryIn);
    $dumpfile("adder.vcd");
    $dumpvars(0, adder_tb);
    in1 = 0; in2 = 0; carryIn = 0; #10;
    in1 = 0; in2 = 0; carryIn = 1; #10;
    in1 = 0; in2 = 1; carryIn = 0; #10;
    in1 = 1; in2 = 0; carryIn = 1; #10;
    in1 = 1; in2 = 0; carryIn = 0; #10;
    in1 = 1; in2 = 1; carryIn = 1; #10;
    $finish;
end
endmodule
