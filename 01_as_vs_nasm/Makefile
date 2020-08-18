
EXE=01_as_basic_structure 02_as_var_memory 01_nasm_basic_structure 02_nasm_var_memory \
03_as_macros 03_nasm_macros 04_nasm_stack 04_as_stack 05_as_leftovers 05_nasm_leftovers
OBJS=01_as_basic_structure.o 02_as_var_memory.o 01_nasm_basic_structure.o 02_nasm_var_memory.o \
03_as_macros.o 03_nasm_macros.o 04_nasm_stack.o 04_as_stack.o 05_as_leftovers.o 05_nasm_leftovers.o

all: as nasm

as:
	as -g -o 01_as_basic_structure.o 01_as_basic_structure.asm 
	ld -o 01_as_basic_structure 01_as_basic_structure.o
	as -g -o 02_as_var_memory.o 02_as_var_memory.asm
	ld -o 02_as_var_memory 02_as_var_memory.o
	# as -o 03_as_macros.o 03_as_macros.asm 
	# ld -o 03_as_macros 03_as_macros.o
	# as -o 04_as_stack.o 04_as_stack.asm 
	# ld -o 04_as_stack 04_as_stack.o
	# as -o 05_as_leftovers.o 05_as_leftovers.asm
	# ld -o 05_as_leftovers 05_as_leftovers.o

nasm:
	nasm -g -f elf64 -o 01_nasm_basic_structure.o 01_nasm_basic_structure.asm 
	ld -m elf_x86_64 -o 01_nasm_basic_structure 01_nasm_basic_structure.o
	nasm -g -f elf64 -o 02_nasm_var_memory.o 02_nasm_var_memory.asm
	ld -m elf_x86_64 -o 02_nasm_var_memory 02_nasm_var_memory.o
	# nasm -f elf32 -o 04_nasm_stack.o 04_nasm_stack.asm 
	# gcc -m32 04_nasm_stack.o -o 04_nasm_stack
	#ld --dynamic-linker /lib64/ld-linux-x86-64.so.2 -lc -o 04_nasm_stack 04_nasm_stack.o
	

clean:
	rm -f ${EXE} ${OBJS}
		
