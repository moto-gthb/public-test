#
#	public-first-test Makefile
#
#	Usage : make
#
CC = gcc
CFLAG = -O0
objects = public-first-test.o
inc =
targetfile = public-first-test

$(targetfile) : $(objects)
	$(CC) -o $@ $?

%.o : %.c $(inc)
	$(CC) -c $(CFLAGS) $<

.PHONY : clean
clean :
	rm -f $(targetfile) $(objects)
