//AJG24080 今場智哉
#include <stdio.h>
#include <stdlib.h>
#include <time.h>
int main(void){
    srand((unsigned int)time(NULL));
    int z[5];
    int sum=0;
    for(int i=0;i<5;i++){
    z[i]=rand()%100+1;
    printf("%d\n",z[i]);
    sum+=z[i];
    }
    float mean;
    mean=(float)sum/5;
    printf("%f\n",mean);
    return 0;
}
