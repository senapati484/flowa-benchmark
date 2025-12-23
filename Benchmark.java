public class Benchmark {
    public static void main(String[] args) {
        System.out.println("Starting Java benchmark...");
        
        for (int run = 0; run < 5; run++) {
            long startTime = System.nanoTime();
            
            long sum = 0;
            long product = 1;
            
            for (long i = 0; i < 100000000; i++) {
                sum += i;
                if (i % 1000 == 0) {
                    product = (product * 7) % 1000000007;
                }
            }
            
            double elapsed = (System.nanoTime() - startTime) / 1_000_000_000.0;
            System.out.printf("Run %d: Sum=%,d, Product=%,d, Time=%.3fs%n", 
                             run + 1, sum, product, elapsed);
        }
    }
}
