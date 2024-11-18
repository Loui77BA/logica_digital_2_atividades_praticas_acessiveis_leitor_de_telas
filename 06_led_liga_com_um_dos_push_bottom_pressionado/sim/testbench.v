`timescale 1ns/1ps

module testbench;

// Declaração dos sinais de teste
reg pino2, pino3;
wire pino13;

// Instancia o circuito
circuito uut (
    .pino2(pino2),
    .pino3(pino3),
    .pino13(pino13)
);

initial begin
    // Cabeçalho da simulação
    $display("Simulação do circuito (Ou um botão ou outro):");
    $display("Tempo | pino2 | pino3 | pino13 | Estado do LED");

    // Cenário 1: Nenhum botão pressionado
    pino2 = 0; pino3 = 0;
    #10;
    $display("%0t    | %b     | %b     | %b      | %s", $time, pino2, pino3, pino13, pino13 ? "Ligado" : "Desligado");

    // Cenário 2: Apenas o botão 1 pressionado
    pino2 = 1; pino3 = 0;
    #10;
    $display("%0t    | %b     | %b     | %b      | %s", $time, pino2, pino3, pino13, pino13 ? "Ligado" : "Desligado");

    // Cenário 3: Apenas o botão 2 pressionado
    pino2 = 0; pino3 = 1;
    #10;
    $display("%0t    | %b     | %b     | %b      | %s", $time, pino2, pino3, pino13, pino13 ? "Ligado" : "Desligado");

    // Cenário 4: Ambos os botões pressionados
    pino2 = 1; pino3 = 1;
    #10;
    $display("%0t    | %b     | %b     | %b      | %s", $time, pino2, pino3, pino13, pino13 ? "Ligado" : "Desligado");

    $display("Fim da simulação.");
    $finish;
end

endmodule
