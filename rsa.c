#include <stdio.h>
#include <math.h>

int main()
{
    int P, Q, n, n1, e, M, C, d, i;

    printf("Enter value of first prime number(P) ");
    scanf("%d", &P);
    printf("Enter value of second prime number(Q) ");
    scanf("%d", &Q);
    printf("Enter value of small exponent(e) ");
    scanf("%d", &e);

    n = P * Q;
    n1 = (P - 1) * (Q - 1);

    for (i = 0; i < n; i++)
    {
        if (((n1 * i) + 1) % e == 0)
        {
            d = ((n1 * i) + 1) / e;
            break;
        }
    }

    printf("Your private key is %d\n", d);

    printf("Enter your message(M) ");
    scanf("%d", &M);

    C = (int)pow((double)M, (double)e) % n;
    M = (int)pow((double)C, (double)d) % n;

    printf("Encrypted message is %d\n", C);
    printf("Decryption using private key is %d", M);

    return 0;
}
