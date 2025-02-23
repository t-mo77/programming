//AJG24080 今場智哉

#include <stdio.h>
#include <stdlib.h>
#include <math.h>
float cal(float x){
    if (x==1) {
        return 1;
    }
    return x*cal(x-1);
}
int main(int argc, char** argv) {
    float a=atoi(argv[1]);
    float b=atoi(argv[2]);
    float c;
    if(a>=b){
        c=cal(a)/(cal(b)*cal(a-b));
        printf("%f\n",c);
    }
    else{
        c=cal(b)/(cal(a)*cal(b-a));
        printf("%f\n",c);
    }
    
    return 0;

}