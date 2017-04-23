SRCS = asm.c
GEN_SRCS = asm-parse.c asm-lexer.c
OBJS = $(SRCS:.c=.o) $(GEN_SRCS:.c=.o)
EXES = asm

CC = gcc
CFLAGS = -g -Wall
BISON = bison
FLEX = flex

.SUFFIXES:
.SUFFIXES: .y .l .c .o

.c.o:
	$(CC) $(CFLAGS) -c $<

all : $(EXES)

asm : $(OBJS)
	$(CC) -o $@ $(OBJS) -lfl

asm-parse.c : asm-parse.y
	$(BISON) -d $*.y
	mv asm-parse.tab.c $@

asm-lexer.c : asm-lexer.l
	$(FLEX) -o $@ $<

clean :
	rm -f *.o $(EXES) $(GEN_SRCS) asm-parse.tab.h

depend : $(GEN_SRCS)
	$(CC) $(CFLAGS) -M $(SRCS) $(GEN_SRCS) > depend.mak

depend.mak :
	touch $@
