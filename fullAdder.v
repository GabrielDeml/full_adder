`include "halfAdder.v"
module fullAdder(
    input in1_1, in1_2, in1_3, in1_4, in1_5, in1_6, in1_7, in1_8,
    input in2_1, in2_2, in2_3, in2_4, in2_5, in2_6, in2_7, in2_8,
    output Sum1, Sum2, Sum3, Sum4, Sum5, Sum6, Sum7, Sum8,
    output carry1, carry2, carry3, carry4, carry5, carry6, carry7, carry8
);
// wire carry1, carry2, carry3, carry4, carry5, carry6, carry7, carry8;

halfAdder halfAdder1(in1_1, in2_1, 1'b0, Sum1, carry1);
halfAdder halfAdder2(in1_2, in2_2, carry1, Sum2, carry2);
halfAdder halfAdder3(in1_3, in2_3, carry2, Sum3, carry3);
halfAdder halfAdder4(in1_4, in2_4, carry3, Sum4, carry4);
halfAdder halfAdder5(in1_5, in2_5, carry4, Sum5, carry5);
halfAdder halfAdder6(in1_6, in2_6, carry5, Sum6, carry6);
halfAdder halfAdder7(in1_7, in2_7, carry6, Sum7, carry7);
halfAdder halfAdder8(in1_8, in2_8, carry7, Sum8, carry8);
endmodule
