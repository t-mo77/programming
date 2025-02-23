//AJG24080 今場智哉

#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <time.h>
int main(void){
    int a;
    int i=0;
    srand((unsigned int)time(NULL));
    for(;;){
        
        i+=1;
        int x=rand()%13+1;
        int y=rand()%13+1;
        printf("sum: %d\n",x+y);
        if(x+y==21){
            printf("count: %d\n",i);
            break;
        }
        
    }
    return 0;
}
