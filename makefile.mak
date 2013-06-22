#makefile
CC = gcc
WARNINGS = -Wall

all: MemoryAllocations.dll

MemoryAllocations.dll: allocate_array.o
	$(CC) -shared -o MemoryAllocations.dll allocate_array.o -Wl,--out-implib,libmessage.a
	
allocate_array.o: allocate_array.c allocate_array.h
	$(CC) -c -DBUILD_DLL allocate_array.c
	
clean:
	rm -rf *o MemoryAllocations.dll
