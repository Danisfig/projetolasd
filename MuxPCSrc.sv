module MuxPCSrc (
	input control, 
	input [31:0] ImmPC,
	input [31:0] PCp4,
	output [31:0] PCn
);

	always @(*)begin
		case(control)
			1'b0: PCn = PCp4;
			1'b1: PCn = ImmPC;
			default: PCn = 0;
		endcase
	end
	
endmodule
