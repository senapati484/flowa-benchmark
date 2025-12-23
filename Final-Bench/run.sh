#!/bin/bash
set -e

run() {
  echo -e "\n--- $1 ---"
  /usr/bin/time -p $2
}

echo "============================="
echo " FLOWA BENCHMARK COMPARISON "
echo "============================="

run "Flowa" "flowa benchmark.flowa"

gcc -O3 benchmark.c -o benchmark_c
run "C" "./benchmark_c"

javac Benchmark.java
run "Java" "java Benchmark"

run "Python" "python3 benchmark.py"

run "JavaScript" "node benchmark.js"

run "Go" "go run benchmark.go"
