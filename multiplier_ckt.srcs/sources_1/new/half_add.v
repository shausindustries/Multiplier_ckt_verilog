`timescale 1ns / 1ps
module half_add(in1,in2,sum,carry);
input in1,in2;
output sum,carry;

xor x1(sum,in1,in2);
and a1(carry,in1,in2);
endmodule
