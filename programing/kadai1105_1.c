//AJG24080 今場智哉
#include <stdio.h>
int main(void){
int a1;
printf("Please type in an integer 0 or 1:");
scanf("%d", &a1);
int a2;
printf("Please type in an integer 0 or 1:");
scanf("%d", &a2);
float w,s1,s2;
w=0.5;
s1=0.9;
s2=0.4;
if(a1*w+a2*w>s1){
    printf("And Gate 1\n");
}
else{
    printf("And Gate 0\n");
}
if(a1*w+a2*w>s2){
    printf("Or Gate 1\n");
}
else{
    printf("Or Gate 0\n");
}

return 0;
}