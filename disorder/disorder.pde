import ddf.minim.analysis.*;
import ddf.minim.*;

Minim       minim;
AudioPlayer jingle;
FFT         fft;

float start = 0;

void setup(){
  size(300,500);
  frameRate(5);
  minim = new Minim(this);
  jingle = minim.loadFile("disorder.mp3",1024);
  jingle.loop();
  fft = new FFT(jingle.bufferSize(),jingle.sampleRate());
  
}
void draw(){
  background(0);
  stroke(255);
  noFill();
  fft.forward(jingle.mix);
  
  for(int y = 80;y<450;y+=5){
    beginShape();
    for(int x=0; x<500;x++){
        
          float joyDivision = y - 65 / (1 + pow(x - 150, 4) / 8e6) * noise(x / 300 + start/ 50 + y);
          vertex(x,joyDivision);
      for(int i=0;i<fft.specSize();i++){
        start+=fft.getBand(i)/100; 
      }
    }
    endShape();
  }
}
