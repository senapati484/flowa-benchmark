#!/bin/bash

# Function to run a benchmark and print results
run_benchmark() {
    local name=$1
    local cmd=$2
    
    echo -e "\n\033[1;34m===== $name =====\033[0m"
    eval "$cmd"
    if [ $? -ne 0 ]; then
        echo -e "\033[0;31mError running $name benchmark\033[0m"
    fi
}

# Create results directory if it doesn't exist
mkdir -p results

# Get current timestamp for results
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
RESULTS_FILE="results/benchmark_${TIMESTAMP}.txt"

# Run benchmarks
{
    echo "Benchmark Results - $(date)"
    echo "System: $(uname -a)"
    echo "CPU: $(sysctl -n machdep.cpu.brand_string)"
    echo "Memory: $(sysctl -n hw.memsize | awk '{printf "%.1f GB\n", $0/1024/1024/1024}')"
    echo ""
    
    # Java
    echo "=== Java ==="
    javac Benchmark.java
    time (java Benchmark) 2>> $RESULTS_FILE
    
    # Go
    echo -e "\n=== Go ==="
    time (go run main.go) 2>> $RESULTS_FILE
    
    # Python
    echo -e "\n=== Python ==="
    time (python3 main.py) 2>> $RESULTS_FILE
    
    # JavaScript
    echo -e "\n=== JavaScript ==="
    time (node main.js) 2>> $RESULTS_FILE
    
    # TypeScript
    echo -e "\n=== TypeScript ==="
    tsc main.ts
    time (node main.js) 2>> $RESULTS_FILE
    
    # C
    echo -e "\n=== C ==="
    gcc -O3 -o benchmark main.c
    time (./benchmark) 2>> $RESULTS_FILE
    
    # Flowa
    echo -e "\n=== Flowa ==="
    time (flowa main.flowa) 2>> $RESULTS_FILE
    
} | tee -a $RESULTS_FILE

echo -e "\n\033[1;32mBenchmark completed! Results saved to $RESULTS_FILE\033[0m"
