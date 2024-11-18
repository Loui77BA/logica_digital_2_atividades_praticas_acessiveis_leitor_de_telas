// src/contador.v
module contador(
    input wire clk,    // Clock de entrada
    input wire rst_n,  // Reset assíncrono ativo em nível baixo
    output reg [3:0] q // Saída de 4 bits
);

always @(negedge rst_n or posedge clk) begin
    if (!rst_n)
        q <= 4'b0000; // Reset: zera a contagem
    else
        q <= q + 1;   // Incrementa a contagem
end

endmodule
