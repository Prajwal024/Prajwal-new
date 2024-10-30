// FactorialCalculator.java
import java.util.Scanner;

public class FactorialCalculator {

    // Method to calculate factorial of a given number
    public static long calculateFactorial(int number) {
        long factorial = 1;
        for (int i = 1; i <= number; i++) {
            factorial *= i;
        }
        return factorial;
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        
        System.out.print("Enter a non-negative integer to calculate its factorial: ");
        int number = scanner.nextInt();
        
        // Check for valid input
        if (number < 0) {
            System.out.println("Please enter a non-negative integer.");
        } else {
            long result = calculateFactorial(number);
            System.out.println("The factorial of " + number + " is: " + result);
        }

        scanner.close();
    }
}
