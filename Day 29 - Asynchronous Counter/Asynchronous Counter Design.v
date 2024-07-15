// Asynchronous Counter is also called as Ripple counter
//Let us construct ripple counter

// D Flip Flop Design
module dff(q,d,clk,rst);
  input d,clk,rst;
  output q;
  reg q; // store the output value
  always @(posedge clk or posedge rst)
   begin
    if(rst) 
    q=1'b0;
    else 
    q=d;
   end
endmodule

//T FLip Flop Design
module tff(q,clk,rst);
   input clk,rst;
  output q;
  wire d;
  dff df1(q,d,clk,rst);
  not n1(d,q);
endmodule


// Asynchronous Counter/Ripple Counter Design 
module ripplecounter(clk,rst,q);
  input clk,rst;
  output [3:0]q;

  tff tf1(q[0],clk,rst);
  tff tf2(q[1],q[0],rst);
  tff tf3(q[2],q[1],rst);
  tff tf4(q[3],q[2],rst);
endmodule
