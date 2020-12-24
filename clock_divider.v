module clock_divider (
	input		clk_in,
	input		reset_n,
	output	clk_out
);

	parameter COUNTER_SIZE = 8;
	
	reg [COUNTER_SIZE-1:0] counter;
	
	assign clk_out = counter[COUNTER_SIZE-1];
	
	initial counter = 0;

	always @ (posedge clk_in, posedge reset_n) begin
		if (~reset_n) begin
			counter <= 0;
		end else if (counter == (2 ** COUNTER_SIZE) -1)	begin
			counter <= 0;
		end else begin
			counter <= counter + 1'b1;
		end
	end
endmodule 