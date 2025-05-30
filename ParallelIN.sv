module ParallelIN(
	input [7:0] MemData,
	input [7:0] Adress,
	input [7:0] DataIn,
	output [7:0] RegData
);

	always@(*)begin 
	
		int control;
		
		control = (Adress == 8'hFF) ? 1'b1 : 1'b0;
		
		case(control)
			1'b0: RegData = MemData;
			1'b1: RegData = DataIn;
			default: RegData = 8'h0;
		endcase

	
	
	end
endmodule
