factorial: factorial.o callfactorial.c
	gcc -o factorial callfactorial.c factorial.o

factorial.o: factorial.asm
	nasm -g -felf64 factorial.asm

clean:
	rm -f factorial.o factorial


