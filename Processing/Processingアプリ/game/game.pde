int cx;
int ox;
int oy;
int t;
int frame;
int time;
int speed=10;
int ow=30;
int oh=30;
int cw=30;
int ch=30;
int best;
void setup(){
size(300,300);
t=0;
ox=int(random(width-ow));
frameRate(speed);
best=0;
}

void draw(){
frame+=1;
time=frame/speed;
background(200,200,200);
t+=1;
oy=speed*t;
if(oy>height){
t=0;
ox=int(random(width-ow));}
fill(255,255,255);
rect(ox,oy,ow,oh);
cx=mouseX;
if((cx+cw)>width){
cx=width-cw;
}
fill(255,255,255);
if(ox < cw+cx && ox+ow > cx && oy+oh > height-ch && oy < height){
fill(255,0,0);
if(time>best){
best=time;}
frame=0;}
rect(cx,width-ch,cw,ch);
textSize(20);
fill(0,0,0);
text(time+" second",0,20);
textSize(20);
fill(255,0,0);
text("Best time:"+best+" second",0,40);
}
