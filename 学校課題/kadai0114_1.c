//AJG24080 今場智哉

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

float cal(float c, float d, float e, float f) {
    float x;
    x = f+floor((e+1)*26/10)+c+floor(c/4)+floor(d/4)-2*d;
    float y = fmod(x, 7);
    return y;
}

int main(int argc, char** argv) {
    int year = atoi(argv[1]);
    int month = atoi(argv[2]);
    int day = atoi(argv[3]);
    if (month <= 2) {
        month+=12;
        year-=1;
    }
    float a = year%100; 
    float b = (year-a)/100; 
    
    float h = cal(a, b, month, day);
    if(h==1){
        printf("日曜日\n");
    }
    else if(h==2){
        printf("月曜日\n");
    }
    else if(h==3){
        printf("火曜日\n");
    }
    else if(h==4){
        printf("水曜日\n");
    }
    else if(h==5){
        printf("木曜日\n");
    }
    else if(h==6){
        printf("金曜日\n");
    }
    else if(h==0){
        printf("土曜日\n");
    }
    return 0;
}