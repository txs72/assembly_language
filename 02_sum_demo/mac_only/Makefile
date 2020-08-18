triangle: triangle.o
	ld triangle.o -o triangle -lSystem

triangle.o: triangle.asm
	nasm -fmacho64 triangle.asm

clean:
	rm -f triangle.o triangle


