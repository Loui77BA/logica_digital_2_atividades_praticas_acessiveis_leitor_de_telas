module circuito (
    input wire pino2,       // Primeiro botão
    input wire pino3,       // Segundo botão
    output reg pino13       // Saída conectada ao LED
);

always @(*) begin
    if (pino2 || pino3)     // LED ligado se qualquer botão for pressionado
        pino13 = 1'b1;
    else
        pino13 = 1'b0;
end

endmodule