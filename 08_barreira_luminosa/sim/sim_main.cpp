#include "Vcircuito.h"
#include "verilated.h"
#include <iostream> // Para std::cout
#include <iomanip>  // Para formatação

int main(int argc, char** argv, char** env) {
    Verilated::commandArgs(argc, argv);

    // Instância do módulo top-level gerado pelo Verilator
    Vcircuito* top = new Vcircuito;

    // Tempo de simulação
    vluint64_t main_time = 0;
    const vluint64_t sim_time = 1000; // Duração total da simulação

    // Cabeçalho da tabela
    std::cout << "+------------+---------------+-------------+---------------+" << std::endl;
    std::cout << "| Tempo (ns) | Distancia_cm  | LED         | Objeto_Perto  |" << std::endl;
    std::cout << "+------------+---------------+-------------+---------------+" << std::endl;

    // Loop de simulação
    while (main_time < sim_time) {
        // Atualiza o clock
        top->clk = (main_time % 10) < 5;

        // Simula mudanças na distância
        if (main_time < 200) top->distancia_cm = 20;
        else if (main_time < 400) top->distancia_cm = 10;
        else if (main_time < 600) top->distancia_cm = 8;
        else top->distancia_cm = 5;

        // Avalia o circuito
        top->eval();

        // Imprime os sinais no terminal
        if ((main_time % 10) == 0) {
            std::cout << "| " << std::setw(10) << main_time
                      << " | " << std::setw(13) << (int)top->distancia_cm
                      << " | " << std::setw(11) << (top->led ? "LIGADO" : "DESLIGADO")
                      << " | " << std::setw(13) << (top->objeto_perto ? "SIM" : "NÃO")
                      << " |" << std::endl;
        }

        // Avança o tempo
        main_time++;
    }

    // Rodapé da tabela
    std::cout << "+------------+---------------+-------------+---------------+" << std::endl;

    // Limpeza
    delete top;
    return 0;
}
