module tb_ALU;

reg [7:0] A;
reg [7:0] B;
reg add_en;
wire [7:0] result;

ALU uut(
    .A(A),
    .B(B),
    .add_en(add_en),
    .result(result)
);

initial begin
    A = 8'd5; B = 8'd3; add_en = 1; #10;
    add_en = 0; #10;
    $finish;
end

endmodule
