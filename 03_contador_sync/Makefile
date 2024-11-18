# Diretórios
SRC_DIR = src
SIM_DIR = sim
OBJ_DIR = obj_dir

# Arquivos
VERILOG_SRC = $(SRC_DIR)/contador_sync.v
TESTBENCH_CPP = $(SIM_DIR)/sim_main.cpp

# Executável
EXEC = sim_sync

# Flags do Verilator
VERILATOR_FLAGS = -Wall --cc --exe --build --timing

# Alvo padrão
all: $(OBJ_DIR)/$(EXEC)
	./$(OBJ_DIR)/$(EXEC)

# Compila e gera o executável
$(OBJ_DIR)/$(EXEC): $(VERILOG_SRC) $(TESTBENCH_CPP)
	verilator $(VERILATOR_FLAGS) -o $(EXEC) $(VERILOG_SRC) $(TESTBENCH_CPP)

# Limpa os arquivos gerados
clean:
	rm -rf $(OBJ_DIR) $(EXEC)

.PHONY: all clean
