//Global Variables
PImage img;
void setup() {
  size(600, 600);
  background(0, 0, 0);
img = loadImage("Depression.jpg");
  ellipse(width/2,height/2,15,15);
}

void draw() {
  image(img, 10, 10);
  
}    
