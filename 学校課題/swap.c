//AJG24080 今場智哉
#include <stdlib.h>
#include <stdio.h>

int change(int* a,int* b){
    int c;
    c=*a;
    *a=*b;
    *b=c;
}

int main(int argc, char**argv){
    int x=atof(argv[1]);
    int y=atof(argv[2]);
    printf("%d %d\n",x,y);
    change(&x,&y);
    printf("%d %d\n",x,y);
    return 0;
}