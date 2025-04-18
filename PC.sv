module PC(
	input clk,               
   input rst,
	input [31:0] PCn,
	output [31:0] PC
);


  always @(posedge clk or negedge rst)begin
		if (!rst) begin
            PC = 32'h0;
       
      end else begin
            PC = PCn;
			 end
  end
endmodule
  