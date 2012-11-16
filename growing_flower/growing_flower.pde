float x = 400;
float y = 250;
float angle = -PI;
float speed = 4;
float timer = 0;
float angle1 = PI;
float angle2 = 2*PI;

void setup(){
 size(400, 250);
 //angle > PI && angle <2*PI;
 timer = millis();
}

void draw(){
  noFill();
  point(x, y);
  y = y - 1;
  x = x - 1;
  x = x + speed * cos ( angle );
  y = y + speed * sin ( angle );
}
