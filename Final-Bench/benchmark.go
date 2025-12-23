package main

import (
	"fmt"
	"time"
)

func main() {
	fmt.Println("Starting intensive benchmark...")

	for run := 1; run <= 5; run++ {
		start := time.Now()

		var sum int64 = 0
		for i := int64(0); i < 100000000; i++ {
			sum += i
		}

		elapsed := time.Since(start).Seconds()
		fmt.Printf(
			"Run: %d Sum: %d Time: %.3f s\n",
			run, sum, elapsed,
		)
	}

	fmt.Println("Benchmark complete!")
}
