module SomadorIMM (
	input [31:0] Imm,
	input [31:0] PC_atual,
	output [31:0] PC_Imm
);

	always@(*)begin 
	
		PC_Imm = Imm + PC_atual;
	
	end
endmodule
