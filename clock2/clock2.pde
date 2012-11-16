
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

int w = 80;
int h = 10;
void setup(){
  size(600, 250);
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
}
void draw(){
int s = second();
int MS = s / 10;
int LS = s % 10;
printNumber(LS, 5*w, h);
printNumber(MS, 4*w, h);

int m = minute();
int MS2 = m / 10;
int LS2 = m % 10;
printNumber(LS2, 3*w, h);
printNumber(MS2, 2*w, h);

int h = hour();
int MS3 = h / 10;
int LS3 = h % 10;
printNumber(LS3, w, h);
printNumber(MS3, 0, h);
h = h + 1;
}

void printNumber(int n, int xpos, int ypos){
 switch(n) {
   case 0:
     image(img0, xpos, ypos); 
     break;
   case 1:
     image(img1, xpos, ypos); 
     break;
   case 2:
     image(img2, xpos, ypos); 
     break;
   case 3:
     image(img3, xpos, ypos); 
     break;
   case 4:
     image(img4, xpos, ypos); 
     break; 
   case 5:
     image(img5, xpos, ypos); 
     break;
   case 6:
     image(img6, xpos, ypos); 
     break;
   case 7:
     image(img7, xpos, ypos); 
     break;
   case 8:
     image(img8, xpos, ypos);  
     break;
   case 9:
     image(img9, xpos, ypos); 
     break;
   
 }
}
