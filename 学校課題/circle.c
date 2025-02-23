//AJG24080 今場智哉
#include <math.h>
#include <stdio.h>
int main(void){float x1,y1,x2,y2,d,w,s;
printf("(x1,y1)を入力せよ");
scanf("%f%f",&x1,&y1);
printf("(x2,y2)を入力せよ");
scanf("%f%f",&x2,&y2);
d=pow(pow((x1-x2),2)+pow((y1-y2),2),0.5);
w=3.141592;
s=w*pow(d,2)/4;
printf("２点の座標直線を直径とする円の⾯積%lf\n",s);
return 0;
}
