#include <stdio.h>
#include <time.h>

int main() {
    printf("Starting simple loop benchmark (Sum 0 to 999,999)...\n");
    
    clock_t start = clock();
    
    long long sum = 0;
    for (long long i = 0; i < 1000000; i++) {
        sum += i;
    }
    
    clock_t end = clock();
    double cpu_time = ((double) (end - start)) / CLOCKS_PER_SEC;
    
    printf("Sum=%lld, Time=%.3fs\n", sum, cpu_time);
    printf("Benchmark complete!\n");
    return 0;
}
