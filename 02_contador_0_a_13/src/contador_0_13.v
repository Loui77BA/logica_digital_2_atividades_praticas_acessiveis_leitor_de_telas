module contador_0_13 (
    input wire clk,      // Clock de entrada
    input wire rst_n,    // Reset assíncrono ativo em nível baixo
    output reg [3:0] q   // Saída de 4 bits
);
    wire reset; // Sinal para resetar o contador

    // Lógica para resetar quando q == 13 (1101)
    assign reset = (q == 4'b1101);

    always @(negedge rst_n or posedge clk) begin
        if (!rst_n)
            q <= 4'b0000;   // Reset: zera a contagem
        else if (reset)
            q <= 4'b0000;   // Reset quando atingir 13
        else
            q <= q + 1;     // Incrementa a contagem
    end
endmodule
