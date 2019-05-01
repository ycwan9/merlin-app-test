CC := /opt/merlin-toolchain/bin/arm-uclibc-linux-2.6.36-gcc
CFLAGS := -Wall -Wextra

PROGNAME := hello

default: $(PROGNAME)

*.o: *.c
	$(CC) $(CFLAGS) -c $<

$(PROGNAME): *.o
	$(CC) $(CFLAGS) -o $@ $<
