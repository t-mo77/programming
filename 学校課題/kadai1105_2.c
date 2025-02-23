//AJG24080 今場智哉
#include <stdio.h>
#include <stdio.h>
#include <stdlib.h>
#include <time.h>
int main(void){ 
float x,y,z,w; 
z=0;
w=0;    
srand((unsigned int)time(NULL));
for (int i = 0; i < 10000 ; ++i) {   
        x=(double)rand() / RAND_MAX;
        y=(double)rand() / RAND_MAX;
        if(x*x+y*y<=1){
            z+=1;
        }
else{
w+=1;
}
}
float q;
q=z/(z+w);  
printf("probability is %f\n",q);
return 0;

}