module led_blinker (
    input wire clk,
    output reg led
);
    // Contador de 16 bits
    reg [15:0] counter;

    initial begin
        counter = 0;
        led = 0;
    end

    always @(posedge clk) begin
        if (counter == 16'hFFFF) begin
            counter <= 0;
            led <= ~led; // Alterna o estado do LED
        end else begin
            counter <= counter + 1;
        end
    end
endmodule
