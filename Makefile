PATH := /opt/merlin-toolchain/bin:/opt/merlin-toolchain/arm-brcm-linux-uclibcgnueabi/bin:${PATH}
export PATH
CC := arm-brcm-linux-uclibcgnueabi-gcc
CFLAGS := -Wall -Wextra

PROGNAME := hello

default: $(PROGNAME)

*.o: *.c
	$(CC) $(CFLAGS) -c $<

$(PROGNAME): *.o
	$(CC) $(CFLAGS) -o $@ $<
