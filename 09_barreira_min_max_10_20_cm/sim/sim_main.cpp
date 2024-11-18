#include "Vcircuito.h"
#include "verilated.h"
#include <iostream>
#include <iomanip>

int main(int argc, char **argv) {
    Verilated::commandArgs(argc, argv);
    Vcircuito *top = new Vcircuito;

    vluint64_t sim_time = 0;

    // Imprime o cabeçalho da tabela
    std::cout << "+------------+---------------+-------------+---------------+\n";
    std::cout << "| Tempo (ns) | Distancia_cm  | LED         | Dentro_Limite |\n";
    std::cout << "+------------+---------------+-------------+---------------+\n";

    while (sim_time < 1000) {
        // Simula o clock
        top->clk = (sim_time % 2 == 0);

        // Varia a distância ao longo do tempo
        if (sim_time < 200) top->distancia_cm = 25;
        else if (sim_time < 400) top->distancia_cm = 20;
        else if (sim_time < 600) top->distancia_cm = 15;
        else if (sim_time < 800) top->distancia_cm = 10;
        else top->distancia_cm = 5;

        // Avalia o circuito
        top->eval();

        // Imprime os dados em formato organizado
        if (sim_time % 10 == 0) {
            std::cout << "| " << std::setw(10) << sim_time << " | "
                      << std::setw(13) << static_cast<int>(top->distancia_cm) << " | "
                      << std::setw(11) << (top->led ? "LIGADO" : "DESLIGADO") << " | "
                      << std::setw(13) << (top->dentro_limite ? "SIM" : "NÃO") << " |\n";
        }

        sim_time++;
    }

    // Imprime o rodapé da tabela
    std::cout << "+------------+---------------+-------------+---------------+\n";

    delete top;
    return 0;
}
