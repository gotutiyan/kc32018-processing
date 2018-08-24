float x,y,theta=0;
void setup(){
  size(500,500);
}

void draw(){
  background(0);
  translate(width/2,height/2);
  x=200*cos(theta);
  y=200*sin(theta);
  ellipse(x,y,20,20);
  theta+=PI/128;
}