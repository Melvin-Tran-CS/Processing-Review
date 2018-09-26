//Global Variables

void setup() {
  size(900,900);
  ball = loadImage("homo.jpg");
  img = loadImage("Depression.jpg");
  Yeet = loadImage("ainsley.jpg");
  //Yeet.resize(600, 600);
  img.resize(900, 900);
  
  //ball.resize(200, 200);
  ballstartX =  width/2 ; //starting ball position
  ballstartY = height/2;
}

void draw() {
  background(img);
  //image(ball, ballstartX,height/2+ballX, width/5, width/5);
  
  if (ballstartX != 0|ballstartY !=0){
  ballstartX+= ballX;
  ballstartY+=ballY;
  }
  //720
  if (ballX < 720 | ballY < 720) {
    ballX += ballXmove;
    ballY += ballYmove;
  }
   if (ballX == 720|ballY == 720 ) {
    ballXmove=-1;
    ballX += ballXmove;
    ballYmove = -1;
    ballY += ballYmove;
  } 
  
  if (ballX < 0|ballY < 0){
  ballX += ballXmove;
  ballY += ballYmove;
  }
   if(ballX == -100|ballY == -100) {
   ballXmove = 1;
   ballX += ballXmove;
   ballYmove= 1;
   ballY += ballYmove;
  }
  
  //image(ball, ballX,ballY,width/5,width/5);
  rectMode(CENTER);
  rect(ballX,ballY,width/5,width/5);
  
 //print ("ballX:"+ballX,"ballY:"+ballY);
 println ("ballX:"+ballX,"   ballY:"+ballY);

}
