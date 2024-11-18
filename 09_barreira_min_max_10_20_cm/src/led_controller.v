module led_controller (
    input wire clk,
    input wire [7:0] distancia_cm,
    output reg led,
    output wire dentro_limite
);
    // Define `dentro_limite` como combinacional
    assign dentro_limite = (distancia_cm >= 10 && distancia_cm <= 20);

    // Controla o LED
    always @(posedge clk) begin
        if (distancia_cm >= 10 && distancia_cm <= 20)
            led <= 1'b1; // Liga o LED
        else
            led <= 1'b0; // Desliga o LED
    end
endmodule
