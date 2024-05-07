#include <stdio.h>
#include <string.h>
#include <ctype.h>

int main()
{
    char plain[50], cipher[50], decrypted[50];
    int i, key;
    printf("Enter Plain Text: ");
    scanf("%s", &plain);
    printf("\nEnter Key value for Caesar Cipher: ");
    scanf("%d", &key);

    printf("\nEncrypted Cipher text: ");
    for (i = 0; i < strlen(plain); i++)
    {
        cipher[i] = plain[i] + key;
        if (isupper(plain[i]) && cipher[i] > 'Z' || islower(plain[i]) && cipher[i] > 'z')
            cipher[i] -= 26;
        printf("%c", cipher[i]);
    }

    printf("\n\nDecrypted Cipher Text: ");
    for (i = 0; i < strlen(plain); i++)
    {
        decrypted[i] = cipher[i] - key;
        if (isupper(cipher[i]) && decrypted[i] < 'A' || islower(cipher[i]) && decrypted[i] < 'a')
            decrypted[i] += 26;
        printf("%c", decrypted[i]);
    }

    return 0;
}