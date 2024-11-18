module circuito (
    input wire clk,
    input wire [7:0] distancia_cm,
    output wire led,
    output wire dentro_limite
);
    // Conexão entre os módulos
    wire [7:0] saida_distancia;
    wire led_controlado;

    sensor_distancia sensor (
        .clk(clk),
        .distancia_cm(distancia_cm),
        .saida_distancia(saida_distancia)
    );

    led_controller led_ctrl (
        .clk(clk),
        .distancia_cm(saida_distancia),
        .led(led_controlado),
        .dentro_limite(dentro_limite)
    );

    // LED alternando com base no clock de 4 segundos
    wire led_blink;
    led_blinker blinker (
        .clk(clk),
        .led(led_blink)
    );

    // Combinação do LED controlado e do LED que pisca
    assign led = led_controlado | led_blink;
endmodule
