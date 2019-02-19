main:
	flex -t file.flex > file.c
	gcc -Wall file.c -ll -o fich

run: main
	./fich

clean:
	rm *.o main

debug:
	ddd main