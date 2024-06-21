// Carry Save Adder(CSA)
// To construct CSA we need Full adder and Ripple carry adder

// Full Adder Design
module Full_Adder(
input a, b, cin,
output sum, carry
    );
    assign sum=a^b^cin;
    assign carry=a&b|cin&(a^b);
endmodule

//Ripple Carry Adder    
module Ripple_Carry_Adder(
input [3:0]a, 
input [3:0]b,
input cin,
output [3:0]sum, 
output carry
    );
    wire carry1, carry2, carry3;
    Full_Adder FA0(a[0], b[0], cin, sum[0], carry1);
    Full_Adder FA1(a[1], b[1], carry1, sum[1], carry2);
    Full_Adder FA2(a[2], b[2], carry2, sum[2], carry3);
    Full_Adder FA3(a[3], b[3], carry3, sum[3], carry);
    
endmodule

//Carry Save Adder Design
module Carry_Save_Adder(
input [3:0]a, b, cin_csa, din, 
output [3:0]sum, 
output carry
    );
    wire [2:0]s1;
    wire sum0, sum1, sum2, sum3, sum4;
    wire [3:0]c1, c2;
    wire carry_1, carry_2, carry_3;
    Full_Adder A0(.a(a[0]), .b(b[0]), .cin(cin_csa[0]), .sum(sum[0]), .carry(c1[0]));
    Full_Adder A1(.a(a[1]), .b(b[1]), .cin(cin_csa[1]), .sum(sum[1]), .carry(c1[1]));
    Full_Adder A2(.a(a[2]), .b(b[2]), .cin(cin_csa[2]), .sum(sum[2]), .carry(c1[2]));
    Full_Adder A3(.a(a[3]), .b(b[3]), .cin(cin_csa[3]), .sum(sum[3]), .carry(c1[3]));
    
    Full_Adder D0(.a(din[0]), .b(sum[0]), .cin(1'b0), .sum(sum0), .carry(c2[0]));
    Full_Adder D1(.a(din[1]), .b(sum[1]), .cin(c1[0]), .sum(s1[0]), .carry(c2[1]));
    Full_Adder D2(.a(din[2]), .b(sum[2]), .cin(c1[1]), .sum(s1[1]), .carry(c2[2]));
    Full_Adder D3(.a(din[3]), .b(sum[3]), .cin(c1[2]), .sum(s1[2]), .carry(c2[3]));
    
    Ripple_Carry_Adder rca0(.a(c2[3:0]), .b({s1[2:0], c1[3]}), .cin(1'b0), .sum({sum1, sum2, sum3, sum4}), .carry(carry));
    
endmodule    










