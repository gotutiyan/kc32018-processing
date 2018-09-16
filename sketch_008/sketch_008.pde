float seed=0;
void setup(){
  size(500,500);
}

void draw(){
  background(0);
  stroke(255);
  for(int i=0;i<5;i++){
    line(100*i,height/2+100*noise(seed+i*10),
           100*(i+1),height/2+100*noise(seed+(i+1)*10));
  }
  seed+=0.01;
}