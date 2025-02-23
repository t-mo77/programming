//AJG24080 今場智哉
#include <stdio.h>
int main(void){
    int a;
    scanf("%d",&a);
    if(a<=3){
        printf("free\n");
    }
    else if(4<=a && a<=12){
        printf("250yen\n");
    }
    else{
        printf("400yen\n");
    }
    return 0;
}