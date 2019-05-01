${PATH} := /opt/merlin-toolchain/arm-brcm-linux-uclibcgnueabi/bin:${PATH}
CC := gcc
CFLAGS := -Wall -Wextra

PROGNAME := hello

default: $(PROGNAME)

*.o: *.c
	$(CC) $(CFLAGS) -c $<

$(PROGNAME): *.o
	$(CC) $(CFLAGS) -o $@ $<
