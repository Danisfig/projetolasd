module ParallelOUT(
	input clk,
	input rst,
	input EN,
	input [7:0] Adress,
	input [7:0] RegData,
	output reg [7:0] DataOut
);


	int control;
		int En;
		
		
	always@(posedge clk or negedge rst)begin 
		
		if(!rst) begin
			DataOut = 8'h0;
			
		end else if(EN == 1 && Adress == 8'hFF)begin
		
			DataOut = RegData;
		
		end


	end
endmodule
