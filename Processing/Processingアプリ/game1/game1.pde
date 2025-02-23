int cx;
int num=7;
int [] ox=new int[num];
int [] oy=new int[num];
int [] t=new int[num];
int [] wait=new int[num];
int frame;
int time;
int speed=15;
int ow=30;
int oh=30;
int cw=30;
int ch=30;
int best;
void setup(){
size(300,300);
for (int i=0; i<num;i++){
t[i]=0;
ox[i]=int(random(width-ow));
wait[i]=int(random(0,50));}
frameRate(speed);
best=0;
}

void draw(){
frame+=1;
time=frame/speed;
background(200,200,200);
for (int i=0;i<num;i++){
t[i]+=1;
oy[i]=speed*(t[i]-wait[i]);
if(oy[i]>height){
t[i]=0;
ox[i]=int(random(width-ow));}
fill(255,255,255);
rect(ox[i],oy[i],ow,oh);}
cx=mouseX;
if((cx+cw)>width){
cx=width-cw;
}
fill(255,255,255);
for (int i=0;i<num;i++){
if(ox[i] < cw+cx && ox[i]+ow > cx && oy[i]+oh > height-ch && oy[i] < height){
fill(255,0,0);
if(time>best){
best=time;}
frame=0;}}
rect(cx,width-ch,cw,ch);
textSize(20);
fill(0,0,0);
text(time+" second",0,20);
textSize(20);
fill(255,0,0);
text("Best time:"+best+" second",0,40);
}
