//AJG24080 今場智哉
#include <stdio.h>
#include <stdlib.h>
#include <time.h>
int main(void){
int z,w,a,b,c,x,y;
a=10;//syozi koin
for(y=0;y<2;y++){
srand((unsigned int)time(NULL));
z=rand()%13+1;
w=rand()%13+1;
for (x=0;x<2;x++){
if(z==w){
    z=rand()%13+1;
    x=0;
}
else{
    x=2;
}
}
printf("You have %d coin. How many bet?:",a);
scanf("%d", &b);
printf("Now number is %d.You think higher please 1. lower please 0:",z);
scanf("%d", &c);//dai1 syou0
printf("number is %d\n",w);
if(c==1){
    if(w>z){
        printf("You win!\n");
        a=a+b*2;
    }
    else{
        a=a-b;
        printf("You lose!\n");
    }
}
if(c==0){
    if(w<z){
        a=a+b*2;
        printf("You win!\n");
    }
    else{
        a=a-b;
        printf("You lose!\n");
    }
}
if(a>=20){
    printf("Clear!\n");
    break;
}
else if(a==0){
    printf("Game over!\n");
    break;
}
else{
    y=0;
}
}
}
