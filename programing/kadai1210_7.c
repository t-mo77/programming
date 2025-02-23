//AJG24080 今場智哉
#include <stdio.h>
#include <math.h>
int main(void){
    int a[10]={92,5,77,39,42,84,23,64,50,15};
    int sum=0;
    float mean;
    float b;
    float bun;
    for(int i=0;i<10;i++){
        sum+=a[i];
    }
    mean=(float)sum/10;
    printf("%f\n",mean);
    for(int i=0;i<10;i++){
        b+=pow(a[i]-mean,2);
    }
    bun=b/10;
    printf("%f\n",bun);
    return 0;
}
