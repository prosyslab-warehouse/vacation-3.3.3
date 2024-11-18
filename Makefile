LIBS=-ldb
CFLAGS=-DHAVE_PATHS_H $(shell dpkg-buildflags --get CFLAGS)
LDFLAGS=$(shell dpkg-buildflags --get LDFLAGS)

all: vacation

vacation: vacation.c
	$(CC) $(CFLAGS) $(LDFLAGS) $< -o $@ $(LIBS)

distclean: clean

clean:
	-rm -f vacation

install:
	cp vacation debian/vacation/usr/bin/
