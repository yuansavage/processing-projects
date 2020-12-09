PImage img;

void setup(){
  size(500,500);
  img = loadImage("artemis.jpg");
  img.resize(500,500);
}

void draw(){
  background(0);
  fill(255);
  noStroke();
  
  float tiles = mouseX/3;
  float tilesize = width/tiles;
  
  translate(tilesize/2,tilesize/2);
  
  for (int x=0;x<tiles;x++){
    for(int y=0;y<tiles;y++){
      color c = img.get(int(x*tilesize),int(y*tilesize));
      float size = map(brightness(c),0,255,0,tilesize);
      ellipse(x*tilesize,y*tilesize,size,size);
    }    
  } 
}
