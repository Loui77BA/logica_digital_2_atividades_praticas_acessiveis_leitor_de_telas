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

Para compilar e executar o projeto, siga as instruções abaixo:

1. **Acesse a subpasta do projeto:**

   ```bash
   cd 01_contador_0_a_15
   ```
2. **Compile e execute o projeto:**

   ```bash
   make
   ```
3. Após a execução do comando `make`, o Verilator compilará os arquivos e executará a simulação. Você verá a saída da simulação no terminal.
4. Execute o comando `make` fora das pastas `src` e `sim`.
5. Para limpar os arquivos gerados pela compilação, execute:

   ```bash
   make clean
   ```

Limpar os arquivos gerados pela compilação significa excluir os arquivos gerados pela compilação, como os arquivos de simulação, os arquivos de objeto e os executáveis. Isso é útil quando você deseja limpar o diretório e excluir os arquivos gerados.

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

Onde:

- **`Makefile`**: É o arquivo de compilação e execução do projeto.
- **`sim/`**: É a pasta que contém os arquivos de simulação do Verilator.
   - **`sim_main.cpp`**: É o arquivo principal da simulação.
   - **`testbench.v`**: É o arquivo de testbench do Verilog para a simulação que vai testar o contador de 4 bits.
- **`src/`**: É a pasta que contém os arquivos de código-fonte do projeto.
   - **`contador.v`**: É o arquivo Verilog que contém a descrição do circuito.

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

O que o código faz?

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

