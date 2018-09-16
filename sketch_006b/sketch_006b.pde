float noiseX=0,noiseY=0,seed=0;
void setup(){
  size(200,200);
}

void draw(){
  background(0);
  noiseY=seed;
  for(int i=0;i<height;i++){
    noiseX=seed;
   for(int j=0;j<width;j++){
     float c=noise(noiseX,noiseY);
     stroke(255*c,130+125*c,255);
     point(i,j);
     noiseX+=0.01;
   }
   noiseY+=0.01;
  }
  seed+=0.01;
}