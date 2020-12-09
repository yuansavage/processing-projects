import ddf.minim.analysis.*;
import ddf.minim.*;
PImage img;

Minim       minim;
AudioPlayer jingle;
FFT         fft;
float a;
PFont font,pfont;
void setup(){
  size(600,600);
  background(0);
  //stroke(#F2E9EB);
  noStroke();
  smooth();
  font = loadFont("MyanmarMN-48.vlw");
  pfont = loadFont("MyanmarMN-Bold-48.vlw");
  
  minim = new Minim(this);
  jingle = minim.loadFile("BlueMonday.mp3", 1024);
  jingle.loop();
  fft = new FFT( jingle.bufferSize(), jingle.sampleRate() );
  
  
}

void draw(){
  a=a+0.1;
  fft.forward( jingle.mix );
  fill(110+100*sin(a/15),100,110+100*cos(a/15));
  for(int i=0;i<fft.specSize();i++){
    ellipse(width/2,height/2,fft.getBand(i)*0.8,fft.getBand(i)*0.8);
  }
  if(fft.getBand(16)>15)background(random(0,255),random(0,255),0);
  //if(frameCount>210)rect(fft.getBand(49)*sin(fft.getBand(49)),fft.getBand(49),10,10);
  
  
  textFont(font);
  textSize(45);
  fill(255);
  text("N E W",width/4-25,97);
  textFont(pfont);
  textSize(45);
  fill(255);
  text("O R D E R",width/2-40,97);
  textFont(font);
  textSize(18);
  fill(255);
  text("Blue Monday 1988",width/2-75,115);
}
