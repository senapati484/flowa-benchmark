package main

import (
	"fmt"
	"time"
)

func main() {
	fmt.Println("Starting intensive benchmark...")

	// Multiple iterations for averaging
	for run := 0; run < 5; run++ {
		start := time.Now()

		sum := int64(0)
		product := int64(1)

		// Intensive computation: 100 million iterations
		for i := int64(0); i < 100000000; i++ {
			sum += i
			if i%1000 == 0 {
				product = (product * 7) % 1000000007
			}
		}

		elapsed := time.Since(start)

		fmt.Printf("Run %d: Sum=%d, Product=%d, Time=%.3fs\n",
			run+1, sum, product, elapsed.Seconds())
	}

	fmt.Println("Benchmark complete!")
}
