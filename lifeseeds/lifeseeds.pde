Seed one= new Seed();
Seed two = new Seed();
Seed three = new Seed();
Seed four = new Seed();
Seed five = new Seed();
Seed six = new Seed();
Seed seven = new Seed();
Seed eight = new Seed();
Seed nine = new Seed();
float increment=0.01;
float xbell=0,ybell=100;
void setup(){
  size(500,500);
  
  one.nx=width/4;
  one.ny=height/4;
  
  two.nx=3*width/4;
  two.ny=height/4;
  
  three.nx=width/4;
  three.ny=3*height/4;
  
  four.nx=3*width/4;
  four.ny=3*height/4;
  
  five.nx=width/2;
  five.ny=height/4;
  
  six.nx = width/4;
  six.ny = height/2;
  
  seven.nx = width/2;
  seven.ny = height/2;
  
  eight.nx = 3*width/4;
  eight.ny = height/2;
  
  nine.nx = width/2;
  nine.ny = 3*height/4;
  
  background(0,10);
}

void draw(){
  
  one.x=map(noise(xbell),0,1,0,width/2);
  one.y=map(noise(ybell),0,1,0,height/2);
  two.x=map(noise(xbell),0,1,width/2,width);
  two.y=map(noise(ybell),0,1,0,height/2);
  three.x=map(noise(xbell),0,1,0,width/2);
  three.y=map(noise(ybell),0,1,height/2,height);
  four.x=map(noise(xbell),0,1,width/2,width);
  four.y=map(noise(ybell),0,1,height/2,height);
  
  five.x=map(noise(xbell),0,1,width/4,3*width/4);
  five.y=map(noise(ybell),0,1,0,height/2);
  six.x=map(noise(xbell),0,1,0,width/2);
  six.y=map(noise(ybell),0,1,height/4,3*height/4);
  seven.x=map(noise(xbell),0,1,width/4,3*width/4);
  seven.y=map(noise(ybell),0,1,height/4,3*height/4);
  eight.x=map(noise(xbell),0,1,width/2,width);
  eight.y=map(noise(ybell),0,1,height/4,3*height/4);
  nine.x=map(noise(xbell),0,1,width/4,3*width/4);
  nine.y=map(noise(ybell),0,1,height/2,height);
  
  
  //strokeWeight(2);
  stroke(255,random(10,12));
  //line(one.nx,one.ny,one.x,one.y);
  
  //strokeWeight(2);
  stroke(255,random(10,12));
  //line(two.nx,two.ny,two.x,two.y);
  
  //strokeWeight(2);
  stroke(255,random(10,12));
  //line(three.nx,three.ny,three.x,three.y);
  
  //strokeWeight(2);
  stroke(255,random(10,12));
  //line(four.nx,four.ny,four.x,four.y);
  
  //strokeWeight(2);
  stroke(0,random(10,12));
  //line(five.nx,five.ny,five.x,five.y);
  
  //strokeWeight(2);
  stroke(0,random(10,12));
  //line(six.nx,six.ny,six.x,six.y);
  
  //strokeWeight(2);
  stroke(255,random(10,12));
  line(seven.nx,seven.ny,seven.x,seven.y);
  
  //strokeWeight(2);
  stroke(0,random(10,12));
  //line(eight.nx,eight.ny,eight.x,eight.y);
  
  //strokeWeight(2);
  stroke(0,random(10,12));
  //line(nine.nx,nine.ny,nine.x,nine.y);
  xbell+=increment;
  ybell+=increment;
  
}
