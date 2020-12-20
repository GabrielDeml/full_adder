module halfAdder(
    input in1, in2, carryIn;
    output sum, carryOut;
);

assign num1 = in1 ^ in2;
assign sum = num1 ^ carryIn;
assign and1 = num1 & carryIn;
assign and2 = in1 & in2;
assign carryOut = and1 | and2;
endmodule