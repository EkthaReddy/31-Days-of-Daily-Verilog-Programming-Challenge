//Testbench

module Down_Counter_tb;
reg [3:0]data, rst, clk;
wire [3:0]out;

Down_Counter dut(data, rst, clk, out);

initial begin
$dumpfile("dump.vcd");
$dumpvars(0);

data<=1'b0;
clk<=1'b0;
rst<=1'b0; 

#20 $finish();
end

always #3 data<=~data;
always #0.9 clk<=~clk;
always #1.5 rst<=~rst;
endmodule
