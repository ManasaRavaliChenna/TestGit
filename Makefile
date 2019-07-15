target := sample-hello

all: $(target)

arithem: main.o addition.o subtraction.o multiplication.o
	gcc -o sample-hello main.o addition.o subtraction.o multiplication.o

main.o: main.c
	gcc -c main.c

addition.o: addition.c
	gcc -c addition.c

subtraction.o: subtraction.c
	gcc -c subtraction.c

multiplication.o: multiplication.c
	gcc -c multiplication.c

clean:
	$(RM) $(target)

install: | ${DEST_DIR}
	install -m 0755 ${target} ${DEST_DIR}

${DEST_DIR}:
	install -d $@

.PHONY: compile clean install
