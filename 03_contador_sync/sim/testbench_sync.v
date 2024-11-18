`timescale 1ns/1ps
module testbench_sync;
    reg clk;
    reg rst_n;
    wire [2:0] q;

    // Instancia o módulo do contador síncrono
    contador_sync uut (
        .clk(clk),
        .rst_n(rst_n),
        .q(q)
    );

    // Clock auxiliar para simulação
    initial clk = 0;
    always begin
        #5 clk <= ~clk; // Usa atribuição não bloqueante
    end

    initial begin
        // Inicializa os sinais
        clk = 0;
        rst_n = 0;

        // Aplica o reset
        #10;
        rst_n = 1;

        // Simula por 200 ns
        #200;
        $finish;
    end

    // Monitora as transições dos estados
    initial begin
        $monitor("Tempo: %0t | Estado Atual: %b", $time, q);
    end
endmodule
