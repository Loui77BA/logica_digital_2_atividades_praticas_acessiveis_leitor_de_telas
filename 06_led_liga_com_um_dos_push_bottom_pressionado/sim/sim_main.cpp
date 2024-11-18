#include <verilated.h>
#include "Vcircuito.h"

int main(int argc, char **argv) {
    Verilated::commandArgs(argc, argv);

    // Instancia o circuito
    Vcircuito *uut = new Vcircuito;

    // Cabeçalho da saída
    printf("Simulação do circuito (Ou um botão ou outro):\n");
    printf("Tempo | pino2 | pino3 | pino13 | Estado do LED\n");

    // Cenário 1: Nenhum botão pressionado
    uut->pino2 = 0;
    uut->pino3 = 0;
    uut->eval();
    printf("0     | %d     | %d     | %d      | %s\n", uut->pino2, uut->pino3, uut->pino13, uut->pino13 ? "Ligado" : "Desligado");

    // Cenário 2: Apenas o botão 1 pressionado
    uut->pino2 = 1;
    uut->pino3 = 0;
    uut->eval();
    printf("10    | %d     | %d     | %d      | %s\n", uut->pino2, uut->pino3, uut->pino13, uut->pino13 ? "Ligado" : "Desligado");

    // Cenário 3: Apenas o botão 2 pressionado
    uut->pino2 = 0;
    uut->pino3 = 1;
    uut->eval();
    printf("20    | %d     | %d     | %d      | %s\n", uut->pino2, uut->pino3, uut->pino13, uut->pino13 ? "Ligado" : "Desligado");

    // Cenário 4: Ambos os botões pressionados
    uut->pino2 = 1;
    uut->pino3 = 1;
    uut->eval();
    printf("30    | %d     | %d     | %d      | %s\n", uut->pino2, uut->pino3, uut->pino13, uut->pino13 ? "Ligado" : "Desligado");

    // Finaliza a simulação
    delete uut;
    return 0;
}
