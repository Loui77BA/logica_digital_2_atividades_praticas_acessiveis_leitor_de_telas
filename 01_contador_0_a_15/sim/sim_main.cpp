#include "Vcontador.h"
#include "verilated.h"
#include <iostream>
#include <iomanip>

int main(int argc, char** argv, char** env) {
    Verilated::commandArgs(argc, argv);
    Vcontador* top = new Vcontador;

    // Configuração inicial
    top->clk = 0;
    top->rst_n = 0;

    // Constantes
    const double clock_frequency = 100e6; // Frequência do clock (100 MHz)
    const int max_cycles = 256; // Número de ciclos a simular

    // Reset
    top->eval();
    top->rst_n = 1;

    // Cabeçalho da saída
    std::cout << "Ciclo\tContagem\tPinos (Q3 Q2 Q1 Q0)\tFreq (Q3)\n";
    std::cout << "----------------------------------------------------\n";

    // Simulação por max_cycles ciclos
    for (int cycle = 0; cycle < max_cycles; ++cycle) {
        // Alterna o clock
        top->clk = !top->clk;
        top->eval();

        // Apenas no flanco de subida do clock, exibe os valores
        if (top->clk) {
            // Calcula a frequência de Q3
            double q3_frequency = clock_frequency / 16;

            // Exibe o ciclo, contagem, estado dos pinos e frequência
            std::cout << std::setw(5) << cycle / 2 // Ciclo completo
                      << "\t" << std::setw(8) << static_cast<int>(top->q)
                      << "\t\t" << (int)((top->q >> 3) & 1) << " "
                      << (int)((top->q >> 2) & 1) << " "
                      << (int)((top->q >> 1) & 1) << " "
                      << (int)(top->q & 1)
                      << "\t\t" << q3_frequency / 1e6 << " MHz\n";
        }
    }

    delete top;
    return 0;
}
