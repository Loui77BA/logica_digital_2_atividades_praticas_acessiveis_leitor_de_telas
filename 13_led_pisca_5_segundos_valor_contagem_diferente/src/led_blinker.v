module led_blinker (
    input wire clk,
    output reg led
);
    // Contador ajustado para 500 ciclos
    reg [8:0] counter; // 9 bits são suficientes para contar até 500

    initial begin
        counter = 0;
        led = 0;
    end

    always @(posedge clk) begin
        if (counter == 499) begin // Conta até 499, totalizando 500 ciclos
            counter <= 0;
            led <= ~led; // Alterna o estado do LED
        end else begin
            counter <= counter + 1;
        end
    end
endmodule
