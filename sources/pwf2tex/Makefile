CXX ?= g++
INSTALL_DIR ?= ../../../bin
IMPORT_PNG ?= -lpng

pwf2tex: *.*
	$(CXX) $(CFLAGS) *.cpp -o pwf2tex $(IMPORT_PNG)
	-cp -v pwf2tex $(INSTALL_DIR)/pwf2tex
install:
	-cp -v pwf2tex $(INSTALL_DIR)/pwf2tex

