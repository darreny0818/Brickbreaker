void win () {
  
  background(0, 0, 255);
  
  float SW11 = 1;
  float SW21 = 1;
  
   if (mouseX > 75 && mouseX < 275 && mouseY > 430 && mouseY < 490) {
   SW11 = 10;
 } else {
   SW11 = 1;
 }

  fill(0);  
  stroke(0);
  strokeWeight(SW11);
  rect(75, 430, 200, 60);
  
  if (mouseX > 325 && mouseX < 525 && mouseY > 430 && mouseY < 490) {
   SW21 = 10;
 } else {
   SW21 = 1;
 }
  
  strokeWeight(SW21);
  rect(325, 430, 200, 60);
  
  textSize(30);
  fill(255);
  text("OPTIONS", 175, 470);
  text("PLAY AGAIN", 425, 470);

  stroke(0);
  textSize(72);
  text("WINNER!!!", 300, 250);
  textSize(20);
  text("CLICK ANYWHERE TO GO HOME", 300, 300);
  text("HIGHSCORE: " + highscore, 300, 350);
  
  if (score < highscore) {
    highscore = highscore;
  }
  
  if (score > highscore) {
    highscore = score;
  }
  
}


void winClicks () {
  
  if (mouseX > 325 && mouseX < 525 && mouseY > 430 && mouseY < 490) {
    setup ();
    mode = GAME;
    lives = 3;
    score = 0;
    death = 0;
  }
  
  if (mouseX > 75 && mouseX < 275 && mouseY > 430 && mouseY < 490) {
    setup ();
    mode = OPTIONS;
    lives = 3;
    score = 0;
    death = 0;
  }
  
  if (mouseX > 0 && mouseX < width && mouseY > 0 && mouseY < height) {
    setup();
    mode = INTRO;
    lives = 3;
    score = 0;
    death = 0;
  }
  
}
