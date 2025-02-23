//AJG24080 今場智哉
#include <math.h>
#include <stdio.h>
int main(void){
    float x,y;
    int z;
    y=0;
    for(x=1;x<=100;x++){
        y=y+pow(x,2);
    }
    z=(int)y;
    printf("%d\n",z);
    return 0;    
}