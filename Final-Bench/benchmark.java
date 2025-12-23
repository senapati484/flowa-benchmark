public class Benchmark {
    public static void main(String[] args) {
        System.out.println("Starting intensive benchmark...");

        for (int run = 1; run <= 5; run++) {
            long start = System.nanoTime();

            long sum = 0;
            for (long i = 0; i < 100_000_000L; i++) {
                sum += i;
            }

            double elapsed = (System.nanoTime() - start) / 1_000_000_000.0;

            System.out.printf(
                    "Run: %d Sum: %d Time: %.3f s%n",
                    run, sum, elapsed);
        }

        System.out.println("Benchmark complete!");
    }
}
