`timescale 1ns/1ps

module testbench;

    reg clk;
    reg reset;
    reg botao;
    wire led;

    // Instancia o módulo circuito
    circuito uut (
        .clk(clk),
        .reset(reset),
        .botao(botao),
        .led(led)
    );

    // Gera o sinal de clock
    always #5 clk = ~clk;

    initial begin
        // Inicializa os sinais
        clk = 0;
        reset = 0;
        botao = 0;

        $display("Simulação do circuito (Detecção de Mudança de Estado):");
        $display("Tempo | Botao | LED");

        // Reseta o circuito
        reset = 1;
        #10 reset = 0;

        // Simula 8 pulsos do botão
        repeat (8) begin
            #10 botao = 1; 
            #10 botao = 0; // Simula pressão e liberação do botão
            $display("%0t    | %b     | %b", $time, botao, led);
        end

        $display("Fim da simulação.");
        $finish;
    end

endmodule
