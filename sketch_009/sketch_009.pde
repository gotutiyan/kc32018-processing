int n=100,r=25;
float x[][]=new float[r][n],y[][]=new float[r][n],seed[][]=new float[r][n];
void setup(){
  size(500,500);
  colorMode(HSB,360,255,255);
  smooth();
  for(int i=0;i<r;i++){
    for(int j=0;j<n;j++){
      seed[i][j]=random(0,100000);
    }
  }
}

void draw(){
  background(0);
  translate(width/2,height/2);
  for(int i=0;i<r;i++){
   stroke(i*360.0/r,255,255);
   //stroke(map(i,0,r,0,360),255,255);
   for(int j=0;j<n;j++){
     x[i][j]=(250/r*i)*cos(radians(360.0/n*j+10*noise(seed[i][j])));
     y[i][j]=(250/r*i)*sin(radians(360.0/n*j+10*noise(seed[i][j])));
     if(i!=0)line(x[i-1][j],y[i-1][j],x[i][j],y[i][j]);
     seed[i][j]+=0.01;
   }
  }
}