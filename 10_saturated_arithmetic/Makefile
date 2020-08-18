
satexample: satexample.o 
	gcc -no-pie -o satexample satexample.o

satexample.o: satexample.asm
	nasm -g -felf64 satexample.asm

clean:
	rm -f satexample.o satexample


