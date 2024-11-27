# Exercícios Práticos de Lógica Digital com Verilog e Verilator

Este repositório contém implementações em **Verilog** e simulações realizadas com o **Verilator**. O objetivo deste projeto é fornecer exemplos acessíveis e práticos para estudo e aplicação de conceitos fundamentais de lógica digital. Optamos por **Verilog e Verilator** em vez de ferramentas como Logisim para garantir maior acessibilidade a pessoas cegas que utilizam leitores de tela como o **NVDA**, o **Orca**, **VoiceOver** e outros.

## Sumário

- [Objetivos](#objetivos)
- [Pré-requisitos](#pré-requisitos)
- [Configuração no Ubuntu 24.04 LTS](#configuração-no-ubuntu-2404-lts)
- [Estrutura do Repositório](#estrutura-do-repositório)
- [Compilação e Execução](#compilação-e-execução)
  - [Estrutura de Pastas](#estrutura-de-pastas)
  - [Compilando e Executando o Projeto](#compilando-e-executando-o-projeto)
- [Projetos](#projetos)
  - [01_contador_0_a_15](#01_contador_0_a_15)
  - [02_contador_0_a_13](#02_contador_0_a_13)
  - [03_contador_sync](#03_contador_sync)
  - [04_acender_led](#04_acender_led)
  - [05_led_com_dois_push_bottom](#05_led_com_dois_push_bottom)
  - [06_led_liga_com_um_dos_push_bottom_pressionado](#06_led_liga_com_um_dos_push_bottom_pressionado)
  - [07_led_quatro_pulsos](#07_led_quatro_pulsos)
  - [08_barreira_luminosa](#08_barreira_luminosa)
  - [09_barreira_min_max_10_20_cm](#09_barreira_min_max_10_20_cm)
  - [10_led_pisca_4_segundos](#10_led_pisca_4_segundos)
  - [11_led_pisca_3_segundos_valor_de_contagem_diferente](#11_led_pisca_3_segundos_valor_de_contagem_diferente)
  - [12_led_pisca_3_segundos_valor_divisor_de_frequencia_de_relogio_diferente](#12_led_pisca_3_segundos_valor_divisor_de_frequencia_de_relogio_diferente)
  - [13_led_pisca_5_segundos_valor_contagem_diferente](#13_led_pisca_5_segundos_valor_contagem_diferente)
  - [14_led_pisca_5_segundos_valor_divisor_de_frequencia_de_relogio_diferente](#14_led_pisca_5_segundos_valor_divisor_de_frequencia_de_relogio_diferente)
- [Conclusão](#conclusão)

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

**O que o código faz?**

O código implementa um contador binário de 4 bits com um reset assíncrono ativo em nível baixo. Este módulo possui dois sinais de entrada: `clk`, que é o clock de entrada, e `rst_n`, que é o sinal de reset assíncrono ativo em nível baixo. A saída é um registrador de 4 bits `q`, que representa o valor atual do contador.

Dentro do módulo, há um bloco `always` que é sensível à borda negativa de `rst_n` e à borda positiva de `clk`. Isso significa que o bloco é executado sempre que o sinal de reset transita de alto para baixo ou quando o clock transita de baixo para alto. 

No bloco `always`, há uma condição que verifica o estado de `rst_n`. Se `rst_n` estiver em nível baixo (indicando um reset ativo), o contador `q` é resetado para zero (`4'b0000`). Se `rst_n` estiver em nível alto, o contador incrementa seu valor em 1 a cada borda positiva do clock (`q <= q + 1`).

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
**O que o código faz?**

O código  é usado para simular o comportamento do módulo `contador`. O objetivo deste testbench é verificar e observar o funcionamento do contador binário de 4 bits implementado no módulo `contador`.

Dentro do testbench, são declarados os seguintes sinais:

- `reg clk;` : sinal de clock que será gerado dentro do testbench.
- `reg rst_n;` : sinal de reset assíncrono ativo em nível baixo.
- `wire [3:0] q;` : sinal de saída de 4 bits que recebe o valor do contador.

O módulo `contador` é instanciado com o nome `uut` (Unit Under Test). Ele conecta os sinais definidos no testbench (`clk`, `rst_n` e `q`) às portas do módulo `contador`.

O bloco `always` gera um sinal de clock periódico, alternando o valor de `clk` a cada 5 nanosegundos. Isso cria um clock com período total de 10 nanosegundos (frequência de 100 MHz). O clock alterna entre `0` e `1` de forma contínua.

O bloco `initial` descreve uma sequência de estímulos para o teste:
1. Inicializa os sinais: `clk` é iniciado em `0` e `rst_n` (reset) em `0`.
2. Aplica o reset: após 10 nanosegundos (`#10`), `rst_n` é levado a `1`, desativando o reset.
3. Simula por 200 nanosegundos: o testbench roda a simulação por 200 nanosegundos antes de finalizar a execução com `$finish`.

Outro bloco `initial` utiliza `$monitor` para exibir os resultados em tempo real durante a simulação. A cada alteração no tempo ou no valor de `q`, o testbench imprime o tempo atual (`$time`) e o valor do contador (`q`), em binário.

O propósito deste código é simular o funcionamento do contador e garantir que ele reseta corretamente quando `rst_n` está baixo e incrementa na borda positiva do clock quando o reset está desativado (`rst_n` alto).

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

**O que o código faz?**

Este é um arquivo chamado `sim_main.cpp` que serve como programa principal para simular o comportamento do módulo Verilog `contador`, que foi previamente convertido para um modelo em C++ pela ferramenta Verilator.

O programa realiza a simulação de 256 ciclos do contador, alternando o sinal de clock, avaliando o comportamento do módulo e exibindo os resultados detalhados em um formato tabular.

- O código utiliza a classe gerada `Vcontador`, que representa o módulo Verilog `contador`.
- Inicializa o objeto `top` como uma instância do módulo.
- Define valores iniciais para os sinais de clock (`clk`) e reset (`rst_n`) como `0`.
- **Frequência do clock:** definida como `100 MHz` (`100e6`) para simular um sistema com este clock.
- **Número máximo de ciclos:** definido como `256`, o que controla a duração da simulação.
- **Reset:** O sinal de reset (`rst_n`) é mantido em nível baixo no início e o método `eval()` é chamado para avaliar o estado inicial do circuito. Em seguida, o reset é desativado (`rst_n = 1`), permitindo que o contador funcione normalmente.

O programa imprime um cabeçalho formatado para a saída da simulação, que inclui:

- O número do ciclo.
- O valor do contador (`q`) em decimal.
- O estado dos pinos de saída (`q3`, `q2`, `q1`, `q0`) representados individualmente.
- A frequência do pino mais significativo (`q3`), calculada com base na frequência do clock.

O laço `for` realiza a simulação para `max_cycles` ciclos. A cada iteração:

1. **Alterna o clock:** O clock (`clk`) é invertido a cada ciclo.
2. **Avalia o circuito:** O método `eval()` é chamado para calcular o novo estado do módulo.
3. **Exibe resultados:** No flanco de subida do clock (`if (top->clk)`), os valores do contador e outros dados são exibidos.

A frequência do pino `q3` é calculada como um submúltiplo da frequência do clock (dividida por 16, porque `q3` representa o bit mais significativo de um contador de 4 bits).

Após completar os ciclos de simulação, o objeto `top` é destruído para liberar os recursos alocados.

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

**O que o código faz?**

O módulo `contador_0_13` é projetado para contar de 0 a 13 de forma contínua,

O módulo possui os seguintes sinais:
- **Entradas:**
  - `clk`: Sinal de clock que sincroniza o incremento do contador.
  - `rst_n`: Sinal de reset assíncrono ativo em nível baixo que zera o contador.
- **Saída:**
  - `q`: Registrador de 4 bits que mantém o valor atual do contador.

Um sinal auxiliar chamado `reset` é criado para determinar se o contador deve ser reiniciado automaticamente. Ele é ativado quando o valor atual do contador (`q`) atinge 13.

O comportamento do contador é implementado em um bloco sensível à borda negativa de `rst_n` (reset assíncrono) ou à borda positiva do clock (`clk`):

1. **Reset Assíncrono:** Se `rst_n` estiver em nível baixo, o contador é zerado imediatamente.
2. **Reset Condicional:** Se o contador alcançar o valor 13 (`reset` for verdadeiro), ele é reiniciado para 0.
3. **Incremento:** Caso nenhuma das condições anteriores seja verdadeira, o contador incrementa seu valor em 1 na próxima borda positiva do clock.

Arquivo `sim/testbench_0_13.v`:

```verilog
`timescale 1ns/1ps

module testbench_0_13;
    reg clk;
    reg rst_n;
    wire [3:0] q;

    // Instancia o módulo do contador
    contador_0_13 uut (
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

        // Executa a simulação por 300 ns
        #300;
        $finish;
    end

    // Monitora a saída
    initial begin
        $monitor("Tempo: %0t | Contagem: %b", $time, q);
    end
endmodule
```

**O que o código faz?**

O módulo se chama `testbench_0_13`. Ele utiliza o módulo `contador_0_13` como Unidade Sob Teste (Unit Under Test, UUT) e fornece sinais de entrada (`clk` e `rst_n`) para testar seu comportamento. O testbench observa a saída (`q`) e imprime os resultados no console durante a simulação.

Os sinais declarados são:

- **`clk`**: Registrador para o clock, que controla a sincronização do contador.
- **`rst_n`**: Registrador para o reset assíncrono ativo em nível baixo.
- **`q`**: Fio (wire) que conecta a saída do módulo `contador_0_13`.

O módulo `contador_0_13` é instanciado com o nome `uut` (Unit Under Test), conectando os sinais do testbench às portas do módulo.

Um bloco `always` gera um sinal de clock periódico alternando o valor de `clk` a cada 5 nanosegundos. Isso cria um clock com período total de 10 nanosegundos (frequência de 100 MHz).

Um bloco `initial` descreve a sequência de estímulos para a simulação:

1. **Inicialização dos sinais:** O clock (`clk`) começa em `0` e o reset (`rst_n`) é ativado (`0`).
2. **Desativação do reset:** Após 10 nanosegundos (`#10`), o reset é desativado (`rst_n = 1`), permitindo que o contador comece a funcionar.
3. **Simulação por 300 nanosegundos:** A simulação continua por 300 nanosegundos antes de finalizar com `$finish`.

Outro bloco `initial` utiliza `$monitor` para exibir o tempo simulado (`$time`) e o valor atual da contagem (`q`) no console. A saída é atualizada sempre que houver mudanças nos sinais monitorados.

Arquivo `sim_main_0_13.cpp`:

```cpp
#include "Vcontador_0_13.h"
#include "verilated.h"
#include <iostream>
#include <iomanip>

int main(int argc, char** argv, char** env) {
    Verilated::commandArgs(argc, argv);
    Vcontador_0_13* top = new Vcontador_0_13;

    // Configuração inicial
    top->clk = 0;
    top->rst_n = 0;

    // Constantes
    const double clock_frequency = 100e6; // Frequência do clock (100 MHz)
    const int max_cycles = 300; // Número de ciclos a simular

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
            double q3_frequency = clock_frequency / 14;

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

**O que o código faz?**

O programa, chamado `sim_main.cpp`, é um simulador que utiliza a classe `Vcontador_0_13`, gerada pelo Verilator a partir do módulo Verilog `contador_0_13`. Ele executa uma simulação com 300 ciclos de clock e monitora o comportamento do contador, especialmente como ele reseta automaticamente ao atingir o valor 13.

1. **Criação do objeto simulador:** Uma instância de `Vcontador_0_13` é criada como `top` para representar o módulo Verilog.
2. **Inicialização dos sinais:** 
   - `clk` (clock) é inicializado com `0`.
   - `rst_n` (reset ativo em nível baixo) é inicializado com `0`.
3. **Reset inicial:** O método `eval()` é chamado para calcular o estado inicial do módulo. O reset é então desativado (`rst_n = 1`) para permitir que o contador funcione.
4. **Frequência do clock:** Definida como `100 MHz` (`100e6`) para simular um sistema com esta frequência.
5. **Número máximo de ciclos:** Limitado a `300` para controlar a duração da simulação.

Antes de iniciar a simulação, o programa imprime um cabeçalho formatado no console. Este cabeçalho inclui:

- O número do ciclo completo.
- O valor atual do contador (`q`) em decimal.
- O estado de cada pino de saída (`q3`, `q2`, `q1`, `q0`) em binário.
- A frequência correspondente ao bit mais significativo (`q3`).

O programa utiliza um laço `for` para simular o contador por 300 ciclos. A cada iteração:

1. **Alterna o sinal de clock (`clk`):** O clock muda de 0 para 1 ou de 1 para 0 a cada ciclo.
2. **Avalia o estado do módulo:** O método `eval()` é chamado para recalcular o estado interno do módulo.
3. **Exibe os resultados no flanco de subida:** Quando o clock está em nível alto (`if (top->clk)`), os resultados são calculados e exibidos no console.

A frequência de `Q3` (bit mais significativo) é calculada com base na frequência do clock dividida por 14, pois `Q3` completa um ciclo completo (de 0 a 1 e volta a 0) a cada 14 incrementos do contador.

Após a simulação dos 300 ciclos, o objeto `top` é destruído para liberar recursos alocados.

## 03_contador_sync

Elabore um contador síncrono do seguinte diagrama de estados: (os estados que faltam considerem que todos vão para 1).

![A imagem mostra um grafo orientado composto por cinco nós, conectados por setas que indicam a direção das relações entre eles. Os nós são representados por círculos e elipses com bordas brancas e preenchimento marrom. Cada nó contém um número centralizado que o identifica. Abaixo estão os detalhes da estrutura: O nó 1 está conectado ao nó 7 através de uma seta direcionada para a direita. O nó 7 está conectado ao nó 8 por uma seta direcionada para a direita. O nó 8 está conectado ao nó 10 por uma seta direcionada para a direita. O nó 10 está conectado ao nó 11 por uma seta direcionada para a esquerda. O nó 11 está conectado ao nó 1 através de uma seta direcionada para a esquerda. A estrutura forma um ciclo direcionado com conexões adicionais, caracterizando uma rede fechada de relações.](image.png)

**Identificação dos estados e transições**

No diagrama, os estados são:

- 1
- 7
- 8
- 10
- 11

As transições entre os estados são:

- 1 → 7
- 7 → 8
- 8 → 10
- 10 → 11
- 11 → 1

**Designação dos estados em binário**

Para representar os estados em binário e utilizar Flip-Flops para criar o contador, vamos atribuir um código binário para cada estado. Como temos cinco estados distintos, precisamos de pelo menos 3 bits:

| Estado Decimal | Estado | Binário |
|----------------|--------|---------|
| 1              | 1      | 001     |
| 7              | 7      | 111     |
| 8              | 8      | 000     |
| 10             | 10     | 010     |
| 11             | 11     | 011     |

**Configuração dos Flip-Flops JK**

Como vamos usar Flip-Flops JK, precisamos criar a tabela de transições e definir as entradas $J$ e $K$ para cada Flip-Flop para que eles alterem seu estado conforme o diagrama.

**Tabela de transição dos estados**

| Estado Atual | Próximo Estado | Q2 Atual | Q1 Atual | Q0 Atual | Q2 Próx | Q1 Próx | Q0 Próx |
|--------------|----------------|----------|----------|----------|---------|---------|---------|
| 001          | 111            | 0        | 0        | 1        | 1       | 1       | 1       |
| 111          | 000            | 1        | 1        | 1        | 0       | 0       | 0       |
| 000          | 010            | 0        | 0        | 0        | 0       | 1       | 0       |
| 010          | 011            | 0        | 1        | 0        | 0       | 1       | 1       |
| 011          | 001            | 0        | 1        | 1        | 0       | 0       | 1       |

**Tabela de transição do contador síncrono**

| Estado Atual (Q2, Q1, Q0) | Próximo Estado (Q2', Q1', Q0') | Q2 Atual | Q1 Atual | Q0 Atual | Q2 Próx | Q1 Próx | Q0 Próx |
|---------------------------|--------------------------------|----------|----------|----------|---------|---------|---------|
| 001                       | 111                          | 0        | 0        | 1        | 1       | 1       | 1       |
| 111                       | 000                          | 1        | 1        | 1        | 0       | 0       | 0       |
| 000                       | 010                          | 0        | 0        | 0        | 0       | 1       | 0       |
| 010                       | 011                          | 0        | 1        | 0        | 0       | 1       | 1       |
| 011                       | 001                          | 0        | 1        | 1        | 0       | 0       | 1       |

**Tabela de transição com entradas $J$ e $K$ para Flip-Flops**

| Estado Atual (Q2, Q1, Q0) | Próximo Estado (Q2', Q1', Q0') | Q2 Atual | Q1 Atual | Q0 Atual | Q2 Próx | Q1 Próx | Q0 Próx | J2 | K2 |
|---------------------------|--------------------------------|----------|----------|----------|---------|---------|---------|----|----|
| 001                       | 111                          | 0        | 0        | 1        | 1       | 1       | 1       | 1  | 0  |
| 111                       | 000                          | 1        | 1        | 1        | 0       | 0       | 0       | 0  | 1  |
| 000                       | 010                          | 0        | 0        | 0        | 0       | 1       | 0       | 1  | 1  |
| 010                       | 011                          | 0        | 1        | 0        | 0       | 1       | 1       | 1  | 1  |
| 011                       | 001                          | 0        | 1        | 1        | 0       | 0       | 1       | 1  | 1  |

**Configuração do circuito**

Com essas configurações, é possível implementar o contador síncrono usando Flip-Flops JK para seguir a sequência de estados indicada no diagrama.

1. **Conecte as entradas $J$ e $K$ de cada Flip-Flop** de acordo com os valores da tabela para alternar entre os estados.
2. **Configure o contador para resetar** para o estado 1 (001) caso algum estado ausente ou inválido seja detectado.

### Apresentação e Explicação do código Verilog

A estrutura do nosso projeto 02_contador_0_a_13 é composta por:

```bash
ls
Makefile  sim  src
ls sim/
sim_main.cpp  testbench_sync.v
ls src/
contador_sync.v
```

Arquivo `contador_sync.v`:

```verilog
`timescale 1ns/1ps
module contador_sync (
    input wire clk,      // Clock
    input wire rst_n,    // Reset ativo em nível baixo
    output reg [2:0] q   // Saída de 3 bits (Q2, Q1, Q0)
);
    // Próximo estado do contador
    reg [2:0] next_state;

    // Lógica de transição de estados
    always @(*) begin
        case (q)
            3'b001: next_state = 3'b111; // Estado 1 -> Estado 7
            3'b111: next_state = 3'b000; // Estado 7 -> Estado 8
            3'b000: next_state = 3'b010; // Estado 8 -> Estado 10
            3'b010: next_state = 3'b011; // Estado 10 -> Estado 11
            3'b011: next_state = 3'b001; // Estado 11 -> Estado 1
            default: next_state = 3'b001; // Estados inválidos retornam para 1
        endcase
    end

    // Atualização dos estados no flanco de subida do clock ou reset
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n)
            q <= 3'b001; // Reset: retorna ao estado inicial (1)
        else
            q <= next_state; // Atualiza para o próximo estado
    end
endmodule
```

**O que o código faz?**

O módulo `contador_sync` é projetado para realizar transições síncronas de estados entre valores específicos, definidos pela lógica de transição no bloco `always`.

- **Entradas:**
  - `clk`: Sinal de clock que sincroniza a transição de estados.
  - `rst_n`: Sinal de reset ativo em nível baixo que retorna o contador ao estado inicial.
- **Saída:**
  - `q`: Registrador de 3 bits que mantém o estado atual do contador.
- **Variável Auxiliar:**
  - `next_state`: Registrador de 3 bits usado para armazenar o próximo estado do contador. Ele é calculado com base no estado atual (`q`) e atualizado a cada ciclo de clock.

  O bloco `always @(*)` descreve a lógica combinacional para determinar o próximo estado (`next_state`) com base no estado atual (`q`). 

**Sequência de Estados:**

1. Estado `001` (1) → `111` (7)
2. Estado `111` (7) → `000` (8)
3. Estado `000` (8) → `010` (10)
4. Estado `010` (10) → `011` (11)
5. Estado `011` (11) → `001` (1)
6. Qualquer estado inválido retorna para `001` (1).

O bloco `always @(posedge clk or negedge rst_n)` descreve a lógica sequencial que atualiza o estado atual (`q`):

1. **Reset Assíncrono:** Se `rst_n` for levado a nível baixo, o estado é forçado para `3'b001` (estado inicial).
2. **Transição de Estados:** Se o reset não estiver ativo (`rst_n` em nível alto), o estado atual (`q`) é atualizado com o próximo estado (`next_state`), calculado previamente.

Arquivo `sim/testbench_sync.v`:

```verilog
`timescale 1ns/1ps
module testbench_sync;
    reg clk;
    reg rst_n;
    wire [2:0] q;

    // Instancia o módulo do contador síncrono
    contador_sync uut (
        .clk(clk),
        .rst_n(rst_n),
        .q(q)
    );

    // Clock auxiliar para simulação
    initial clk = 0;
    always begin
        #5 clk <= ~clk; // Usa atribuição não bloqueante
    end

    initial begin
        // Inicializa os sinais
        clk = 0;
        rst_n = 0;

        // Aplica o reset
        #10;
        rst_n = 1;

        // Simula por 200 ns
        #200;
        $finish;
    end

    // Monitora as transições dos estados
    initial begin
        $monitor("Tempo: %0t | Estado Atual: %b", $time, q);
    end
endmodule
```

**O que o código faz?**

O módulo `testbench_sync` é utilizado para testar o comportamento do módulo `contador_sync`. Ele faz a instância do módulo `contador_sync` como Unidade Sob Teste (Unit Under Test, `uut`), fornecendo estímulos como clock (`clk`) e reset (`rst_n`) enquanto monitora a saída (`q`).

Os sinais declarados são:

- **`clk`**: Registrador usado para o sinal de clock, que alterna periodicamente e controla a transição de estados.
- **`rst_n`**: Registrador usado para o reset ativo em nível baixo, que inicializa o contador ao estado inicial.
- **`q`**: Fio (`wire`) conectado à saída do módulo `contador_sync`, representando o estado atual do contador.

O sinal de clock (`clk`) é gerado usando um bloco `initial` e um bloco `always`:

1. O clock começa em `0` no início da simulação.
2. O bloco `always` alterna o valor de `clk` a cada 5 nanosegundos, criando um clock com período de 10 nanosegundos (frequência de 100 MHz).

Um bloco `initial` descreve os estímulos para o teste:

1. Inicializa os sinais:
   - O clock (`clk`) começa em `0`.
   - O reset (`rst_n`) também é inicializado em `0` (ativo).
2. Após 10 nanosegundos, o reset é desativado (`rst_n = 1`), permitindo que o contador funcione.
3. A simulação é executada por 200 nanosegundos antes de ser finalizada com `$finish`.

Um segundo bloco `initial` utiliza `$monitor` para exibir no console o tempo simulado (`$time`) e o estado atual do contador (`q`). Isso é útil para observar as transições de estados durante a simulação.

Arquivo `sim_main.cpp`:

```cpp
#include "Vcontador_sync.h"       // Arquivo gerado pelo Verilator para o módulo Verilog
#include "verilated.h"            // Biblioteca principal do Verilator

int main(int argc, char** argv) {
    Verilated::commandArgs(argc, argv);  // Processa argumentos do Verilator
    Vcontador_sync* top = new Vcontador_sync;  // Instancia o módulo Verilog

    // Inicializa os sinais
    top->clk = 0;
    top->rst_n = 0;

    // Realiza o reset
    top->eval();
    top->rst_n = 1;

    // Cabeçalho para exibição
    printf("Ciclo\tQ2\tQ1\tQ0\tEstado Atual\n");
    printf("-------------------------------------------------\n");

    // Simula 100 ciclos de clock
    for (int i = 0; i < 100; ++i) {
        // Gera os flancos do clock
        top->clk = !top->clk;
        top->eval();  // Avalia o módulo Verilog

        // Exibe os estados no terminal
        if (top->clk) {
            printf("%d\t%d\t%d\t%d\t%b%b%b\n", 
                   i / 2,                      // Ciclo
                   (top->q >> 2) & 1,         // Pino Q2
                   (top->q >> 1) & 1,         // Pino Q1
                   top->q & 1,                // Pino Q0
                   (top->q >> 2) & 1,         // Estado Atual: Q2
                   (top->q >> 1) & 1,         // Estado Atual: Q1
                   top->q & 1                 // Estado Atual: Q0
            );
        }
    }

    delete top;  // Limpa a memória
    return 0;
}
```

**O que o código faz?**

O programa é uma simulação baseada no modelo C++ gerado pelo Verilator a partir do módulo `contador_sync`. Ele executa 100 ciclos de clock e imprime os valores dos bits de saída (`Q2`, `Q1`, `Q0`) e o estado atual do contador no console.

**Configuração Inicial**

1. **Instanciação do módulo simulador:**
   - `Vcontador_sync* top` cria uma instância do módulo `contador_sync`, que foi traduzido para C++ pelo Verilator.
2. **Inicialização dos sinais:**
   - `clk`: Sinal de clock, começa em `0`.
   - `rst_n`: Sinal de reset ativo em nível baixo, também inicializado como `0` (ativo).

**Reset Inicial**

O programa realiza um reset inicial para configurar o contador no estado inicial. Após o reset, `rst_n` é definido como `1` para desativar o reset e permitir que o contador inicie sua sequência de estados.

Antes de iniciar a simulação, o programa imprime um cabeçalho no console para organizar a exibição dos resultados. Os campos incluem:

- **Ciclo:** Número do ciclo simulado.
- **`Q2`, `Q1`, `Q0`:** Estados individuais dos bits de saída.
- **Estado Atual:** Representação completa do estado do contador.

O programa utiliza um laço `for` para simular 100 ciclos de clock:

1. **Geração do clock:**
   - O sinal `clk` alterna entre `0` e `1` a cada iteração do laço.
2. **Avaliação do estado:**
   - O método `eval()` é chamado para calcular o próximo estado do módulo com base no valor atual de `clk`, `rst_n` e outros sinais.
3. **Exibição no flanco de subida:**
   - Os valores dos bits de saída (`Q2`, `Q1`, `Q0`) e o estado completo são exibidos apenas quando `clk` está em nível alto.

Após a simulação dos 100 ciclos, o objeto `top` é destruído para liberar a memória alocada.

## 04_acender_led

O projeto descreve, simula e valida o funcionamento de um circuito simples que acende um LED baseado no estado de um botão.

A estrutura do projeto é composta por:

```bash
sim/:
sim_main.cpp  testbench.v

src/:
circuito.v
```

**Onde:**

**`circuito.v`**

```verilog
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
```

  - Implementa uma lógica combinacional onde a saída (`pino13`) depende do estado da entrada (`pino2`).
  - Se `pino2` está em nível alto (1), `pino13` também estará em nível alto, indicando que o LED está aceso.
  - Se `pino2` está em nível baixo (0), `pino13` estará em nível baixo, desligando o LED.

**`sim_main.cpp`**

```cpp
#include <verilated.h>
#include "Vcircuito.h"
#include <string> // Para usar std::string

int main(int argc, char **argv) {
    Verilated::commandArgs(argc, argv);

    // Instancia o circuito
    Vcircuito *uut = new Vcircuito;

    // Cabeçalho da saída
    printf("Simulação do circuito (Entrada -> Saída):\n");
    printf("Tempo | pino2 | pino13 | Estado do LED\n");

    // Estado inicial: botão não pressionado
    uut->pino2 = 0;
    uut->eval();
    printf("0     | %d     | %d      | %s\n", uut->pino2, uut->pino13, uut->pino13 ? "Ligado" : "Desligado");

    // Simula o botão pressionado
    uut->pino2 = 1;
    uut->eval();
    printf("10    | %d     | %d      | %s\n", uut->pino2, uut->pino13, uut->pino13 ? "Ligado" : "Desligado");

    // Simula o botão solto novamente
    uut->pino2 = 0;
    uut->eval();
    printf("20    | %d     | %d      | %s\n", uut->pino2, uut->pino13, uut->pino13 ? "Ligado" : "Desligado");

    // Finaliza a simulação
    delete uut;
    return 0;
}
```

  - Simula o circuito modelado no arquivo `circuito.v` e imprime os resultados em diferentes instantes.
  - Inicializa `pino2` como 0 (botão não pressionado) e avalia `pino13`.
  - Altera `pino2` para 1 (botão pressionado) e reavalia `pino13`.
  - Retorna `pino2` para 0 e realiza a avaliação final.
  - Usa funções da biblioteca Verilator para instanciar e avaliar o circuito.

**`testbench.v`**

```verilog
`timescale 1ns/1ps

module testbench;

// Declaração dos sinais de teste
reg pino2;
wire pino13;

// Instancia o circuito
circuito uut (
    .pino2(pino2),
    .pino13(pino13)
);

initial begin
    // Inicializa os sinais
    $display("Início da simulação");
    $display("Tempo | pino2 | pino13");
    pino2 = 0;
    #10; // Aguarda 10 unidades de tempo
    $display("%0t    | %b     | %b", $time, pino2, pino13);

    // Simula o botão pressionado
    pino2 = 1;
    #10; // Aguarda 10 unidades de tempo
    $display("%0t    | %b     | %b", $time, pino2, pino13);

    // Solta o botão
    pino2 = 0;
    #10;
    $display("%0t    | %b     | %b", $time, pino2, pino13);

    $display("Fim da simulação");
    $finish; // Finaliza a simulação
end

endmodule
```

  - Gera sinais de teste (`pino2`) para simular cenários como botão pressionado e não pressionado.
  - Monitora a saída (`pino13`) em cada cenário.
  - Usa `$display` para registrar os valores de entrada e saída no console, junto com o tempo simulado.
  - Finaliza a simulação com `$finish`.

## 05_led_com_dois_push_bottom

Este projeto expande o circuito do projeto anterior para incluir dois botões como entradas. O LED é aceso apenas se ambos os botões forem pressionados simultaneamente.

A estrutura do projeto é composta por:

```bash
sim/:
sim_main.cpp  testbench.v

src/:
circuito.v
```

**Onde:**

**`circuito.v`**

```verilog
module circuito (
    input wire pino2,       // Primeiro botão
    input wire pino3,       // Segundo botão
    output reg pino13       // Saída conectada ao LED
);

always @(*) begin
    if (pino2 && pino3)     // LED ligado apenas se ambos os botões forem pressionados
        pino13 = 1'b1;
    else
        pino13 = 1'b0;
end

endmodule
```

- Simula um circuito lógico com duas entradas (`pino2`, `pino3`) e uma saída (`pino13`). acende um LED (`pino13`) apenas quando dois botões (`pino2` e `pino3`) são pressionados simultaneamente.
- Usa uma operação lógica `AND` para verificar se ambos os botões estão pressionados.
- Usa uma condição `if` para verificar se ambas as entradas estão em nível alto.
- Saída (`pino13`) é configurada para nível alto (`1'b1`) somente quando `pino2` e `pino3` são altos.

**`sim_main.cpp`**
   
   ```cpp
#include <verilated.h>
#include "Vcircuito.h"

int main(int argc, char **argv) {
    Verilated::commandArgs(argc, argv);

    // Instancia o circuito
    Vcircuito *uut = new Vcircuito;

    // Cabeçalho da saída
    printf("Simulação do circuito (Dois botões):\n");
    printf("Tempo | pino2 | pino3 | pino13 | Estado do LED\n");

    // Cenário 1: Nenhum botão pressionado
    uut->pino2 = 0;
    uut->pino3 = 0;
    uut->eval();
    printf("0     | %d     | %d     | %d      | %s\n", uut->pino2, uut->pino3, uut->pino13, uut->pino13 ? "Ligado" : "Desligado");

    // Cenário 2: Apenas o botão 1 pressionado
    uut->pino2 = 1;
    uut->pino3 = 0;
    uut->eval();
    printf("10    | %d     | %d     | %d      | %s\n", uut->pino2, uut->pino3, uut->pino13, uut->pino13 ? "Ligado" : "Desligado");

    // Cenário 3: Apenas o botão 2 pressionado
    uut->pino2 = 0;
    uut->pino3 = 1;
    uut->eval();
    printf("20    | %d     | %d     | %d      | %s\n", uut->pino2, uut->pino3, uut->pino13, uut->pino13 ? "Ligado" : "Desligado");

    // Cenário 4: Ambos os botões pressionados
    uut->pino2 = 1;
    uut->pino3 = 1;
    uut->eval();
    printf("30    | %d     | %d     | %d      | %s\n", uut->pino2, uut->pino3, uut->pino13, uut->pino13 ? "Ligado" : "Desligado");

    // Finaliza a simulação
    delete uut;
    return 0;
}
   ```
- Avalia e imprime o estado do LED para diferentes combinações de estados dos dois botões.
- Simula os seguintes cenários:
   - Nenhum botão pressionado (`pino2 = 0`, `pino3 = 0`).
   - Apenas o primeiro botão pressionado (`pino2 = 1`, `pino3 = 0`).
   - Apenas o segundo botão pressionado (`pino2 = 0`, `pino3 = 1`).
   - Ambos os botões pressionados (`pino2 = 1`, `pino3 = 1`).
- Usa funções da biblioteca Verilator para avaliar o estado do circuito e imprime os resultados no console.

**`testbench.v`**

```verilog
`timescale 1ns/1ps

module testbench;

// Declaração dos sinais de teste
reg pino2, pino3;
wire pino13;

// Instancia o circuito
circuito uut (
    .pino2(pino2),
    .pino3(pino3),
    .pino13(pino13)
);

initial begin
    // Cabeçalho da simulação
    $display("Simulação do circuito (Dois botões):");
    $display("Tempo | pino2 | pino3 | pino13 | Estado do LED");

    // Cenário 1: Nenhum botão pressionado
    pino2 = 0; pino3 = 0;
    #10;
    $display("%0t    | %b     | %b     | %b      | %s", $time, pino2, pino3, pino13, pino13 ? "Ligado" : "Desligado");

    // Cenário 2: Apenas o botão 1 pressionado
    pino2 = 1; pino3 = 0;
    #10;
    $display("%0t    | %b     | %b     | %b      | %s", $time, pino2, pino3, pino13, pino13 ? "Ligado" : "Desligado");

    // Cenário 3: Apenas o botão 2 pressionado
    pino2 = 0; pino3 = 1;
    #10;
    $display("%0t    | %b     | %b     | %b      | %s", $time, pino2, pino3, pino13, pino13 ? "Ligado" : "Desligado");

    // Cenário 4: Ambos os botões pressionados
    pino2 = 1; pino3 = 1;
    #10;
    $display("%0t    | %b     | %b     | %b      | %s", $time, pino2, pino3, pino13, pino13 ? "Ligado" : "Desligado");

    $display("Fim da simulação.");
    $finish;
end

endmodule
```

- Gera sinais de teste para as entradas (`pino2`, `pino3`) e monitora a saída (`pino13`).
- Testa os mesmos cenários descritos no arquivo `sim_main.cpp` (nenhum botão pressionado, apenas o primeiro botão pressionado, apenas o segundo botão pressionado e ambos os botões pressionados).
- Usa `$display` para registrar o estado do LED para cada combinação de entrada.
- Finaliza a simulação com `$finish`.

## 06_led_liga_com_um_dos_push_bottom_pressionado

Este projeto modela, simula e valida um circuito lógico que acende um LED caso qualquer um dos dois botões seja pressionado.

A estrutura do projeto é composta por:

```bash
sim/:
sim_main.cpp  testbench.v

src/:
circuito.v
```

**Onde:**

**`circuito.v`**

```verilog
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
```

- Implementa um circuito lógico com duas entradas (`pino2`, `pino3`) e uma saída (`pino13`). O LED é aceso se qualquer um dos botões for pressionado.
- Usa uma operação lógica `OR` para verificar se pelo menos um dos botões está pressionado.
- Usa uma condição `if` para verificar se pelo menos uma das entradas está em nível alto.
- A saída (`pino13`) é configurada para nível alto (`1'b1`) se `pino2` ou `pino3` estiverem em nível alto.

**`sim_main.cpp`**

```cpp
#include <verilated.h>
#include "Vcircuito.h"

int main(int argc, char **argv) {
    Verilated::commandArgs(argc, argv);

    // Instancia o circuito
    Vcircuito *uut = new Vcircuito;

    // Cabeçalho da saída
    printf("Simulação do circuito (Ou um botão ou outro):\n");
    printf("Tempo | pino2 | pino3 | pino13 | Estado do LED\n");

    // Cenário 1: Nenhum botão pressionado
    uut->pino2 = 0;
    uut->pino3 = 0;
    uut->eval();
    printf("0     | %d     | %d     | %d      | %s\n", uut->pino2, uut->pino3, uut->pino13, uut->pino13 ? "Ligado" : "Desligado");

    // Cenário 2: Apenas o botão 1 pressionado
    uut->pino2 = 1;
    uut->pino3 = 0;
    uut->eval();
    printf("10    | %d     | %d     | %d      | %s\n", uut->pino2, uut->pino3, uut->pino13, uut->pino13 ? "Ligado" : "Desligado");

    // Cenário 3: Apenas o botão 2 pressionado
    uut->pino2 = 0;
    uut->pino3 = 1;
    uut->eval();
    printf("20    | %d     | %d     | %d      | %s\n", uut->pino2, uut->pino3, uut->pino13, uut->pino13 ? "Ligado" : "Desligado");

    // Cenário 4: Ambos os botões pressionados
    uut->pino2 = 1;
    uut->pino3 = 1;
    uut->eval();
    printf("30    | %d     | %d     | %d      | %s\n", uut->pino2, uut->pino3, uut->pino13, uut->pino13 ? "Ligado" : "Desligado");

    // Finaliza a simulação
    delete uut;
    return 0;
}
```

- Avalia e imprime o estado do LED para diferentes combinações de estados dos dois botões.
- Simula os seguintes cenários:
   - Nenhum botão pressionado (`pino2 = 0`, `pino3 = 0`).
   - Apenas o primeiro botão pressionado (`pino2 = 1`, `pino3 = 0`).
   - Apenas o segundo botão pressionado (`pino2 = 0`, `pino3 = 1`).
   - Ambos os botões pressionados (`pino2 = 1`, `pino3 = 1`).
- Usa funções da biblioteca Verilator para avaliar o estado do circuito e imprime os resultados no console.

**`testbench.v`**

```verilog
`timescale 1ns/1ps

module testbench;

// Declaração dos sinais de teste
reg pino2, pino3;
wire pino13;

// Instancia o circuito
circuito uut (
    .pino2(pino2),
    .pino3(pino3),
    .pino13(pino13)
);

initial begin
    // Cabeçalho da simulação
    $display("Simulação do circuito (Ou um botão ou outro):");
    $display("Tempo | pino2 | pino3 | pino13 | Estado do LED");

    // Cenário 1: Nenhum botão pressionado
    pino2 = 0; pino3 = 0;
    #10;
    $display("%0t    | %b     | %b     | %b      | %s", $time, pino2, pino3, pino13, pino13 ? "Ligado" : "Desligado");

    // Cenário 2: Apenas o botão 1 pressionado
    pino2 = 1; pino3 = 0;
    #10;
    $display("%0t    | %b     | %b     | %b      | %s", $time, pino2, pino3, pino13, pino13 ? "Ligado" : "Desligado");

    // Cenário 3: Apenas o botão 2 pressionado
    pino2 = 0; pino3 = 1;
    #10;
    $display("%0t    | %b     | %b     | %b      | %s", $time, pino2, pino3, pino13, pino13 ? "Ligado" : "Desligado");

    // Cenário 4: Ambos os botões pressionados
    pino2 = 1; pino3 = 1;
    #10;
    $display("%0t    | %b     | %b     | %b      | %s", $time, pino2, pino3, pino13, pino13 ? "Ligado" : "Desligado");

    $display("Fim da simulação.");
    $finish;
end

endmodule
```

- Gera sinais de teste para as entradas (`pino2`, `pino3`) e monitora a saída (`pino13`).
- Testa os mesmos cenários descritos no arquivo `sim_main.cpp` (nenhum botão pressionado, apenas o primeiro botão pressionado, apenas o segundo botão pressionado e ambos os botões pressionados).
- Usa `$display` para registrar o estado do LED para cada combinação de entrada.
- Finaliza a simulação com `$finish`.

## 07_led_quatro_pulsos

O projeto simula um circuito que detecta mudanças de estado em um botão, utiliza um contador para contar os pulsos e acende um LED no quarto pulso. 

A estrutura do projeto é composta por:

```bash
sim/:
sim_main.cpp  testbench.v

src/:
circuito.v
```

**Onde:**

**`circuito.v`**

```verilog
module circuito (
    input wire clk,          // Relógio para sincronizar a contagem
    input wire reset,        // Reset para reiniciar o contador
    input wire botao,        // Entrada do botão
    output reg led,          // Saída conectada ao LED
    output reg [2:0] contador_out // Exposição do contador para depuração
);

    reg botao_anterior;      // Estado anterior do botão
    reg [2:0] contador;      // Contador de 3 bits (0 a 7)

    initial begin
        botao_anterior = 0;
        contador = 0;
        led = 0;
    end

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            contador <= 0;
            botao_anterior <= 0;
            led <= 0;
        end else begin
            // Detecta borda de subida do botão (0 -> 1)
            if (botao && !botao_anterior) begin
                contador <= contador + 1; // Incrementa o contador
            end

            // Atualiza o estado anterior do botão
            botao_anterior <= botao;

            // Liga o LED exatamente no 4º pulso
            if (contador == 4) begin
                led <= 1;       // Liga o LED
                contador <= 0;  // Reseta o contador
            end else begin
                led <= 0;       // Mantém o LED desligado
            end
        end

        // Atualiza a saída do contador para depuração
        contador_out <= contador;
    end

endmodule
```

- Define o módulo circuito que implementa um contador controlado por clock.
- Detecta mudanças de estado em um botão e acende o LED no quarto pulso.
- Contador de 3 bits (contador) armazena o número de pulsos do botão.
- O LED (led) é ativado no quarto pulso e o contador é reiniciado.
- O estado anterior do botão (botao_anterior) é armazenado para detectar bordas de subida.
- Inclui um reset para reinicializar o circuito.

**`sim_main.cpp`**

```cpp
#include <verilated.h>
#include "Vcircuito.h"

int main(int argc, char **argv) {
    Verilated::commandArgs(argc, argv);

    // Instancia o circuito
    Vcircuito *uut = new Vcircuito;

    // Inicializa os sinais
    uut->clk = 0;
    uut->reset = 1;
    uut->botao = 0;

    printf("=========================================================\n");
    printf("Simulação do circuito (Detecção de Mudança de Estado):\n");
    printf("Tempo | Botao | Contador | LED | Estado do LED\n");
    printf("=========================================================\n");

    // Reseta o circuito
    uut->eval();
    uut->reset = 0;

    for (int i = 0; i < 40; i++) {
        // Simula pulsos do botão (pressiona e solta)
        if (i % 8 == 0) {
            uut->botao = 1; // Pressiona o botão
        } else if (i % 8 == 2) {
            uut->botao = 0; // Solta o botão
        }

        // Alterna o clock
        uut->clk = !uut->clk;
        uut->eval();

        // Verifica o estado do LED
        const char* estado_led = uut->led ? "ACESO" : "apagado";

        // Imprime os estados do botão, contador e LED
        printf("%2d    |   %d   |    %d     |  %d  | %s\n", 
               i, uut->botao, uut->contador_out, uut->led, estado_led);

        // Destaque para o LED aceso
        if (uut->led) {
            printf("---------------------------------------------------------\n");
            printf("LED ACESO no ciclo %d!\n", i);
            printf("---------------------------------------------------------\n");
        }
    }

    delete uut;
    return 0;
}
```

- Alterna o clock, aplica pulsos no botão e exibe os estados do LED e do contador no console.
- Inicializa o circuito com reset ativo e o botão desligado.
- Alterna o estado do botão em intervalos regulares para simular pulsos.
- Exibe o estado do LED e do contador em cada ciclo de clock.
- Destaca quando o LED acende.

**`testbench.v`**

```verilog
`timescale 1ns/1ps

module testbench;

    reg clk;
    reg reset;
    reg botao;
    wire led;

    // Instancia o módulo circuito
    circuito uut (
        .clk(clk),
        .reset(reset),
        .botao(botao),
        .led(led)
    );

    // Gera o sinal de clock
    always #5 clk = ~clk;

    initial begin
        // Inicializa os sinais
        clk = 0;
        reset = 0;
        botao = 0;

        $display("Simulação do circuito (Detecção de Mudança de Estado):");
        $display("Tempo | Botao | LED");

        // Reseta o circuito
        reset = 1;
        #10 reset = 0;

        // Simula 8 pulsos do botão
        repeat (8) begin
            #10 botao = 1; 
            #10 botao = 0; // Simula pressão e liberação do botão
            $display("%0t    | %b     | %b", $time, botao, led);
        end

        $display("Fim da simulação.");
        $finish;
    end

endmodule
```

- Gera um sinal de clock, aplica pulsos no botão e monitora o estado do LED.
- Gera um clock contínuo alternando a cada 5 unidades de tempo.
- Simula 8 pulsos do botão, alternando entre pressionado e solto.
- Exibe o estado do botão e do LED em cada pulso.
- Finaliza a simulação com `$finish`.

## 08_barreira_luminosa

Este projeto implementa e simula um sistema que acende um LED quando um objeto é detectado a uma distância de até 8 cm.

A estrutura do projeto é composta por:

```bash
sim/:
sim_main.cpp  testbench.v

src/:
circuito.v  led_controller.v  sensor_distancia.v
```

**Onde:**

**`circuito.v`**

```verilog
module circuito (
    input wire clk,                // Clock
    input wire [7:0] distancia_cm, // Entrada de distância simulada
    output wire led,               // Saída para o LED
    output wire objeto_perto       // Exposição do sinal objeto_perto
);
    // Instância do sensor de distância
    sensor_distancia sensor (
        .distancia_cm(distancia_cm),
        .objeto_perto(objeto_perto)
    );

    // Instância do controlador do LED
    led_controller led_ctrl (
        .clk(clk),
        .objeto_perto(objeto_perto),
        .led(led)
    );
endmodule
```

- Módulo principal que conecta os subsistemas do projeto.
- Recebe um sinal de distância (`distancia_cm`) e produz as saídas `led` e `objeto_perto`.
- Passa a distância ao `sensor_distancia` para avaliar se um objeto está próximo.
- O sinal resultante controla o LED através do `led_controller`.
- O sinal `objeto_perto` é passado para o controlador do LED.
- O sinal `led` é a saída final que acende o LED.

**`led_controller.v`**

```verilog
itor_de_telas/08_barreira_luminosa$ cat src/led_controller.v
module led_controller (
    input wire clk,                // Clock
    input wire objeto_perto,       // Sinal indicando se o objeto está próximo
    output reg led                 // Saída para o LED
);

    always @(posedge clk) begin
        if (objeto_perto) begin
            led <= 1; // Liga o LED se o objeto estiver próximo
        end else begin
            led <= 0; // Desliga o LED caso contrário
        end
    end
endmodule
```

- Controla o estado do LED com base no sinal `objeto_perto` em bordas positivas do clock.
- Liga o LED (`led = 1`) se `objeto_perto` for verdadeiro.
- Desliga o LED (`led = 0`) caso contrário.

**`sensor_distancia.v`**

```verilog
module sensor_distancia (
    input wire [7:0] distancia_cm,
    output reg objeto_perto
);
    always @(*) begin
        objeto_perto = (distancia_cm <= 8) ? 1'b1 : 1'b0;
    end
endmodule
```

- Determina se um objeto está próximo com base na entrada `distancia_cm`.
- Gera `objeto_perto = 1` se `distancia_cm <= 8`.
- Caso contrário, `objeto_perto = 0`.
- O sinal `objeto_perto` é usado para controlar o LED.

**`sim_main.cpp`**

```cpp
#include "Vcircuito.h"
#include "verilated.h"
#include <iostream> // Para std::cout
#include <iomanip>  // Para formatação

int main(int argc, char** argv, char** env) {
    Verilated::commandArgs(argc, argv);

    // Instância do módulo top-level gerado pelo Verilator
    Vcircuito* top = new Vcircuito;

    // Tempo de simulação
    vluint64_t main_time = 0;
    const vluint64_t sim_time = 1000; // Duração total da simulação

    // Cabeçalho da tabela
    std::cout << "+------------+---------------+-------------+---------------+" << std::endl;
    std::cout << "| Tempo (ns) | Distancia_cm  | LED         | Objeto_Perto  |" << std::endl;
    std::cout << "+------------+---------------+-------------+---------------+" << std::endl;

    // Loop de simulação
    while (main_time < sim_time) {
        // Atualiza o clock
        top->clk = (main_time % 10) < 5;

        // Simula mudanças na distância
        if (main_time < 200) top->distancia_cm = 20;
        else if (main_time < 400) top->distancia_cm = 10;
        else if (main_time < 600) top->distancia_cm = 8;
        else top->distancia_cm = 5;

        // Avalia o circuito
        top->eval();

        // Imprime os sinais no terminal
        if ((main_time % 10) == 0) {
            std::cout << "| " << std::setw(10) << main_time
                      << " | " << std::setw(13) << (int)top->distancia_cm
                      << " | " << std::setw(11) << (top->led ? "LIGADO" : "DESLIGADO")
                      << " | " << std::setw(13) << (top->objeto_perto ? "SIM" : "NÃO")
                      << " |" << std::endl;
        }

        // Avança o tempo
        main_time++;
    }

    // Rodapé da tabela
    std::cout << "+------------+---------------+-------------+---------------+" << std::endl;

    // Limpeza
    delete top;
    return 0;
}
```

- Simulação do módulo `circuito` utilizando Verilator.
- Imprime os estados de `distancia_cm`, `led` e `objeto_perto` ao longo do tempo.
- Gera valores simulados para `distancia_cm`.
- Avalia o circuito em intervalos de tempo e exibe os resultados em uma tabela no console.

**`testbench.v`**

```verilog
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
```

- Simula o comportamento do sistema com diferentes distâncias.
- Gera um clock de 10 ns e alterna a distância simulada.
- Grava os resultados da simulação em um arquivo VCD.
- Finaliza a simulação com `$finish`.

## 09_barreira_min_max_10_20_cm

O projeto implementa um sistema que controla um LED com base em valores de distância. Ele usa dois módulos principais, sensor_distancia e led_controller, conectados no módulo circuito. O LED é aceso quando a distância está entre 10 e 20 cm.

A estrutura do projeto é composta por:

```bash
sim/:
sim_main.cpp  testbench.v

src/:
circuito.v  led_controller.v  sensor_distancia.v
```

**Onde:**

**`circuito.v`**

```verilog
module circuito (
    input wire clk,
    input wire [7:0] distancia_cm,
    output wire led,
    output wire dentro_limite
);
    // Conexão entre os módulos
    wire [7:0] saida_distancia;

    sensor_distancia sensor (
        .clk(clk),
        .distancia_cm(distancia_cm),
        .saida_distancia(saida_distancia)
    );

    led_controller led_ctrl (
        .clk(clk),
        .distancia_cm(saida_distancia),
        .led(led),
        .dentro_limite(dentro_limite)
    );
endmodule
```

- Módulo principal que conecta os subsistemas do projeto.
- Recebe um sinal de distância (`distancia_cm`) e produz as saídas `led` e `dentro_limite`.
- Passa a distância ao `sensor_distancia` para avaliar se um objeto está próximo.
- Controla o estado do LED e avalia se a distância está dentro de um intervalo permitido (10 a 20 cm).
- Liga o LED apenas quando a distância está dentro do intervalo definido.
- Também fornece o sinal `dentro_limite` como saída para indicar se a distância está dentro do intervalo permitido.

**`sensor_distancia.v`**

```verilog
module sensor_distancia (
    input wire clk,
    input wire [7:0] distancia_cm,
    output reg [7:0] saida_distancia
);
    always @(posedge clk) begin
        saida_distancia <= distancia_cm;
    end
endmodule
```

- Simula o comportamento de um sensor que atualiza o valor de saída da distância com base na entrada.
- Atua como um módulo passivo que simplesmente transmite a distância recebida.
- Atualiza o valor de `saida_distancia` em bordas positivas do clock.
- O sinal `saida_distancia` é passado para o controlador do LED.

**`led_controller.v`**

```verilog
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
```

- Controla o LED com base no intervalo da distância.
- Liga o LED (`led = 1`) se a distância estiver entre 10 e 20 cm.
- Desliga o LED (`led = 0`) caso contrário.
- Sinaliza se a distância está dentro do intervalo com o sinal `dentro_limite`.

**`sim_main.cpp`**

```cpp
#include "Vcircuito.h"
#include "verilated.h"
#include <iostream>
#include <iomanip>

int main(int argc, char **argv) {
    Verilated::commandArgs(argc, argv);
    Vcircuito *top = new Vcircuito;

    vluint64_t sim_time = 0;

    // Imprime o cabeçalho da tabela
    std::cout << "+------------+---------------+-------------+---------------+\n";
    std::cout << "| Tempo (ns) | Distancia_cm  | LED         | Dentro_Limite |\n";
    std::cout << "+------------+---------------+-------------+---------------+\n";

    while (sim_time < 1000) {
        // Simula o clock
        top->clk = (sim_time % 2 == 0);

        // Varia a distância ao longo do tempo
        if (sim_time < 200) top->distancia_cm = 25;
        else if (sim_time < 400) top->distancia_cm = 20;
        else if (sim_time < 600) top->distancia_cm = 15;
        else if (sim_time < 800) top->distancia_cm = 10;
        else top->distancia_cm = 5;

        // Avalia o circuito
        top->eval();

        // Imprime os dados em formato organizado
        if (sim_time % 10 == 0) {
            std::cout << "| " << std::setw(10) << sim_time << " | "
                      << std::setw(13) << static_cast<int>(top->distancia_cm) << " | "
                      << std::setw(11) << (top->led ? "LIGADO" : "DESLIGADO") << " | "
                      << std::setw(13) << (top->dentro_limite ? "SIM" : "NÃO") << " |\n";
        }

        sim_time++;
    }

    // Imprime o rodapé da tabela
    std::cout << "+------------+---------------+-------------+---------------+\n";

    delete top;
    return 0;
}
```

- Varia o valor da distância ao longo do tempo.
- Exibe o estado do LED e do sinal `dentro_limite` em uma tabela.
- Avalia o circuito em intervalos de tempo e exibe os resultados no console.
- Finaliza a simulação após 1000 unidades de tempo.

**`testbench.v`**

```verilog
`timescale 1ns/1ps

module testbench;
    reg clk;
    reg [7:0] distancia_cm;
    wire led;
    wire dentro_limite;

    // Instância do circuito
    circuito uut (
        .clk(clk),
        .distancia_cm(distancia_cm),
        .led(led),
        .dentro_limite(dentro_limite)
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

        distancia_cm = 25; #100; // Fora do limite, LED desligado
        distancia_cm = 20; #100; // Dentro do limite, LED ligado
        distancia_cm = 15; #100; // Dentro do limite, LED ligado
        distancia_cm = 10; #100; // Dentro do limite, LED ligado
        distancia_cm = 5;  #100; // Fora do limite, LED desligado

        $finish;
    end
endmodule
```

- Simula o comportamento do sistema com diferentes distâncias.
- Gera um clock de 10 ns e alterna a distância simulada.
- Grava os resultados da simulação em um arquivo VCD.
- Finaliza a simulação com `$finish`.
- Testa se o LED está ligado quando a distância está entre 10 e 20 cm.

## 10_led_pisca_4_segundos

Este projeto é uma extensão de sistemas de controle de LEDs, adicionando um módulo que faz o LED piscar a cada 4 segundos.

A estrutura do projeto é composta por:

```bash
sim/:
sim_main.cpp  testbench.v

src/:
circuito.v  led_blinker.v  led_controller.v  sensor_distancia.v
```

**Onde:**

**`circuito.v`**

```verilog
module circuito (
    input wire clk,
    input wire [7:0] distancia_cm,
    output wire led,
    output wire dentro_limite
);
    // Conexão entre os módulos
    wire [7:0] saida_distancia;
    wire led_controlado;

    sensor_distancia sensor (
        .clk(clk),
        .distancia_cm(distancia_cm),
        .saida_distancia(saida_distancia)
    );

    led_controller led_ctrl (
        .clk(clk),
        .distancia_cm(saida_distancia),
        .led(led_controlado),
        .dentro_limite(dentro_limite)
    );

    // LED alternando com base no clock de 4 segundos
    wire led_blink;
    led_blinker blinker (
        .clk(clk),
        .led(led_blink)
    );

    // Combinação do LED controlado e do LED que pisca
    assign led = led_controlado | led_blink;
endmodule
```

- Módulo principal que integra `sensor_distancia`, `led_controller` e `led_blinker`.
- Recebe a distância e avalia se está dentro do limite.
- Gera um LED que pisca alternadamente a cada 4 segundos.

**`led_blinker.v`**

```verilog
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
```

- Módulo que faz o LED piscar a cada 4 segundos.
- Usa um contador de 16 bits para controlar o tempo.
- Alterna o estado do LED a cada 65535 ciclos de clock (4 segundos).

**`led_controller.v`**

```verilog
module led_controller (
    input wire clk,
    input wire [7:0] distancia_cm,
    output reg led,
    output wire dentro_limite
);
    // Define dentro_limite como combinacional
    assign dentro_limite = (distancia_cm >= 10 && distancia_cm <= 20);

    // Controla o LED
    always @(posedge clk) begin
        if (distancia_cm >= 10 && distancia_cm <= 20)
            led <= 1'b1; // Liga o LED
        else
            led <= 1'b0; // Desliga o LED
    end
endmodule
```

- Controla o LED com base no intervalo da distância.
- Liga o LED (`led = 1`) se a distância estiver entre 10 e 20 cm.
- Desliga o LED (`led = 0`) caso contrário.
- Sinaliza se a distância está dentro do intervalo com o sinal `dentro_limite`.

**`sensor_distancia.v`**

```verilog
module sensor_distancia (
    input wire clk,
    input wire [7:0] distancia_cm,
    output reg [7:0] saida_distancia
);
    always @(posedge clk) begin
        saida_distancia <= distancia_cm;
    end
endmodule
```

- Atualiza e transmite o valor da distância.
- Simula um sensor que transfere a entrada distancia_cm para outros módulos.

**`sim_main.cpp`**

```cpp
#include "Vcircuito.h"
#include "verilated.h"
#include <iostream>
#include <iomanip>
#include <string>

int main(int argc, char **argv) {
    Verilated::commandArgs(argc, argv);
    Vcircuito *top = new Vcircuito;

    vluint64_t sim_time = 0;
    bool last_led_state = false; // Estado anterior do LED

    // Imprime o cabeçalho da tabela
    std::cout << "+--------------+--------------+---------------+-------------+---------------+\n";
    std::cout << "| Tempo (ns)   | Tempo (s)    | Distancia_cm  | LED         | Dentro_Limite |\n";
    std::cout << "+--------------+--------------+---------------+-------------+---------------+\n";

    while (sim_time < 420000) { // Simula por 4,2 segundos
        // Simula o clock
        top->clk = (sim_time % 2 == 0);

        // Varia a distância ao longo do tempo
        if (sim_time < 20000) top->distancia_cm = 25; // 2 ms
        else if (sim_time < 40000) top->distancia_cm = 20; // 4 ms
        else if (sim_time < 60000) top->distancia_cm = 15; // 6 ms
        else if (sim_time < 80000) top->distancia_cm = 10; // 8 ms
        else top->distancia_cm = 5;

        // Avalia o circuito
        top->eval();

        // Detecta mudanças no estado do LED
        if (sim_time % 1000 == 0) { // Imprime a cada 1000 ns
            bool current_led_state = top->led;

            // Imprime os dados normais
            std::cout << "| " << std::setw(12) << std::setfill(' ') << sim_time << " | "
                      << std::fixed << std::setprecision(9) << std::setw(12) << (sim_time / 1e9) << " | "
                      << std::setw(13) << static_cast<int>(top->distancia_cm) << " | "
                      << std::setw(11) << (current_led_state ? "LIGADO" : "DESLIGADO") << " | "
                      << std::setw(13) << (top->dentro_limite ? "SIM" : "NÃO") << " |\n";

            // Destaca a mudança de estado do LED
            if (current_led_state != last_led_state) {
                std::string estado = current_led_state ? "LIGADO" : "DESLIGADO";
                std::cout << ">>> O LED mudou para " << estado << " no tempo "
                          << sim_time << " ns (" << std::fixed << std::setprecision(9)
                          << (sim_time / 1e9) << " segundos) <<<\n";
                std::cout << "+--------------+--------------+---------------+-------------+---------------+\n";
            }

            last_led_state = current_led_state;
        }

        sim_time++;
    }

    // Imprime o rodapé da tabela
    std::cout << "+--------------+--------------+---------------+-------------+---------------+\n";

    delete top;
    return 0;
}
```

- Simula o comportamento do sistema por 4,2 segundos.
- Exibe o estado do LED e do sinal `dentro_limite` em uma tabela.
- Avalia o circuito em intervalos de tempo e exibe os resultados no console.
- Destaca mudanças no estado do LED.

**`testbench.v`**

```verilog
`timescale 1ns/1ps

module testbench;
    reg clk;
    reg [7:0] distancia_cm;
    wire led;
    wire dentro_limite;

    // Instância do circuito
    circuito uut (
        .clk(clk),
        .distancia_cm(distancia_cm),
        .led(led),
        .dentro_limite(dentro_limite)
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

        distancia_cm = 25; #100; // Fora do limite, LED desligado
        distancia_cm = 20; #100; // Dentro do limite, LED ligado
        distancia_cm = 15; #100; // Dentro do limite, LED ligado
        distancia_cm = 10; #100; // Dentro do limite, LED ligado
        distancia_cm = 5;  #100; // Fora do limite, LED desligado

        $finish;
    end
endmodule
```

- Simula o comportamento do sistema com diferentes distâncias.
- Gera um clock de 10 ns e alterna a distância simulada.
- Grava os resultados da simulação em um arquivo VCD.
- Finaliza a simulação com `$finish`.

## 11_led_pisca_3_segundos_valor_de_contagem_diferente

Este projeto é uma extensão do projeto anterior, adicionando um contador de 3 bits que controla a frequência de piscamento do LED. O LED pisca a cada 3 segundos e a frequência de piscamento é controlada pelo contador.

A estrutura do projeto é composta por:

```bash
sim/:
sim_main.cpp  testbench.v

src/:
circuito.v  led_blinker.v  sensor_distancia.v
```

**Onde:**

**`sensor_distancia.v`**

```verilog
module sensor_distancia (
    input wire clk,
    input wire [7:0] distancia_cm,
    output reg [7:0] saida_distancia
);
    always @(posedge clk) begin
        saida_distancia <= distancia_cm;
    end
endmodule
```

- Recebe o valor da distância e o transmite para o módulo circuito.
- Atualiza o valor de saída com cada borda positiva do clock.

**`led_blinker.v`**

```verilog
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
```

- Faz o LED alternar entre ligado e desligado após 150 ciclos de clock.
- Usa um contador de 8 bits para controlar o tempo.
- Alterna o estado do LED a cada 150 ciclos de clock (3 segundos).
- O LED pisca a cada 3 segundos.

**`circuito.v`**

```verilog
module circuito (
    input wire clk,
    input wire [7:0] distancia_cm,
    output wire led,
    output wire dentro_limite
);

    sensor_distancia sensor (
        .clk(clk),
        .distancia_cm(distancia_cm),
        .saida_distancia() // Não conectamos a saída, pois não é usada
    );

    led_blinker led_ctrl (
        .clk(clk),
        .led(led)
    );

    assign dentro_limite = (distancia_cm >= 10 && distancia_cm <= 20);
endmodule
```

- Módulo principal que integra `sensor_distancia` e `led_blinker`.
- Recebe a distância e avalia se está dentro do limite.
- Controla o LED para piscar a cada 3 segundos.
- O sinal `dentro_limite` indica se a distância está dentro do intervalo permitido.

**`sim_main.cpp`**

```cpp
#include "Vcircuito.h"
#include "verilated.h"
#include <iostream>
#include <iomanip>

int main(int argc, char **argv) {
    Verilated::commandArgs(argc, argv);
    Vcircuito *top = new Vcircuito;

    vluint64_t sim_time = 0;

    // Imprime o cabeçalho da tabela
    std::cout << "+------------+----------+---------------+-------------+---------------+\n";
    std::cout << "| Tempo (ns) | Tempo (s) | Distancia_cm  | LED         | Dentro_Limite |\n";
    std::cout << "+------------+----------+---------------+-------------+---------------+\n";

    while (sim_time < 1000) { // Simula até 10 segundos
        // Simula o clock com período de 20 ms (cada sim_time é 10 ms)
        top->clk = (sim_time % 2 == 0);

        // Define a distância fixa para o teste
        top->distancia_cm = 20;

        // Avalia o circuito
        top->eval();

        // Imprime os dados em formato organizado
        if (sim_time % 10 == 0) {
            double time_in_seconds = sim_time / 100.0;
            std::cout << "| " << std::setw(10) << sim_time << " | "
                      << std::setw(8) << std::fixed << std::setprecision(2) << time_in_seconds << " | "
                      << std::setw(13) << static_cast<int>(top->distancia_cm) << " | "
                      << std::setw(11) << (top->led ? "LIGADO" : "DESLIGADO") << " | "
                      << std::setw(13) << (top->dentro_limite ? "SIM" : "NÃO") << " |\n";
        }

        sim_time++;
    }

    // Imprime o rodapé da tabela
    std::cout << "+------------+----------+---------------+-------------+---------------+\n";

    delete top;
    return 0;
}
```

- Simula o comportamento do sistema por 10 segundos.
- Exibe o estado do LED e do sinal `dentro_limite` em uma tabela.
- Avalia o circuito em intervalos de tempo e exibe os resultados no console.

**`testbench.v`**

```verilog
`timescale 1ns/1ps

module testbench;
    reg clk;
    reg [7:0] distancia_cm;
    wire led;
    wire dentro_limite;

    // Instância do circuito
    circuito uut (
        .clk(clk),
        .distancia_cm(distancia_cm),
        .led(led),
        .dentro_limite(dentro_limite)
    );

    // Gera o clock com período de 10 ns (5 ns de alta, 5 ns de baixa)
    initial begin
        clk = 0;
        forever #5 clk = ~clk; // Clock de 10 ns
    end

    // Simula diferentes condições
    initial begin
        $dumpfile("testbench.vcd");
        $dumpvars(0, testbench);

        distancia_cm = 20; // Mantém a distância fixa para simplificar
        #1000000000; // Tempo suficiente para observar várias mudanças no LED
        $finish;
    end
endmodule
```

- Simula o comportamento do sistema com uma distância fixa de 20 cm.
- Gera um clock de 10 ns e mantém a distância constante.
- Grava os resultados da simulação em um arquivo VCD.
- Finaliza a simulação após 1 segundo (1 bilhão de unidades de tempo).

## 12_led_pisca_3_segundos_valor_divisor_de_frequencia_de_relogio_diferente

Este projeto é uma extensão do projeto anterior, adicionando um divisor de frequência de clock de 3 bits que controla a frequência de piscamento do LED. O LED pisca a cada 3 segundos e a frequência de piscamento é controlada pelo divisor de frequência.

A estrutura do projeto é composta por:

```bash
sim/:
sim_main.cpp  testbench.v

src/:
circuito.v  led_blinker.v  sensor_distancia.v
```

**Onde:**

**`sensor_distancia.v`**

```verilog
module sensor_distancia (
    input wire clk,
    input wire [7:0] distancia_cm,
    output reg [7:0] saida_distancia
);
    always @(posedge clk) begin
        saida_distancia <= distancia_cm;
    end
endmodule
```

- Recebe a entrada `distancia_cm` e a transmite para o módulo `circuito`.
- Atualiza a saída com cada borda positiva do clock (`clk`).

**`led_blinker.v`**

```verilog
module led_blinker (
    input wire clk,
    output reg led
);
    reg [7:0] counter; // Contador de 8 bits para controlar os ciclos

    initial begin
        counter = 0;
        led = 0;
    end

    always @(posedge clk) begin
        if (counter == 149) begin
            counter <= 0;
            led <= ~led; // Alterna o estado do LED
        end else begin
            counter <= counter + 1;
        end
    end
endmodule
```

- Controla o estado do LED, alternando entre ligado e desligado após 150 ciclos de clock.
- Usa um contador de 8 bits para controlar o tempo.
- Alterna o estado do LED a cada 150 ciclos de clock (3 segundos).

**`circuito.v`**

```verilog
module circuito (
    input wire clk,
    input wire [7:0] distancia_cm,
    output wire led,
    output wire dentro_limite
);

    sensor_distancia sensor (
        .clk(clk),
        .distancia_cm(distancia_cm),
        .saida_distancia() // Saída não utilizada
    );

    led_blinker led_ctrl (
        .clk(clk),
        .led(led)
    );

    assign dentro_limite = (distancia_cm >= 10 && distancia_cm <= 20);
endmodule
```

- Integra os módulos `sensor_distancia` e `led_blinker`.
- Avalia se a distância está dentro do intervalo permitido (`dentro_limite`).
- Controla o LED para piscar a cada 3 segundos.

**`sim_main.cpp`**

```cpp
#include "Vcircuito.h"
#include "verilated.h"
#include <iostream>
#include <iomanip>

int main(int argc, char **argv) {
    Verilated::commandArgs(argc, argv);
    Vcircuito *top = new Vcircuito;

    vluint64_t sim_time = 0;

    std::cout << "+------------+----------+---------------+-------------+---------------+\n";
    std::cout << "| Tempo (ns) | Tempo (s) | Distancia_cm  | LED         | Dentro_Limite |\n";
    std::cout << "+------------+----------+---------------+-------------+---------------+\n";

    while (sim_time < 1000) {
        top->clk = (sim_time % 2 == 0);
        top->distancia_cm = 20;
        top->eval();

        if (sim_time % 10 == 0) {
            double time_in_seconds = sim_time / 100.0;
            std::cout << "| " << std::setw(10) << sim_time << " | "
                      << std::setw(8) << std::fixed << std::setprecision(2) << time_in_seconds << " | "
                      << std::setw(13) << static_cast<int>(top->distancia_cm) << " | "
                      << std::setw(11) << (top->led ? "LIGADO" : "DESLIGADO") << " | "
                      << std::setw(13) << (top->dentro_limite ? "SIM" : "NÃO") << " |\n";
        }

        sim_time++;
    }

    std::cout << "+------------+----------+---------------+-------------+---------------+\n";

    delete top;
    return 0;
}
```

- Simula o comportamento do sistema por 10 segundos.
- Exibe o estado do LED e do sinal `dentro_limite` em uma tabela.
- Avalia o circuito em intervalos de tempo e exibe os resultados no console.

**`testbench.v`**

```verilog
`timescale 1ns/1ps

module testbench;
    reg clk;
    reg [7:0] distancia_cm;
    wire led;
    wire dentro_limite;

    circuito uut (
        .clk(clk),
        .distancia_cm(distancia_cm),
        .led(led),
        .dentro_limite(dentro_limite)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        $dumpfile("testbench.vcd");
        $dumpvars(0, testbench);

        distancia_cm = 20;
        #1000000000;
        $finish;
    end
endmodule
```

- Simula diferentes condições no sistema, utilizando um clock de 10 ns.
- Mantém a distância constante em 20 cm.
- Grava os resultados da simulação em um arquivo VCD.
- Finaliza a simulação após 1 segundo (1 bilhão de unidades de tempo).

## 13_led_pisca_5_segundos_valor_contagem_diferente

Este projeto é uma extensão do projeto anterior, alterando o tempo de piscamento do LED para 5 segundos. O LED pisca a cada 5 segundos e a frequência de piscamento é controlada por um contador de 3 bits.

A estrutura do projeto é composta por:

```bash
sim/:
sim_main.cpp  testbench.v

src/:
circuito.v  led_blinker.v  sensor_distancia.v
```

**Onde:**

**`sensor_distancia.v`**

```verilog
module sensor_distancia (
    input wire clk,
    input wire [7:0] distancia_cm,
    output reg [7:0] saida_distancia
);
    always @(posedge clk) begin
        saida_distancia <= distancia_cm;
    end
endmodule
```

- Recebe como entrada a distância (`distancia_cm`) e a transmite para outros módulos.
- A saída `saida_distancia` é atualizada a cada borda positiva do clock (`clk`).

**`led_blinker.v`**

```verilog
module led_blinker (
    input wire clk,
    output reg led
);
    reg [7:0] counter; // Contador de 8 bits para controlar o tempo

    initial begin
        counter = 0;
        led = 0;
    end

    always @(posedge clk) begin
        if (counter == 149) begin
            counter <= 0;
            led <= ~led; // Alterna o estado do LED
        end else begin
            counter <= counter + 1;
        end
    end
endmodule
```

- Controla o estado do LED, alternando entre ligado e desligado após 150 ciclos de clock (5 segundos).
- Utiliza um contador de 8 bits para controlar o tempo.

**`circuito.v`**

```verilog
module circuito (
    input wire clk,
    input wire [7:0] distancia_cm,
    output wire led,
    output wire dentro_limite
);

    sensor_distancia sensor (
        .clk(clk),
        .distancia_cm(distancia_cm),
        .saida_distancia() // Saída não conectada
    );

    led_blinker led_ctrl (
        .clk(clk),
        .led(led)
    );

    assign dentro_limite = (distancia_cm >= 10 && distancia_cm <= 20);
endmodule
```

- Integra os módulos `sensor_distancia` e `led_blinker`.
- Avalia se a distância está dentro de um intervalo permitido (`dentro_limite`).
- Controla o LED para piscar de acordo com o módulo `led_blinker`.
- O LED pisca a cada 5 segundos.

**`sim_main.cpp`**

```cpp
#include "Vcircuito.h"
#include "verilated.h"
#include <iostream>
#include <iomanip>

int main(int argc, char **argv) {
    Verilated::commandArgs(argc, argv);
    Vcircuito *top = new Vcircuito;

    vluint64_t sim_time = 0;

    std::cout << "+------------+----------+---------------+-------------+---------------+\n";
    std::cout << "| Tempo (ns) | Tempo (s) | Distancia_cm  | LED         | Dentro_Limite |\n";
    std::cout << "+------------+----------+---------------+-------------+---------------+\n";

    while (sim_time < 1000) {
        top->clk = (sim_time % 2 == 0);
        top->distancia_cm = 20;
        top->eval();

        if (sim_time % 10 == 0) {
            double time_in_seconds = sim_time / 100.0;
            std::cout << "| " << std::setw(10) << sim_time << " | "
                      << std::setw(8) << std::fixed << std::setprecision(2) << time_in_seconds << " | "
                      << std::setw(13) << static_cast<int>(top->distancia_cm) << " | "
                      << std::setw(11) << (top->led ? "LIGADO" : "DESLIGADO") << " | "
                      << std::setw(13) << (top->dentro_limite ? "SIM" : "NÃO") << " |\n";
        }

        sim_time++;
    }

    std::cout << "+------------+----------+---------------+-------------+---------------+\n";

    delete top;
    return 0;
}
```

- Simula o comportamento do sistema por 10 segundos.
- Exibe o estado do LED e do sinal `dentro_limite` em uma tabela.
- Avalia o circuito em intervalos de tempo e exibe os resultados no console.
- O LED pisca a cada 5 segundos.

**`testbench.v`**

```verilog
`timescale 1ns/1ps

module testbench;
    reg clk;
    reg [7:0] distancia_cm;
    wire led;
    wire dentro_limite;

    circuito uut (
        .clk(clk),
        .distancia_cm(distancia_cm),
        .led(led),
        .dentro_limite(dentro_limite)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        $dumpfile("testbench.vcd");
        $dumpvars(0, testbench);

        distancia_cm = 20;
        #1000000000;
        $finish;
    end
endmodule
```

- Simula diferentes condições no sistema, utilizando um clock de 10 ns.
- Mantém a distância constante em 20 cm.
- Grava os resultados da simulação em um arquivo VCD.
- Finaliza a simulação após 1 segundo (1 bilhão de unidades de tempo).
- O LED pisca a cada 5 segundos.

## 14_led_pisca_5_segundos_valor_divisor_de_frequencia_de_relogio_diferente

Este projeto é uma extensão do projeto anterior, alterando o divisor de frequência de clock para controlar a frequência de piscamento do LED. O LED pisca a cada 5 segundos e a frequência de piscamento é controlada pelo divisor de frequência.

A estrutura do projeto é composta por:

```bash
sim/:
sim_main.cpp  testbench.v

src/:
circuito.v  led_blinker.v  sensor_distancia.v
```

**Onde:**

**`sensor_distancia.v`**

```verilog
module sensor_distancia (
    input wire clk,
    input wire [7:0] distancia_cm,
    output reg [7:0] saida_distancia
);
    always @(posedge clk) begin
        saida_distancia <= distancia_cm;
    end
endmodule
```

- Recebe a entrada `distancia_cm` e a transmite para o módulo `circuito`.
- Atualiza a saída `saida_distancia` com cada borda positiva do clock (`clk`).
- Simula um sensor que transmite a distância para outros módulos.
- Atualiza a saída com base no clock.
- A saída é passada para o módulo `circuito`.

**`led_blinker.v`**

```verilog
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
```

- Controla o estado do LED, alternando entre ligado e desligado após 500 ciclos de clock (5 segundos).
- Usa um contador de 9 bits para controlar o tempo.
- Alterna o estado do LED a cada 500 ciclos de clock (5 segundos).
- O LED pisca a cada 5 segundos.

**`circuito.v`**

```verilog
module circuito (
    input wire clk,
    input wire [7:0] distancia_cm,
    output wire led,
    output wire dentro_limite
);
    sensor_distancia sensor (
        .clk(clk),
        .distancia_cm(distancia_cm),
        .saida_distancia() // Não conectamos a saída, pois não é usada
    );

    led_blinker led_ctrl (
        .clk(clk),
        .led(led)
    );

    assign dentro_limite = (distancia_cm >= 10 && distancia_cm <= 20);
endmodule
```

- Integra os módulos `sensor_distancia` e `led_blinker`.
- Avalia se a distância está dentro do intervalo permitido (`dentro_limite`).
- Controla o LED para piscar a cada 5 segundos.
- O LED pisca a cada 5 segundos.

**`sim_main.cpp`**

```cpp
#include "Vcircuito.h"
#include "verilated.h"
#include <iostream>
#include <iomanip>

int main(int argc, char **argv) {
    Verilated::commandArgs(argc, argv);
    Vcircuito *top = new Vcircuito;

    vluint64_t sim_time = 0;
    bool previous_led_state = false; // Variável para armazenar o estado anterior do LED

    // Imprime o cabeçalho da tabela
    std::cout << "+------------+----------+-------------+\n";
    std::cout << "| Tempo (ms) | Tempo (s) | LED         |\n";
    std::cout << "+------------+----------+-------------+\n";

    while (sim_time < 60000) { // Simula até 60 segundos
        // Simula o clock com período de 10 ms (clock alterna a cada 5 ms)
        if (sim_time % 5 == 0) { // Alterna o clock a cada 5 ms
            top->clk = !top->clk;
        }

        // Define a distância fixa para o teste
        top->distancia_cm = 20;

        // Avalia o circuito
        top->eval();

        // Verifica se o LED mudou de estado
        if (top->led != previous_led_state) {
            previous_led_state = top->led;

            // Imprime os dados quando o LED muda de estado
            double time_in_seconds = sim_time / 1000.0;
            std::cout << "| " << std::setw(10) << sim_time << " | "
                      << std::setw(8) << std::fixed << std::setprecision(2) << time_in_seconds << " | "
                      << std::setw(11) << (top->led ? "LIGADO" : "DESLIGADO") << " |\n";
        }

        sim_time++;
    }

    // Imprime o rodapé da tabela
    std::cout << "+------------+----------+-------------+\n";

    delete top;
    return 0;
}
```

- Simula o comportamento do sistema por 60 segundos.
- Exibe o estado do LED em uma tabela.
- Avalia o circuito em intervalos de tempo e exibe os resultados no console.
- O LED pisca a cada 5 segundos.

**`testbench.v`**

```verilog
`timescale 1ms/1us

module testbench;
    reg clk;
    reg [7:0] distancia_cm;
    wire led;
    wire dentro_limite;

    // Instância do circuito
    circuito uut (
        .clk(clk),
        .distancia_cm(distancia_cm),
        .led(led),
        .dentro_limite(dentro_limite)
    );

    // Gera o clock com período de 10 ms (5 ms de alta, 5 ms de baixa)
    initial begin
        clk = 0;
        forever #5 clk = ~clk; // Clock de 10 ms
    end

    // Simula diferentes condições
    initial begin
        $dumpfile("testbench.vcd");
        $dumpvars(0, testbench);

        distancia_cm = 20; // Mantém a distância fixa para simplificar
        #15000; // Simula por 15 segundos (15000 ms)
        $finish;
    end
endmodule
```

- Simula diferentes condições no sistema, utilizando um clock de 10 ms.
- Mantém a distância constante em 20 cm.
- Grava os resultados da simulação em um arquivo VCD.
- Finaliza a simulação após 15 segundos (15000 ms).
- O LED pisca a cada 5 segundos.

## Conclusão

Este repositório apresenta uma coleção abrangente de projetos práticos em lógica digital, implementados em **Verilog** e simulados com o **Verilator**. Ao longo dos projetos, exploramos diversos conceitos fundamentais, desde contadores síncronos e assíncronos até o controle de LEDs com base em diferentes entradas e condições. Cada projeto foi acompanhado por uma análise detalhada, incluindo tabelas verdade, mapas de Karnaugh, equações lógicas e explicações passo a passo do código.

O foco na acessibilidade, especialmente para pessoas que utilizam leitores de tela, é um dos pontos fortes deste trabalho. Os comentários detalhados e a formatação clara do código facilitam a compreensão dos conceitos e a adaptação para diferentes aplicações.

Além disso, a estrutura organizada e a padronização dos projetos facilitam a navegação e a compreensão dos diferentes tópicos abordados. A inclusão de **Makefiles** e instruções claras para compilação e execução permite que mesmo aqueles com pouca experiência em ambiente Linux possam iniciar rapidamente.
