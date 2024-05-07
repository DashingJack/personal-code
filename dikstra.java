package Java;
import java.util.*;
/**
 * dikstra
 */
public class dikstra {

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter number of nodes in graph");
        int n = sc.nextInt();            
        System.out.println("Enter graph in matrix form (enter -1 for no connection)");
        int g[][] = new int[n][n];
        for (int i = 0; i < n; i++) {
            for (int j = 0; j < n; j++) {
                g[i][j] = sc.nextInt();
            }
        }
        System.out.println("Enter the node you want to find minimum Distance from");
        

        sc.close();
    }
}