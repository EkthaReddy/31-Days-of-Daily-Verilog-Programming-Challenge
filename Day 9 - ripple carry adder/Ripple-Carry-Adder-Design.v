// 4-bot rpple carry adder
//To construct a 4 bit ripple carry adder we will instantiate it with full adder

//full adder design
module full_adder(
    input a,b,cin,
    output sum,carry);

assign sum = a ^ b ^ cin;
assign carry = (a & b)|(b & cin)|(cin & a);
                
endmodule

// Design of ripple carry adder
module rca(
    input [3:0]a,b,
    input cin,
    output [3:0]sum,
    output c4);

wire c1,c2,c3;      //Carry out of each full adder

full_adder fa0(a[0],b[0],cin,sum[0],c1);
full_adder fa1(a[1],b[1],c1,sum[1],c2);
full_adder fa2(a[2],b[2],c2,sum[2],c3);
full_adder fa3(a[3],b[3],c3,sum[3],c4);
                
endmodule
