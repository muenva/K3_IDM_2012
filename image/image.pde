// Declaring variables
PImage img;
PImage img2;
PImage img3;
PImage img4; 
PImage img5; 
PImage img6; 
PImage img7; 
PImage img8; 
PImage img9; 
PImage img10; 
PImage img11; 
PImage img12; 
PImage img13;  
 
float time = 0;
float x = 0;
float y = 0;
float speed = 10;
float angle = PI / 7;
float timer = 0;

void setup() {
  size(240, 400);
  // Make a new instance of a PImage by loading an image file
  img   = loadImage("IMAG0805.jpg");
  img2  = loadImage("IMAG0806.jpg");
  img3  = loadImage("IMAG0807.jpg");
  img4  = loadImage("IMAG0808.jpg");
  img5  = loadImage("IMAG0809.jpg");
  img6  = loadImage("IMAG0810.jpg");
  img7  = loadImage("IMAG0811.jpg");
  img8  = loadImage("IMAG0812.jpg");
  img9  = loadImage("IMAG0813.jpg");
  img10 = loadImage("IMAG0814.jpg");
  img11 = loadImage("IMAG0815.jpg");
  img12 = loadImage("IMAG0816.jpg");
  img13 = loadImage("IMAG0817.jpg");
  
  timer = millis();
}

void draw() {
  // Draw the image to the screen at coordinate (0,0)
  background(200);
  if(time ==0) image(img,0,0);
  if(time ==1) image(img2,0,0);
  if(time ==2) image(img3,0,0);
  if(time ==3) image(img4,0,0);
  if(time ==4) image(img5,0,0);
  if(time ==5) image(img6,0,0);
  if(time ==6) image(img7,0,0);
  if(time ==7) image(img8,0,0);
  if(time ==8) image(img9,0,0);
  if(time ==9) image(img10,0,0);
  if(time ==10) image(img11,0,0);
  if(time ==11) image(img12,0,0);
  if(time ==12) image(img13,0,0);
  
  noStroke();
  fill (255, 0, 0, 50);
  x = x + speed * cos ( angle );
  y = y + speed * sin ( angle );
  //
  if (x+50 > width){
    angle = PI - angle;
  }
  if (x < 0){
    angle = 3 * PI - angle;
  }
  if (y+50 > height) {
    angle = 2 * PI - angle;
  }
  if (y < 0){
    angle = 2 * PI - angle;
  }
  //draw rectangle
  rect(x, y, 50, 50);
  
  if (millis() - timer > 3000) {
    time = time + 1;
    timer = millis();
  }
  
  
  if (time > 13) time = 0;
  
}
