size(500,500);
stroke(0.1);
for(int i=0;i<width;i++){
 pushMatrix();
 translate(0,height/4-150);
 fill(255,0,0);//red
 ellipse(i,250*noise(100+i),2,2);
 
 translate(0,height/4+50);
 fill(0,255,0);//green
 ellipse(i,250*noise(100+i*0.1),2,2);
 
 translate(0,height/4);
 fill(0,0,255);//blue
 ellipse(i,250*noise(100+i*0.01),2,2);
 popMatrix();
}