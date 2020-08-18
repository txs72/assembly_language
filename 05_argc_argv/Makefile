
echo: echo.o 
	gcc -no-pie -o echo echo.o

echo.o: echo.asm
	nasm -g -felf64 echo.asm

clean:
	rm -f echo.o echo


