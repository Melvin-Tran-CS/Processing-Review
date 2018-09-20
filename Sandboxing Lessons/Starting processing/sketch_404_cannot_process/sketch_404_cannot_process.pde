//Global Variables

void setup() {
  size(600, 600);
  ball = loadImage("homo.jpg");
  img = loadImage("Depression.jpg");
  Yeet = loadImage("ainsley.jpg");
  Yeet.resize(600,600);
  img.resize(600, 600);
  ball.resize(600,600);
  
  
  ballpositionX =  width/2; //starting ball position
}

void draw() {
  background(img);
  image(ball,ballpositionX, height/2+ballX, width/5, width/5);
  if (ballpositionX < 500) {
  ballX = ballX +1;
  }
  
}    
