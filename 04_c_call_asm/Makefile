maxofthree: maxofthree.o callmaxofthree.c
	gcc -o maxofthree callmaxofthree.c maxofthree.o

maxofthree.o: maxofthree.asm
	nasm -g -felf64 maxofthree.asm

clean:
	rm -f maxofthree.o maxofthree


