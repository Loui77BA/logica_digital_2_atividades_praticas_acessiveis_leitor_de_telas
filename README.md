# Exercícios Práticos de Lógica Digital com Verilog e Verilator

Este repositório contém implementações em **Verilog** e simulações realizadas com o **Verilator**. O objetivo deste projeto é fornecer exemplos acessíveis e práticos para estudo e aplicação de conceitos fundamentais de lógica digital. Optamos por **Verilog e Verilator** em vez de ferramentas como Logisim para garantir maior acessibilidade a pessoas cegas que utilizam leitores de tela como o **NVDA**, o **Orca**, **VoiceOver** e outros.

## Objetivos

- Demonstrar conceitos de lógica digital por meio de implementações práticas.
- Proporcionar exercícios acessíveis para pessoas que utilizam leitores de tela.

## Pré-requisitos

Antes de começar, certifique-se de ter os seguintes componentes configurados em sua máquina:

- **Git**: Para clonar o repositório.
- **GCC (G++)**: Para compilar o código em C++. O Verilator é escrito em C++ e requer um compilador C++ para ser construído.
- **Verilator**: Para compilar e simular os arquivos Verilog. O Verilator é uma ferramenta de simulação de código aberto e é altamente recomendado para este projeto.
- **Editor**: Para visualizar e editar os arquivos de código. Pode ser o **VSCode**, **Vim**, **Nano**, **Emacs** ou qualquer outro editor de sua preferência.
- **WSL (Windows Subsystem for Linux)**: Caso esteja utilizando o Windows, é recomendável instalar o WSL para obter um ambiente Linux. Você pode instalar o Ubuntu no WSL e seguir as instruções a seguir como se estivesse em um ambiente Linux nativo.
- **Make**: Para utilizar o `Makefile` incluso no projeto. O `Makefile` facilita a compilação e execução dos arquivos. Ele é opcional, mas recomendado, pois automatiza o processo de compilação e execução.

---

## Configuração no Ubuntu 24.04 LTS

1. **Atualizar o sistema:**

   ```bash
   sudo apt update && sudo apt upgrade -y
Isso atualizará a lista de pacotes e instalará as atualizações disponíveis.

2. **Instalar os pacotes necessários:**

   ```bash
   sudo apt install -y build-essential verilator git
Isso instalará o compilador GCC, o Verilator e o Git.

3. **Clonar o repositório:**

   ```bash
   git clone <URL_DO_REPOSITORIO>
Substitua `<URL_DO_REPOSITORIO>` pela URL do repositório que você encontrará no GitHub indo até o botão "Code" e copiando a URL de HTTPS ou SSH.

4. **Acessar o diretório do projeto:**

   ```bash
   cd logica_digital_2_atividades_praticas_acessiveis_leitor_de_telas
Isso te levará para o diretório (pasta) do projeto.

### Observação

Com o WSL instalado e configurado, você pode seguir as instruções acima como se estivesse em um ambiente Linux nativo.

## Estrutura do Repositório

O repositório está organizado nas seguintes pastas que representam diferentes atividades práticas de lógica digital:

- **`01_contador_0_a_15:`**
   - Implementa um contador assíncrono de 0 a 15.

- **`02_contador_0_a_13:`**
   - Implementa um contador assíncrono de 0 a 13.

- **`03_contador_sync:`**
   - Implementa um contador síncrono com base em um diagrama de estados.

- **`04_acender_led:`**
   - Acende um LED com base em um botão pressionado.

- **`05_led_com_dois_push_bottom:`**
   - Acende um LED com base em dois botões pressionados.

- **`06_led_liga_com_um_dos_push_bottom_pressionado:`**
   - Acende um LED com base em um dos botões pressionados.

- **`07_led_quatro_pulsos:`**
   - Acende um LED com base em quatro pulsos.

- **`08_barreira_luminosa:`**
   - Implementa uma barreira luminosa com LED. A partir de uma determinada distância (em centímetros), o LED acende.

