size(300,300);

int i,x;
for (i=0;i<10;i++){
for (x=0;x<10;x++){  
if(i%2==0 && x%2==0){fill(0,0,0);rect(30*i,30*x,30,30);}
else if(i%2!=0 && x%2==0){fill(255,255,255);rect(30*i,30*x,30,30);}
else if(i%2==0 && x%2!=0){fill(255,255,255);rect(30*i,30*x,30,30);}
else {fill(0,0,0);rect(30*i,30*x,30,30);}

}}
