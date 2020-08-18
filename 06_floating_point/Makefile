sum: sum.o callsum.c
	gcc -o sum callsum.c sum.o

sum.o: sum.asm
	nasm -g -felf64 sum.asm

clean:
	rm -f sum.o sum


