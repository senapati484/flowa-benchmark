console.log("Starting intensive benchmark...");

// Multiple iterations for averaging
for (let run: number = 0; run < 5; run++) {
    const start: number = Date.now();

    let sum: number = 0;
    let product: number = 1;

    // Intensive computation: 100 million iterations
    for (let i: number = 0; i < 100000000; i++) {
        sum += i;
        if (i % 1000 === 0) {
            product = (product * 7) % 1000000007;
        }
    }

    const elapsed: number = (Date.now() - start) / 1000;

    console.log(`Run ${run + 1}: Sum=${sum}, Product=${product}, Time=${elapsed.toFixed(3)}s`);
}

console.log("Benchmark complete!");
