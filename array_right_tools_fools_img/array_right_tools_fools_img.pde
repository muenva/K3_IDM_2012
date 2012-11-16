//declare an array with image type, by adding [] its a group
// after = how many units how many array can it have
// new is the create new variable 
PImage[] img = new PImage[10];

void setup(){
  size(500, 500);
  //navigate the array
  // load the images into the array from the data folder
  for(int i =0; i<10 ; i++ ) {
    //declare imge name
    String imageName = new String(i + ".jpg");
    //load image into the array
    img[i] = loadImage(imageName);
    
    //print image name to the monitor
    println(imageName + " loaded");
  }
  
}

void draw(){
  background(200);
  displayNumbers();
  
  displayClock();
  
}

void displayClock(){
  int s = second();
  
  //MS most significative, the very first digit of a number think about the money!! :)
  // get the most significant digit from 
  // 01, 02, 03 >> 0, if 12, 13, 14 >> 1 ..., becasue we count in base10 (represent the basic amount of symbol )
  int MSD = s / 10;
  //module >> gives you the rest of the division, if 88452847 the %10 is 7
  int LSD = s % 10;
  
  //load the most significative digit 
  image(img[MSD], 280, 95*3);
  //load the least significative digit 
  image(img[LSD], 350, 95*3);
  
  int m = minute();
  // we already introduced the integer so jsut re-using 
  //this is why you have to erase int 
  MSD = m / 10;
  LSD = m % 10;
  image(img[MSD], 140, 95*3); 
  image(img[LSD], 210, 95*3);
  
  int h = hour();
  MSD = h / 10;
  LSD = h % 10;
  image(img[MSD], 0, 95*3); 
  image(img[LSD], 70, 95*3);
  
}


//put the function to a placeholder and not to call it to the draw function
void displayNumbers(){
  
  //this is gunna be a matrix 
  pushMatrix();
 //move the next image to the right
  for(int i =0; i<10 ; i++ ) {
    //move next image next
    //if i is different then zero
    //if we place a whole line than jump to the next line
    if (i != 0) translate(70,0);
    //appear in a new line
    if (i == 4 || i == 8) translate(-70*4, 95);
    //draw image
    image(img[i], 0, 0);
  } 
  //get back to the point where it started the matrix
  //it wont effect the rest of the canvas
  popMatrix();
}
