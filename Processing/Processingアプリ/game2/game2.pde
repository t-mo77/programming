//AJG24080
int cx;
int cy;
int num1=5;//fluat
int num2=2;//bomb
int [] ox1=new int[num1];
int [] ox2=new int[num1];
int [] oy1=new int[num1];
int [] oy2=new int[num1];
int [] t1=new int[num1];
int [] t2=new int[num1];
int [] wait=new int[num1];
int frame;
int time;
int speed=10;
int ow=30;
int oh=30;
int cw=10;
int ch=10;
int best;
int zanki=3;
int power=1;//難易度
int [] clear_t=new int[100];//clear time
int muteki=1;//muteki
int change_t=1;//change time
boolean game_over=false;
boolean shop=false;//item shop
boolean start_gamen=true;//setsumeiyou
void setup(){
size(300,320);
for (int i=0; i<num1;i++){
t1[i]=0;
t2[i]=0;
ox1[i]=int(random(width-ow));
ox2[i]=int(random(width-ow));
wait[i]=int(random(0,50));}
frameRate(speed);
clear_t[0]=0;
time=0;
speed=10;
}

void draw(){
if(start_gamen){
textSize(35);
fill(0,0,0);
text("Survive 30 seconds",20,120);
textSize(20);
fill(0,0,0);
text("Don't Touch Black! Touch White!",20,150);
textSize(50);
fill(0,0,0);
text("Touch Start!!",20,250);
}
if(!game_over && !shop && !start_gamen){
time+=1;
background(200,200,200);
if(0<=best && best <=2){
textSize(50);
fill(0,0,0);
text("STAGE1 START",0,150);
}
if(10<=best && best <=13){
textSize(50);
fill(0,0,0);
text("STAGE2 START",0,150);
speed=13;
power=2;
num2=3;
}
if(25<=best && best <=28){
textSize(50);
fill(0,0,0);
text("STAGE3 START",0,150);
speed=15;
power=4;
num2=4;
}
if(40<=best && best<=43){
textSize(50);
fill(0,0,0);
text("FINALL STAGE",0,150);
speed=17;
power=6;
num2=5;
}
for (int i=0;i<num1;i++){
t1[i]+=1;
oy1[i]=speed*(t1[i]-wait[i]);
if(oy1[i]>height){
t1[i]=0;
ox1[i]=int(random(width-ow));
zanki-=power*muteki;
}
fill(255,255,255);
rect(ox1[i],oy1[i],ow,oh);
if(ox1[i] < cw+cx && ox1[i]+ow > cx && oy1[i]+oh > cy && oy1[i] < cw+cy){
best+=1;
t1[i]=0;
ox1[i]=int(random(width-ow));
zanki+=1;
}
}
for (int i=0;i<num2;i++){
t2[i]+=1;
oy2[i]=speed*(t2[i]-wait[i]);
if(oy2[i]>height){
t2[i]=0;
ox2[i]=int(random(width-ow));
}
fill(0,0,0);
ellipse(ox2[i],oy2[i],ow,oh);
if(ox2[i] < cw+cx && ox2[i]+ow > cx && oy2[i]+oh > cy && oy2[i] < cw+cy){
zanki-=power*2*muteki;
t2[i]=0;
ox2[i]=int(random(width-ow));
}
}
cx=mouseX;
cy=mouseY;
if((cx+cw)>width){
cx=width-cw;
}
if((cy+ch)>height){
cy=height-ch;
}
fill(255,255,255);
ellipse(cx,cy,cw,ch);
textSize(20);
fill(0,0,0);
text("Life: "+zanki,0,20);
textSize(20);
fill(0,0,0);
text("Score: "+best,0,40);
textSize(20);
fill(0,0,0);
text("Time: "+(change_t*30-time/speed),0,60);
if(zanki<=0){
game_over=true;
}
if((change_t*30-time/speed)<=0){
background(255,255,255);
textSize(50);
fill(0,0,0);
text("You win!",70,150);
textSize(40);
fill(0,0,0);
text("Score: "+best,70,200);
noLoop();
}
}
if(game_over){
background(200,200,200);
textSize(20);
fill(0,0,0);
text("Life: "+zanki,0,20);
textSize(20);
fill(0,0,0);
text("Score: "+best,0,40);
textSize(20);
fill(0,0,0);
text("Time: "+(change_t*30-time/speed),0,60);
textSize(50);
fill(0,0,0);
text("GAME OVER",20,150);
textSize(50);
fill(0,0,0);
text("Continue",20,200);
textSize(50);
fill(0,0,0);
text("Finish",20,250);
textSize(50);
fill(0,0,0);
text("Shop",20,300);
if (mouseX > 20 && mouseX < 200 && mouseY > 160 && mouseY < 205) {
textSize(50);
fill(0,0,255);
text("Continue",20,200);
}
else if (mouseX > 20 && mouseX < 140 && mouseY > 210 && mouseY < 255) {
textSize(50);
fill(0,0,255);
text("Finish",20,250);
}
else if (mouseX > 20 && mouseX < 140 && mouseY > 260 && mouseY < 305) {
textSize(50);
fill(0,0,255);
text("Shop",20,300);
}
}

if(shop){
background(200,200,200);
textSize(50);
fill(0,0,0);
text("Time ×2",20,100);
textSize(50);
fill(0,0,0);
text("100 Life Start ",20,150);
textSize(50);
fill(0,0,0);
text("Star Forever",20,200);
if (mouseX > 20 && mouseX < 200 && mouseY > 60 && mouseY < 105) {
textSize(50);
fill(0,0,255);
text("Time ×2",20,100);
}
else if (mouseX > 20 && mouseX < 280 && mouseY > 110 && mouseY < 155) {
textSize(50);
fill(0,0,255);
text("100 Life Start",20,150);
}
else if (mouseX > 20 && mouseX < 220 && mouseY > 160 && mouseY < 205) {
textSize(50);
fill(0,0,255);
text("Star Forever",20,200);}
}
}


void mousePressed() {
if(start_gamen){
start_gamen=false;
}
if (game_over) {
if (mouseX > 20 && mouseX < 200 && mouseY > 160 && mouseY < 205) {
setup(); 
zanki = 3; 
best=0;
game_over = false; 
}
if (mouseX > 20 && mouseX < 140 && mouseY > 210 && mouseY < 255) {
exit(); 
}    
if (mouseX > 20 && mouseX < 140 && mouseY > 260 && mouseY < 305) {
shop=true; 
}  
}
if(shop){
if (mouseX > 20 && mouseX < 200 && mouseY > 60 && mouseY < 105) {
setup();
best=0;
change_t=2;
zanki=3;
shop=false;
game_over = false;
}
else if (mouseX > 20 && mouseX < 280 && mouseY > 110 && mouseY < 155) {
setup();
best=0;
zanki=100;
shop=false;
game_over = false;
}
else if (mouseX > 20 && mouseX < 220 && mouseY > 160 && mouseY < 205) {
setup();
best=0;
zanki=3;
muteki=0;
shop=false;
game_over = false;      
}
}
}
