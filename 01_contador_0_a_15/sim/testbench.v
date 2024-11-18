// sim/testbench.v
`timescale 1ns/1ps

module testbench;
    reg clk;
    reg rst_n;
    wire [3:0] q;

    // Instancia o módulo do contador
    contador uut (
        .clk(clk),
        .rst_n(rst_n),
        .q(q)
    );

    // Gera o clock com período de 10 ns (100 MHz)
    always #5 clk = ~clk;

    initial begin
        // Inicializa os sinais
        clk = 0;
        rst_n = 0;

        // Aplica o reset
        #10;
        rst_n = 1;

        // Executa a simulação por 200 ns
        #200;
        $finish;
    end

    // Monitora a saída
    initial begin
        $monitor("Tempo: %0t | Contagem: %b", $time, q);
    end
endmodule