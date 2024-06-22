//Ripple Carry Subtractor.
// We neeed full adder to instantiate it into the ripple carry adder by 'changing the input b as xor of b and cin input'.

//Full Adder Design
module Full_Adder(
input a, b, cin,
output sum, carry
    );
    assign sum=a^b^cin;
    assign carry=(a&b)|cin&(a^b);
endmodule
    
//Ripple Carry Subtractor
module Ripple_Carry_Subtractor(
input [3:0]a, [3:0]b,
input cin,
output [3:0]sum,
output carry
    );
    wire [3:0]k;
    wire c0, c1, c3;
    assign k=b^cin;
    Full_Adder fa0(a[0], k[0], cin, sum[0], c0);
    Full_Adder fa1(a[1], k[1], c0, sum[1], c1);
    Full_Adder fa2(a[2], k[2], c1, sum[2], c2);
    Full_Adder fa3(a[3], k[3], c2, sum[3], carry);
endmodule
