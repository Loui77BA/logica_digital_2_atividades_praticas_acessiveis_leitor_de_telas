#include <verilated.h>
#include "Vcircuito.h"
#include <string> // Para usar std::string

int main(int argc, char **argv) {
    Verilated::commandArgs(argc, argv);

    // Instancia o circuito
    Vcircuito *uut = new Vcircuito;

    // Cabeçalho da saída
    printf("Simulação do circuito (Entrada -> Saída):\n");
    printf("Tempo | pino2 | pino13 | Estado do LED\n");

    // Estado inicial: botão não pressionado
    uut->pino2 = 0;
    uut->eval();
    printf("0     | %d     | %d      | %s\n", uut->pino2, uut->pino13, uut->pino13 ? "Ligado" : "Desligado");

    // Simula o botão pressionado
    uut->pino2 = 1;
    uut->eval();
    printf("10    | %d     | %d      | %s\n", uut->pino2, uut->pino13, uut->pino13 ? "Ligado" : "Desligado");

    // Simula o botão solto novamente
    uut->pino2 = 0;
    uut->eval();
    printf("20    | %d     | %d      | %s\n", uut->pino2, uut->pino13, uut->pino13 ? "Ligado" : "Desligado");

    // Finaliza a simulação
    delete uut;
    return 0;
}
