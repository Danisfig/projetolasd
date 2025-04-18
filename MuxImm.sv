module muxImm (
	input [1:0] ImmSrc,
	input [31:0] int1,
	input [31:0] int2,
	input [31:0] int3,
	input [31:0] int4,
	output [31:0] w_MImm
);

	always @(*)begin
		case(ImmSrc)
			2'b00: w_MImm = int1;
			2'b01: w_MImm = int2;
			2'b10: w_MImm = int3;
			2'b11: w_MImm = int4;
			default: w_MImm = 0;
		endcase
	end
	
endmodule