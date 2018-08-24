float x[]=new float[50],y[]=new float[50];
float theta[]=new float[50];
void setup(){
  size(500,500);
}

void draw(){
  background(0,0,0,0.5);
  translate(width/2,height/2);
  for(int i=0;i<50;i++){
   x[i]=200*sin(3*theta[i]);
   y[i]=200*sin(4*theta[i]);
   ellipse(x[i],y[i],20,20);
   theta[i]+=(i+1)*PI/128/100;
  }
}