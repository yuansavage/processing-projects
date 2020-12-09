int r=160,g=26,b=26;
void setup(){
  size(800,800);
  background(255);
}

void draw(){
  frameRate(5);
  //background(255);
  background(r,g,b);
  pushMatrix();
  translate(width/2,height/2);
  for(int i =0; i<1000;i++){
    pushMatrix();
    noStroke();
    //fill(206,37,random(255));
    fill(random(140),26,random(26));
    rotate(map(random(radians(i)*360),0,100,0,TWO_PI));
    ellipse(i,50,i,i);
    popMatrix();
  }
  popMatrix();
  r--;
  g--;
  b--;
}
