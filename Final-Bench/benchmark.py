import time

print("Starting intensive benchmark...")

for run in range(1, 6):
    start = time.perf_counter()

    total_sum = 0
    for i in range(100_000_000):
        total_sum += i

    elapsed = time.perf_counter() - start
    print(f"Run: {run} Sum: {total_sum} Time: {elapsed:.3f} s")

print("Benchmark complete!")
