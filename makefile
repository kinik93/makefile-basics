CC=gcc
CFLAGS=-I.

main: main.c fakeSource.c
	$(CC) main.c fakeSource.c -o main $(CFLAGS)

fakeSource.o: fakeSource.c fakeHeader.h
	$(CC) -c fakeSource.c

main.o: main.c
	$(CC) -c main.c

clean:
	rm *.o main