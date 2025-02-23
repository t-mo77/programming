int direct;
int a;
int b;
int c;
int d;
int [][] 
s= {{0,1,0,1,1,1,0,0,0,0},
{0,1,0,0,0,1,1,1,0,1},
{0,1,1,1,0,1,0,0,0,0},
{0,0,0,1,0,1,0,1,1,0},
{1,1,0,1,0,1,0,1,0,0},
{0,1,0,1,0,0,0,1,0,0},
{0,1,0,1,0,1,1,1,0,1},
{0,0,0,1,0,1,0,0,0,1},
{0,1,1,1,0,1,0,1,1,1},
{0,0,0,0,0,1,0,0,0,0}};
void setup(){
 size(300,300);
 frameRate(2);
 a=0;
 b=0;
 c=0;
 d=0;
 direct=3;//1:東,2:西,3:南,4:北
 }
void draw(){
background(255,255,255);
 int i;
int j;
for(i=0; i<10; i++){
for(j=0; j<10; j++){
 if(s[i][j]==1){
fill(0,0,0);
 }
else{
fill(255,255,255);
}
rect(30*j, 30*i, 30, 30);
 }}
if (direct==3){
a=a+1;
}
else if (direct==1){
b=b+1;
}
else if (direct==4){
d=d+1;
}
else if (direct==2){
c=c+1;
}
fill(255,0,0);
rect(30*b-30*c,30*a-30*d,30,30);
if(direct==3 && (b-c<=0 || s[a-d][b-c-1]==1)  && (s[a-d+1][b-c]==1 || a-d==9)){
direct=1;
}
if(direct==3 && (b-c<=0 || s[a-d][b-c-1]==0)  && (s[a-d+1][b-c]==1 || a-d==9)){
direct=2;
}
if(direct==1 && (a-d==9 || s[a-d+1][b-c]==1)  && (s[a-d][b-c+1]==1 || b-c==9)){
direct=4;
}
if(direct==1 && (a-d==9 || s[a-d+1][b-c]==0)  && (s[a-d][b-c+1]==1 || b-c==9)){
direct=3;
}
if(direct==2 && (a-d<=0|| s[a-d-1][b-c]==0) && (s[a-d][b-c-1]==1 ||b-c<=0)){
direct=4;
}
if(direct==2 &&( a-d<=0|| s[a-d-1][b-c]==1) && (s[a-d][b-c-1]==1 || b-c<=0) ){
direct=3;
}
if(direct==4 && (b-c==9 || s[a-d][b-c+1]==0)  && (s[a-d-1][b-c]==1 || a-d<=0)){
direct=1;
}
if(direct==4 && (b-c==9 || s[a-d][b-c+1]==1)  && (s[a-d-1][b-c]==1 || a-d<=0)){
direct=2;
}
 }
