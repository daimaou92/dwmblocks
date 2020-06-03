# dwmblocks
include config.mk

SRC = dwmblocks.c
OBJ = $(SRC:.c=.o)

all: dwmblocks

# options:
# 	@echo dwmblocks build options:
# 	@echo "CFLAGS   = $(CFLAGS)"
# 	@echo "LDFLAGS  = $(LDFLAGS)"
# 	@echo "CC       = $(CC)"

.c.o:
	$(CC) -c $(CFLAGS) $<

config.h:
	cp config.def.h $@

$(OBJ): config.h config.mk

dwmblocks: dwmblocks.o
	$(CC) -o $@ dwmblocks.o $(LDFLAGS)
 
# output: dwmblocks.c config.h
# 	cc `pkg-config --cflags x11` `pkg-config --libs x11` dwmblocks.c -o dwmblocks
clean:
	rm -f *.o *.gch dwmblocks
install: all
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	cp -f dwmblocks $(DESTDIR)$(PREFIX)/bin
	chmod 755 $(DESTDIR)$(PREFIX)/bin/dwmblocks
uninstall:
	rm -f $(DESTDIR)$(PREFIX)/bin/dwmblocks
