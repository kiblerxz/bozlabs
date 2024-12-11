CC=gcc
CFLAGS= -Wall -I../libmysyslog/include
LDFLAGS= -L../libmysyslog -lmysyslog
TARGET= mysyslog-daemon
SRCDIR= src
OBJDIR= obj
SRC=$(SRCDIR)/mysyslog-daemon.c
OBJ=$(OBJDIR)/mysyslog-daemon.o

all: $(TARGET)

$(TARGET): $(OBJ)
	$(CC) $(CFLAGS) -o $@ $^ $(LDFLAGS)

$(OBJDIR)/%.o: $(SRCDIR)/%.c
	mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c -o $@ $<

clean:
	rm -rf $(OBJDIR) $(TARGET)

.PHONY: all clean
