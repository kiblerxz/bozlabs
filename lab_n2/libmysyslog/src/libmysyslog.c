#include "libmysyslog.h"
#include <stdio.h>

void mysyslog(const char *message) {
    printf("Log: %s\n", message);
}
