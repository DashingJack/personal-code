#include <stdio.h>
#include <stdlib.h>
struct node
{
    int key;
    struct node *left;
    struct node *right;
};
struct node *newNode(int item)
{
    struct node *temp = (struct node *)malloc(sizeof(struct node));
    temp->key = item;
    temp->left = temp->right = NULL;
    return temp;
}
struct node *constructTreeUtil(int pre[], int *preIndex, int low, int high, int size)
{
    if (*preIndex >= size || low > high)
        return NULL;
    struct node *root = newNode(pre[*preIndex]);
    *preIndex = *preIndex + 1;
    if (low == high)
        return root;

    int i;
    for (i = low; i <= high; ++i)
        if (pre[i] > root->key)
            break;

    root->left = constructTreeUtil(pre, preIndex, *preIndex, i - 1, size);
    root->right = constructTreeUtil(pre, preIndex, i, high, size);

    return root;
}
struct node *constructTree(int pre[], int size)
{
    int preIndex = 0;
    return constructTreeUtil(pre, &preIndex, 0, size - 1, size);
}

void findPreSuc(struct node *root, struct node **pre, struct node **suc, int key)
{
    if (root == NULL)
        return;
    if (root->key == key)
    {
        if (root->left != NULL)
        {
            struct node *tmp = root->left;
            while (tmp->right)
                tmp = tmp->right;
            *pre = tmp;
        }
        if (root->right != NULL)
        {
            struct node *tmp = root->right;
            while (tmp->left)
                tmp = tmp->left;
            *suc = tmp;
        }
        return;
    }
    if (root->key > key)
    {
        *suc = root;
        findPreSuc(root->left, pre, suc, key);
    }
    else
    {
        *pre = root;
        findPreSuc(root->right, pre, suc, key);
    }
}
int main()
{
    // int preOrder[] = {10, 5, 1, 7, 40, 50};

    int *preOrder;
    int size, i;
    printf("Enter number of nodes in given BST: ");
    scanf("%d", &size);
    preOrder = (int *)malloc(size * sizeof(int));
    for (i = 0; i < size; ++i)
    {
        printf("Enter %d element of preorder: ", i);
        scanf("%d", &preOrder[i]);
    }
    struct node *root = constructTree(preOrder, size);
    int key = 65;
    printf("Enter the key to find its Predecessor and Successor: ");
    scanf("%d", &key);
    struct node *pre = NULL, *suc = NULL;
    findPreSuc(root, &pre, &suc, key);
    if (pre != NULL)
        printf("Predecessor of key %d is %d\n", key, pre->key);
    else
        printf("No Predecessor for key %d\n", key);
    if (suc != NULL)
        printf("Successor of key %d is %d\n", key, suc->key);
    else
        printf("No Successor for key %d\n", key);
    return 0;
}
