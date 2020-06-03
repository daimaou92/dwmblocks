# dwmblocks version
VERSION = 1.0

# paths
PREFIX = /usr/local

# X11INC = /usr/X11R6/include
# X11LIB = /usr/X11R6/lib

# includes and libs
# INCS = -I$(X11INC)
# LIBS = -L$(X11LIB)

# flags
# CPPFLAGS = -D_DEFAULT_SOURCE -D_BSD_SOURCE -D_XOPEN_SOURCE=700 -D_POSIX_C_SOURCE=200809L -DVERSION=\"$(VERSION)\"
CFLAGS   = `pkg-config --cflags x11`
LDFLAGS  = `pkg-config --libs x11`

# compiler and linker
CC = cc
