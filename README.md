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

**Mapa de Karnaugh para a saída 𝑄0**

|     | 0 | 1 |
|-----|---|---|
| 0 0 | 0 | 1 |
| 1 0 | 0 | 0 |
| 1 1 | 1 | 1 |

**Mapa de Karnaugh para a saída 𝑄1**

|     | 0 | 1 |
|-----|---|---|
| 0 0 | 0 | 0 |
| 1 0 | 1 | 1 |
| 1 1 | 0 | 1 |

**Mapa de Karnaugh para a saída 𝑄2**

|     | 0 | 1 |
|-----|---|---|
| 0 0 | 0 | 0 |
| 1 0 | 1 | 1 |
| 1 1 | 0 | 1 |

**Mapa de Karnaugh para a saída 𝑄3**

|     | 0 | 1 |
|-----|---|---|
| 0 0 | 0 | 0 |
| 1 0 | 1 | 1 |
| 1 1 | 0 | 1 |

### Equação lógica para \( Q_0 \):

O mapa de Karnaugh indica que \( Q_0 \) alterna entre 0 e 1 independentemente das outras variáveis.

**Equação simplificada:**

$$
Q_0 = \overline{Q_0}
$$

---

### Equação lógica para \( Q_1 \):

\( Q_1 \) alterna a cada dois estados (ou seja, muda quando \( Q_0 = 1 \)).

**Equação simplificada:**

$$
Q_1 = Q_1 \oplus Q_0
$$

---

### Equação lógica para \( Q_2 \):

\( Q_2 \) alterna a cada quatro estados, dependendo dos estados de \( Q_1 \) e \( Q_0 \).

**Equação simplificada:**

$$
Q_2 = Q_2 \oplus (Q_1 \land Q_0)
$$

---

### Equação lógica para \( Q_3 \):

\( Q_3 \) alterna a cada oito estados, dependendo dos estados de \( Q_2 \), \( Q_1 \), e \( Q_0 \).

**Equação simplificada:**

$$
Q_3 = Q_3 \oplus (Q_2 \land Q_1 \land Q_0)
$$

---

### Apresentação e Explicação do código Verilog do contador de 4 bits

A estrutura do nosso projeto 01_contador_0_a_15 é composta por:

```bash
ls
Makefile  sim  src
ls sim/
sim_main.cpp  testbench.v
ls src/
contador.v
```

Vamos começar pelo circuito do contador. O arquivo `contador.v` contém a descrição do circuito:

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

Este código define um módulo Verilog chamado `contador`, que implementa um contador de 4 bits com reset assíncrono ativo em nível baixo. 

- **Entradas**:
  - `clk`: Sinal de clock que sincroniza a contagem.
  - `rst_n`: Sinal de reset assíncrono ativo em nível baixo. O sufixo `_n` indica que o reset é ativo baixo.
- **Saída**:
  - `q`: Registrador de 4 bits que armazena o valor atual da contagem.

```verilog
always @(negedge rst_n or posedge clk) begin
    if (!rst_n)
        q <= 4'b0000; // Reset: zera a contagem
    else
        q <= q + 1;   // Incrementa a contagem
end
```
- **Bloco `always` Sensível**:
  - **`negedge rst_n`**: O bloco é ativado no flanco de descida do `rst_n`, permitindo um reset assíncrono.
  - **`posedge clk`**: O bloco também é ativado no flanco de subida do `clk`, onde a incrementação ocorre.

- **Lógica Interna**:
  - **Reset**:
    - Se `rst_n` está em nível baixo (`0`), a condição `if (!rst_n)` é verdadeira.
    - `q` é definido como `4'b0000`, zerando o contador imediatamente, independentemente do clock.
  - **Contagem**:
    - Se `rst_n` está em nível alto (`1`), a contagem ocorre no flanco de subida do `clk`.
    - `q <= q + 1;` incrementa o valor do contador em 1.
- **Operador de Atribuição Não Bloqueante (`<=`)**:
  - Utilizado para descrever comportamento seqüencial em registradores, garantindo que todas as atribuições ocorram simultaneamente no final do ciclo de clock.

```verilog
endmodule
```

- **Fim do Módulo**: Indica o término da definição do módulo `contador`.

