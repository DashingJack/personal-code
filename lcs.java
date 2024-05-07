package Java;
import java.util.*;

public class lcs {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter the first String");
        String a = sc.next();
        System.out.println("Enter the second String");
        String b = sc.next();
        int c[][] = new int[a.length()+1][b.length()+1];
        for (int i = 0; i <= a.length(); i++) {
            for (int j = 0; j <= b.length(); j++) {
                if (i == 0 || j == 0) {
                    c[i][j] = 0;
                }
                else if (a.charAt(i - 1) == b.charAt(j - 1)) {
                    c[i][j] = c[i - 1][j - 1] + 1;
                }
                else {
                    c[i][j] = Math.max(c[i - 1][j], c[i][j - 1]);
                }
            }
        }
        for (int i = 0; i < c.length; i++) {
            System.out.println(Arrays.toString(c[i]));
        }

        sc.close();
    }
}
