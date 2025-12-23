#include <stdio.h>
#include <time.h>

int main() {
    printf("Starting intensive benchmark...\n");
    
    // Multiple iterations for averaging
    for (int run = 0; run < 5; run++) {
        clock_t start = clock();
        
        long long sum = 0;
        long long product = 1;
        
        // Intensive computation: 100 million iterations
        for (long long i = 0; i < 100000000; i++) {
            sum += i;
            if (i % 1000 == 0) {
                product = (product * 7) % 1000000007;
            }
        }
        
        clock_t end = clock();
        double cpu_time = ((double) (end - start)) / CLOCKS_PER_SEC;
        
        printf("Run %d: Sum=%lld, Product=%lld, Time=%.3fs\n", 
               run + 1, sum, product, cpu_time);
    }
    
    printf("Benchmark complete!\n");
    return 0;
}
