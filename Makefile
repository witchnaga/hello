#Makefile

PROGRAM	= hello
OBJS	= hello.o

CC		= gcc
CFLAGS	= -g -Wall

.SUFFIXES: .c .o

$(PROGRAM): $(OBJS)
		$(CC) -o $(PROGRAM) $^

# suffix rule
.c.o:
		$(CC) $(CFLAGS) -c $<

.PHONY: clean
clean:
		$(RM) $(PROGRAM) $(OBJS)

