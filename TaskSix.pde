int circleSize;
int numberOfCircles;
int x, y;
int counter=0;
int rowCounter=0;
int red, green, blue;

void setup(){
   size(400,400);
  
   numberOfCircles = 30;
   circleSize = width/numberOfCircles;
   ellipseMode(CORNER);
  
  red=255;
  green=255;
  blue=255;
}
void draw(){
  
  x = circleSize*counter;
  y = circleSize*rowCounter;
  
  fill(red, green, blue);
   
  ellipse(x, y, circleSize, circleSize);

  if (counter==0){
    red = counter==0 ? (int)random(255):red;
    green = counter==0 ? (int)random(255):green;
    blue = counter==0 ? (int)random(255):blue;
  }

  counter =  frameCount % numberOfCircles == 0 ? 0 : counter+1;
  rowCounter =  counter==0 ? rowCounter+1:rowCounter;
}
