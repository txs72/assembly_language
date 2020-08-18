

average: average.o 
	gcc -no-pie -o average average.o

average.o: average.asm
	nasm -g -felf64 average.asm

clean:
	rm -f average.o average


