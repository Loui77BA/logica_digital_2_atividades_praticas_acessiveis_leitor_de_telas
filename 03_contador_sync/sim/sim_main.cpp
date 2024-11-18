#include "Vcontador_sync.h"       // Arquivo gerado pelo Verilator para o módulo Verilog
#include "verilated.h"            // Biblioteca principal do Verilator

int main(int argc, char** argv) {
    Verilated::commandArgs(argc, argv);  // Processa argumentos do Verilator
    Vcontador_sync* top = new Vcontador_sync;  // Instancia o módulo Verilog

    // Inicializa os sinais
    top->clk = 0;
    top->rst_n = 0;

    // Realiza o reset
    top->eval();
    top->rst_n = 1;

    // Cabeçalho para exibição
    printf("Ciclo\tQ2\tQ1\tQ0\tEstado Atual\n");
    printf("-------------------------------------------------\n");

    // Simula 100 ciclos de clock
    for (int i = 0; i < 100; ++i) {
        // Gera os flancos do clock
        top->clk = !top->clk;
        top->eval();  // Avalia o módulo Verilog

        // Exibe os estados no terminal
        if (top->clk) {
            printf("%d\t%d\t%d\t%d\t%b%b%b\n", 
                   i / 2,                      // Ciclo
                   (top->q >> 2) & 1,         // Pino Q2
                   (top->q >> 1) & 1,         // Pino Q1
                   top->q & 1,                // Pino Q0
                   (top->q >> 2) & 1,         // Estado Atual: Q2
                   (top->q >> 1) & 1,         // Estado Atual: Q1
                   top->q & 1                 // Estado Atual: Q0
            );
        }
    }

    delete top;  // Limpa a memória
    return 0;
}
