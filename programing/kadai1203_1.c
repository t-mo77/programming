//AJG24080 今場智哉
#include <stdio.h>
int main(void){
int count=0;
int ori[2024]={};
for(int t=1;t<=2024;t++){
for(int i=0;i<2024;i++){
    if(t==1){
        ori[i]=1;
    }
    else if(t%(i+1)==0){
        if(ori[i]==0){
            ori[i]=1;
        }
        else{
            ori[i]=0;
        }
    }
}}
for(int j=0;j<2024;j++){
    if(ori[j]==1){
        count+=1;
    }
}
printf("残った犬の数%d",count);
return 0;}

