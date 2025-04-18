module muxUla (
	input control,
	input [31:0] rd2,
	input [31:0] w_Imm,
	output [31:0] w_SrcB
);

	always @(*)begin
		case(control)
			1'b0: w_SrcB = rd2;
			1'b1: w_SrcB = w_Imm;
			default: w_SrcB = 0;
		endcase
	end
	
endmodule
