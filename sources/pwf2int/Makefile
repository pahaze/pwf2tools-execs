CC ?= gcc
CXX ?= g++
CFLAGS ?= -Os
INSTALL_DIR ?= ../../../bin

all: pwf2int

lzss.o: lzss.c lzss.h
	$(CC) $(CFLAGS) -c lzss.c -o lzss.o

pwf2int: lzss.o *.*
	$(CXX) $(CFLAGS) *.cpp lzss.o -o pwf2int
	-cp -v pwf2int $(INSTALL_DIR)/pwf2int

install:
	-cp -v pwf2int $(INSTALL_DIR)/pwf2int
