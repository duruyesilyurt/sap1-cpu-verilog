`timescale 10ns/1ns

module tb_RegisterA;

reg clk;
reg rst;
reg loada;
reg enable;
reg [7:0] data_in_bus;

RegisterA uut(
    .clk(clk),
    .rst(rst),
    .loada(loada),
    .enable(enable),
    .data_in_bus(data_in_bus)
);

always #5 clk = ~clk;

initial begin
    clk = 0; rst = 0; loada = 0; enable = 0; data_in_bus = 8'b00000000;

    rst = 1; #10;
    rst = 0; #10;

    data_in_bus = 8'b00001111;
    loada = 0; enable = 1; #10;
    loada = 1; enable = 0; #10;

    $finish;
end

endmodule
