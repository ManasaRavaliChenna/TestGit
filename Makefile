#My makefile

export CC

target := sample-hello

all: $(target)

$(target): main.o addition.o subtraction.o multiplication.o
	${CC} -o sample-hello main.o addition.o subtraction.o multiplication.o

main.o: main.c
	${CC} -c main.c

addition.o: addition.c
	${CC} -c addition.c

subtraction.o: subtraction.c
	${CC} -c subtraction.c

multiplication.o: multiplication.c
	${CC} -c multiplication.c

clean:
	$(RM) $(target)

install: | ${DEST_DIR}
	install -m 0755 ${target} ${DEST_DIR}

${DEST_DIR}:
	install -d $@

.PHONY: compile clean install
