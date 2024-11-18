module circuito (
    input wire clk,
    input wire [7:0] distancia_cm,
    output wire led,
    output wire dentro_limite
);
    sensor_distancia sensor (
        .clk(clk),
        .distancia_cm(distancia_cm),
        .saida_distancia() // Não conectamos a saída, pois não é usada
    );

    led_blinker led_ctrl (
        .clk(clk),
        .led(led)
    );

    assign dentro_limite = (distancia_cm >= 10 && distancia_cm <= 20);
endmodule
