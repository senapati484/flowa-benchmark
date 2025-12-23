console.log("Starting simple loop benchmark (Sum 0 to 999,999)...");

const start: number = Date.now();

let sum: number = 0;
for (let i: number = 0; i < 1000000; i++) {
    sum += i;
}

const elapsed: number = (Date.now() - start) / 1000;

console.log(`Sum=${sum}, Time=${elapsed.toFixed(3)}s`);
console.log("Benchmark complete!");
