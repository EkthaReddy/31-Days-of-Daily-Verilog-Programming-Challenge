//Carry skip adder
// we need full adder, ripple carry adder, propagate carry and multiplexer for the construction of Carry skip adder

// Full Adder design 
module full_adder(
input a,b,cin,
output sum, cout
    );
    assign sum=a^b^cin;
    assign cout = a&b|cin&(a^b);
endmodule

// Ripple carry adder
module ripple_carry_adder(
input [3:0]a, b,
input cin, 
output [3:0]sum,
output cout
    );
    wire c1,c2,c3;
    full_adder fa0(a[0],b[0],cin,sum[0],c1);
    full_adder fa1(a[1],b[1],c1,sum[1],c2);
    full_adder fa2(a[2],b[2],c2,sum[2],c3);
    full_adder fa3(a[3],b[3],c1,sum[3],cout);
endmodule    

// Propagate carry design
module propagate_carry(
input a,b,
output sel,p
    );
    assign p=a^b;
    assign sel=&p;
endmodule

// multiplexer design
module mux(
input cin, cout, sel,
output carry
    );
    assign carry = sel?cin:cout;
endmodule

//Carry skip adder design
module carry_skip_adder(
input [3:0]a,b,
input cin,
output [3:0]sum,
output carry
    );
    ripple_carry_adder rca(a,b,cin,sum,cout);
    propagate_carry pc(a,b,p,sel);
    mux m(cin,cout,sel,carry);
    
endmodule    
