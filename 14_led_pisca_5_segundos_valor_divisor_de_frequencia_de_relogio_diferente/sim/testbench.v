`timescale 1ms/1us

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

    // Gera o clock com período de 10 ms (5 ms de alta, 5 ms de baixa)
    initial begin
        clk = 0;
        forever #5 clk = ~clk; // Clock de 10 ms
    end

    // Simula diferentes condições
    initial begin
        $dumpfile("testbench.vcd");
        $dumpvars(0, testbench);

        distancia_cm = 20; // Mantém a distância fixa para simplificar
        #15000; // Simula por 15 segundos (15000 ms)
        $finish;
    end
endmodule
