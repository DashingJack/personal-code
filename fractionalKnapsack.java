package Java;

import java.util.*;

public class fractionalKnapsack {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter the number of Items");
        int n = sc.nextInt();
        System.out.println("Enter the value and weight for each item one by one");
        int value[] = new int[n];
        int weight[] = new int[n];
        float valueweight[] = new float[n];
        for (int i = 0; i < n; i++) {
            value[i] = sc.nextInt();
            weight[i] = sc.nextInt();
            valueweight[i] = (float)value[i]/weight[i];
        }
        System.out.println("Enter the capacity of knapsack");
        int w = sc.nextInt();
        float maxValue = 0f;
        System.out.println(Arrays.toString(value));
        System.out.println(Arrays.toString(weight));
        System.out.println(Arrays.toString(valueweight));
        for (int i = 0; i < valueweight.length; i++) {
            int j = arrayMax(valueweight);
            if (weight[j] > w){
                maxValue += valueweight[j] * w;
                w = 0;
                valueweight[j] = 0f;
                break;
            }
            else {
                maxValue += value[j];
                w -= weight[j];
                valueweight[j] = 0f;
                if (w == 0) {
                    break;
                } 
            }
        }
        System.out.println("The maximum possilbe value for knapsack is " + maxValue);

        sc.close();
    }

    public static int arrayMax(float[] a) {
        float max = a[0];
        int maxIndex = 0;
        for (int i = 0; i < a.length; i++) {
            if (a[i] > max) {
                max = a[i];
                maxIndex = i;
            }
        }
        return maxIndex;
    }
}
