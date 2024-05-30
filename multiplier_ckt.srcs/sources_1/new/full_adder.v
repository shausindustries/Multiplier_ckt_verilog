`timescale 1ns / 1ps

module full_adder(a,b,cin,s,cout);
input a,b,cin;
output s,cout;
wire k,l,m;

xor g1(s,a,b,cin);
and g2(k,a,b);
and g3(l,b,cin);
and g4(m,a,cin);
or g5(cout,k,l,m);
endmodule
