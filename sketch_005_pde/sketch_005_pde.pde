float noiseX=0,noiseY=100;
void setup(){
  size(500,500);
}

void draw(){
  background(0);
  noiseY=100;
  for(int i=0;i<height;i++){
    noiseX=100;
   for(int j=0;j<width;j++){
     float c=noise(noiseX,noiseY);
     stroke(255*c,130+125*c,255);
     point(i,j);
     noiseX+=0.01;
   }
   noiseY+=0.01;
  }
}