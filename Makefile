CC ?= gcc
CXX ?= g++
CFLAGS ?= -Os
PROGS ?= pwf2tex pwf2int pwf2spm
SOURCES ?= sources
INSTALL_DIR ?= ../../../bin
IMPORT_PNG?=-lpng

GENERIC = $(MAKE) -C $(SOURCES)/$@
MAKEC = $(MAKE) -C $(SOURCES)/$$PROG

export

all: $(PROGS)

pwf2tex:
	$(GENERIC)
pwf2spm:
	$(GENERIC)
pwf2int: 
	$(GENERIC)

install: 
	for PROG in $(PROGS) ; do \
		$(MAKEC) install ; \
	done
