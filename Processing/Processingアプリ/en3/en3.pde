int f; //フレーム番号
float x; //ボールの中心の座標
float y; //ボールの中心の座標
void setup() {
size(400,400);
f = 0;
x = 300.0;
y = 200.0;
frameRate(100);
}
void draw() {
background(200, 200, 200);
ellipse(x, y, 30, 30);
line(200,200,x,y);
f = f + 1;
x = 200 + 100
* cos(0.05
* f);
y = 200 + 100
* sin(0.05
* f);
}
