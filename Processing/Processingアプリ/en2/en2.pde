float vx; //右向きを正とした速度
float vy; //下向きを正とした速度
float ox; //物体の左上端の座標 x
float oy; //物体の左上端の座標 y
void setup() {
size(400, 400);
vx = 4.0;
vy = 0.0;
ox = 200.0;
oy = 100.0;
frameRate(10);
}
void draw() {
background(200, 200, 200);
rect(ox, oy, 30, 30);
ox = ox + vx;
if (oy > 300.0 - 30.0) {
vy = -vy;
} else {
vy = vy + 200.0 * 0.1;
}
oy = oy + vy * 0.1;

if(ox<=100 || ox>=300){
vx=-vx;
}


}
