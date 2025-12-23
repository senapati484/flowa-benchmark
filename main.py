import time

print("Starting intensive benchmark...")

# Multiple iterations for averaging
for run in range(5):
    start = time.time()

    sum_val = 0
    product = 1

    # Intensive computation: 100 million iterations
    for i in range(100000000):
        sum_val += i
        if i % 1000 == 0:
            product = (product * 7) % 1000000007

    elapsed = time.time() - start

    print(f"Run {run + 1}: Sum={sum_val}, Product={product}, Time={elapsed:.3f}s")

print("Benchmark complete!")
