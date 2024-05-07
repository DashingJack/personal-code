package Java;
import java.util.Arrays;
import java.util.Scanner;
/**
 * coinChange
 */
public class coinChange {

    public static void main(String[] args) {

        System.out.println("Enter the number of coins ");
        try (Scanner sc = new Scanner(System.in)) {
            int n = sc.nextInt();
            int arr[] = new int[n];
            System.out.println("Enter the values of coins one by one");
            for (int i = 0; i < arr.length; i++) {
                arr[i] = sc.nextInt();
            }
            System.out.println("Enter the amount to change");
            int w = sc.nextInt();
            int a[][] = new int[n][w+1];
            for (int i = 0; i < n; i++) {
                a[i][0] = 1;
                for (int j = 1; j <= w; j++) {
                    if ((arr[i] > j)){
                        if(i - 1 < 0){
                            a[i][j] = 0;
                        }
                        else{
                            a[i][j] = a[i - 1][j];
                        }
                    }
                    else{
                        if(i - 1 < 0){
                            a[i][j] = a[i][j - arr[i]];
                        }
                        else{
                            a[i][j] = (a[i - 1][j] + a[i][j - arr[i]]);
                        }
                    }
                }
            }
            for (int i = 0; i < a.length; i++) {
                System.out.println(Arrays.toString(a[i]));
            }
        }
    }
}