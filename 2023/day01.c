#include <errno.h>
#include <stdio.h>
#include <string.h>

int main(int argc, char** argv) {
    if (argc != 2) {
        fprintf(stderr, "Usage: %s <filename>", argv[0]);
        return 1;
    }
    FILE* file = fopen(argv[1], "r");
    if (!file) {
        fprintf(stderr, "Could not open file %s: %s", argv[1], strerror(errno));
        return 1;
    }
}
