#include <stdio.h>

void toLowerCase(char plain[], int ps)
{
    int i;
    for (i = 0; i < ps; i++)
    {
        if (plain[i] > 64 && plain[i] < 91)
            plain[i] += 32;
    }
}

int main()
{
    int i, j = 0, keylen, strlen;
    printf("Enter length of key: ");
    scanf("%d", &keylen);
    char key[keylen];
    printf("Enter key: ");
    scanf("%s", &key);

    printf("Enter length of string: ");
    scanf("%d", &strlen);
    char str[strlen], ciph[strlen];
    printf("Enter string: ");
    scanf("%s", &str);

    toLowerCase(key, keylen);
    toLowerCase(str, strlen);

    printf("Key: %s\nString: %s\n", key, str);

    for (i = 0; i < strlen; i++)
    {
        int temp = str[i] + key[j++] - 194;
        temp = temp % 26;
        ciph[i] = temp + 'a';
        if (j == keylen)
            j = 0;
        printf("%c", ciph[i]);
    }
}