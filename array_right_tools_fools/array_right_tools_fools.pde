//declare an array
float[] number = new float[200];

void setup(){
  size(800, 400);
  //navigate the array
  //for loops are the right tools
  
  //we created a variable and while it is under 200 increase
  //for is interating a group when conditions are met
  //initial number, final number, do something
  for(int i =0; i<200 ; i++ ) {
    //for 0 we have 0
    //for 1 we have 2
    number[i] = height * sin(2 * PI * i * width * 20);
    println(number[i]);
  }
  
}

void draw(){
  background(200);
  for(int i =0; i<199 ; i++ ) {
    //the nuimber is taken from previous declaration
    line(i, number[i], i+1, number[i+1]);
  }
}
