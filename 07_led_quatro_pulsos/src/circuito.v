module circuito (
    input wire clk,          // Relógio para sincronizar a contagem
    input wire reset,        // Reset para reiniciar o contador
    input wire botao,        // Entrada do botão
    output reg led,          // Saída conectada ao LED
    output reg [2:0] contador_out // Exposição do contador para depuração
);

    reg botao_anterior;      // Estado anterior do botão
    reg [2:0] contador;      // Contador de 3 bits (0 a 7)

    initial begin
        botao_anterior = 0;
        contador = 0;
        led = 0;
    end

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            contador <= 0;
            botao_anterior <= 0;
            led <= 0;
        end else begin
            // Detecta borda de subida do botão (0 -> 1)
            if (botao && !botao_anterior) begin
                contador <= contador + 1; // Incrementa o contador
            end

            // Atualiza o estado anterior do botão
            botao_anterior <= botao;

            // Liga o LED exatamente no 4º pulso
            if (contador == 4) begin
                led <= 1;       // Liga o LED
                contador <= 0;  // Reseta o contador
            end else begin
                led <= 0;       // Mantém o LED desligado
            end
        end

        // Atualiza a saída do contador para depuração
        contador_out <= contador;
    end

endmodule
