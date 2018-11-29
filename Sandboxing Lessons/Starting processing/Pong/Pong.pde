//Global Variable
Boolean LeftSide = false;
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
  ballX =  ballStartX ; //starting ball position
  ballY = ballStartY;
  Paddle1Y = height/2;
  Paddle2Y = height/2;
  
} 



void keyPressed() {
  if (key == 'w' && Paddle1Y != 75) {
    Paddle1Y += -5;
  } else {
    Paddle1Y += 0;
  } 
  if (key == 's' && Paddle1Y != 925) {
    Paddle1Y += 5;
  } else {
    Paddle1Y += 0;
  }
  if (key == '8' && Paddle2Y != 75) {
    Paddle2Y += -5;
  } else {
    Paddle2Y +=0;
  }
  if (key == '5' && Paddle2Y != 925) {
    Paddle2Y += 5;
  } else {
    Paddle2Y += 0;
  }
}

void draw() {
  background(img);
  //image(ball, ballstartX,height/2+ballX, width/5, width/5);
  ballX += ballXSpeed;
  ballY += ballYSpeed;
if (ballX == Paddle1X-50 && ballY == Paddle2Y) {
ballXSpeed *= -1;
}
if (ballX < 0){
ballXSpeed *= -1;
}
if (ballY > height){
ballYSpeed *= -1;
}
if (ballY < 0){
ballYSpeed *= -1;
}
 Score();


  



    image(Paddle1, Paddle1X, Paddle1Y);
    image(Paddle2, Paddle2X, Paddle2Y);
    imageMode(CENTER);
    image(ball, ballX, ballY, width/5, width/5);
    //rectMode(CENTER);
    //rect(ballX,ballY,width/5,width/5);

    //print ("ballX:"+ballX,"ballY:"+ballY);
    println ("ballX:"+ballX, "   ballY:"+ballY);
    println ("Paddle1Y:"+Paddle1Y, "  Paddle2Y:"+Paddle2Y);
    println ("Paddle1Height: " + Paddle1Height);
 
  
  }
