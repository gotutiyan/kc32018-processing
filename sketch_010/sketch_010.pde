int n=100,radius; //n:何枚にスライスするか
float x[]=new float[n],y[]=new float[n],seed[]=new float[n];
void setup(){
  size(500,500);
  colorMode(HSB,360,255,255);
  smooth();
  strokeWeight(3);
  radius=width/2-50;
  for(int i=0;i<n;i++){
   seed[i]=random(0,10000);
   y[i]=radius*sin(radians(180.0/n*i)+PI/2);
   x[i]=radius*cos(radians(180.0/n*i)+PI/2);
  }
}

void draw(){
  background(0);
  translate(width/2,height/2);
  stroke(255);
  for(int i=0;i<n;i++){
   float xdiff=noise(seed[i]);
   if(xdiff>0.65)xdiff=map(xdiff,0.65,1,0,100);
   else if(xdiff<0.35)xdiff=map(xdiff,0.35,0,0,-100);
   line(x[i]+xdiff,y[i],-x[i]+xdiff,y[i]);
   seed[i]+=0.01;
  }
  
}