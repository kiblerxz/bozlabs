CC = gcc
CFLAGS = -Wall -I../libmysyslog/include -I/home/kibler/Desktop/SOS-Labs/lab_n2/libmysyslog/include
LIBS = -L../libmysyslog -lmysyslog

TARGET = mysyslog-client
SRC = src/mysyslog-client.c
OBJ = $(SRC:.c=.o)

all: $(TARGET)

$(TARGET): $(OBJ)
	$(CC) $(CFLAGS) -o $@ $^ $(LIBS)

clean:
	rm -f $(OBJ) $(TARGET)

