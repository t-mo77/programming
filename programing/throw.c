//AJG24080 今場智哉
#include <math.h>
#include <stdio.h>
int main(void){float V,A,L,pai,g,Vx,Vy,t;
printf("初速度を入力してください");
scanf("%f",&V);
printf("角度を入力してください");
scanf("%f",&A);
pai=3.141592;
A=A*pai/180;
Vx=V*cos(A);
Vy=V*sin(A);
g=9.8;
t=2*Vy/g;
L=Vx*t;
printf("%f\n",L);
return 0;
}