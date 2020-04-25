.POSIX:

TARGETS = slice

CFLAGS = -D NDEBUG -O
LDFLAGS = -s

PROJECT_CFLAGS = -I .
AUGMENTED_CFLAGS = $(CFLAGS) $(CPPFLAGS) $(PROJECT_CFLAGS)

.PHONY: all clean

all: $(TARGETS)

clean:
	-rm $(TARGETS)

.c:
	$(CC) $(AUGMENTED_CFLAGS) $(LDFLAGS) -o $@ $<