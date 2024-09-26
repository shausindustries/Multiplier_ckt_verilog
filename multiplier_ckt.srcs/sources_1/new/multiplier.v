`timescale 1ns / 1ps
module multiplier(a0, a1, a2, a3, b0, b1, b2, b3, s0, s1, s2, s3, s4, s5, s6, s7, carry_out);
input a0, a1, a2, a3, b0, b1, b2, b3;
output s0, s1, s2, s3, s4, s5, s6, s7, carry_out;
wire t1, t2, t3, t4, t5, t6, t7, t8, t9, t10, t11, t12, t13, t14, t15, h1, hc, fs, fc, tc1, tc2, tc3, tc4, tc5, tc6;

and g0(s0, a0, b0);
and g1(t1, a1, b0);
and g2(t2, a2, b0);
and g3(t3, a3, b0);
and g4(t4, a0, b1);
and g5(t5, a1, b1);
and g6(t6, a2, b1);
and g7(t7, a3, b1);
and g8(t8, a0, b2);
and g9(t9, a1, b2);
and g10(t10, a2, b2);
and g11(t11, a3, b2);
and g12(t12, a0, b3);
and g13(t13, a1, b3);
and g14(t14, a2, b3);
and g15(t15, a3, b3);

half_add ha1(.in1(t1), .in2(t4), .sum(s1), .carry(tc1));
full_adder fa1(.a(t2), .b(t5), .cin(tc1), .s(h1), .cout(hc));
full_adder fa2(.a(t3), .b(t6), .cin(hc), .s(s2), .cout(tc2));
half_add ha2(.in1(t7), .in2(t8), .sum(s3), .carry(tc3));
full_adder fa3(.a(t9), .b(t10), .cin(tc2), .s(fs), .cout(tc4));
full_adder fa4(.a(t11), .b(t12), .cin(tc4), .s(s4), .cout(fc));
full_adder fa5(.a(h1), .b(tc3), .cin(fs), .s(s5), .cout(tc5));
full_adder fa6(.a(t13), .b(t14), .cin(fc), .s(s6), .cout(tc6));
half_add ha3(.in1(t15), .in2(tc6), .sum(s7), .carry(carry_out));

endmodule