`timescale 1ns/1ps
module contador_sync (
    input wire clk,      // Clock
    input wire rst_n,    // Reset ativo em nível baixo
    output reg [2:0] q   // Saída de 3 bits (Q2, Q1, Q0)
);
    // Próximo estado do contador
    reg [2:0] next_state;

    // Lógica de transição de estados
    always @(*) begin
        case (q)
            3'b001: next_state = 3'b111; // Estado 1 -> Estado 7
            3'b111: next_state = 3'b000; // Estado 7 -> Estado 8
            3'b000: next_state = 3'b010; // Estado 8 -> Estado 10
            3'b010: next_state = 3'b011; // Estado 10 -> Estado 11
            3'b011: next_state = 3'b001; // Estado 11 -> Estado 1
            default: next_state = 3'b001; // Estados inválidos retornam para 1
        endcase
    end

    // Atualização dos estados no flanco de subida do clock ou reset
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n)
            q <= 3'b001; // Reset: retorna ao estado inicial (1)
        else
            q <= next_state; // Atualiza para o próximo estado
    end
endmodule
