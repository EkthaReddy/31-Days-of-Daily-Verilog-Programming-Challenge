module Encoder_tb;

reg [7:0] d;
wire [2:0] out;

Encoder dut(.d(d), .out(out));

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0, Encoder_tb);

        // Stimulus generation
          d = 8'b00000000;
        #10; 
          d = 8'b10000000; // Test input 1
        #10;
          d = 8'b01000000; // Test input 2
        #10;
          d = 8'b00100000; // Test input 3
        #10;
          d = 8'b00000010; // Test input 4
        #10;
          d = 8'b00000100; // Test input 5
        #10;
          d = 8'b00100000; // Test input 6
        #10;
          d = 8'b00010000; // Test input 7
        #10;
         

        #100; // Simulate for some time
        $finish;
    end

endmodule
