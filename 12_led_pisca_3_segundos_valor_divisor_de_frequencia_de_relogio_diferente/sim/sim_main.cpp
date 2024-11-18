#include "Vcircuito.h"
#include "verilated.h"
#include <iostream>
#include <iomanip>

int main(int argc, char **argv) {
    Verilated::commandArgs(argc, argv);
    Vcircuito *top = new Vcircuito;

    vluint64_t sim_time = 0;

    // Imprime o cabeçalho da tabela
    std::cout << "+------------+----------+---------------+-------------+---------------+\n";
    std::cout << "| Tempo (ms) | Tempo (s) | Distancia_cm  | LED         | Dentro_Limite |\n";
    std::cout << "+------------+----------+---------------+-------------+---------------+\n";

    while (sim_time < 10000) { // Simula até 10 segundos
        // Simula o clock com período de 10 ms (clock alterna a cada 5 ms)
        if (sim_time % 5 == 0) { // Alterna o clock a cada 5 ms
            top->clk = !top->clk;
        }

        // Define a distância fixa para o teste
        top->distancia_cm = 20;

        // Avalia o circuito
        top->eval();

        // Imprime os dados em formato organizado
        if (sim_time % 100 == 0) {
            double time_in_seconds = sim_time / 1000.0;
            std::cout << "| " << std::setw(10) << sim_time << " | "
                      << std::setw(8) << std::fixed << std::setprecision(2) << time_in_seconds << " | "
                      << std::setw(13) << static_cast<int>(top->distancia_cm) << " | "
                      << std::setw(11) << (top->led ? "LIGADO" : "DESLIGADO") << " | "
                      << std::setw(13) << (top->dentro_limite ? "SIM" : "NÃO") << " |\n";
        }

        sim_time++;
    }

    // Imprime o rodapé da tabela
    std::cout << "+------------+----------+---------------+-------------+---------------+\n";

    delete top;
    return 0;
}
