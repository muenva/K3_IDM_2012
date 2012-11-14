float x = 0;
float y = 0;
float Rr = 255;
float Gg = 255;
float Bb = 255;
float fr = 5;

void setup(){
  //setup the window size
  size(500,500);
  
background(0);
}

void draw(){
    //increase x
  frameRate(fr);
  fr = fr + 0.2;
  x = x + random(400);
  y = y + random(400);
  //check if shape left the screen
  if (x > width){
    //if it is out of the screen then start again from the 
    //newly defined x
   x = -200; 
  }
  if (y > height){
  y = -200;
  }
  
  translate(x, y);
  Rr = random(100);
  Gg = random(20);
  Bb = random(20);
  
  noFill();
  stroke(255);
  // B
  // line
  line(50, 50, 50, 150);
  // top half circle
  arc(50, 75,50, 50,   -HALF_PI, HALF_PI);
  // bottom half circle
  arc(50, 125,80, 50,   -HALF_PI, HALF_PI);
  
  //G
  arc(150, 100, 45, 100, 0, PI+HALF_PI+QUARTER_PI);
  line(150, 100, 172, 100);
  println(fr);

//stroke(255);
//line(pmouseX,pmouseY,mouseX,mouseY);

  }
 
/*
  background(200);
  noStroke();
//B
  fill(255, 255, 255);
rect(10, 10, 50, 250);
ellipse(50, 60, 80, 101);
ellipse(66, 185, 100, 150);
//G
fill(200, 200, 200);
stroke(255);
ellipse(220, 150, 100, 250);
fill(200);
noStroke();
rect(230, 135, 70, 30);
stroke(255);
line(220, 163, 270, 163);
*/

/*
 line(10, 10, 100, 10);
 line(100, 10, 100, 90);
 line(100, 90, 80, 90);
 line(100, 90, 100, 180);
 line(100, 90, 100, 180);
 line(100, 10, 100, 90);
 
  rect(10, 10, 10, 10);
  rect(10, 20, 10, 10);
  rect(10, 30, 10, 10);
  rect(10, 40, 10, 10);
  rect(10, 50, 10, 10);
  rect(10, 60, 10, 10);
  rect(20, 10, 10, 10);
  rect(25, 20, 10, 10);
  rect(40, 30, 10, 10);
  rect(30, 40, 10, 10);
  rect(20, 50, 10, 10);
  rect(15, 60, 10, 10);
  rect(10, 70, 10, 10);
  
  */

  


/*
// Excercise 1

//display a line of strings
  println("Feliz Navidad!");

  //GREY LEVEL
background(200);
//draw line, graphic primitive 
line(0, 0, 100, 100);
//RGB coluring
fill(200, 4, 50);
//create rectangle
rect(10, 10, 100, 15);
  //print framerate so 
 print(frameRate + "       ");
 */
