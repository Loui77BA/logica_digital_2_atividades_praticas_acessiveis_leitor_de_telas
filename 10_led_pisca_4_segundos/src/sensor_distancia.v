module sensor_distancia (
    input wire clk,
    input wire [7:0] distancia_cm,
    output reg [7:0] saida_distancia
);
    always @(posedge clk) begin
        saida_distancia <= distancia_cm;
    end
endmodule
