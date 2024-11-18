#include <verilated.h>
#include "Vcircuito.h"

int main(int argc, char **argv) {
    Verilated::commandArgs(argc, argv);

    // Instancia o circuito
    Vcircuito *uut = new Vcircuito;

    // Inicializa os sinais
    uut->clk = 0;
    uut->reset = 1;
    uut->botao = 0;

    printf("=========================================================\n");
    printf("Simulação do circuito (Detecção de Mudança de Estado):\n");
    printf("Tempo | Botao | Contador | LED | Estado do LED\n");
    printf("=========================================================\n");

    // Reseta o circuito
    uut->eval();
    uut->reset = 0;

    for (int i = 0; i < 40; i++) {
        // Simula pulsos do botão (pressiona e solta)
        if (i % 8 == 0) {
            uut->botao = 1; // Pressiona o botão
        } else if (i % 8 == 2) {
            uut->botao = 0; // Solta o botão
        }

        // Alterna o clock
        uut->clk = !uut->clk;
        uut->eval();

        // Verifica o estado do LED
        const char* estado_led = uut->led ? "ACESO" : "apagado";

        // Imprime os estados do botão, contador e LED
        printf("%2d    |   %d   |    %d     |  %d  | %s\n", 
               i, uut->botao, uut->contador_out, uut->led, estado_led);

        // Destaque para o LED aceso
        if (uut->led) {
            printf("---------------------------------------------------------\n");
            printf("LED ACESO no ciclo %d!\n", i);
            printf("---------------------------------------------------------\n");
        }
    }

    delete uut;
    return 0;
}
