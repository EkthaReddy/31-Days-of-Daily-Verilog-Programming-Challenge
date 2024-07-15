//Testbench

module UpDown_Counter_tb;
reg [3:0]data, load, Up_Down, rst, clk;
wire [3:0]out;

UpDown_Counter dut(data, load, Up_Down, rst, clk, out);

initial begin
$dumpfile("dump.vcd");
$dumpvars(0);

data<=1'b0;
load<=1'b0;
Up_Down<=1'b0;
clk<=1'b0;
rst<=1'b0; 

#20 $finish();
end

always #3 data<=~data;
always #2 load<=~load;
always #2.5 Up_Down<=~Up_Down;
always #0.9 clk<=~clk;
always #1.5 rst<=~rst;
endmodule
