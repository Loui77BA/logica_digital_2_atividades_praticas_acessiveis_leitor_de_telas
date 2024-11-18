module sensor_distancia (
    input wire [7:0] distancia_cm,
    output reg objeto_perto
);
    always @(*) begin
        objeto_perto = (distancia_cm <= 8) ? 1'b1 : 1'b0;
    end
endmodule
