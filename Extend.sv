module Extend (
	input [11:0] IMM,
	output [31:0] w_Imm
);

	always @(*)begin
		w_Imm = {{20{IMM[11]}},IMM};
	end
endmodule
