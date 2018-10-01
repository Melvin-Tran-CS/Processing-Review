//Global Variables

void setup() {
  size(900, 1000);
  ball = loadImage("homo.jpg");
  img = loadImage("Depression.jpg");
  Yeet = loadImage("ainsley.jpg");
  Paddle1 = loadImage("dolan turnmp.jpg");
  Paddle2 = loadImage("womenaresuperior.jpg");
  //Yeet.resize(600, 600);
  img.resize(900, 1000);

  //ball.resize(200, 200);
  ballstartX =  width/2 ; //starting ball position
  ballstartY = height/2;
}

void draw() {
  background(img);
  //image(ball, ballstartX,height/2+ballX, width/5, width/5);

  if (ballstartX != 0|ballstartY !=0) {
    ballstartX+= ballX;
    ballstartY+=ballY;
  }
  //720
  if (ballX < 900 ) {
    ballX += ballXmove;
  }
  if (ballY < 1000) {
    ballY += ballYmove;
  }
  if (ballX == 900-width/5/2) {
    ballXmove=-1;
    ballX += ballXmove;
  } 
  if (ballY == 1000-height/5/2 ) {
    ballYmove = -1;
    ballY += ballYmove;
  }
  if (ballX < 0) {
    ballX += ballXmove;
  }
  if (ballY < 0) {
    ballY += ballYmove;
  }
  if (ballX == -10+width/5/2) {
    ballXmove = 1;
    ballX += ballXmove;
  }
  if (ballY == -10+height/5/2) { 
    ballYmove= 1;
    ballY += ballYmove;
  }
  image(Paddle1,60,500);
  image(Paddle2,840,500);
  imageMode(CENTER);
  image(ball, ballX, ballY, width/5, width/5);
  //rectMode(CENTER);
  //rect(ballX,ballY,width/5,width/5);

  //print ("ballX:"+ballX,"ballY:"+ballY);
  println ("ballX:"+ballX, "   ballY:"+ballY);
}
