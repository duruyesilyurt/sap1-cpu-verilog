module ALU(
    input [7:0] A,
    input [7:0] B,
    input add_en,
    output reg [7:0] result
);

always @(*) begin
    if (add_en)
        result = A + B;
    else
        result = 8'b00000000;
end

endmodule
