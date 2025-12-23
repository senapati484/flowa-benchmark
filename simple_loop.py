import time

print("Starting simple loop benchmark (Sum 0 to 999,999)...")

start = time.time()

sum_val = 0
for i in range(1000000):
    sum_val += i

elapsed = time.time() - start

print(f"Sum={sum_val}, Time={elapsed:.3f}s")
print("Benchmark complete!")
