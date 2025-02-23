int cx;
int cy=height-50;
int juu_w=10;
int juu_h=20;
int move = 3;
int speed = 60; 
int num=30;
int best=0;
int zanki=1;
int [] ox=new int[num];
int [] oy=new int[num];
int [] t=new int[num];
int [] wait=new int[num];
int ow=30;//teki haba
int oh=30;//teki takasa
int cw=50;//my haba
int ch=50;//my takasa
int path_x;//two chois
int path_y;
int path_h=width/2;
int path_w=80;
int player;
boolean migi = false;
boolean hidari = false;
boolean[] juu= new boolean[100];
int[] juu_x = new int[100];
int[] juu_y = new int[100];
boolean[] juu2= new boolean[100];
int[] juu_x2 = new int[100];
int[] juu_y2 = new int[100];
boolean[] juu3= new boolean[100];
int[] juu_x3 = new int[100];
int[] juu_y3 = new int[100];
boolean[] bulletActive = new boolean[10];
boolean tuika=false;
void setup(){
size(600, 900);
cx = 300;
frameRate(speed);
for (int i=0; i<num;i++){
t[i]=0;
ox[i]=int(random(width-30));
wait[i]=int(random(0,50));}
path_x=int(random(width-30));
}

void draw() {
background(0, 0, 0); // 背景クリア
path_y+=5;
fill(255,0,0);
rect(path_x,path_y,width/2,80);
if(path_y>height){
path_y=0;
path_x=int(random(width-30));
}
if(best>100){
tuika=true;
}
if((path_x < (cw+cx) && (path_x+path_w) > cx) && ((path_y+path_h) > cy && path_y < (cw+cy))){
zanki-=1;
}
for (int i=0;i<num;i++){
t[i]+=1;
oy[i]=2*(t[i]-wait[i]);
if(oy[i]>height){
t[i]=0;
ox[i]=int(random(width-30));}
fill(255,255,255);
rect(ox[i],oy[i],30,30);
for (int j = 0; j < 100; j++) {
if(ox[i] + ow > juu_x[j] && ox[i] < juu_x[j] + juu_w && oy[i] + oh > juu_y[j] && oy[i] < juu_y[j] + juu_h){
t[i]=0;
ox[i]=int(random(width-ow));
juu[j]=false;
best+=1;
}}
for (int j = 0; j < 100; j++) {
if(ox[i] + ow > juu_x2[j] && ox[i] < juu_x2[j] + juu_w && oy[i] + oh > juu_y2[j] && oy[i] < juu_y2[j] + juu_h){
t[i]=0;
ox[i]=int(random(width-ow));
juu2[j]=false;
best+=1;
}}
for (int j = 0; j < 100; j++) {
if(ox[i] + ow > juu_x3[j] && ox[i] < juu_x3[j] + juu_w && oy[i] + oh > juu_y3[j] && oy[i] < juu_y3[j] + juu_h){
t[i]=0;
ox[i]=int(random(width-ow));
juu3[j]=false;
best+=1;
}}
}

fill(255, 255, 255);
rect(cx, height - 50, 50, 50);//player
if((cx+50)>width){
cx=width-50;  
}
if(cx<0){
cx=0;
}  
if (migi) {
cx += move;
}
if (hidari) {
cx -= move;
 }
  for (int i = 0; i < 100; i++) {
    if (juu[i]) {
      juu_y[i] -= speed * 0.1;  // 上方向に移動
      rect(juu_x[i], juu_y[i], 10, 20);
      if (juu_y[i] < 0) {
        juu[i] = false;
      }
    }
  }
    for (int i = 0; i < 100; i++) {
    if (juu2[i]) {
      juu_x2[i]+=1;
      juu_y2[i] -= speed * 0.1;  // 上方向に移動
      rect(juu_x2[i], juu_y2[i], 10, 20);
      if (juu_y2[i] < 0) {
        juu2[i] = false;
      }
    }
  }
      for (int i = 0; i < 100; i++) {
    if (juu3[i]) {
      juu_x3[i]-=1;
      juu_y3[i] -= speed * 0.1;  // 上方向に移動
      rect(juu_x3[i], juu_y3[i], 10, 20);
      if (juu_y3[i] < 0) {
        juu3[i] = false;
      }
    }
  }

  
  
textSize(20);
fill(255,255,255);
text("Life: "+zanki,0,20);
textSize(20);
fill(255,255,255);
text("Score: "+best,0,40);
}

void keyPressed() {
  if (key == 'd') {
    migi = true;
  }
  if (key == 'a') {
    hidari = true;
  }
  if (key == ' ') {
      for (int i = 0; i < 100; i++) {
      if (!juu[i]) {
        juu_x[i] = cx + 25;     // 弾のx位置を設定
        juu_y[i] = height - 50; // 弾のy位置を設定
        juu[i] = true;    // 弾をアクティブにする
        break; // 1発だけ発射するためにループを抜ける
      }
   
  }
}
  if (key == ' ' && tuika) {
      for (int i = 0; i < 100; i++) {
      if (!juu2[i]) {
        juu_x2[i] = cx+25 ;     // 弾のx位置を設定
        juu_y2[i] = height - 50; // 弾のy位置を設定
        juu2[i] = true;    // 弾をアクティブにする
        break; // 1発だけ発射するためにループを抜ける
      }
   
  }
}  if (key == ' ' && tuika) {
      for (int i = 0; i < 100; i++) {
      if (!juu3[i]) {
        juu_x3[i] = cx+25 ;     // 弾のx位置を設定
        juu_y3[i] = height - 50; // 弾のy位置を設定
        juu3[i] = true;    // 弾をアクティブにする
        break; // 1発だけ発射するためにループを抜ける
      }
   
  }
}

}

void keyReleased() {
  if (key == 'd') {
    migi = false;
  }
  if (key == 'a') {
    hidari = false;
  }
}
