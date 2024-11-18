module led_controller (
    input wire clk,                // Clock
    input wire objeto_perto,       // Sinal indicando se o objeto está próximo
    output reg led                 // Saída para o LED
);

    always @(posedge clk) begin
        if (objeto_perto) begin
            led <= 1; // Liga o LED se o objeto estiver próximo
        end else begin
            led <= 0; // Desliga o LED caso contrário
        end
    end
endmodule
