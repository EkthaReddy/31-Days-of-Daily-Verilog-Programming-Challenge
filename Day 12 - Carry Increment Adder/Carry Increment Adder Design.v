//Carry Increment Adder
//We need the half adder and Carry lookahead adder to instantiate in carry increment adder

// Half Adder Design
module half_adder(
  input a,b,
  output sum_ha,carry_ha
    );
assign sum_ha = a^b;
assign carry_ha = a&b;
endmodule

//Carry Lookahead Adder Design
module Carry_lookahead_adder(a,b,sum,carry,cin,p0,p1,p2,p3,g0,g1,g2,g3);
    input [3:0] a,b;
    input cin;
    output [3:0] sum;
    output carry;
    output p0,p1,p2,p3;
    output g0,g1,g2,g3;
    wire c1,c2,c3,c4;
    
    half_adder h1(a[0],b[0],p0,g0);
    half_adder h2(a[1],b[1],p1,g1);
    half_adder h3(a[2],b[2],p2,g2);
    half_adder h4(a[3],b[3],p3,g3);
    
    assign c1 = g0 | p0&cin;
    assign c2 = g1 | p1&g0 | p1&p0&cin;
    assign c3 = g2 | p2&g1 | p2&p1&g0 | p2&p1&p0&cin;
    assign c4 = g3 | p3&g2 | p3&p2&g1 | p3&p2&p1&p0&cin;
    
    assign sum[0] = p0 ^ cin;
    assign sum[1] = p1 ^ c1;
    assign sum[2] = p2 ^ c2;
    assign sum[3] = p3 ^ c3;
    assign carry = c4;
endmodule

//Carry Increment Adder
module Carry_Increment_Adder(a,b,sum,carry,cin);
    input [7:0] a,b;
    input cin;
    output [7:0] sum;
    output carry;
    wire [3:0] s1;
    wire p0,p1,p2,p3,p4,p5,p6,p7,g1,g2,g3,g4,g5,g6,g7,g8;
    wire cout1,cout2;
    wire c1,c2,c3,c4;
    
    Carry_lookahead_adder cla1(a[3:0],b[3:0],sum[3:0],cout1,cin,p0,p1,p2,p3,g0,g1,g2,g3);
    Carry_lookahead_adder cla2(a[7:4],b[7:4],s1[3:0],cout2,1'b0,p4,p5,p6,p7,g4,g5,g6,g7);

    half_adder a1(cout1,s1[0],sum[4],c1);
    half_adder a2(c1,s1[1],sum[5],c2);
    half_adder a3(c2,s1[2],sum[6],c3);
    half_adder a4(c3,s1[3],sum[7],c4);
    
    assign carry = c4 | cout2;
endmodule



