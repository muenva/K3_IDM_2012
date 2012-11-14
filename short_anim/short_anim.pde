int wh = 50;
int a = 250, b = 300;
float timer = 0, eh = 50;

void setup(){
  size(600, 600);
  timer = millis();
  background(200);
}

void draw(){
  fill(50);
  stroke(150);
  rect(a, a, wh, wh);
  rect(b, a, wh, wh);
  rect(a, b, wh, wh);
  rect(b, b, wh, wh);
  ellipse(width/2, height/2, eh, eh);
  
  if (millis() - timer > 20){
    a = a - 3;
    b = b + 3;
    wh = wh + 2;
    eh = 1.05 * eh;
    timer = millis();
  }
}