- **`09_barreira_min_max_10_20_cm:`**
   - Implementa uma barreira luminosa com LED. O LED acende quando a distância está entre 10 e 20 cm.

- **`10_led_pisca_4_segundos:`**
   - Faz um LED piscar a cada 4 segundos.

- **`11_led_pisca_3_segundos_valor_de_contagem_diferente:`**
   - Faz um LED piscar a cada 3 segundos com um valor de contagem diferente.

- **`12_led_pisca_3_segundos_valor_divisor_de_frequencia_de_relogio_diferente:`**
   - Faz um LED piscar a cada 3 segundos com um divisor de frequência de relógio diferente.

- **`13_led_pisca_5_segundos_valor_contagem_diferente:`**
   - Faz um LED piscar a cada 5 segundos com um valor de contagem diferente.
   
- **`14_led_pisca_5_segundos_valor_divisor_de_frequencia_de_relogio_diferente:`**
   - Faz um LED piscar a cada 5 segundos com um divisor de frequência de relógio diferente.

## Compilação e Execução

### Estrutura de Pastas

Cada subpasta é um projeto independente e possui uma estrutura geral organizada da seguintjson forma:

1. **Makefile**
    1. Arquivo de compilação e execução do projeto. Ele automatiza o processo de compilação e execução dos arquivos. Por exemplo: Ao invés de digitar `verilator -Wall -cc <arquivo>.v --exe <arquivo>.cpp` e `make -j -C obj_dir -f V<arquivo>.mk V<arquivo>`, você pode simplesmente digitar `make` no terminal e o Makefile fará todo o trabalho de compilação e execução para você.
