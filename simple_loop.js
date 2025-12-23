console.log("Starting simple loop benchmark (Sum 0 to 999,999)...");
var start = Date.now();
var sum = 0;
for (var i = 0; i < 1000000; i++) {
    sum += i;
}
var elapsed = (Date.now() - start) / 1000;
console.log("Sum=".concat(sum, ", Time=").concat(elapsed.toFixed(3), "s"));
console.log("Benchmark complete!");