Em outras palavras o contador incrementa seu valor em 1 a cada ciclo de clock, desde que o reset não esteja ativo. O reset assíncrono permite que o contador seja zerado imediatamente quando `rst_n` é puxado para baixo, sem esperar pelo próximo flanco de clock.

Como `q` é um registrador de 4 bits, ele conta de `0` a `15`.

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

```verilog
`timescale 1ns/1ps
```

Define a escala de tempo para a simulação, ela é um parâmetro crucial que define como o tempo será representado e calculado durante a execução da simulação. Nesse caso, a escala de tempo é definida por dois valores: `1ns` e `1ps`. 

O primeiro valor, `1ns`, especifica a unidade de tempo utilizada nas simulações, ou seja, os eventos e processos serão medidos em nanosegundos. 

O segundo valor, `1ps`, determina a precisão dos cálculos de tempo. Isso significa que, embora a unidade de tempo seja o nanosegundo, os cálculos podem ser realizados com uma precisão de até 1 picosegundo.

Em outras palavras, os tempos na simulação são expressos em nanosegundos, mas com uma resolução fina que permite distinguir eventos separados por apenas um picosegundo. 

```verilog
module testbench;
```

Define um módulo de teste chamado `testbench`. Este módulo é responsável por instanciar o módulo `contador` e gerar os sinais de clock e reset necessários para testar o contador.

```verilog
    reg clk;
    reg rst_n;
```

Declara dois sinais do tipo `reg` (registrador):
- **`clk`**: será usado como o sinal de clock na simulação.
- **`rst_n`**: é um sinal de reset ativo baixo (o reset é ativado quando o sinal está em nível lógico `0`).

```verilog
    wire [3:0] q;
```

Declara o sinal `q` como um vetor de 4 bits (`[3:0]`) do tipo `wire` (fio). Este sinal será usado para capturar a saída do módulo `contador`.

```verilog
    contador uut (
        .clk(clk),
        .rst_n(rst_n),
        .q(q)
    );
```

Instancia o módulo chamado `contador`, que será testado. A instância é chamada de **`uut`** (abreviação de *Unit Under Test*), conectando seus pinos aos sinais definidos no testbench:
- **`clk`**: conectado ao sinal de clock do testbench.
- **`rst_n`**: conectado ao sinal de reset.
- **`q`**: captura a saída do módulo `contador`.

```verilog
    always #5 clk = ~clk;
```
Define um bloco `always` que inverte o sinal `clk` a cada 5 ns. Isso cria um clock com um período de 10 ns (5 ns para o estado alto e 5 ns para o estado baixo), correspondente a uma frequência de 100 MHz.

```verilog
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
```
Bloco inicial para definir o comportamento da simulação:
1. **`clk = 0;` e `rst_n = 0;`**: Inicializa os sinais `clk` (clock) como 0 e `rst_n` (reset) como ativo (nível baixo).
2. **`#10;`**: Aguarda 10 ns.
3. **`rst_n = 1;`**: Desativa o reset (coloca o sinal em nível lógico alto).
4. **`#200;`**: Aguarda 200 ns para simular o comportamento do circuito.
5. **`$finish;`**: Encerra a simulação.

```verilog
    initial begin
        $monitor("Tempo: %0t | Contagem: %b", $time, q);
    end
```

Outro bloco inicial que utiliza o comando `$monitor` para exibir os valores durante a simulação:
- **`"Tempo: %0t | Contagem: %b"`**: Formato da mensagem a ser exibida. Mostra o tempo atual da simulação (`%0t`) e o valor do sinal `q` em formato binário (`%b`).
- **`$time`**: Representa o tempo simulado atual.
- O `$monitor` atualiza automaticamente sempre que o tempo ou o valor de `q` muda.

```verilog
endmodule
```
Finaliza a definição do módulo de teste `testbench`.

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

```cpp
#include "Vcontador.h"
#include "verilated.h"
#include <iostream>
#include <iomanip>
```
- **`#include "Vcontador.h"`**: Importa o cabeçalho gerado automaticamente pelo Verilator para o módulo Verilog chamado `contador`. Esse cabeçalho define a interface do módulo no ambiente C++.
- **`#include "verilated.h"`**: Importa a biblioteca principal do Verilator, necessária para simular e gerenciar sinais de módulos Verilog.
- **`#include <iostream>` e `#include <iomanip>`**: Incluem bibliotecas padrão C++ para entrada/saída (para imprimir na tela) e formatação de texto (para ajustar espaçamentos e precisão da saída).

