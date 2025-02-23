float vy; //下向きを正とした速度
float ox; //物体の左上端の座標 x
float oy; //物体の左上端の座標 y
float[] xx = new float[5]; //残像用 x
float[] yy = new float[5]; //残像用 y
void setup() {
size(400, 400);
vy = 0.0;
ox = 200.0;
oy = 100.0;
for (int i = 0; i < 5; i++) {
xx[i] = 200.0;
yy[i] = 100.0;
}
noStroke();
frameRate(100);
}
void draw() {
background(255, 255, 255);
for (int i = 0; i < 5; i++) {
fill(250 - 20 * i, 250 - 20 * i, 250 - 20 * i);
rect(xx[4 - i], yy[4 - i], 30, 30);

}
for (int i = 0; i < 4; i++) {
yy[4 - i] = yy[4 - i - 1];
}
xx[0] = ox;
yy[0] = oy;
fill(0,0,0);
rect(ox, oy, 30, 30);
if (oy > 300.0 - 30.0) {
vy = -vy;
} else {
vy = vy + 200.0 * 0.01;
}
oy = oy + vy * 0.01;

}
