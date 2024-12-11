all: libmysyslog mysyslog-client mysyslog-daemon

libmysyslog:
	make -C libmysyslog

mysyslog-client:
	make -C mysyslog-client

mysyslog-daemon:
	make -C mysyslog-daemon

clean:
	make -C libmysyslog clean
	make -C mysyslog-client clean
	make -C mysyslog-daemon clean
