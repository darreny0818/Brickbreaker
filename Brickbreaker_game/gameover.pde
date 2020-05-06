void gameover() {
  
  float S11 = 1;
  float S21 = 1;
  
  background(255, 0, 0);
  
   if (mouseX > 75 && mouseX < 275 && mouseY > 430 && mouseY < 490) {
   S11 = 10;
 } else {
   S11 = 1;
 }

  fill(0);  
  stroke(0);
  strokeWeight(S11);
  rect(75, 430, 200, 60);
  
  if (mouseX > 325 && mouseX < 525 && mouseY > 430 && mouseY < 490) {
   S21 = 10;
 } else {
   S21 = 1;
 }
  
  strokeWeight(S21);
  rect(325, 430, 200, 60);
  
  textSize(30);
  fill(255);
  text("OPTIONS", 175, 470);
  text("TRY AGAIN", 425, 470);

  stroke(0);
  textSize(72);
  text("GAME OVER", 300, 250);
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

void gameOverClicks () {
  
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
