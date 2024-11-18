module led_blinker (
    input wire clk,
    output reg led
);
    // Contador ajustado para 150 ciclos
    reg [7:0] counter; // 8 bits são suficientes para contar até 150

    initial begin
        counter = 0;
        led = 0;
    end

    always @(posedge clk) begin
        if (counter == 149) begin // Conta até 149, totalizando 150 ciclos
            counter <= 0;
            led <= ~led; // Alterna o estado do LED
        end else begin
            counter <= counter + 1;
        end
    end
endmodule
