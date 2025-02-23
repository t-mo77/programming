//AJG24080 今場智哉
#include <stdio.h>

void cal(int M[3][3]) {
    int i, j, temp;
    int a[3][3] = {{2, 1, 3}, {4, 5, 6}, {9, 8, 7}};

    for (i = 0; i < 3; i++) {
        for (j = 0; j < 3; j++) {
            if (a[i][j] == M[i][j] && i != j) {  
                temp = M[i][j];
                M[i][j] = M[j][i];
                M[j][i] = temp;
            }
            printf("%d ", M[i][j]);
        }
        printf("\n");
    }
}

int main(void) {
    int M[3][3] = {{2, 1, 3}, {4, 5, 6}, {9, 8, 7}};
    cal(M);
    return 0;
}