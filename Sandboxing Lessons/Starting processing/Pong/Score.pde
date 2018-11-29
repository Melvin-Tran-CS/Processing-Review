void Score (){
 if (ballX == 0 || ballX == width ){ //Score for Player 2, note the index
    if (ballX == 0 ) { //Player 2 Score
      score[1] += 1;
    }
    if (ballX == width) { //Player 1 Score
      score[0] += 1;
    }
    ballX = ballStartX;
  ballY = ballStartY;
    
  }

 textSize(0.1*width);
  text( score[0], (width*1/5)-(0.1*width), height*1/5); //Printing to ration of screen, Player 1 is minusing width of font
  // Note: review of Character escape and this seems to "busy" on the screen
  text(score[1], width*4/5, height*1/5);
  println ("Score Board is: " + score[0] + " Player-1" + "     " + score[1] + " Player-2");

}
