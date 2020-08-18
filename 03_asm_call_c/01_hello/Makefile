hello: hello.o
	gcc -no-pie hello.o -o hello

hello.o: hello.asm
	nasm -felf64 hello.asm

clean:
	rm -f hello.o hello


