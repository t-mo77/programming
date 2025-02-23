//AJG24080 今場智哉
#include <stdio.h>
#include <stdlib.h>
void cal(float a, float b){
    float keisan[4]={};
    keisan[0]=a+b;
    keisan[1]=a-b;
    keisan[2]=a*b;
    keisan[3]=a/b;
    for(int i=0;i<4;i++){
        printf("%f\n",keisan[i]);
    }
}

int main(int argc, char**argv){
    float s=atof(argv[1]);
    float t=atof(argv[2]);
    cal(s,t);
    return 0;
}