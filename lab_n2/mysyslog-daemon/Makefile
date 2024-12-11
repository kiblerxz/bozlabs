# Указываем компилятор и флаги
CC=gcc
gcc -Wall -I/home/kibler/Desktop/SOS-Labs/lab_n2/libmysyslog/include -o mysyslog-daemon src/mysyslog-daemon.c /home/kibler/Desktop/SOS-Labs/lab_n2/libmysyslog/libmysyslog.so
LDFLAGS=-L../libmysyslog -lmysyslog

# Исходные файлы
MYSYSLOG_DAEMON_SRC=src/mysyslog-daemon.c
LIBMYSYSLOG_SRC=../libmysyslog/src/libmysyslog.c

# Объектные файлы
LIBMYSYSLOG_OBJ=../libmysyslog/src/libmysyslog.o
MYSYSLOG_DAEMON_OBJ=src/mysyslog-daemon.o

# Цель по умолчанию
all: mysyslog-daemon

# Правило для сборки демона
mysyslog-daemon: $(MYSYSLOG_DAEMON_OBJ) $(LIBMYSYSLOG_OBJ)
	$(CC) $(CFLAGS) -o $@ $^ $(LDFLAGS)

# Сборка объектных файлов для демона
src/mysyslog-daemon.o: src/mysyslog-daemon.c
	$(CC) $(CFLAGS) -c -o $@ $<

# Сборка объектных файлов для библиотеки
../libmysyslog/src/libmysyslog.o: ../libmysyslog/src/libmysyslog.c
	$(CC) $(CFLAGS) -c -o $@ $<

# Очистка
clean:
	rm -f $(MYSYSLOG_DAEMON_OBJ) $(LIBMYSYSLOG_OBJ) mysyslog-daemon

