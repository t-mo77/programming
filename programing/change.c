//AJG24080 今場智哉
#include <stdio.h>
int main(void){
int x=11,y=19;
int l;
int *m,*n;
m=&x;
n=&y;
l=*m;
x=*n;
y=l;
printf("%d\n",x);
printf("%d\n",y);
return 0;}