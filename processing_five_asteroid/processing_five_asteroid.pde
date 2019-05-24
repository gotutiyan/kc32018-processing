class Asteroid{
  float x[]=new float[50],y[]=new float[50];
  float theta[]=new float[50];
  int r;
  Asteroid(int er){
    r=er;
  }
  
  void move(){
   for(int i=0;i<50;i++){
     x[i]=r*cos(theta[i])*cos(theta[i])*cos(theta[i]);
     y[i]=r*sin(theta[i])*sin(theta[i])*sin(theta[i]);
     ellipse(x[i],y[i],20,20);
     theta[i]+=(i+1)*PI/128/100;
    } 
  }
}

Asteroid a[]=new Asteroid[5];
void setup(){
  colorMode(HSB,360,255,255);
  size(500,500);
  for(int i=0;i<5;i++)a[i]=new Asteroid(50*i);
}

void draw(){
  background(0,0,0,0.5);
  translate(width/2,height/2);
  for(int i=0;i<5;i++){
    fill(map(i,0,4,0,360),255,255);
    a[i].move();
  }
  
}

void mousePressed(){
  for(int i=0;i<5;i++)for(int j=0;j<50;j++){
   a[i].theta[j]=0; 
  }
  
}