#include "../libmysyslog/include/libmysyslog.h"
#include <unistd.h>

int main() {
    while (1) {
        mysyslog("Daemon is running...");
        sleep(5);
    }
    return 0;
}

