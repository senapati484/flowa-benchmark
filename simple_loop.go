package main

import (
	"fmt"
	"time"
)

func main() {
	fmt.Println("Starting simple loop benchmark (Sum 0 to 999,999)...")

	start := time.Now()

	sum := int64(0)
	for i := int64(0); i < 1000000; i++ {
		sum += i
	}

	elapsed := time.Since(start)

	fmt.Printf("Sum=%d, Time=%.3fs\n", sum, elapsed.Seconds())
	fmt.Println("Benchmark complete!")
}
