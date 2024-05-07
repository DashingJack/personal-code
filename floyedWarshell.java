package Java;
import java.util.*;
/**
 * floyedWarshell
 */
public class floyedWarshell {

    public static void main(String[] args){
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
        for (int k = 0; k < n; k++) {
            for (int i = 0; i < n; i++) {
                for (int j = 0; j < n; j++) {
                    if (i != k  && j != k ) {
                        g[i][j] = warshell(g[i][j], g[i][k], g[k][j]);
                    }
                }
            }
        }
        for (int i = 0; i < g.length; i++) {
            System.out.println(Arrays.toString(g[i]));
        }
        sc.close();
    }
    public static int warshell(int i, int j, int k) {
        if (i < 0) {
            return j + k;
        }
        else if (j < 0 || k < 0){
            return i;
        }
        else {
            return Math.min(i, j + k);
        }
    }
}