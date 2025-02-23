//AJG24080 今場智哉
#include <stdlib.h>
#include <stdio.h>

int cal(int a){
    if(a==1){
        return 1;
    }
    int b;
    b=cal(a-1);
    return a*b;
}

int main(void){
    for(int i=1;i<11;i++){
        printf("%d!=%d\n",i,cal(i));
    }
    return 0;
}