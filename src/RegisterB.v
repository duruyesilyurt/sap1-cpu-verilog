module RegisterB( data_in_bus, data_reg, clk, loadb, enable, rst );

	input clk;
	input rst;
	input loadb;
	input enable;
	input [7:0] data_in_bus;
	output reg [7:0] data_reg;
	
	always @(posedge clk or posedge rst)  begin 
		if (rst)
			data_reg = 8'b00000000;
		
		else if (~loadb)
			data_reg = data_in_bus; 
	end 
	
endmodule
