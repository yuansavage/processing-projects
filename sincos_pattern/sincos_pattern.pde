float angel;
float t;
float v1,factor=0.00001;
boolean inc=false;
int num_lines=380;
void setup(){
  background(0);
  size(500,500);
  v1=random(0.4)+0.2;
  smooth(2);
}
void draw(){
    background(0);
    angel+=0.0001;
    translate(width/2,height/2);
    rotate(cos(angel));
    //red with shine effect
    stroke(random(255),0,0);
    
    for(int i=1;i<num_lines;i++){
      strokeWeight(2.5);
      point(x(t+i),y(t+i));
      point(x1(t+i),y1(t+i));
      strokeWeight(1.2);
      line(x(t+i),y(t+i),x1(t+i),y1(t+i));
    }
      t+=0.005;
      if(inc)v1+=factor;
}

void mousePressed(){
  inc=true;
}

float x(float t){
  return sin(t/10)*100 + cos(t/v1)*10;
}
float y(float t){
  return cos(t/10)*100 + sin(t/v1)*10;
}
float x1(float t){
  return sin(t/10)*10 + cos(t/v1)*100;
}
float y1(float t){
  return cos(t/10)*10 + sin(t/v1)*100;
}
