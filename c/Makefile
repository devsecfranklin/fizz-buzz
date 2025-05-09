IDIR = include
CC = gcc
CFLAGS = -I$(IDIR)
FLAGS = -Wall -c
ASM = -S
BUILD = build
ODIR = obj
SDIR = src

LIBS=-lm

_DEPS = $(IDIR)/ayylmao.h 
DEPS = $(patsubst %,$(IDIR)/%,$(_DEPS))

_OBJ = $(ODIR)/ayylmao.o
OBJ = $(patsubst %,$(ODIR)/%,$(_OBJ))

all: 
$(OBJ): obj/%.o : src/%.c
	$(CC) $(FLAGS) $< $(IDIR) $(LIBS)
	
$(BUILD)/ayylmao: 
	$(CC) -g -O $(FLAGS) $(SDIR)/ayylmao.c

$(BUILD)/asm: $(SDIR)/ayylmao.c $(IDIR)/ayylmao.h
	$(CC) $(ASM) $(SDIR)/ayylmao.s $(SDIR)/ayylmao.c 

.PHONY: clean

clean:
	rm -f $(ODIR)/*.o *~ core $(IDIR)/*~  $(SDIR)/ayylmao.s
	rm $(BUILD)/ayylmao
