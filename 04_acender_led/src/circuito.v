module circuito (
    input wire pino2,       // Entrada conectada ao push-button
    output reg pino13       // Saída conectada ao LED
);

always @(*) begin
    if (pino2)              // Se o pino2 for 5V (nível alto)
        pino13 = 1'b1;      // LED ligado (nível alto)
    else
        pino13 = 1'b0;      // LED desligado (nível baixo)
end

endmodule
