# Compilation & Execution Time Benchmark

All benchmarks executed the same simple loop: summing integers from 0 to 999,999.

## Results Summary

| Language   | Compilation Time | Execution Time | Total Time |
|------------|------------------|----------------|------------|
| C          | 0.754s          | 0.540s         | **1.294s** |
| Go         | 0.574s          | 0.661s         | **1.235s** |
| JavaScript | N/A             | 0.268s         | **0.268s** |
| Python     | N/A             | 0.775s         | **0.775s** |
| TypeScript | 3.999s          | 0.041s         | **4.040s** |
| Flowa      | N/A             | 0.192s         | **0.192s** |

## Detailed Results

### C
```bash
gcc main.c -o main_c  0.05s user 0.21s system 34% cpu 0.754 total
./main_c  0.00s user 0.00s system 0% cpu 0.540 total
```
- **Compilation**: 0.754s
- **Execution**: 0.540s (includes process overhead)
- **Total**: 1.294s

---

### Go
```bash
go build -o main_go main.go  0.12s user 0.15s system 47% cpu 0.574 total
./main_go  0.00s user 0.00s system 0% cpu 0.661 total
```
- **Compilation**: 0.574s
- **Execution**: 0.661s
- **Total**: 1.235s

---

### JavaScript (Node.js)
```bash
node main.js  0.04s user 0.04s system 28% cpu 0.268 total
```
- **Compilation**: N/A (interpreted/JIT)
- **Execution**: 0.268s
- **Total**: 0.268s

---

### Python
```bash
python3 main.py  0.08s user 0.02s system 12% cpu 0.775 total
```
- **Compilation**: N/A (interpreted/bytecode)
- **Execution**: 0.775s
- **Total**: 0.775s

---

### TypeScript
```bash
npx tsc main.ts  1.10s user 0.15s system 31% cpu 3.999 total
node main.js  0.03s user 0.01s system 94% cpu 0.041 total
```
- **Compilation**: 3.999s (includes npx overhead)
- **Execution**: 0.041s
- **Total**: 4.040s

---

### Flowa
```bash
flowa main.flowa  0.16s user 0.01s system 88% cpu 0.192 total
```
- **Compilation**: N/A (interpreted)
- **Execution**: 0.192s
- **Total**: 0.192s

## Analysis

### Fastest Overall
1. **Flowa** (0.192s) - Fastest overall execution
2. **JavaScript** (0.268s) - Second fastest
3. **Python** (0.775s)
4. **Go** (1.235s total)
5. **C** (1.294s total)
6. **TypeScript** (4.040s) - Slowest due to compilation overhead

### Fastest Execution (Runtime Only)
1. **TypeScript/JS** (0.041s) - After compilation, runs very fast
2. **Flowa** (0.192s)
3. **JavaScript** (0.268s)
4. **C** (0.540s) - Note: includes process startup overhead
5. **Go** (0.661s)
6. **Python** (0.775s)

### Compilation Speed
1. **Go** (0.574s) - Fastest compiler
2. **C/gcc** (0.754s)
3. **TypeScript** (3.999s) - Slowest, includes npx overhead

## Notes

- **C and Go** show significant process startup overhead in execution time
- **JavaScript** benefits from Node.js JIT optimization
- **Flowa** shows impressive performance as an interpreted language
- **TypeScript** has slow compilation but fast execution once compiled
- **Python** is relatively slow for computation-heavy tasks
- Times include both user and system time, measured by the `time` command
