//AJG24080 今場智哉
#include <stdio.h>
int main(void){
    int x=7;
    int y=3;
    int *px=&x;
    int *py=&y;
    printf("%d\n",*px%*py);
    return 0;
}
