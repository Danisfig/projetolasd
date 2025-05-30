module divisor (
    input clok,
    output reg outclok
);

    parameter metade = 50000000 / 32;

    reg [25:0] contador;

    always @(posedge clok) begin

            if (contador == metade) begin
                contador <= 0;
                outclok <= ~outclok;
            end else begin
                contador <= contador + 1; 
            end
    end
endmodule
