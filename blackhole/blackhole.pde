int radius = 50;
int numLines = 800;
float nx = 0;
float ny = 0;

void setup(){
  size(1000,600);
  background(0);
}


void draw(){
  background(0);
  smooth();
  float angle = 100.89;
  pushMatrix();
  translate(width/2, height/2);
  for(int i = 0; i < numLines; i++){
    float x1, x2, y1, y2;
    float randLength = map(noise(nx+i*.1, ny), 0, 1, 10, radius * 3);
    stroke(245,random(82,133),27,random(0,50));
    strokeWeight(map(randLength, 0, radius*3, 1, 6));
    x1 = radius * cos(angle);
    y1 = radius * sin(angle);
    x2 = x1 + randLength * cos(angle+PI/2);
    y2 = y1 + randLength * sin(angle+PI/2);
    noFill();
    ellipse(x1,y1,300,100);
    //line(x1, y1, x2, y2);
    angle+=TWO_PI/numLines;
  }
  popMatrix();
  nx+=0.05;
  ny+=0.01;
}
