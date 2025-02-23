//AJG24080 今場智哉
#include <stdio.h>
int main(void){
int x;
for (x=0;x<2;x++){    
int a;
printf("Please type in an integer from 1 to 10:");
scanf("%d", &a);
if(a == 10){
printf("Congratulations!\n");
break;
} else{
printf("Error!\n");
x=0;
}
}
return 0;
}