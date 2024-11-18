`timescale 1ns/1ps

module testbench;
    reg clk;
    reg [7:0] distancia_cm;
    wire led;
    wire objeto_perto;

    // Instância do circuito
    circuito uut (
        .clk(clk),
        .distancia_cm(distancia_cm),
        .led(led),
        .objeto_perto(objeto_perto)
    );

    // Gera o clock
    initial begin
        clk = 0;
        forever #5 clk = ~clk; // Clock de 10 ns
    end

    // Simula diferentes condições
    initial begin
        $dumpfile("testbench.vcd");
        $dumpvars(0, testbench);

        distancia_cm = 20; #100;  // LED desligado
        distancia_cm = 10; #100;  // LED desligado
        distancia_cm = 8;  #100;  // LED ligado
        distancia_cm = 5;  #100;  // LED ligado
        distancia_cm = 15; #100;  // LED desligado novamente

        $finish;
    end
endmodule
