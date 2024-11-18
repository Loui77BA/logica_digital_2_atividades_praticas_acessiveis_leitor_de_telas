#include "Vcircuito.h"
#include "verilated.h"
#include <iostream>
#include <iomanip>
#include <string>

int main(int argc, char **argv) {
    Verilated::commandArgs(argc, argv);
    Vcircuito *top = new Vcircuito;

    vluint64_t sim_time = 0;
    bool last_led_state = false; // Estado anterior do LED

    // Imprime o cabeçalho da tabela
    std::cout << "+--------------+--------------+---------------+-------------+---------------+\n";
    std::cout << "| Tempo (ns)   | Tempo (s)    | Distancia_cm  | LED         | Dentro_Limite |\n";
    std::cout << "+--------------+--------------+---------------+-------------+---------------+\n";

    while (sim_time < 420000) { // Simula por 4,2 segundos
        // Simula o clock
        top->clk = (sim_time % 2 == 0);

        // Varia a distância ao longo do tempo
        if (sim_time < 20000) top->distancia_cm = 25; // 2 ms
        else if (sim_time < 40000) top->distancia_cm = 20; // 4 ms
        else if (sim_time < 60000) top->distancia_cm = 15; // 6 ms
        else if (sim_time < 80000) top->distancia_cm = 10; // 8 ms
        else top->distancia_cm = 5;

        // Avalia o circuito
        top->eval();

        // Detecta mudanças no estado do LED
        if (sim_time % 1000 == 0) { // Imprime a cada 1000 ns
            bool current_led_state = top->led;

            // Imprime os dados normais
            std::cout << "| " << std::setw(12) << std::setfill(' ') << sim_time << " | "
                      << std::fixed << std::setprecision(9) << std::setw(12) << (sim_time / 1e9) << " | "
                      << std::setw(13) << static_cast<int>(top->distancia_cm) << " | "
                      << std::setw(11) << (current_led_state ? "LIGADO" : "DESLIGADO") << " | "
                      << std::setw(13) << (top->dentro_limite ? "SIM" : "NÃO") << " |\n";

            // Destaca a mudança de estado do LED
            if (current_led_state != last_led_state) {
                std::string estado = current_led_state ? "LIGADO" : "DESLIGADO";
                std::cout << ">>> O LED mudou para " << estado << " no tempo "
                          << sim_time << " ns (" << std::fixed << std::setprecision(9)
                          << (sim_time / 1e9) << " segundos) <<<\n";
                std::cout << "+--------------+--------------+---------------+-------------+---------------+\n";
            }

            last_led_state = current_led_state;
        }

        sim_time++;
    }

    // Imprime o rodapé da tabela
    std::cout << "+--------------+--------------+---------------+-------------+---------------+\n";

    delete top;
    return 0;
}
