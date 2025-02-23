//AJG24080 今場智哉
#include <stdio.h>
#include <stdlib.h>
void cal(int a[3][3],int b[3][3]){
    int d[3][3]; 
    for(int i=0;i<3;i++){
        for(int j=0;j<3;j++){           
            for(int k=0;k<3;k++){
            d[i][j]+=a[i][k]*b[k][j];
        }printf("%d ",d[i][j]);}
        printf("\n");
    }
}

int main(void){
    int x[3][3]={
        {3,0,1},
        {1,2,0},
        {0,1,-1}
    };
    int y[3][3]={
        {1,2,3},
        {4,5,6},
        {7,8,9}
    };
    cal(x,y);
    return 0;
}