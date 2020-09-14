CXX ?= g++
CFLAGS ?= -Os
INSTALL_DIR ?= ../../../bin

pwf2spm: *.*
	$(CXX) $(CFLAGS) *.cpp -o pwf2spm
	-cp -v pwf2spm $(INSTALL_DIR)/pwf2spm

install:
	-cp -v pwf2spm $(INSTALL_DIR)/pwf2spm

