//Global Variables

void setup() {
  size(900,900);
  ball = loadImage("homo.jpg");
  img = loadImage("Depression.jpg");
  Yeet = loadImage("ainsley.jpg");
  //Yeet.resize(600, 600);
  img.resize(900, 900);
  //ball.resize(200, 200);
  ballstart =  width/2 ,height/2; //starting ball position
  
}

void draw() {
  background(img);
  image(ball, ballstart,height/2+ballX, width/5, width/5);
  if (ballX < 500 | ballY < 500) {
    ballX += ballXmove;
    ballY += ballYmove;
  } else if (ballX == 500||ballY ==500) {
    ballXmove=-1;
    ballX += ballXmove;
    ballYmove = -1;
    ballY += ballYmove;
  } 
  if (ballX < -500|ballY < -500){
  ballX += ballXmove;
  ballY += ballYmove;
  }
  else if(ballX == -500|ballY == -500) {
   ballXmove = 1;
   ballX += ballXmove;
   ballYmove= -1;
   ballY += ballYmove;
  }

  image(ball, ballstartX, height/2+ballX, width/5, width/5);
 print ("ballX:"+ballX);
 println(ballX);
}
