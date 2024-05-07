#include <stdio.h>
#include <math.h>

int main()
{
    int q, a, Xa, Xb, Ya, Yb, Ka, Kb;

    printf("Enter value prime number(q) ");
    scanf("%d", &q);
    printf("Enter value of generator(a) ");
    scanf("%d", &a);
    printf("Enter value of personal key for a(Xa) ");
    scanf("%d", &Xa);
    printf("Enter value of personal key for b(Xb) ");
    scanf("%d", &Xb);

    Ya = (int)pow((double)a, (double)Xa) % q;
    Yb = (int)pow((double)a, (double)Xb) % q;
    Ka = (int)pow((double)Yb, (double)Xa) % q;
    Kb = (int)pow((double)Ya, (double)Xb) % q;

    printf("Public key for a(Ya) is %d\n", Ya);
    printf("Public key for a(Yb) is %d\n", Yb);
    printf("Session key for a(Ka) is %d\n", Kb);
    printf("Session key for b(Kb) is %d\n", Kb);

    return 0;
}
