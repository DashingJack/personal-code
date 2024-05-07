public class printPattern4
{
	public static void main(String[] args) {
        int n = 4;
        for(int i = 0; i<n; i++){
            for(int j = n-i-1; j>=0; j--){
                System.out.print(" ");
            }
            for(int k = 0; k<=i; k++){
                if(k==0||k==i)
                    System.out.print("+");
                else
                    System.out.print("-");
            }
            System.out.println();
    	}
        for(int j = 0; j<=2*n; j++){
            System.out.print("+");
        }
        System.out.println();
        for(int i = 0; i<n; i++){
            for(int j = 0; j<n; j++){
                System.out.print(" ");
            }
            for(int k = n-i; k>0; k--){
                if(k==1||k==n-i)
                    System.out.print("+");
                else
                    System.out.print("-");
            }
            System.out.println();
        }
	}
}