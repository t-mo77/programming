//AJG24080 今場智哉
#include <stdio.h>
#include<string.h>
#include <math.h>
struct Person{
char name[40];
int height;
float weight;
};
int main(void){
char n[40];
float bmi;
float h;
struct Person p[5] = {
    {"Tanaka", 180, 70.0},
    {"Minami",112,50},
    {"Bob",170,92.5},
    {"Julia",160,60},
    {"Steve",150,50}
};
printf("Register names\n");   
for(int i=0;i<5;i++){
printf("%s\n", p[i].name);}
printf("Please type name:");
scanf("%s",n);
for(int j=0;j<5;j++){
if(strcmp(n,p[j].name)==0){
h=(float)p[j].height/100;
bmi=p[j].weight/pow(h,2);
printf("bmi is %f\n", bmi);}}
return 0;
}