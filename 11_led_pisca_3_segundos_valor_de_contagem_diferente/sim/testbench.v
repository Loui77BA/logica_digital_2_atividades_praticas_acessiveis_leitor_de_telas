`timescale 1ns/1ps

module testbench;
    reg clk;
    reg [7:0] distancia_cm;
    wire led;
    wire dentro_limite;

    // Instância do circuito
    circuito uut (
        .clk(clk),
        .distancia_cm(distancia_cm),
        .led(led),
        .dentro_limite(dentro_limite)
    );

    // Gera o clock com período de 10 ns (5 ns de alta, 5 ns de baixa)
    initial begin
        clk = 0;
        forever #5 clk = ~clk; // Clock de 10 ns
    end

    // Simula diferentes condições
    initial begin
        $dumpfile("testbench.vcd");
        $dumpvars(0, testbench);

        distancia_cm = 20; // Mantém a distância fixa para simplificar
        #1000000000; // Tempo suficiente para observar várias mudanças no LED
        $finish;
    end
endmodule
