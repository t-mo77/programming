//AJG24080 今場智哉
#include <stdio.h>
#include <stdlib.h>
#include <time.h>
int main(void){
int y;
y=0;   
int z;
srand((unsigned int)time(NULL));
z=rand()%11;
int x;
for (x=0;x<2;x++){    
int a;
printf("Please type in an integer from 1 to 10:");
scanf("%d", &a);
if(a == z){
printf("Congratulations!\n");
y+=1;
printf("試行回数 %d\n",y);
break;
} else if(0<=a && a<z){
printf("Again! It's lower!\n");
x=0;
y+=1;
}else if(z<a && a<=10){
printf("Again! It's higher!\n");
x=0;
y+=1;
} else{
printf("Error!\n");
x=0;
y+=1;
}
}
return 0;
}