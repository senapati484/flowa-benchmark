#include <stdio.h>
#include <stdint.h>
#include <time.h>

volatile int64_t sink; // prevents optimization

double now_s() {
    struct timespec ts;
    clock_gettime(CLOCK_MONOTONIC, &ts);
    return ts.tv_sec + ts.tv_nsec * 1e-9;
}

int main() {
    printf("Starting intensive benchmark...\n");

    for (int run = 1; run <= 5; run++) {
        double start = now_s();

        int64_t sum = 0;
        for (int64_t i = 0; i < 100000000; i++) {
            sum += i;
        }

        sink = sum; // force side-effect

        double elapsed = now_s() - start;
        printf("Run: %d Sum: %lld Time: %.3f s\n", run, sum, elapsed);
    }

    printf("Benchmark complete!\n");
    return 0;
}
