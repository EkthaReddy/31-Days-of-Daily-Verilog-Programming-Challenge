// 4-bit rpple carry adder
//To construct a 4 bit ripple carry adder we will instantiate it with full adder

//full adder design
module Full_Adder(
output sum, carry,
input a,b,cin

    );
    assign sum=a^b^cin;
    assign carry= (a&b)|(cin&(a^b));
endmodule


// Design of ripple carry adder
module ripple_carry_adder_(
output [3:0]sum, [3:0]carry,
input [3:0]a, [3:0]b,
input cin

    );

    
    Full_Adder fa0(sum[0], carry[0], a[0], b[0], cin);
    Full_Adder fa1(sum[1], carry[1], a[1], b[1], carry[0]);
    Full_Adder fa2(sum[2], carry[2], a[2], b[2], carry[1]);
    Full_Adder fa3(sum[3], carry[3], a[3], b[3], carry[2]);
    
endmodule
