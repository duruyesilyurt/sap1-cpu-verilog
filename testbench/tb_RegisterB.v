`timescale 10ns/1ns
module tb_RegisterB;

reg clk;
reg rst;
reg loadb;
reg enable;
reg [7:0] data_in_bus;


registerB uut(
.clk(clk),
.rst(rst),
.loadb(loadb),
.enable(enable),
.data_in_bus(data_in_bus),
);

always#5 clk=~clk;

initial begin
clk = 0; rst = 0; loadb =0; enable =0; data_in_bus = 8'b00000000;

rst = 1; #10;
rst = 0; #10;

data_in_bus = 8'b10101010;
loadb = 1; #10;
loadb = 0; #10;
enable = 1; #20;
enable = 0; #10;

data_in_bus = 8'b11001100;
loadb = 1; #10;
loadb = 0; #10;
enable = 1; #20;

rst = 1; #10;
rst = 0; #10;

$stop;
end

endmodule
