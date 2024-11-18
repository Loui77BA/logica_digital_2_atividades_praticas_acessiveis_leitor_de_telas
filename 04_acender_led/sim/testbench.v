`timescale 1ns/1ps

module testbench;

// Declaração dos sinais de teste
reg pino2;
wire pino13;

// Instancia o circuito
circuito uut (
    .pino2(pino2),
    .pino13(pino13)
);

initial begin
    // Inicializa os sinais
    $display("Início da simulação");
    $display("Tempo | pino2 | pino13");
    pino2 = 0;
    #10; // Aguarda 10 unidades de tempo
    $display("%0t    | %b     | %b", $time, pino2, pino13);

    // Simula o botão pressionado
    pino2 = 1;
    #10; // Aguarda 10 unidades de tempo
    $display("%0t    | %b     | %b", $time, pino2, pino13);

    // Solta o botão
    pino2 = 0;
    #10;
    $display("%0t    | %b     | %b", $time, pino2, pino13);

    $display("Fim da simulação");
    $finish; // Finaliza a simulação
end

endmodule