```cpp
int main(int argc, char** argv, char** env) {
    Verilated::commandArgs(argc, argv);
```
- **`int main(int argc, char** argv, char** env)`**: Define a função principal que será executada quando o programa rodar.
- **`Verilated::commandArgs(argc, argv)`**: Passa os argumentos da linha de comando para o Verilator, caso necessário para configurações de simulação.

```cpp
    Vcontador* top = new Vcontador;
```
- Instancia um objeto `Vcontador`, representando o módulo Verilog `contador` no ambiente C++. A variável `top` é um ponteiro para a simulação.

```cpp
    top->clk = 0;
    top->rst_n = 0;
```
- Inicializa os sinais do módulo:
  - **`top->clk = 0;`**: Inicializa o sinal de clock em 0.
  - **`top->rst_n = 0;`**: Ativa o reset (ativo baixo).

```cpp
    const double clock_frequency = 100e6; // Frequência do clock (100 MHz)
    const int max_cycles = 256; // Número de ciclos a simular
```
- **`clock_frequency`**: Define a frequência do clock em 100 MHz.
- **`max_cycles`**: Define o número máximo de ciclos a simular (256 ciclos).

```cpp
    top->eval();
    top->rst_n = 1;
```
- **`top->eval();`**: Avalia o módulo com base no estado atual dos sinais. É necessário para que o Verilator processe as alterações nos sinais.
- **`top->rst_n = 1;`**: Libera o reset (o desativa).

```cpp
    std::cout << "Ciclo\tContagem\tPinos (Q3 Q2 Q1 Q0)\tFreq (Q3)\n";
    std::cout << "----------------------------------------------------\n";
```
- Exibe um cabeçalho para os dados de saída:
  - **`Ciclo`**: Número do ciclo simulado.
  - **`Contagem`**: Valor atual do contador.
  - **`Pinos (Q3 Q2 Q1 Q0)`**: Estados individuais dos bits do sinal de saída `q`.
  - **`Freq (Q3)`**: Frequência calculada do bit mais significativo (`Q3`).

```cpp
    for (int cycle = 0; cycle < max_cycles; ++cycle) {
        top->clk = !top->clk;
        top->eval();

        if (top->clk) {
            double q3_frequency = clock_frequency / 16;

            std::cout << std::setw(5) << cycle / 2
                      << "\t" << std::setw(8) << static_cast<int>(top->q)
                      << "\t\t" << (int)((top->q >> 3) & 1) << " "
                      << (int)((top->q >> 2) & 1) << " "
                      << (int)((top->q >> 1) & 1) << " "
                      << (int)(top->q & 1)
                      << "\t\t" << q3_frequency / 1e6 << " MHz\n";
        }
    }
```
**Linha por Linha**:

1. **`for (int cycle = 0; cycle < max_cycles; ++cycle)`**: Itera pelos ciclos de simulação até o máximo especificado (`max_cycles`).
2. **`top->clk = !top->clk;`**: Alterna o estado do clock (de 0 para 1, ou de 1 para 0).
3. **`top->eval();`**: Avalia o módulo após a mudança no clock.
4. **`if (top->clk)`**: Processa apenas no flanco de subida do clock (`clk = 1`).
5. **`double q3_frequency = clock_frequency / 16;`**: Calcula a frequência do bit `Q3` como a frequência do clock dividida por 16 (assumindo que o contador é um divisor de frequência).
6. **`std::cout`**: Exibe os dados formatados:
   - **`cycle / 2`**: Número do ciclo completo (considerando ciclos de clock alternados).
   - **`static_cast<int>(top->q)`**: Converte a saída `q` do módulo para um inteiro para exibição.
   - **`(int)((top->q >> n) & 1)`**: Calcula os valores dos bits individuais de `q` (n varia de 0 a 3, representando os bits Q0, Q1, Q2 e Q3).
   - **`q3_frequency / 1e6`**: Exibe a frequência de `Q3` em MHz.


```cpp
    delete top;
```
- Libera a memória alocada para o objeto `Vcontador`.

```cpp
    return 0;
```
- Finaliza o programa com código de retorno 0, indicando execução bem-sucedida.