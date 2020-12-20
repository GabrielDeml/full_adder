module fullAdder(
    input in1_1, in1_2, in1_3, in1_4, in1_5, in1_6, in1_7, in1_8;
    input in2_1, in2_2, in2_3, in2_4, in2_5, in2_6, in2_7, in2_8;
    output num1, num2, num3, num4, num5, num6, num7, num8;
);

assign num1 = in1 ^ in2;
assign carry1 = in1 & in2;
assign num2 = in3 ^ carry1;
assign carry2 = in3 & carry1;

// assign num3 = in4 ^ carry2;
endmodule
