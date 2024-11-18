# Diretórios
SRC_DIR = src
SIM_DIR = sim
OBJ_DIR = obj_dir

# Arquivos
VERILOG_SRC = $(SRC_DIR)/circuito.v $(SRC_DIR)/sensor_distancia.v $(SRC_DIR)/led_blinker.v
SIM_MAIN = $(SIM_DIR)/sim_main.cpp

# Executável
EXEC = sim_main

# Flags do Verilator
VERILATOR_FLAGS = -Wall --cc --exe --build --trace --Wno-lint

# Alvo padrão
all: $(OBJ_DIR)/$(EXEC)
	./$(OBJ_DIR)/$(EXEC)

# Compila e gera o executável
$(OBJ_DIR)/$(EXEC): $(VERILOG_SRC) $(SIM_MAIN)
	verilator $(VERILATOR_FLAGS) -o $(EXEC) $(VERILOG_SRC) $(SIM_MAIN)

# Limpa os arquivos gerados
clean:
	rm -rf $(OBJ_DIR) $(EXEC) *.vcd

.PHONY: all clean
