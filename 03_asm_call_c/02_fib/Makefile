fib: fib.o
	gcc -no-pie fib.o -o fib

fib.o: fib.asm
	nasm -g -felf64 fib.asm

clean:
	rm -f fib.o fib


