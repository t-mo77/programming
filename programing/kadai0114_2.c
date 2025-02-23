//AJG24080 今場智哉

#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <time.h>
int main(void){
    int a;
    srand((unsigned int)time(NULL));
    printf("How many dou you have?:");
    scanf("%d", &a);
    for(;;){
    printf("How many dou you want?(1~3):");
    int b;
    scanf("%d", &b);
    a=a-b;
    if(a<=0){
        printf("You lose!\n");
        break;
    }
    int c=rand()%3+1;
    printf("Coumputer get %dcoins\n",c);
    a=a-c;
    if(a<=0){
        printf("You win!\n");
        break;
    }
    printf("Now coin:%d\n",a);
    }
}
