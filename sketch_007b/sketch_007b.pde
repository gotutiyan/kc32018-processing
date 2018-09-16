int size=10;
float x[]=new float[size],y[]=new float[size];
float c[]=new float[size];
float seedx[]=new float[size],seedy[]=new float[size],seedc[]=new float[size];
void setup(){
  size(500,500);
  blendMode(ADD);
  colorMode(HSB,360,100,100,100);
  background(0);
  for(int i=0;i<size;i++){
    seedx[i]=random(1000);
    seedy[i]=random(1000);
    seedc[i]=random(1000);
  }
}

void draw(){
  translate(width/2,height/2);
  for(int i=0;i<size;i++){
   x[i]=width/2*map(noise(seedx[i]),0,1,-1.5,1.5);
   y[i]=height/2*map(noise(seedy[i]),0,1,-1.5,1.5);
   c[i]=map(noise(seedc[i]),0,1,0,1000);  //0から1000までとして扱う
   stroke(c[i]%255,255,255,6);  //255での剰余を適用
   line(x[i],y[i],-x[i],-y[i]);
   seedx[i]+=0.01;
   seedy[i]+=0.01;
   seedc[i]+=0.01;
  }
}

void mousePressed(){
 setup(); 
  
}