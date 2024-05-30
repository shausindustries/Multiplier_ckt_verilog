`timescale 1ns / 1ps

module multiplier(a1,a2,a3,b1,b2,b3,s1,s2,s3,s4,s5,carry_out);
input a1,a2,a3,b1,b2,b3;
output s1,s2,s3,s4,s5,carry_out;
wire t1,t2,t3,t4,t5,t6,t7,t8,h1,hc,fs,fc,tc1,tc2,tc3,tc4;

and g6(s1,a3,b3);
and g7(t1,a2,b3);
and g8(t2,a1,b3);
and g9(t3,a3,b2);
and g10(t4,a2,b2);
and g11(t5,a1,b2);
and g12(t6,a3,b1);
and g13(t7,a2,b1);
and g14(t8,a1,b1);

half_add ha1(.in1(t1),.in2(t3),.sum(s2),.carry(tc1));
half_add ha2(.in1(t2),.in2(tc1),.sum(h1),.carry(hc));
full_adder fa1(.a(t4),.b(t6),.cin(fc),.s(fs),.cout(tc3));
full_adder fa2(.a(h1),.b(hc),.cin(fs),.s(s3),.cout(fc));
full_adder fa3(.a(t5),.b(t7),.cin(tc3),.s(s4),.cout(tc4));
half_add ha3(.in1(t8),.in2(tc4),.sum(s5),.carry(carry_out));
endmodule