2. **sim/**
   1. Pasta que contém os arquivos de simulação gerados pelo Verilator como:
      - `sim_main.cpp`: Arquivo principal da simulação.
      - `testbench.v`: Testbench (bancada de testes) do Verilog para a simulação que testa o módulo principal. Ele vai testar o módulo principal do projeto, que módulo é esse? É o módulo que você deseja simular como um contador, um LED, um sensor, etc.
3. **src/**
   1. Pasta que contém os arquivos de código-fonte do projeto.
      - `circuito.v`: Arquivo Verilog que contém a descrição do circuito.

### Compilando e Executando o Projeto

Para compilar e executar o projeto, siga as instruções abaixo:

1. **Acesse a subpasta do projeto:**

   ```bash
   cd 01_contador_0_a_15
   ```
2. **Compile e execute o projeto:**

   ```bash
   make
   ```
3. **Saída:** Após a execução do comando `make`, o Verilator compilará os arquivos e executará a simulação. Você verá a saída da simulação no terminal, ela será algo como:

   ```bash
   Ciclo   Contagem   Pinos (Q3 Q2 Q1 Q0)   Freq (Q3)
   ----------------------------------------------------
      0          1       0 0 0 1           6.25 MHz
      1          2       0 0 1 0           6.25 MHz
      2          3       0 0 1 1           6.25 MHz
      3          4       0 1 0 0           6.25 MHz
      4          5       0 1 0 1           6.25 MHz
      5          6       0 1 1 0           6.25 MHz
      6          7       0 1 1 1           6.25 MHz
      7          8       1 0 0 0           6.25 MHz
      8          9       1 0 0 1           6.25 MHz
      9         10       1 0 1 0           6.25 MHz
      10        11       1 0 1 1           6.25 MHz
      11        12       1 1 0 0           6.25 MHz
      12        13       1 1 0 1           6.25 MHz
      13        14       1 1 1 0           6.25 MHz
      14        15       1 1 1 1           6.25 MHz
      15         0       0 0 0 0           6.25 MHz
   ```

4. **Observação:** Execute o comando `make` fora das pastas `src` e `sim`.

5. **Limpeza:** Para limpar os arquivos gerados pela compilação, execute:

   ```bash
   make clean
   ```

   Limpar os arquivos significa remover os arquivos gerados pela compilação, como os arquivos de simulação e os arquivos de compilação do Verilator. Ele não remove os arquivos de código-fonte, mas remove os arquivos gerados pela compilação como o diretório `obj_dir` e os arquivos `.vcd`.

---

A seguir será explicado projeto por projeto, com suas descrições, tabelas verdade, mapas de Karnaugh e equações lógicas. Além disso, os circuitos serão descritos e explicados.

---

## 01_contador_0_a_15

Elabore um Contador assíncrono de 0 até 15, pode usar FFs JK ou D. Mostre o funcionamento com display. Qual é a frequência do sinal de saída de último FF. Mostre a frequência com LED.

**Tabela verdade do contador de 4 Bits**

| Decimal | Q3 | Q2 | Q1 | Q0 |
|---------|----|----|----|----|
| 0       | 0  | 0  | 0  | 0  |
| 1       | 0  | 0  | 0  | 1  |
| 2       | 0  | 0  | 1  | 0  |
| 3       | 0  | 0  | 1  | 1  |
| 4       | 0  | 1  | 0  | 0  |
| 5       | 0  | 1  | 0  | 1  |
| 6       | 0  | 1  | 1  | 0  |
| 7       | 0  | 1  | 1  | 1  |
| 8       | 1  | 0  | 0  | 0  |
| 9       | 1  | 0  | 0  | 1  |
| 10      | 1  | 0  | 1  | 0  |
| 11      | 1  | 0  | 1  | 1  |
| 12      | 1  | 1  | 0  | 0  |
| 13      | 1  | 1  | 0  | 1  |
| 14      | 1  | 1  | 1  | 0  |
| 15      | 1  | 1  | 1  | 1  |

**Mapa de Karnaugh para a saída $Q_0$**

|     | 0 | 1 |
|-----|---|---|
| 0 0 | 0 | 1 |
| 1 0 | 0 | 0 |
| 1 1 | 1 | 1 |

**Mapa de Karnaugh para a saída $Q_1$**

|     | 0 | 1 |
|-----|---|---|
| 0 0 | 0 | 0 |
| 1 0 | 1 | 1 |
| 1 1 | 0 | 1 |

**Mapa de Karnaugh para a saída $Q_2$**

|     | 0 | 1 |
|-----|---|---|
| 0 0 | 0 | 0 |
| 1 0 | 1 | 1 |
| 1 1 | 0 | 1 |

**Mapa de Karnaugh para a saída $Q_3$**

|     | 0 | 1 |
|-----|---|---|
| 0 0 | 0 | 0 |
| 1 0 | 1 | 1 |
| 1 1 | 0 | 1 |

### Equação lógica para $Q_0$

O mapa de Karnaugh indica que $Q_0$ alterna entre 0 e 1 independentemente das outras variáveis.

**Equação simplificada:**

$$
Q_0 = \overline{Q_0}
$$

---

### Equação lógica para $Q_1$

$Q_1$ alterna a cada dois estados (ou seja, muda quando $Q_0 = 1$.

**Equação simplificada:**

$$
Q_1 = Q_1 \oplus Q_0
$$

---

### Equação lógica para $Q_2$

$Q_2$ alterna a cada quatro estados, dependendo dos estados de $Q_1$ e $Q_0$.

**Equação simplificada:**

$$
Q_2 = Q_2 \oplus (Q_1 \land Q_0)
$$

---

### Equação lógica para $Q_3$

$Q_3$ alterna a cada oito estados, dependendo dos estados de $Q_2$, $Q_1$ e $Q_0$.

**Equação simplificada:**

$$
Q_3 = Q_3 \oplus (Q_2 \land Q_1 \land Q_0)
$$

---

### Apresentação e Explicação do código Verilog

A estrutura do nosso projeto 01_contador_0_a_15 é composta por:

```bash
ls
Makefile  sim  src
ls sim/
sim_main.cpp  testbench.v
ls src/
contador.v
```

Arquivo `contador.v`:

```verilog
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
```

Arquivo `sim/testbench.v`:

```verilog
// sim/testbench.v
`timescale 1ns/1ps

module testbench;
    reg clk;
    reg rst_n;
    wire [3:0] q;

    // Instancia o módulo do contador
    contador uut (
        .clk(clk),
        .rst_n(rst_n),
        .q(q)
    );

    // Gera o clock com período de 10 ns (100 MHz)
    always #5 clk = ~clk;

    initial begin
        // Inicializa os sinais
        clk = 0;
        rst_n = 0;

        // Aplica o reset
        #10;
        rst_n = 1;

        // Executa a simulação por 200 ns
        #200;
        $finish;
    end

    // Monitora a saída
    initial begin
        $monitor("Tempo: %0t | Contagem: %b", $time, q);
    end
endmodule
```

Arquivo `sim/sim_main.cpp`:

```cpp
#include "Vcontador.h"
#include "verilated.h"
#include <iostream>
#include <iomanip>

int main(int argc, char** argv, char** env) {
    Verilated::commandArgs(argc, argv);
    Vcontador* top = new Vcontador;

    // Configuração inicial
    top->clk = 0;
    top->rst_n = 0;

    // Constantes
    const double clock_frequency = 100e6; // Frequência do clock (100 MHz)
    const int max_cycles = 256; // Número de ciclos a simular

    // Reset
    top->eval();
    top->rst_n = 1;

    // Cabeçalho da saída
    std::cout << "Ciclo\tContagem\tPinos (Q3 Q2 Q1 Q0)\tFreq (Q3)\n";
    std::cout << "----------------------------------------------------\n";

    // Simulação por max_cycles ciclos
    for (int cycle = 0; cycle < max_cycles; ++cycle) {
        // Alterna o clock
        top->clk = !top->clk;
        top->eval();

        // Apenas no flanco de subida do clock, exibe os valores
        if (top->clk) {
            // Calcula a frequência de Q3
            double q3_frequency = clock_frequency / 16;

            // Exibe o ciclo, contagem, estado dos pinos e frequência
            std::cout << std::setw(5) << cycle / 2 // Ciclo completo
                      << "\t" << std::setw(8) << static_cast<int>(top->q)
                      << "\t\t" << (int)((top->q >> 3) & 1) << " "
                      << (int)((top->q >> 2) & 1) << " "
                      << (int)((top->q >> 1) & 1) << " "
                      << (int)(top->q & 1)
                      << "\t\t" << q3_frequency / 1e6 << " MHz\n";
        }
    }

    delete top;
    return 0;
}
```

## 02_contador_0_a_13

Elabore um contador assíncrono de 0 até 13 com base no contador anterior. Mostre no display. Qual é a frequência do sinal de saída do ultimo FF. Mostre a frequência com LED.

**Modificação do contador**

- O contador deve resetar ao alcançar o valor 13 (binário: 1101).
- Isso requer lógica adicional para detectar quando: $$ Q_3 Q_2 Q_1 Q_0 = 1101 $$
- Se o resultado for 1101, o contador deve ser resetado para 0.

**Conexões de Flip-Flops (FFs) JK**

Continuamos configurando $J = K = 1$ para todos os flip-flops com cada flip-flop recebendo a saída do flip-flop alternando na metade da frequência do flip-flop anterior.

**Configuração da Frequência do último Flip-Flop**

A frequência de saída do último Flip-Flop ($Q_3$) ainda será a frequência de entrada dividida pelo número de estados do contador. Neste caso:

- **Total de estados:** 14 (de 0 a 13).
- **Frequência de entrada $( f_{in} )$:** $f_{in} \div 14$

**Lógica para o Reset**

Para resetar o contador quando ele atingir 13, usamos uma lógica **AND** para detectar o estado
$Q_3 Q_2 Q_1 Q_0 = 1101$ e aplicar o reset.

A lógica será:

$\text{Reset} = Q_3 \land Q_2 \land \overline{Q_1} \land Q_0$

Essa saída será conectada às entradas de reset assíncrono dos Flip-Flops.

**Tabela verdade**

| Entrada Decimal | Q3 | Q2 | Q1 | Q0 |
|-----------------|----|----|----|----|
| 0               | 0  | 0  | 0  | 0  |
| 1               | 0  | 0  | 0  | 1  |
| 2               | 0  | 0  | 1  | 0  |
| 3               | 0  | 0  | 1  | 1  |
| 4               | 0  | 1  | 0  | 0  |
| 5               | 0  | 1  | 0  | 1  |
| 6               | 0  | 1  | 1  | 0  |
| 7               | 0  | 1  | 1  | 1  |
| 8               | 1  | 0  | 0  | 0  |
| 9               | 1  | 0  | 0  | 1  |
| 10              | 1  | 0  | 1  | 0  |
| 11              | 1  | 0  | 1  | 1  |
| 12              | 1  | 1  | 0  | 0  |
| 13              | 1  | 1  | 0  | 1  |

A partir do estado 13, o contador retorna para 0.

**Configuração do LED para o Último Flip-Flop**

O LED conectado à saída $Q_3$ piscará com frequência $f_{out} = f_{in} \div 14$.

**Mapa de Karnaugh - Q0 (0 a 13)**

|     | 0 | 1 |
|-----|---|---|
| 0 0 | 0 | 1 |
| 1 0 | 0 | 0 |
| 1 1 | 1 | 1 |

**Mapa de Karnaugh -  Q1 (0 a 13)**

|     | 0 | 1 |
|-----|---|---|
| 0 0 | 0 | 0 |
| 1 0 | 1 | 1 |
| 1 1 | 0 | 1 |

**Mapa de Karnaugh -  Q2 (0 a 13)**

|     | 0 | 1 |
|-----|---|---|
| 0 0 | 0 | 0 |
| 1 0 | 1 | 1 |
| 1 1 | 0 | 1 |

**Mapa de Karnaugh -  Q3 (0 a 13)**

|     | 0 | 1 |
|-----|---|---|
| 0 0 | 0 | 0 |
| 1 0 | 1 | 1 |
| 1 1 | 0 | 1 |

### Equação lógica para $Q_0$
$Q_0$ alterna entre 0 e 1 independentemente de outras variáveis.

**Equação simplificada:**

$$
Q_0 = \overline{Q_0}
$$

---

### Equação lógica para $Q_1$

$Q_1$ alterna a cada dois estados dependendo de $Q_0$. Ou seja, muda quando $Q_0 = 1$.

**Equação simplificada:**

$$
Q_1 = Q_1 \oplus Q_0
$$

---

### Equação lógica para $Q_2$

$Q_2$ alterna a cada quatro estados, dependendo de $Q_1$ e $Q_0$. Ou seja, muda quando $Q_1 = 1$ e $Q_0 = 0$.

**Equação simplificada:**

$$
Q_2 = Q_2 \oplus (Q_1 \land Q_0)
$$

---

### Equação lógica para $Q_3$

$Q_3$ alterna a cada oito estados, dependendo de $Q_2$, $Q_1$ e $Q_0$. Ou seja, muda quando $Q_2 = 1$, $Q_1 = 1$ e $Q_0 = 0$.

**Equação simplificada:**

$$
Q_3 = Q_3 \oplus (Q_2 \land Q_1 \land Q_0)
$$

---

### Equação lógica para o Reset

O contador deve resetar ao alcançar 13 ($Q_3 Q_2 Q_1 Q_0 = 1101$). A lógica para o reset será ativada quando:

$$
{Reset} = Q_3 \land Q_2 \land \overline{Q_1} \land Q_0
$$

Essa saída será conectada às entradas de reset assíncrono dos Flip-Flops JK para reiniciar o contador no estado 0.

---

### Configuração do LED para $Q_3$

O LED conectado à saída $Q_3$ piscará com frequência:

$$
f_{out} = \frac{f_{in}}{14}
$$

onde $f_{in}$ é a frequência do clock de entrada.

### Apresentação e Explicação do código Verilog

A estrutura do nosso projeto 02_contador_0_a_13 é composta por:

```bash
ls
Makefile  sim  src
ls sim/
sim_main_0_13.cpp testbench_0_13.v
ls src/
contador_0_13.v
```
Arquivo `contador_0_13.v`:

```verilog
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
```
