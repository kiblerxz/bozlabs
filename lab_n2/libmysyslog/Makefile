CC = gcc
CFLAGS = -Wall -fPIC -Iinclude
LDFLAGS = -shared

TARGET = libmysyslog.so
SRC = src/libmysyslog.c
OBJ = $(SRC:.c=.o)

all: $(TARGET)

$(TARGET): $(OBJ)
	$(CC) $(CFLAGS) $(LDFLAGS) -o $@ $^

clean:
	rm -f $(OBJ) $(TARGET)

