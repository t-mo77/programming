PImage pg,bird,topp,botp,star,bird2;
int pgx,pgy,bx,by,g,Vby;
float sx,sy;
int[] pipeX,pipeY;//Declare
int gameState,score,birdlv,time,on;

void setup()
{
  size(1200,800);
  pg=loadImage("./img/pg.png");
  bird=loadImage("./img/bird.png");
  botp=loadImage("./img/botp.png");
  topp=loadImage("./img/topp.png");
  star=loadImage("./img/star.png");
  bird2=loadImage("./img/bird2.png");
  bx=100;
  by=50;
  g=1;//gravity
  sx=width+(int)random(500,1200)*(int)random(1,3);
  sy=(int)random(0,800);
  pipeX=new int[4];//[0,0,0,0]
  pipeY=new int[pipeX.length];
  //populate
  for(int i=0;i<pipeX.length;i++)
  {
    pipeX[i]=width+400*i;
    pipeY[i]=(int)random(-350,0);
  }
  gameState=-1;
  birdlv=0;
  time=0;
  on=0;
}

void draw(){
  if(gameState==-1)
  {
    startScreen();
  }
  else if(gameState==0)
  {
    setPg();
    setPipe();
    star();
    bird();
    score();
  }
  else
  {
    fill(255);
    textSize(32);
    text("You Lose",20,100);
  }
}

void score()
{
  fill(0);
  textSize(32);
  text("Score: "+score,width-170,40);
}

void startScreen()
{
  setPg();
  textSize(40);
  text("Welcome to Bird Game!",40,100);
  text("Click space to start!",40,200);
  if(keyPressed)
  {
    by=height/2;
    gameState=0;
  }
}

void setPipe()
{
  for(int i=0;i<pipeX.length;i++)
  {
   image(topp,pipeX[i],pipeY[i]);
   image(botp,pipeX[i],pipeY[i]+680);
   pipeX[i]-=3;
   if(pipeX[i]<-200)
   {
     pipeX[i]=width+(int)random(50,150);
     pipeY[i]=(int)random(-350,0);
   }
   if(bx>(pipeX[i]-127) && bx<pipeX[i]+131)
   {
     if(!(by>pipeY[i]+352 && by<pipeY[i]+680-87))
     {
       gameState=1;
     }
     else if(bx==pipeX[i] || bx==pipeX[i]+1 || bx==pipeX[i]+2)
     {
       score++;
     }
   }
  }
}

void star()
{
  if(on==0){
    image(star,sx,sy);
  }
    sx-=4;
    sy+=3*cos(0.01*sx);
    if(sx<=-200){
      sx=width+(int)random(400,1200)*(int)random(3,5);
      sy=(int)random(0,800);
      on=0;
    }
    if(bx>(sx-127) && bx<sx+102)
   {
     if(by+87>sy && by<sy+102)
     {
        birdlv=1;
        on=1;
     }
   }
}

void bird()
{
  if(birdlv==0)
  {
  image(bird,bx,by);
  }
  if(birdlv==1)
  {
    image(bird2,bx,by);
    time+=1;
    gameState=0;
    if(time>400)
    {
      birdlv=0;
      time=0;
    }
  }
  by=by+Vby;
  Vby=Vby+g;
  if(by>height || by<0)
  {
    gameState=1;
  }
}
void keyPressed()
{
  Vby=-15;
  }
void setPg()
{
  image(pg,pgx,pgy);
  image(pg,pgx+pg.width,pgy);
  pgx-=3;
  if(pgx<-pg.width){
    pgx=0;
  }
}
  
