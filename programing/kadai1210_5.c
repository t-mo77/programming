//AJG24080 今場智哉
#include <stdio.h>
int main(void){
    float sum;
    for(float i=1;i<=10;i++){
        sum+=(i*(i+1)*(i+2))/6;
    }
    printf("%d",(int)sum);
    return 0;
}