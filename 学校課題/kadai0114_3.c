//AJG24080 今場智哉

#include <stdio.h>
#include <stdlib.h>
#include <math.h>
int cal(int x,int y){
    if (y==0) {
        return x;
    }
    return cal(y,x%y);
}

int main(int argc, char** argv) {
    int a=atoi(argv[1]);
    int b=atoi(argv[2]);
    int c;
    c=cal(a,b);
    printf("Greatest common denominator %d",c);
    return 0;
}   

