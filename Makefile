TOOLCHAIN_PATH := /projects/hnd/tools/linux/hndtools-arm-linux-2.6.36-uclibc-4.5.3
PATH := ${TOOLCHAIN_PATH}/bin:${TOOLCHAIN_PATH}/arm-brcm-linux-uclibcgnueabi/bin:${PATH}
export PATH
CC := arm-brcm-linux-uclibcgnueabi-gcc
CFLAGS := -Wall -Wextra

PROGNAME := hello

default: $(PROGNAME)

*.o: *.c
	$(CC) $(CFLAGS) -c $<

$(PROGNAME): *.o
	$(CC) $(CFLAGS) -o $@ $<
