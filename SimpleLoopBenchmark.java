public class SimpleLoopBenchmark {
    public static void main(String[] args) {
        System.out.println("Starting simple loop benchmark (Sum 0 to 999,999)...");
        
        long startTime = System.nanoTime();
        
        long sum = 0;
        for (long i = 0; i < 1000000; i++) {
            sum += i;
        }
        
        double elapsed = (System.nanoTime() - startTime) / 1_000_000_000.0;
        System.out.printf("Sum=%,d, Time=%.3fs%n", sum, elapsed);
        System.out.println("Benchmark complete!");
    }
}
