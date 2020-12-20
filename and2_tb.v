// Two-input and gate test bench
`timescale 1s/100ms
`include "fullAdder.v"

module and2_tb();
reg in1; 
reg in2;
reg in3;
wire num1;
wire carry1;
wire num2;
wire carry2;

and2 iand2(in1, in2, in3, num1, carry1, num2, carry2);
initial
begin
    $monitor("in1=%b", "b=%b", "y=%b", "x=%b",in1, in2, in3, num1, carry1, num2, carry2);
    $dumpfile("and.vcd");
    $dumpvars(0, and2_tb);
    in1 = 0; in2 = 0; in3 = 0; #10;
    in1 = 0; in2 = 0; in3 = 1; #10;
    in1 = 0; in2 = 1; in3 = 0; #10;
    in1 = 1; in2 = 0; in3 = 1; #10;
    in1 = 1; in2 = 0; in3 = 0; #10;
    in1 = 1; in2 = 1; in3 = 1; #10;
    $finish;
end
endmodule
