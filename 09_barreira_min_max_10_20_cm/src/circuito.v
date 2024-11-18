module circuito (
    input wire clk,
    input wire [7:0] distancia_cm,
    output wire led,
    output wire dentro_limite
);
    // Conexão entre os módulos
    wire [7:0] saida_distancia;

    sensor_distancia sensor (
        .clk(clk),
        .distancia_cm(distancia_cm),
        .saida_distancia(saida_distancia)
    );

    led_controller led_ctrl (
        .clk(clk),
        .distancia_cm(saida_distancia),
        .led(led),
        .dentro_limite(dentro_limite)
    );
endmodule
