PImage img0;
PImage img1;
PImage img2;
PImage img3;
PImage img4;
PImage img5;
PImage img6;
PImage img7;
PImage img8;
PImage img9;
PImage imgK;

int myW = 70;
int myH = 95;
int timer = 0;
int time = 11;

import ddf.minim.*;

Minim minim;
AudioPlayer song;

void setup(){
 img0 = loadImage("0.jpg"); 
 img1 = loadImage("1.jpg");
 img2 = loadImage("2.jpg");
 img3 = loadImage("3.jpg");
 img4 = loadImage("4.jpg");
 img5 = loadImage("5.jpg");
 img6 = loadImage("6.jpg");
 img7 = loadImage("7.jpg");
 img8 = loadImage("8.jpg");
 img9 = loadImage("9.jpg");
 imgK = loadImage("K.jpg");
 
 size(650, 300);
 background (0);
 timer = millis();
 minim = new Minim(this);

// this loads mysong.wav from the data folder
song = minim.loadFile("10sec.mp3");
song.play();
}

void draw(){
 if (time ==10) {
   image(img0, width/2+10,height/2-myH/2, myW, myH);
   image(img1, width/2-70,height/2-myH/2, myW, myH);
   
 }
 if (time ==9 ) {background(200); image(img9, width/2-myW/2,height/2-myH/2, myW, myH);}
 if (time ==8 ) image(img8, width/2-myW/2,height/2-myH/2, myW, myH);
 if (time ==7 ) image(img7, width/2-myW/2,height/2-myH/2, myW, myH);
 if (time ==6 ) image(img6, width/2-myW/2,height/2-myH/2, myW, myH);
 if (time ==5 ) image(img5, width/2-myW/2,height/2-myH/2, myW, myH);
 if (time ==4 ) image(img4, width/2-myW/2,height/2-myH/2, myW, myH);
 if (time ==3 ) image(img3, width/2-myW/2,height/2-myH/2, myW, myH);
 if (time ==2 ) image(img2, width/2-myW/2,height/2-myH/2, myW, myH);
 if (time ==1 ) image(img1, width/2-myW/2,height/2-myH/2, myW, myH);
 if (time ==0 ) {background(200);text("?", width/2-myW/2,height/2-myH/2);}
 if (time ==-1 ) image(imgK, 0, 0);
  
 if (millis() - timer > 1000) {
    time = time - 1;
    timer = millis();
  }
}
  
void stop() {
  song.close();
  minim.stop();

  super.stop();
}
  
