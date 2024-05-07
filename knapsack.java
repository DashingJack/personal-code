package Java;
import java.util.*;

public class knapsack {
    public static void main(String[] args) {
        try (Scanner sc = new Scanner(System.in)) {
            System.out.println("Enter the number of Items");
            int n = sc.nextInt();
            System.out.println("Enter the value and weight for each item one by one");
            int value[] = new int[n];
            int weight[] = new int[n];
            for (int i = 0; i < n; i++) {
                value[i] = sc.nextInt();
                weight[i] = sc.nextInt();
            }
            System.out.println("Enter the capacity of knapsack");
            int w = sc.nextInt();
            int v[][] = new int[n][w+1];
            for (int i = 0; i < n; i++) {
                v[i][0] = 0;
                for (int j = 0; j <= w ; j++) {
                    if ((weight[i] > j)){
                        if(i - 1 < 0){
                            v[i][j] = 0;
                        }
                        else{
                            v[i][j] = v[i - 1][j];
                        }
                    }
                    else{
                        if(i - 1 < 0){
                             v[i][j] = value[i];
                        }
                        else{
                            v[i][j] = Math.max(v[i - 1][j], v[i - 1][j - weight[i]] + value[i]);
                        }
                    }
                }        
            }
            for (int i = 0; i < n; i++) {
                System.out.println(Arrays.toString(v[i]));
            }
        }
    }
}
