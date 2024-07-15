//Testbench

module BinaryToGrayCode_tb;
  reg [3:0] bin;
  wire [3:0] G;

  BinaryToGrayCode uut (
    .bin(bin),
    .G(G)
  );

  initial begin
    $monitor("Time: %0d, Binary: %b, Gray: %b", $time, bin, G);
    
    bin = 4'b0000; #10;
    bin = 4'b0001; #10;
    bin = 4'b0010; #10;
    bin = 4'b0011; #10;
    bin = 4'b0100; #10;
    bin = 4'b0101; #10;
    bin = 4'b0110; #10;
    bin = 4'b0111; #10;
    bin = 4'b1000; #10;
    bin = 4'b1001; #10;
    bin = 4'b1010; #10;
    bin = 4'b1011; #10;
    bin = 4'b1100; #10;
    bin = 4'b1101; #10;
    bin = 4'b1110; #10;
    bin = 4'b1111; #10;

    $finish;
  end

endmodule
