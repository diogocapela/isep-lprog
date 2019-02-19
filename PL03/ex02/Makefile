NAME=ex
FLEX_EXTENSION=flex
OUT_FLEX=yy.c

main:
	flex -t ${NAME}.${FLEX_EXTENSION} > ${NAME}.${OUT_FLEX}
	gcc -Wall ${NAME}.${OUT_FLEX} -ll -o ${NAME}.bin

run: main
	./${NAME}.bin

clean:
	rm *.${OUT_FLEX}
	rm *.bin

debug:
	ddd main