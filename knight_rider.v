module knight_rider(
	input USER_BTN,
	input reset,
	input CLK12M,
	output [7:0] LEDS
);
	wire slow_clk;
	wire resetn = 1;
	
	reg [7:0] ff;
	reg [1:0] state; // 2'b00=START, 2'b01=UP, 2'b10=DOWN
	reg [2:0] counter;
	assign LEDS = ff;
	
	initial state = 2'b00;

	always @ (posedge slow_clk) begin
		case (state)
			2'b00: begin
				ff <= 8'b0000_0001;
				state <= 2'b01;
			end
			2'b01: begin
				if (ff == 8'b0100_0000) state <= 2'b10;
				ff <= ff << 1;
			end
			2'b10: begin
				if (ff == 8'b0000_0010) state <= 2'b01;
				ff <= ff >> 1;
			end
		endcase
	end
	
	clock_divider #(.COUNTER_SIZE(19)) (
		.clk_in(CLK12M),
		.reset_n(resetn),
		.clk_out(slow_clk)
	);
endmodule
