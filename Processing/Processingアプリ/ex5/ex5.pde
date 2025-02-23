int a;
void setup(){
 size(300,200);
 frameRate(2);
 a=0;
 }
void draw(){
background(255,255,255);
int i;
for(i=0; i<10; i++){ 
fill(255,255,255);
rect(30*i, 0, 30, 30);
if(a%20<10){
fill(255,0,0);
rect(30*(a%10),0,30,30);
}
else{
fill(255,0,0);
rect(270-30*(a%10),0,30,30);
}
 }
 a=a+1;
 }
