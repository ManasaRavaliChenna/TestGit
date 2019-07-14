all: arithem 

arithem: main.o addition.o subtraction.o multiplication.o
	gcc -o arithem_new main.o addition.o subtraction.o multiplication.o

main.o: main.c 
	gcc -c main.c

addition.o: addition.c
	gcc -c addition.c

subtraction.o: subtraction.c
	gcc -c subtraction.c

multiplication.o: multiplication.c
	gcc -c multiplication.c

clean:
	rm -rf *.o arithem_new
