module circuito (
    input wire clk,                // Clock
    input wire [7:0] distancia_cm, // Entrada de distância simulada
    output wire led,               // Saída para o LED
    output wire objeto_perto       // Exposição do sinal objeto_perto
);
    // Instância do sensor de distância
    sensor_distancia sensor (
        .distancia_cm(distancia_cm),
        .objeto_perto(objeto_perto)
    );

    // Instância do controlador do LED
    led_controller led_ctrl (
        .clk(clk),
        .objeto_perto(objeto_perto),
        .led(led)
    );
endmodule
