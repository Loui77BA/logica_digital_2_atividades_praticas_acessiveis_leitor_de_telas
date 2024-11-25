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