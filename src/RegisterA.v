module RegisterA(
    input clk,
    input rst,
    input loada,
    input enable,
    input [7:0] data_in_bus,
    output reg [7:0] data_reg
);

always @(posedge clk) begin
    if (rst)
        data_reg <= 8'b00000000;
    else if (!loada && enable)
        data_reg <= data_in_bus;
end

endmodule
