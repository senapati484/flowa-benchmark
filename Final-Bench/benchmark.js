console.log("Starting intensive benchmark...");

for (let run = 1; run <= 5; run++) {
  const start = process.hrtime.bigint();

  let sum = 0n;
  for (let i = 0n; i < 100000000n; i++) {
    sum += i;
  }

  const elapsed = Number(process.hrtime.bigint() - start) / 1e9;

  console.log(`Run: ${run} Sum: ${sum} Time: ${elapsed.toFixed(3)} s`);
}

console.log("Benchmark complete!");
