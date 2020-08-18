add_four_floats: add_four_floats.o test_add_four_floats.c
	gcc -o add_four_floats test_add_four_floats.c add_four_floats.o

add_four_floats.o: add_four_floats.asm
	nasm -g -felf64 add_four_floats.asm

clean:
	rm -f add_four_floats.o add_four_floats


