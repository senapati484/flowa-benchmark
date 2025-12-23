console.log("Starting intensive benchmark...");
// Multiple iterations for averaging
for (var run = 0; run < 5; run++) {
    var start = Date.now();
    var sum = 0;
    var product = 1;
    // Intensive computation: 100 million iterations
    for (var i = 0; i < 100000000; i++) {
        sum += i;
        if (i % 1000 === 0) {
            product = (product * 7) % 1000000007;
        }
    }
    var elapsed = (Date.now() - start) / 1000;
    console.log("Run ".concat(run + 1, ": Sum=").concat(sum, ", Product=").concat(product, ", Time=").concat(elapsed.toFixed(3), "s"));
}
console.log("Benchmark complete!");
